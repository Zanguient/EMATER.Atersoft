unit Emater.Relatorio.Filtro.UnidadePeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, Data.DB, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar;

type
  TFrmRelatorioFiltroUnidadePeriodo = class(TFrame)
    DtSrcUnidadeLocal: TDataSource;
    LblUnidade: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    EdtDataInicio: TcxDateEdit;
    LblPeriodoDe: TLabel;
    LblPeriodoAte: TLabel;
    EdtDataFim: TcxDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Emater.Relatorio.Modulo, Emater.Recurso.Modulo;

end.
