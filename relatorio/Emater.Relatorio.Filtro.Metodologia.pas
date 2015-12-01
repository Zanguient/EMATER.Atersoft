unit Emater.Relatorio.Filtro.Metodologia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013White, Data.DB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmRelatorioFiltroMetodologia = class(TFrame)
    LblMetodologia: TLabel;
    LkpCmbBxMetodologia: TcxLookupComboBox;
    DtSrcMetodologia: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Relatorio.Modulo;

end.
