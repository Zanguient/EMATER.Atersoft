unit Emater.Sistema.Ajuda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxLabel, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg, dxSkinSeven,
  dxSkinSevenClassic, ShellApi;

type
  TFrmSistemaAjuda = class(TFrmBaseBasico)
    Shape1: TShape;
    LblCopyright: TLabel;
    ShpLinha: TShape;
    ShpJanela: TShape;
    ImgLogotipoGrande: TImage;
    LblLink: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape3: TShape;
    ImgIcone: TImage;
    cxLabel1: TcxLabel;
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
  FrmSistemaAjuda: TFrmSistemaAjuda;

implementation

{$R *.dfm}

uses Emater.Classe.Arquivo;

procedure TFrmSistemaAjuda.FormCreate(Sender: TObject);
begin
  inherited;

  ImgIcone.Picture.Icon := Application.Icon;
end;

procedure TFrmSistemaAjuda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) then
    Close;
end;

procedure TFrmSistemaAjuda.LblLinkClick(Sender: TObject);
begin
  ShellExecute(Application.Handle,
    PChar('open'),
    PChar('mailto:nps.sistemas@emater.pa.gov.br'),
    PChar(0),
    nil,
    SW_NORMAL);
end;

end.
