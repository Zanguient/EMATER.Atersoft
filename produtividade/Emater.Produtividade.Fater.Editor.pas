unit Emater.Produtividade.Fater.Editor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, Data.DB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, cxTextEdit, cxMemo, cxDBEdit, Vcl.StdCtrls, dxSkinSeven,
  dxSkinSevenClassic;

type
  TFrmProdutividadeFaterEditor = class(TFrmBaseBasico)
    DtSrcPrincipal: TDataSource;
    DbMemo: TcxDBMemo;
    procedure DbMemoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    procedure VisualizarTexto(const DataSet: TDataSet; const FieldName: string);
  end;

var
  FrmProdutividadeFaterEditor: TFrmProdutividadeFaterEditor;

implementation

{$R *.dfm}

{ TFrmProdutividadeFaterEditor }

procedure TFrmProdutividadeFaterEditor.DbMemoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    begin
      DbMemo.PostEditValue;
      Close;
    end;
end;

procedure TFrmProdutividadeFaterEditor.VisualizarTexto(const DataSet: TDataSet; const FieldName: string);
begin
  DtSrcPrincipal.DataSet := DataSet;
  DbMemo.DataBinding.DataField := FieldName;
  Caption := DataSet.FieldByName(FieldName).DisplayLabel;
  ShowModal;
end;

end.
