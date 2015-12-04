unit Emater.Pessoal.Funcionario.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses, FIBDataSet, pFIBDataSet,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinSeven, dxSkinSevenClassic, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

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
    DtSrcMunicipio: TDataSource;
    QryConsultaFUN_ID: TIntegerField;
    QryConsultaFUN_DATA: TDateField;
    QryConsultaFUN_NOME: TStringField;
    QryConsultaFUN_MATRICULA: TStringField;
    QryConsultaFUN_CPF: TStringField;
    QryConsultaFUN_TELEFONE: TStringField;
    QryConsultaFUN_CELULAR: TStringField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaREG_REPLICADO: TSmallintField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaUFE_ID: TStringField;
    QryConsultaFNC_DESCRICAO: TStringField;
    QryConsultaUND_NOME: TStringField;
    QryMunicipio: TFDQuery;
    QryMunicipioCID_ID: TIntegerField;
    QryMunicipioCID_NOME: TStringField;
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
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Nome do beneficiário:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (a.fun_nome like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (a.fun_nome like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // Matrícula:
    if (Trim(EdtMatricula.Text) <> '') then
      QryConsulta.SQL.Add(Format('and (a.fun_matricula like %s)', [QuotedStr(EdtMatricula.Text)]));

    // CPF:
    S := Str.SomenteNumeros(EdtCPF.Text);
    if (S <> '') then
      QryConsulta.SQL.Add(Format('and (a.fun_cpf = %s)', [QuotedStr(S)]));

    // Unidade do cadastro:
    if (LkpCmbBxUnidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.und_id = %s)', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Município:
    if (LkpCmbBxMunicipio.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.cid_id = %s)', [IntToStr(LkpCmbBxMunicipio.EditValue)]));

    // Verificando se o usuário autenticado tem o perfil "técnico ESLOC".
    if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_USUARIO) then
      QryConsulta.SQL.Add(Format('and (a.usr_id = %s)', [IntToStr(DtmConexaoModulo.UsuarioID)]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.fun_nome');
        QryConsulta.Open;

        if QryConsulta.IsEmpty then
          begin
            CodeSite.SendMsg('Consulta realizada. Nenhum registro encontrado.');
            Msg.Informacao(BASE_MSG_BUSCA_NADA_ENCONTRADO);
          end
        else
          begin
            CodeSite.SendMsg('Consulta realizada. Total de registros encontrados: ' + IntToStr(QryConsulta.RecordCount) + '.');
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
  QryMunicipio.Close;
  QryMunicipio.ParamByName('unidade').AsInteger := Unidade;
  QryMunicipio.Open;
  QryMunicipio.FetchAll;
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
