unit Emater.Sistema.Senha.Alterar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, dxGDIPlusClasses, Emater.Base.Basico,
  dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit;

type
  TFrmSistemaSenhaAlterar = class(TFrmBaseBasico)
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    LblUsuarioLegenda: TLabel;
    LblUsuario: TLabel;
    LblMensagem: TLabel;
    ImgLocked: TImage;
    LblSenhaAtual: TLabel;
    LblNovaSenha: TLabel;
    LblRepetirSenha: TLabel;
    BvlBottom: TBevel;
    Shape1: TShape;
    Shape3: TShape;
    ImgIcone: TImage;
    Shape2: TShape;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    EdtSenhaAtual: TcxTextEdit;
    EdtNovaSenha: TcxTextEdit;
    EdtRepetirSenha: TcxTextEdit;
    procedure BtnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FUsuario: string;
  public
    property Usuario: string read FUsuario;
    function Execute(AUsuario: string): TModalResult;
  end;

var
  FrmSistemaSenhaAlterar: TFrmSistemaSenhaAlterar;

implementation

uses Emater.Conexao.Modulo, Emater.Recurso.Consts, Emater.Sistema.Consts, Emater.Base.Consts, Emater.Recurso.Modulo;

{$R *.dfm}

procedure TFrmSistemaSenhaAlterar.BtnOKClick(Sender: TObject);
begin
  if DtmConexaoModulo.ValidarUsuario(FUsuario, Str.MD5(EdtSenhaAtual.Text)) then
    begin
      if ((EdtNovaSenha.Text <> EdtRepetirSenha.Text) or (Trim(EdtNovaSenha.Text) = '')) and (EdtNovaSenha.Text <> EdtSenhaAtual.Text) then
        begin
          Hide;
          Msg.Aviso(SISTEMA_MSG_SENHA_NOVA);
          Show;
          EdtNovaSenha.SetFocus;
          EdtNovaSenha.SelectAll;
        end
      else
        begin
          if DtmConexaoModulo.AlterarSenha(FUsuario, Str.MD5(EdtNovaSenha.Text)) then
            begin
              Hide;
              Msg.Informacao(SISTEMA_MSG_SENHA_ALTERADA);
              ModalResult := mrOk;
            end;
        end;
    end;
end;

function TFrmSistemaSenhaAlterar.Execute(AUsuario: string): TModalResult;
begin
  LblUsuario.Caption := DtmConexaoModulo.UsuarioNome;
  FUsuario := AUsuario;
  Result := ShowModal;
end;

procedure TFrmSistemaSenhaAlterar.FormCreate(Sender: TObject);
begin
  inherited;

  ImgIcone.Picture.Icon := Application.Icon; // Carrega o ícone do sistema.
  BtnOK.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SELECIONAR);
  BtnCancelar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
end;

end.
