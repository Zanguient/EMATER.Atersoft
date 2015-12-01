unit Emater.Sistema.Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet, pFIBDataSet, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu;

type
  TFrmSistemaUsuario = class(TFrmBaseTabela)
    DtStPrincipalUSR_ID: TFIBIntegerField;
    DtStPrincipalUSR_DATA: TFIBDateField;
    DtStPrincipalUSR_LOGIN: TFIBStringField;
    DtStPrincipalUSR_SENHA: TFIBStringField;
    DtStPrincipalUSR_EXPIRADA: TFIBBooleanField;
    DtStPrincipalUSR_ATIVO: TFIBBooleanField;
    DtStPrincipalUSR_OBSERVACAO: TFIBMemoField;
    DtStPrincipalPER_ID: TFIBIntegerField;
    DtStPrincipalPER_NOME: TFIBStringField;
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
    DtStPrincipalFUN_NOME: TFIBStringField;
    GrdPrincipalTblFUN_NOME: TcxGridDBColumn;
    DtStPrincipalREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_REPLICADO: TFIBBooleanField;
    DtStPrincipalREG_USUARIO: TFIBStringField;
    DtStPrincipalREG_MODIFICADO: TFIBDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure DtStPrincipalAfterPost(DataSet: TDataSet);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DtStPrincipalNewRecord(DataSet: TDataSet);
    procedure DtStPrincipalAfterScroll(DataSet: TDataSet);
    procedure DtStPrincipalUSR_SENHAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DbEdtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EdtFiltrarLoginPropertiesChange(Sender: TObject);
    procedure EdtFiltrarNomePropertiesChange(Sender: TObject);
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
  if (DtStPrincipal.State in [dsEdit, dsInsert]) then
    begin
      if ((DbEdtSenha.Text <> EdtSenhaRepetir.Text) or (DbEdtSenha.Text = '')) then
        begin
          MSG.Aviso(SISTEMA_MSG_SENHA_CONFIRMACAO);
          Abort;
        end;

      if (DtStPrincipal.State = dsInsert) then
        DtStPrincipalUSR_SENHA.AsString := Str.MD5(DtStPrincipalUSR_SENHA.AsString);
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
  LblLogin.Enabled := (DtStPrincipal.State in [dsInsert]);
  DbEdtLogin.Enabled := (DtStPrincipal.State in [dsInsert]);
  DbEdtSenha.Enabled := (DtStPrincipal.State in [dsInsert]);
  LblSenha.Enabled := (DtStPrincipal.State in [dsInsert]);
  EdtSenhaRepetir.Enabled := (DtStPrincipal.State in [dsInsert]);
  LblSenhaRepetir.Enabled := (DtStPrincipal.State in [dsInsert]);
end;

procedure TFrmSistemaUsuario.DtStPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.DtStUsuario.Close;
  DtmSistemaModulo.DtStUsuario.Open;
end;

procedure TFrmSistemaUsuario.DtStPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  EdtSenhaRepetir.Text := DbEdtSenha.Text;
end;

procedure TFrmSistemaUsuario.DtStPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtStPrincipalUSR_DATA.Value := Date;
  DtStPrincipalUSR_EXPIRADA.Value := True;
  DtStPrincipalUSR_ATIVO.Value := True;
end;

procedure TFrmSistemaUsuario.DtStPrincipalUSR_SENHAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := Copy(DtStPrincipalUSR_SENHA.AsString, 1, 8);
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
  DtStPrincipal.Filter := Campo + ' like ' + QuotedStr(Filtro);
  DtStPrincipal.Filtered := (Filtro <> '') and (Filtro <> '%%');
end;

procedure TFrmSistemaUsuario.FormCreate(Sender: TObject);
begin
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

end.
