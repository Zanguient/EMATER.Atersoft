unit Emater.Sistema.Abertura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, JPEG, dxGDIPlusClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2013White, cxLabel, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmSistemaAbertura = class(TForm)
    ShpJanela: TShape;
    Shape1: TShape;
    Shape2: TShape;
    ImgLogotipoGrande: TImage;
    LblCopyright: TLabel;
    Shape3: TShape;
    ImgIcone: TImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    procedure FormCreate(Sender: TObject);
  end;

var
  FrmSistemaAbertura: TFrmSistemaAbertura;

implementation

{$R *.DFM}

procedure TFrmSistemaAbertura.FormCreate(Sender: TObject);
begin
  ImgIcone.Picture.Icon := Application.Icon;

  Windows.ShowWindow(Application.Handle, SW_HIDE);
  SetWindowLong(Application.Handle, GWL_EXSTYLE, (GetWindowLong(Application.Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW) and not WS_EX_APPWINDOW);
end;

end.
