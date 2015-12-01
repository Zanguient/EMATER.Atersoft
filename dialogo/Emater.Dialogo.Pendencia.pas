unit Emater.Dialogo.Pendencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxPC,
  cxControls, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImageComboBox, DBClient, Menus,
  cxLookAndFeels, dxSkinsCore, cxPCdxBarPopupMenu, Emater.Base.Basico,
  cxNavigator, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter;

type
  TFrmDialogoPendencia = class(TFrmBaseBasico)
    BtnFechar: TcxButton;
    CdsCampo: TClientDataSet;
    DtSrcCampo: TDataSource;
    CdsCampoIMAGEM: TIntegerField;
    CdsCampoCAMPO: TStringField;
    Label1: TLabel;
    Bevel1: TBevel;
    ImgIcon: TImage;
    cxGrdFld: TcxGrid;
    cxGrdFldTbl: TcxGridDBTableView;
    cxGrdFldTblIMAGEM: TcxGridDBColumn;
    cxGrdFldTblCAMPO: TcxGridDBColumn;
    cxGrdFldLvl: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Adicionar(const aLabel: string; aImage: Integer);
  end;

var
  FrmDialogoPendencia: TFrmDialogoPendencia;

implementation

uses Emater.Recurso.Consts, Emater.Recurso.Modulo;

{$R *.dfm}

procedure TFrmDialogoPendencia.FormCreate(Sender: TObject);
begin
  inherited;
  // Carrega recursos:
  BtnFechar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
  ImgIcon.Picture.Icon.Handle := LoadIcon(HInstance, RECURSO_ICON_AVISO);

  TcxImageComboBoxProperties(cxGrdFldTblIMAGEM.Properties).Images := DtmRecursoModulo.ImgLstPequenas;
  cxGrdFldTbl.Styles.ContentEven := DtmRecursoModulo.cxStyleEven;
  cxGrdFldTbl.Styles.Inactive := DtmRecursoModulo.cxStyleSelection;
  cxGrdFldTbl.Styles.Selection := DtmRecursoModulo.cxStyleSelection;

  CdsCampo.CreateDataSet;
end;

procedure TFrmDialogoPendencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CdsCampo.Close;
end;

procedure TFrmDialogoPendencia.Adicionar(const aLabel: string; aImage: Integer);
begin
{$WARNINGS OFF}
  with CdsCampo do
    begin
      Append;
      CdsCampoIMAGEM.Value := aImage;
      CdsCampoCAMPO.Value := aLabel;
      Post;
    end;
{$WARNINGS ON}
end;

end.
