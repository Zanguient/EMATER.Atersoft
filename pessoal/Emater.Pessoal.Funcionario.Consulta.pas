unit Emater.Pessoal.Funcionario.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses, FIBDataSet, pFIBDataSet,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinSeven, dxSkinSevenClassic;

type
  TFrmPessoalFuncionarioConsulta = class(TFrmBaseConsulta)
    Label1: TLabel;
    EdtMatricula: TcxTextEdit;
    Label2: TLabel;
    EdtCPF: TcxMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    LkpCmbBxMunicipio: TcxLookupComboBox;
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
    GrdConsultaTblFUN_TELEFONE: TcxGridDBColumn;
    GrdConsultaTblFUN_CELULAR: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblUFE_ID: TcxGridDBColumn;
    GrdConsultaTblFNC_DESCRICAO: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    DtStMunicipio: TpFIBDataSet;
    DtStMunicipioCID_ID: TFIBIntegerField;
    DtStMunicipioCID_NOME: TFIBStringField;
    DtSrcMunicipio: TDataSource;
    DtStConsultaREG_EXCLUIDO: TFIBBooleanField;
    DtStConsultaREG_REPLICADO: TFIBBooleanField;
    DtStConsultaREG_USUARIO: TFIBStringField;
    DtStConsultaREG_MODIFICADO: TFIBDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
  private
    procedure CarregarCidadePorUnidade(const Unidade: Integer);
  public
    procedure LimparCampos; override;
  end;

var
  FrmPessoalFuncionarioConsulta: TFrmPessoalFuncionarioConsulta;

implementation

{$R *.dfm}

uses Emater.Dne.Modulo, Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Pessoal.Funcionario, Emater.Base.Consts,
  Emater.Sistema.Consts, Emater.Classe.Log;

procedure TFrmPessoalFuncionarioConsulta.BtnConsultarClick(Sender: TObject);
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

    // Verificando se o usuário autenticado tem o perfil "técnico ESLOC".
    if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_USUARIO) then
      DtStConsulta.SelectSQL.Add(Format('and (a.usr_id = %s)', [IntToStr(DtmConexaoModulo.UsuarioID)]));

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

procedure TFrmPessoalFuncionarioConsulta.CarregarCidadePorUnidade(const Unidade: Integer);
begin
  DtStMunicipio.Close;
  DtStMunicipio.ParamByName('unidade').AsInteger := Unidade;
  DtStMunicipio.Open;
  DtStMunicipio.FetchAll;
end;

procedure TFrmPessoalFuncionarioConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmPessoalFuncionario;
  EditFormClass := TFrmPessoalFuncionario;

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxMunicipio.Properties.ListSource := DtSrcMunicipio;

  CarregarCidadePorUnidade(0);
end;

procedure TFrmPessoalFuncionarioConsulta.LimparCampos;
begin
  inherited;
  EdtMatricula.Clear;
  EdtCPF.Clear;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxMunicipio.Clear;
end;

procedure TFrmPessoalFuncionarioConsulta.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
var
  Unidade: Integer;
begin
  Unidade := 0;
  if (LkpCmbBxUnidade.Text <> '') then Unidade := LkpCmbBxUnidade.EditValue;
  CarregarCidadePorUnidade(Unidade);
end;

end.
