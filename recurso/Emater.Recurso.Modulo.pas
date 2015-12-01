unit Emater.Recurso.Modulo;

interface

uses
  System.SysUtils, System.Classes, cxGraphics, Vcl.ImgList, Vcl.Controls, cxGridBandedTableView, cxStyles, cxGridTableView, cxClasses,
  cxContainer, cxEdit, System.ImageList;

type
  TDtmRecursoModulo = class(TDataModule)
    ImgLstPequenas: TcxImageList;
    ImgLstHabilitadas: TcxImageList;
    ImgLstDesabilitadas: TcxImageList;
    cxStyleRepository: TcxStyleRepository;
    cxStyleHeader: TcxStyle;
    cxStyleEven: TcxStyle;
    cxStyleSelection: TcxStyle;
    StlSheet01: TcxGridTableViewStyleSheet;
    StlSheet02: TcxGridTableViewStyleSheet;
    StlBandSheet01: TcxGridBandedTableViewStyleSheet;
    StlBandSheet02: TcxGridBandedTableViewStyleSheet;
    ImgLstGrandes: TcxImageList;
    cxDefaultEditStyleController: TcxDefaultEditStyleController;
    cxEditStyleController: TcxEditStyleController;
  end;

var
  DtmRecursoModulo: TDtmRecursoModulo;

implementation

{$R *.dfm}
{$R bin\Glyphs.res}
{$R bin\Icons.res}

end.
