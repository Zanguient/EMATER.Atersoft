unit Emater.Relatorio.Filtro.UnidadeFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, Data.DB, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls;

type
  TFrmRelatorioFiltroUnidadeFuncionario = class(TFrame)
    LblUnidade: TLabel;
    LblFuncionario: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    LkpCmbBxFuncionario: TcxLookupComboBox;
    DtSrcUnidadeLocal: TDataSource;
    DtSrcFuncionarioLocal: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Emater.Relatorio.Modulo, Emater.Recurso.Modulo;

end.
