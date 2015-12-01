unit Emater.Pessoal.Funcionario.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Busca, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxBar, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmPessoalFuncionarioBusca = class(TFrmBaseBusca)
    DtStConsultaFUN_ID: TFIBIntegerField;
    DtStConsultaFUN_DATA: TFIBDateField;
    DtStConsultaFUN_NOME: TFIBStringField;
    DtStConsultaFUN_MATRICULA: TFIBStringField;
    DtStConsultaFUN_CPF: TFIBStringField;
    DtStConsultaFUN_TELEFONE: TFIBStringField;
    DtStConsultaFUN_CELULAR: TFIBStringField;
    DtStConsultaCID_NOME: TFIBStringField;
    DtStConsultaUFE_ID: TFIBStringField;
    DtStConsultaFNC_DESCRICAO: TFIBStringField;
    DtStConsultaUND_NOME: TFIBStringField;
    GrdConsultaTblFUN_DATA: TcxGridDBColumn;
    GrdConsultaTblFUN_NOME: TcxGridDBColumn;
    GrdConsultaTblFUN_MATRICULA: TcxGridDBColumn;
    GrdConsultaTblFUN_CPF: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblUFE_ID: TcxGridDBColumn;
    GrdConsultaTblFNC_DESCRICAO: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    Label1: TLabel;
    EdtMatricula: TcxTextEdit;
    Label4: TLabel;
    LkpCmbBxMunicipio: TcxLookupComboBox;
    LkpCmbBxUnidade: TcxLookupComboBox;
    Label3: TLabel;
    Label2: TLabel;
    EdtCPF: TcxMaskEdit;
    DtStMunicipio: TpFIBDataSet;
    DtStMunicipioCID_ID: TFIBIntegerField;
    DtStMunicipioCID_NOME: TFIBStringField;
    DtSrcMunicipio: TDataSource;
    DtStConsultaREG_EXCLUIDO: TFIBBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
  private
    procedure CarregarCidadePorUnidade(const Unidade: Integer);
  public
    procedure LimparCampos; override;
  end;

var
  FrmPessoalFuncionarioBusca: TFrmPessoalFuncionarioBusca;

implementation

{$R *.dfm}

uses Emater.Dne.Modulo, Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Pessoal.Funcionario, Emater.Base.Consts,
  Emater.Sistema.Consts, Emater.Classe.Log;

procedure TFrmPessoalFuncionarioBusca.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S: string;
begin
  inherited;

  Screen.Cursor := crHourGlass;
  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    DtStConsulta.Close;
    DtStConsulta.SelectSQL.Clear;
    DtStConsulta.SelectSQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Nome do beneficiário:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: DtStConsulta.SelectSQL.Add(Format('and (a.fun_nome like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: DtStConsulta.SelectSQL.Add(Format('and (a.fun_nome like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // Matrícula:
    if (Trim(EdtMatricula.Text) <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.fun_matricula like %s)', [QuotedStr(EdtMatricula.Text)]));

    // CPF:
    S := Str.SomenteNumeros(EdtCPF.Text);
    if (S <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.fun_cpf = %s)', [QuotedStr(S)]));

    // Unidade do cadastro:
    if (LkpCmbBxUnidade.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.und_id = %s)', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Município:
    if (LkpCmbBxMunicipio.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.cid_id = %s)', [IntToStr(LkpCmbBxMunicipio.EditValue)]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = DtStConsulta.SelectSQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        DtStConsulta.SelectSQL.Add('order by a.fun_nome');
        DtStConsulta.Open;

        if DtStConsulta.IsEmpty then
          begin
            CodeSite.SendMsg('Consulta realizada. Nenhum registro encontrado.');
            Msg.Informacao(BASE_MSG_BUSCA_NADA_ENCONTRADO);
          end
        else
          begin
            CodeSite.SendMsg('Consulta realizada. Total de registros encontrados: ' + IntToStr(DtStConsulta.RecordCount) + '.');
            GrdConsulta.SetFocus;
          end;
      end;
  finally
    Screen.Cursor := crDefault;
    CodeSite.ExitMethod(Self.Name + '.BtnConsultarClick().');
  end;
end;

procedure TFrmPessoalFuncionarioBusca.CarregarCidadePorUnidade(const Unidade: Integer);
begin
  DtStMunicipio.Close;
  DtStMunicipio.ParamByName('unidade').AsInteger := Unidade;
  DtStMunicipio.Open;
  DtStMunicipio.FetchAll;
end;

procedure TFrmPessoalFuncionarioBusca.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmPessoalFuncionario;
  EditFormClass := TFrmPessoalFuncionario;

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxMunicipio.Properties.ListSource := DtSrcMunicipio;

  CarregarCidadePorUnidade(0);
end;

procedure TFrmPessoalFuncionarioBusca.LimparCampos;
begin
  inherited;
  EdtMatricula.Clear;
  EdtCPF.Clear;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxMunicipio.Clear;
end;

procedure TFrmPessoalFuncionarioBusca.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
var
  Unidade: Integer;
begin
  Unidade := 0;
  if (LkpCmbBxUnidade.Text <> '') then Unidade := LkpCmbBxUnidade.EditValue;
  CarregarCidadePorUnidade(Unidade);
end;

end.
