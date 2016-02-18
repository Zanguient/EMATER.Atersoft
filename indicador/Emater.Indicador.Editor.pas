unit Emater.Indicador.Editor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, Vcl.ComCtrls, cxContainer, cxEdit, cxTreeView, cxScrollBox, cxTextEdit,
  Vcl.StdCtrls, cxDBEdit;

type
  TAtributoTipo = (atNenhum, atTextoLongo, atInteiro, atMoeda, atLogico, atReferencia, atData, atHora, atDataHora, atTextoCurto);

  TFrmIndicadorEditor = class(TFrmBaseBasico)
    QryIndicador: TFDQuery;
    UpdtIndicador: TFDUpdateSQL;
    DtSrcIndicador: TDataSource;
    QryIndicadorRGA_ID: TLargeintField;
    QryIndicadorRGA_VALOR: TMemoField;
    QryIndicadorATR_ID: TIntegerField;
    QryIndicadorREG_ID: TLargeintField;
    QryIndicadorREG_EXCLUIDO: TSmallintField;
    QryIndicadorREG_REPLICADO: TSmallintField;
    QryIndicadorREG_USUARIO: TStringField;
    QryIndicadorREG_MODIFICADO: TSQLTimeStampField;
    QryIndicadorATR_DESCRICAO: TStringField;
    QryIndicadorATR_TIPO: TSmallintField;
    QryIndicadorATR_SQL_LISTA: TMemoField;
    QryIndicadorATR_SQL_PADRAO: TMemoField;
    QryIndicadorATR_OBRIGATORIO: TSmallintField;
    QryIndicadorATR_SOMENTE_LEITURA: TSmallintField;
    cxScrollBox: TcxScrollBox;
    procedure FormCreate(Sender: TObject);
  private
    FTopo: Integer;
  end;

var
  FrmIndicadorEditor: TFrmIndicadorEditor;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo;

procedure TFrmIndicadorEditor.FormCreate(Sender: TObject);
var
  Lbl: TLabel;
  Txt: TcxDBTextEdit;
begin
  inherited;

  QryIndicador.Open;
  FTopo := 0;
  while not QryIndicador.EOF do
  begin

    if (QryIndicadorATR_TIPO.Value = Ord(atTextoCurto)) then
    begin
      FTopo := FTopo + 32;

      Lbl := TLabel.Create(Self);
      Lbl.Parent := cxScrollBox;
      Lbl.Left := 16;
      Lbl.Top := FTopo;
      Lbl.Caption := QryIndicadorATR_DESCRICAO.Value + ':';

      Txt := TcxDBTextEdit.Create(Self);
      Txt.Parent := cxScrollBox;
      Txt.Top := FTopo - 3;
      Txt.Left := 150;
      Txt.Width := 300;
      Txt.DataBinding.DataSource := DtSrcIndicador;
      Txt.DataBinding.DataField := '';
    end;

    QryIndicador.Next;
  end;

end;

end.
