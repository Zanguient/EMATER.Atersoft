unit Emater.Relatorio.Beneficiario.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxGroupBox, Vcl.StdCtrls, cxPC, cxButtons, Data.DB,
  dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxDBSet;

type
  TFrmRelatorioBeneficiarioCadastro = class(TFrmBaseRelatorio)
    FrxDtStPrincipal: TfrxDBDataset;
    DtSrcPrincipal: TDataSource;
    FrxDtStDAP: TfrxDBDataset;
    FrxDtStFamilia: TfrxDBDataset;
    FrxDtStProducaoFamiliar: TfrxDBDataset;
    FrxDtStBem: TfrxDBDataset;
    DtSrcProducaoFamiliar: TDataSource;
    FrxDtStSemovente: TfrxDBDataset;
    FrxDtStAtividadeCultura: TfrxDBDataset;
    FrxDtStComercializacao: TfrxDBDataset;
    FrxDtStFater: TfrxDBDataset;
    BtnPesquisar: TcxButton;
    LblBeneficiario: TLabel;
    EdtNome: TcxTextEdit;
    Label1: TLabel;
    EdtCPF: TcxMaskEdit;
    Label2: TLabel;
    DtSrcFater: TDataSource;
    FrxDtStFaterComunidade: TfrxDBDataset;
    FrxDtStFaterTecnico: TfrxDBDataset;
    DtStPrincipal: TFDQuery;
    DtStPesquisar: TFDQuery;
    DtStDAP: TFDQuery;
    DtStFamilia: TFDQuery;
    DtStProducaoFamiliar: TFDQuery;
    DtStBem: TFDQuery;
    DtStSemovente: TFDQuery;
    DtStAtividadeCultura: TFDQuery;
    DtStComercializacao: TFDQuery;
    DtStFater: TFDQuery;
    DtStFaterComunidade: TFDQuery;
    DtStFaterTecnico: TFDQuery;
    DtStPesquisarBEN_ID: TLargeintField;
    DtStPesquisarBEN_CPF: TStringField;
    DtStPesquisarBEN_NOME: TStringField;
    DtStMaquina: TFDQuery;
    FrxDtStMaquina: TfrxDBDataset;
    DtStAtividadeCulturaATV_ID: TLargeintField;
    DtStAtividadeCulturaATV_PRODUTO: TStringField;
    DtStAtividadeCulturaATV_SISTEMA_PRODUTIVO: TStringField;
    DtStAtividadeCulturaATV_AREA_PLANTADA: TCurrencyField;
    DtStAtividadeCulturaATV_ANO_MES_PLANTIO: TStringField;
    DtStAtividadeCulturaATV_AREA_COLHIDA: TCurrencyField;
    DtStAtividadeCulturaATV_ANO_MES_COLHEITA: TStringField;
    DtStAtividadeCulturaATV_UNIDADE: TStringField;
    DtStAtividadeCulturaATV_QUANTIDADE: TCurrencyField;
    FrxDtStAtividadeCriacao: TfrxDBDataset;
    DtStAtividadeCriacao: TFDQuery;
    DtStAtividadeCriacaoATV_ID: TLargeintField;
    DtStAtividadeCriacaoATV_PRODUTO: TStringField;
    DtStAtividadeCriacaoATV_SISTEMA_PRODUTIVO: TStringField;
    DtStAtividadeCriacaoATV_ANO: TIntegerField;
    DtStAtividadeCriacaoATV_UNIDADE: TStringField;
    DtStAtividadeCriacaoATV_QUANTIDADE: TCurrencyField;
    FrxDtStAtividadeOutros: TfrxDBDataset;
    DtStAtividadeOutros: TFDQuery;
    DtStAtividadeOutrosATV_ID: TLargeintField;
    DtStAtividadeOutrosATV_PRODUTO: TStringField;
    DtStAtividadeOutrosATV_ANO: TIntegerField;
    DtStAtividadeOutrosATV_UNIDADE: TStringField;
    DtStAtividadeOutrosATV_QUANTIDADE: TCurrencyField;
    DtStComercializacaoPRP_ID: TIntegerField;
    DtStComercializacaoPRP_DESTINO: TStringField;
    DtStComercializacaoPRP_PRODUTO: TStringField;
    DtStComercializacaoPRP_UNIDADE: TStringField;
    DtStComercializacaoPRP_QTDE_CONSUMIDA: TCurrencyField;
    DtStComercializacaoPRP_QTDE_COMERCIALIZADA: TCurrencyField;
    DtStComercializacaoPRP_VALOR_UNITARIO: TBCDField;
    DtStComercializacaoPRP_VALOR_TOTAL: TFMTBCDField;
    DtStFaterProducao: TFDQuery;
    FrxDtStFaterProducao: TfrxDBDataset;
    DtStFaterOrganizacao: TFDQuery;
    FrxDtStFaterOrganizacao: TfrxDBDataset;
    FrxDtStFaterBeneficiario: TfrxDBDataset;
    DtStFaterBeneficiario: TFDQuery;
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
  FBeneficiarioID := DtStPesquisarBEN_ID.AsLargeInt;

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
        DtStFaterBeneficiario.Close;
        DtStFaterOrganizacao.Close;
        DtStFaterProducao.Close;
        DtStFaterTecnico.Close;
        DtStFaterComunidade.Close;
        DtStFater.Close;
        DtStComercializacao.Close;
        DtStAtividadeCultura.Close;
        DtStAtividadeCriacao.Close;
        DtStAtividadeOutros.Close;
        DtStSemovente.Close;
        DtStBem.Close;
        DtStMaquina.Close;
        DtStProducaoFamiliar.Close;
        DtStFamilia.Close;
        DtStDAP.Close;
        DtStPrincipal.Close;

        // Beneficiário:
        DtStPrincipal.ParamByName('beneficiario').AsLargeInt := FBeneficiarioID;

        DtStPrincipal.Open;
        DtStDAP.Open;
        DtStFamilia.Open;
        DtStProducaoFamiliar.Open;
        DtStBem.Open;
        DtStMaquina.Open;
        DtStSemovente.Open;
        DtStAtividadeCultura.Open;
        DtStAtividadeCriacao.Open;
        DtStAtividadeOutros.Open;
        DtStComercializacao.Open;
        DtStFater.Open;
        DtStFaterComunidade.Open;
        DtStFaterTecnico.Open;
        DtStFaterProducao.Open;
        DtStFaterOrganizacao.Open;
        DtStFaterBeneficiario.Open;

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
