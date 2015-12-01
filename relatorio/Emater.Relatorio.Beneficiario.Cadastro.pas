unit Emater.Relatorio.Beneficiario.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxGroupBox, Vcl.StdCtrls, cxPC, cxButtons, Data.DB,
  FIBDataSet, pFIBDataSet, frxDBSet, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmRelatorioBeneficiarioCadastro = class(TFrmBaseRelatorio)
    FrxDtStPrincipal: TfrxDBDataset;
    DtStPrincipal: TpFIBDataSet;
    DtSrcPrincipal: TDataSource;
    FrxDtStDAP: TfrxDBDataset;
    DtStDAP: TpFIBDataSet;
    DtStFamilia: TpFIBDataSet;
    FrxDtStFamilia: TfrxDBDataset;
    DtStProducaoFamiliar: TpFIBDataSet;
    FrxDtStProducaoFamiliar: TfrxDBDataset;
    FrxDtStBem: TfrxDBDataset;
    DtStBem: TpFIBDataSet;
    DtSrcProducaoFamiliar: TDataSource;
    DtStSemovente: TpFIBDataSet;
    FrxDtStSemovente: TfrxDBDataset;
    FrxDtStAtividade: TfrxDBDataset;
    DtStAtividade: TpFIBDataSet;
    FrxDtStComercializacao: TfrxDBDataset;
    DtStComercializacao: TpFIBDataSet;
    DtSrcAtividade: TDataSource;
    FrxDtStFater: TfrxDBDataset;
    DtStFater: TpFIBDataSet;
    BtnPesquisar: TcxButton;
    LblBeneficiario: TLabel;
    EdtNome: TcxTextEdit;
    Label1: TLabel;
    EdtCPF: TcxMaskEdit;
    Label2: TLabel;
    DtStPesquisar: TpFIBDataSet;
    DtStPesquisarBEN_ID: TFIBBCDField;
    DtStPesquisarBEN_CPF: TFIBStringField;
    DtStPesquisarBEN_NOME: TFIBStringField;
    DtSrcFater: TDataSource;
    FrxDtStComunidade: TfrxDBDataset;
    DtStComunidade: TpFIBDataSet;
    FrxDtStTecnico: TfrxDBDataset;
    DtStTecnico: TpFIBDataSet;
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLimparClick(Sender: TObject);
  private
    FBeneficiarioID: Int64;
  public
    procedure VisualizarImpressao(const ID: Int64; CPF: string);
  end;

var
  FrmRelatorioBeneficiarioCadastro: TFrmRelatorioBeneficiarioCadastro;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo, Emater.Cadastro.Beneficiario.Busca;

procedure TFrmRelatorioBeneficiarioCadastro.BtnImprimirClick(Sender: TObject);
var
  Page: TfrxReportPage;
begin

  // Validando o CPF selecionado:
  if (Trim(EdtCPF.Text) <> '') then
    if not Str.ValidarCPF(EdtCPF.Text) then
      begin
        Msg.Aviso(RELATORIO_AVISO_INFORMAR_CPF_INVALIDO);
        EdtCPF.SetFocus;
        Exit;
      end;

  // Buscando o ID do CPF:
  DtStPesquisar.Close;
  DtStPesquisar.ParamByName('ben_cpf').AsString := EdtCPF.Text;
  DtStPesquisar.Open;
  if DtStPesquisar.IsEmpty then
    begin
      Msg.Aviso(RELATORIO_AVISO_INFORMAR_CPF_NAO_LOCALIZADO);
      EdtCPF.SetFocus;
      Exit;
    end;
  EdtNome.Text := DtStPesquisarBEN_NOME.AsString;
  FBeneficiarioID := DtStPesquisarBEN_ID.AsInt64;

  Screen.Cursor := crHourGlass;
  BtnImprimir.Enabled := False;
  try
    inherited;
    if (FBeneficiarioID = 0) then
      begin
        MSG.Aviso(RELATORIO_AVISO_INFORMAR_BENEFICIARIO);
        BtnPesquisar.Click;
      end
    else
      begin
        DtStTecnico.Close;
        DtStComunidade.Close;
        DtStFater.Close;
        DtStComercializacao.Close;
        DtStAtividade.Close;
        DtStSemovente.Close;
        DtStBem.Close;
        DtStProducaoFamiliar.Close;
        DtStFamilia.Close;
        DtStDAP.Close;
        DtStPrincipal.Close;

        // Benefici�rio:
        DtStPrincipal.ParamByName('beneficiario').AsInt64 := FBeneficiarioID;

        DtStPrincipal.Open;
        DtStDAP.Open;
        DtStFamilia.Open;
        DtStProducaoFamiliar.Open;
        DtStBem.Open;
        DtStSemovente.Open;
        DtStAtividade.Open;
        DtStComercializacao.Open;
        DtStFater.Open;
        DtStComunidade.Open;
        DtStTecnico.Open;

        Page := TFrxReportPage(FrxPrincipal.Pages[2]);
        if DtStProducaoFamiliar.IsEmpty then
          Page.PrintOnPreviousPage := True
        else
          Page.PrintOnPreviousPage := False;

        FrxPrincipal.PrepareReport;
        if (CmbBxModo.ItemIndex = 0) then
          FrxPrincipal.ShowPreparedReport
        else
          FrxPrincipal.Print;
      end;
  finally
    BtnImprimir.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmRelatorioBeneficiarioCadastro.BtnLimparClick(Sender: TObject);
begin
  inherited;
  EdtCPF.Clear;
  EdtNome.Clear;
  EdtCPF.SetFocus;
end;

procedure TFrmRelatorioBeneficiarioCadastro.BtnPesquisarClick(Sender: TObject);
begin
  FrmCadastroBeneficiarioBusca := TFrmCadastroBeneficiarioBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmCadastroBeneficiarioBusca.ShowModal = mrOk) then
      begin
        FBeneficiarioID := FrmCadastroBeneficiarioBusca.DtStConsultaBEN_ID.AsInt64;
        EdtCPF.Text := FrmCadastroBeneficiarioBusca.DtStConsultaBEN_CPF.AsString;
        EdtNome.Text := FrmCadastroBeneficiarioBusca.DtStConsultaBEN_NOME.AsString;
      end;
  finally
    FrmCadastroBeneficiarioBusca.Release;
    FrmCadastroBeneficiarioBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmRelatorioBeneficiarioCadastro.EdtCPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DELETE) then
    EdtNome.Clear;
end;

procedure TFrmRelatorioBeneficiarioCadastro.EdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if CharInSet(Key, ['0'..'9', #8]) then
    EdtNome.Clear;
end;

procedure TFrmRelatorioBeneficiarioCadastro.FormCreate(Sender: TObject);
begin
  inherited;
  FBeneficiarioID := 0;
end;

procedure TFrmRelatorioBeneficiarioCadastro.VisualizarImpressao(const ID: Int64; CPF: string);
begin
  FBeneficiarioID := ID;
  EdtCPF.Text := CPF;
  BtnImprimir.Click;
end;

end.