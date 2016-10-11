unit Emater.Sistema.Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxLabel, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, dxSkinSeven,
  dxSkinSevenClassic, ShellApi;

type
  TFrmSistemaSobre = class(TFrmBaseBasico)
    Shape1: TShape;
    LblCopyright: TLabel;
    ShpLinha: TShape;
    ShpJanela: TShape;
    ImgLogotipoGrande: TImage;
    LblNome: TLabel;
    LblVersao: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LblLink: TLabel;
    MemoEquipe: TMemo;
    Label1: TLabel;
    cxLabel1: TcxLabel;
    Shape3: TShape;
    ImgIcone: TImage;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LblLinkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSistemaSobre: TFrmSistemaSobre;

implementation

{$R *.dfm}

uses Emater.Classe.Arquivo;

procedure TFrmSistemaSobre.FormCreate(Sender: TObject);
begin
  inherited;

  ImgIcone.Picture.Icon := Application.Icon;
  LblVersao.Caption := '(' + TArquivo.Versao(Application.ExeName) + ')';
end;

procedure TFrmSistemaSobre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) then
    Close;
end;

procedure TFrmSistemaSobre.LblLinkClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,
    PChar('open'),
    PChar('mailto:contato@sevensoft.com.br'),
    PChar(0),
    nil,
    SW_NORMAL);
end;

end.
