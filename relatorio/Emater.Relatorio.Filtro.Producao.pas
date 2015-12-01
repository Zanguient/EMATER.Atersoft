unit Emater.Relatorio.Filtro.Producao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2013White, Data.DB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.StdCtrls, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmRelatorioFiltroProducao = class(TFrame)
    LblGrupo: TLabel;
    LkpCmbBxGrupo: TcxLookupComboBox;
    DtSrcGrupo: TDataSource;
    LblClasse: TLabel;
    LkpCmbBxClasse: TcxLookupComboBox;
    DtSrcClasse: TDataSource;
    LblCultura: TLabel;
    LkpCmbBxCultura: TcxLookupComboBox;
    DtSrcCultura: TDataSource;
    LkpCmbBxSistema: TcxLookupComboBox;
    LblSistema: TLabel;
    DtSrcSistema: TDataSource;
    LblCategoria: TLabel;
    LkpCmbBxCategoria: TcxLookupComboBox;
    DtSrcCategoria: TDataSource;
    LblAtividade: TLabel;
    LkpCmbBxAtividade: TcxLookupComboBox;
    DtSrcAtividade: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Emater.Relatorio.Modulo, Emater.Recurso.Modulo;

end.
