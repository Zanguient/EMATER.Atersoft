unit Emater.Base.Dialogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxPC,
  cxControls, cxGraphics, cxLookAndFeels, dxSkinsCore, cxPCdxBarPopupMenu, Emater.Base.Basico,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter, dxBarBuiltInMenu;

type
  TFrmBaseDialogo = class(TFrmBaseBasico)
    PgCntrlPrincipal: TcxPageControl;
    TbShtPrincipal: TcxTabSheet;
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    procedure FormCreate(Sender: TObject);
  end;

var
  FrmBaseDialogo: TFrmBaseDialogo;

implementation

{$R *.dfm}

uses Emater.Recurso.Consts;

procedure TFrmBaseDialogo.FormCreate(Sender: TObject);
begin
  inherited;
  BtnOK.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SELECIONAR);
  BtnCancelar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
end;

end.
