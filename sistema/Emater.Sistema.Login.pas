unit Emater.Sistema.Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,  Dialogs, Forms, StdCtrls, cxButtons, ExtCtrls, IniFiles,
  Menus, DB, StrUtils, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, Emater.Base.Basico,
  cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxClasses, dxSkinsForm;

type
  TFrmSistemaLogin = class(TFrmBaseBasico)
    Shape1: TShape;
    Shape3: TShape;
    ImgIcone: TImage;
    Shape2: TShape;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    BtnCancelar: TcxButton;
    BtnEncerrar: TcxButton;
    BtnMais: TcxButton;
    PnlLogin: TPanel;
    LblTitulo: TLabel;
    EdtServerName: TcxTextEdit;
    EdtDatabase: TcxTextEdit;
    EdtUserName: TcxTextEdit;
    EdtPassword: TcxTextEdit;
    BtnOK: TcxButton;
    dxSkinController: TdxSkinController;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure BtnMaisClick(Sender: TObject);
    procedure EdtUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRoleNameKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure SalvarParametros;
  end;

var
  FrmSistemaLogin: TFrmSistemaLogin;

implementation

uses Emater.Conexao.Modulo, Emater.Sistema.Consts, Emater.Base.Consts, Emater.Classe.Arquivo, Emater.Recurso.Consts, Emater.Classe.Log;

{$R *.dfm}

procedure TFrmSistemaLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := BtnCancelar.Enabled;
end;

procedure TFrmSistemaLogin.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  inherited;

  ImgIcone.Picture.Icon := Application.Icon;
  BtnOK.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SELECIONAR);
  BtnCancelar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
  BtnEncerrar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
  BtnMais.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_PROPRIEDADES);

  // Obtendo parâmetros do arquivo de configuração:
  Ini := TIniFile.Create(TArquivo.GerarIni(Application.ExeName));
  try
    EdtServerName.Text := Ini.ReadString(SISTEMA_INI_SECAO, SISTEMA_INI_SERVIDOR, SISTEMA_INI_SERVIDOR_PADRAO);
    EdtDatabase.Text := Ini.ReadString(SISTEMA_INI_SECAO, SISTEMA_INI_BD, SISTEMA_INI_BD_PADRAO);
    EdtUserName.Text := Ini.ReadString(SISTEMA_INI_SECAO, SISTEMA_INI_USUARIO, '');
  finally
    Ini.Free;
  end;
end;

procedure TFrmSistemaLogin.SalvarParametros;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(TArquivo.GerarIni(Application.ExeName));
  try
    Ini.WriteString(SISTEMA_INI_SECAO, SISTEMA_INI_SERVIDOR, EdtServerName.Text);
    Ini.WriteString(SISTEMA_INI_SECAO, SISTEMA_INI_BD, EdtDatabase.Text);
    Ini.WriteString(SISTEMA_INI_SECAO, SISTEMA_INI_USUARIO, EdtUserName.Text);
  finally
    Ini.Free;
  end;
end;

procedure TFrmSistemaLogin.BtnOKClick(Sender: TObject);
begin
  CodeSite.EnterMethod(Self.Name + '.BtnOKClick().');
  try
    EdtUserName.Text := Trim(EdtUserName.Text);
    EdtPassword.Text := Trim(EdtPassword.Text);
    if (EdtUserName.Text = '') or (EdtPassword.Text = '') then
      begin
        Hide;
        Msg.Aviso(SISTEMA_MSG_USUARIO_SENHA_REQUERIDO);
        Show;
        if (EdtUserName.Text <> '') then
          EdtPassword.SetFocus
        else
          begin
            EdtUserName.SetFocus;
            EdtUserName.SelectAll;
          end;
      end
    else
      begin
        if (EdtUserName.Text = DtmConexaoModulo.UsuarioNome) then
          begin
            if (EdtPassword.Text = DtmConexaoModulo.Senha) then
              begin
                DtmConexaoModulo.Bloqueado := False;
                CodeSite.SendMsg('O usuário informado era o mesmo usuário autenticado anteriormente: [' + EdtUserName.Text + '].');
                CodeSite.SendMsg('O usuário continuará autenticado.');
                CodeSite.SendMsg('Acesso permitido ao sistema.');
                ModalResult := mrOK;
              end
            else
              begin
                Hide;
                Msg.Erro(SISTEMA_MSG_USUARIO_INVALIDO);
                Show;
                EdtPassword.SetFocus;
                EdtPassword.SelectAll;
                ModalResult := mrNone;
              end;
          end
        else
          begin
            Hide;

            try
              if DtmConexaoModulo.Conectar(EdtServerName.Text, EdtDatabase.Text, EdtUserName.Text, Str.MD5(EdtPassword.Text)) then
                begin
                  CodeSite.SendMsg('Usuário autenticado com sucesso: [' + EdtUserName.Text + '].');
                  CodeSite.SendMsg('Servidor: ' + EdtServerName.Text + ':' + EdtDatabase.Text);
                  CodeSite.SendMsg('Acesso permitido ao sistema.');
                  SalvarParametros;
                  DtmConexaoModulo.Bloqueado := False;
                  ModalResult := mrOk;
                end
              else
                begin
                  Show;
                  ModalResult := mrNone;
                  if EdtUserName.CanFocus then
                    EdtUserName.SetFocus;
                end;
            except
              Show;
            end;
          end;
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnOKClick().');
  end;
end;

procedure TFrmSistemaLogin.BtnMaisClick(Sender: TObject);
begin
  if (BtnMais.Caption = SISTEMA_CONST_MENOS)
  then
    begin
      EdtServerName.Visible := False;
      EdtDatabase.Visible := False;

      LblTitulo.Caption := 'Login e a senha para acesso';

      EdtUserName.Visible := True;
      EdtPassword.Visible := True;

      BtnOK.Enabled := True;
      BtnCancelar.Enabled := True;

      BtnMais.Caption := SISTEMA_CONST_MAIS;
      BtnMais.Hint := SISTEMA_CONST_MAIS_DICA;
      EdtUserName.SetFocus;
    end
  else
    begin
      EdtServerName.Visible := True;
      EdtDatabase.Visible := True;

      LblTitulo.Caption := 'Informe o servidor e banco de dados';
      EdtUserName.Visible := False;
      EdtPassword.Visible := False;

      BtnOK.Enabled := False;
      BtnCancelar.Enabled := False;

      BtnMais.Caption := SISTEMA_CONST_MENOS;
      BtnMais.Hint := SISTEMA_CONST_MENOS_DICA;
      EdtServerName.SetFocus;
    end;
end;

procedure TFrmSistemaLogin.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  if (Application.MainForm <> nil) then
    if not Application.MainForm.Showing then
      Params.WndParent := 0;

  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := 0;
end;

procedure TFrmSistemaLogin.FormShow(Sender: TObject);
begin
  inherited;
  EdtUserName.SetFocus;
  EdtUserName.SelectAll;

  if (EdtUserName.Text <> '') then
    EdtPassword.SetFocus;
end;

procedure TFrmSistemaLogin.EdtRoleNameKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1];
end;

procedure TFrmSistemaLogin.EdtUserNameKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase(Key)[1];
end;

end.
