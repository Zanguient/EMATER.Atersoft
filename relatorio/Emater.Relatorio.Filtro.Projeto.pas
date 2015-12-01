unit Emater.Relatorio.Filtro.Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB;

type
  TFrmRelatorioFiltroProjeto = class(TFrame)
    DtSrcProjeto: TDataSource;
    LkpCmbBxProjeto: TcxLookupComboBox;
    LblProjeto: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Emater.Relatorio.Modulo, Emater.Recurso.Modulo;

end.
