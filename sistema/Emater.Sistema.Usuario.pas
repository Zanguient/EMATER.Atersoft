unit Emater.Sistema.Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmSistemaUsuario = class(TFrmBaseTabela)
    GrpBxUsuario: TcxGroupBox;
    Label1: TLabel;
    DbEdtData: TcxDBDateEdit;
    LblLogin: TLabel;
    DbEdtLogin: TcxDBTextEdit;
    LblSenha: TLabel;
    DbEdtSenha: TcxDBTextEdit;
    DbChckBxAtivo: TcxDBCheckBox;
    DbChckBxExpirada: TcxDBCheckBox;
    Label4: TLabel;
    DmMemoObs: TcxDBMemo;
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrdPrincipalTblUSR_LOGIN: TcxGridDBColumn;
    GrdPrincipalTblUSR_EXPIRADA: TcxGridDBColumn;
    GrdPrincipalTblUSR_ATIVO: TcxGridDBColumn;
    GrdPrincipalTblPER_NOME: TcxGridDBColumn;
    Label5: TLabel;
    DbLkpCmbBxPerfil: TcxDBLookupComboBox;
    DtSrcPerfil: TDataSource;
    EdtSenhaRepetir: TcxTextEdit;
    LblSenhaRepetir: TLabel;
    EdtFiltrarLogin: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdtFiltrarNome: TcxTextEdit;
    GrdPrincipalTblFUN_NOME: TcxGridDBColumn;
    QryPrincipalUSR_ID: TIntegerField;
    QryPrincipalUSR_DATA: TDateField;
    QryPrincipalUSR_LOGIN: TStringField;
    QryPrincipalUSR_SENHA: TStringField;
    QryPrincipalUSR_EXPIRADA: TSmallintField;
    QryPrincipalUSR_ATIVO: TSmallintField;
    QryPrincipalUSR_OBSERVACAO: TMemoField;
    QryPrincipalPER_ID: TIntegerField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalPER_NOME: TStringField;
    QryPrincipalFUN_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DtStPrincipalUSR_SENHAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DbEdtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdtFiltrarLoginPropertiesChange(Sender: TObject);
    procedure EdtFiltrarNomePropertiesChange(Sender: TObject);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
    procedure QryPrincipalAfterScroll(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
  public
    procedure Filtrar(const Campo, Filtro: string);
    procedure Editar(const Login: string);
  end;

var
  FrmSistemaUsuario: TFrmSistemaUsuario;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Sistema.Modulo, Emater.Sistema.Consts;

procedure TFrmSistemaUsuario.BtnNovoClick(Sender: TObject);
begin
  inherited;
  EdtSenhaRepetir.Text := '';
  if DbEdtLogin.CanFocus then
    DbEdtLogin.SetFocus
  else
    if DbLkpCmbBxPerfil.CanFocus then
      DbLkpCmbBxPerfil.SetFocus;
end;

procedure TFrmSistemaUsuario.BtnSalvarClick(Sender: TObject);
begin
  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    begin
      if ((DbEdtSenha.Text <> EdtSenhaRepetir.Text) or (DbEdtSenha.Text = '')) then
        begin
          MSG.Aviso(SISTEMA_MSG_SENHA_CONFIRMACAO);
          Abort;
        end;

      if (QryPrincipal.State = dsInsert) then
        QryPrincipalUSR_SENHA.AsString := Str.MD5(QryPrincipalUSR_SENHA.AsString);
    end;
  inherited;
end;

procedure TFrmSistemaUsuario.DbEdtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if not (CharInSet(Key, ['0'..'9', 'A'..'Z', 'a'..'z', '.', '_', #8])) then
    Key := #0;
end;

procedure TFrmSistemaUsuario.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;
  LblLogin.Enabled := (QryPrincipal.State in [dsInsert]);
  DbEdtLogin.Enabled := (QryPrincipal.State in [dsInsert]);
  DbEdtSenha.Enabled := (QryPrincipal.State in [dsInsert]);
  LblSenha.Enabled := (QryPrincipal.State in [dsInsert]);
  EdtSenhaRepetir.Enabled := (QryPrincipal.State in [dsInsert]);
  LblSenhaRepetir.Enabled := (QryPrincipal.State in [dsInsert]);
end;

procedure TFrmSistemaUsuario.DtStPrincipalUSR_SENHAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Copy(QryPrincipalUSR_SENHA.AsString, 1, 8);
end;

procedure TFrmSistemaUsuario.Editar(const Login: string);
begin
  Filtrar('usr_login', Login);
  GrdPrincipal.Visible := False;
  EdtFiltrarLogin.Visible := False;
  EdtFiltrarLogin.Visible := False;
  Height := 379;
  BtnCancelar.Left := BtnSalvar.Left;
  BtnSalvar.Left := BtnNovo.Left;
  BtnNovo.Visible := False;
  BtnExcluir.Visible := False;
  ShowModal;
end;

procedure TFrmSistemaUsuario.EdtFiltrarLoginPropertiesChange(Sender: TObject);
begin
  if (EdtFiltrarNome.Text <> '') then
    begin
      EdtFiltrarNome.Properties.OnChange := nil;
      EdtFiltrarNome.Clear;
      EdtFiltrarNome.Properties.OnChange := EdtFiltrarNomePropertiesChange;
    end;
  Filtrar('usr_login', EdtFiltrarLogin.Text + '%');
end;

procedure TFrmSistemaUsuario.EdtFiltrarNomePropertiesChange(Sender: TObject);
begin
  if (EdtFiltrarLogin.Text <> '') then
    begin
      EdtFiltrarLogin.Properties.OnChange := nil;
      EdtFiltrarLogin.Clear;
      EdtFiltrarLogin.Properties.OnChange := EdtFiltrarLoginPropertiesChange;
    end;
  Filtrar('fun_nome', '%' + EdtFiltrarNome.Text + '%');
end;

procedure TFrmSistemaUsuario.Filtrar(const Campo, Filtro: string);
begin
  QryPrincipal.Filter := Campo + ' like ' + QuotedStr(Filtro);
  QryPrincipal.Filtered := (Filtro <> '') and (Filtro <> '%%');
end;

procedure TFrmSistemaUsuario.FormCreate(Sender: TObject);
begin
  Legenda := 'Usuário';
  inherited;
  CampoChave := 'USR_ID';
  Tabela := 'TAB_SIS_USUARIO';
end;

procedure TFrmSistemaUsuario.FormShow(Sender: TObject);
begin
  inherited;
  if DbEdtSenha.CanFocus then
    DbEdtSenha.SetFocus
  else
    if DbLkpCmbBxPerfil.CanFocus then
      DbLkpCmbBxPerfil.SetFocus;
end;

procedure TFrmSistemaUsuario.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.DtStUsuario.Close;
  DtmSistemaModulo.DtStUsuario.Open;
end;

procedure TFrmSistemaUsuario.QryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  EdtSenhaRepetir.Text := DbEdtSenha.Text;
end;

procedure TFrmSistemaUsuario.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalUSR_DATA.Value := Date;
  QryPrincipalUSR_EXPIRADA.Value := 1;
  QryPrincipalUSR_ATIVO.Value := 1;
end;

end.
