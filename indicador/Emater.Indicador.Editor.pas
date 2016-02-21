unit Emater.Indicador.Editor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, Vcl.ComCtrls, cxContainer, cxEdit, cxTreeView, cxScrollBox, cxTextEdit,
  Vcl.StdCtrls, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxCore, cxDateUtils, cxCalendar, cxMemo,
  cxCheckBox, cxSpinEdit, cxTimeEdit, cxFormats, Vcl.Menus, cxButtons;

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
    QryIndicadorATR_ORDEM: TSmallintField;
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    FTopo: Integer;
    procedure CriarLegenda(const ACaption: string);
    procedure CriarTextoCurto(const ID: Integer; AValue: Variant);
    procedure CriarMoeda(const ID: Integer; AValue: Variant);
    procedure CriarData(const ID: Integer; AValue: Variant);
    procedure CriarReferencia(const ID: Integer; ASQL: string; AValue: Variant);
    procedure CriarInteiro(const ID: Integer; AValue: Variant);
    procedure CriarTextoLongo(const ID: Integer; AValue: Variant);
    procedure CriarLogico(const ID: Integer; ACaption: TCaption; AValue: Variant);
    procedure CriarHora(const ID: Integer; AValue: Variant);
    procedure CriarDataHora(const ID: Integer; AValue: Variant);
  const
    FEspaco = 5;
  end;

var
  FrmIndicadorEditor: TFrmIndicadorEditor;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo;

procedure TFrmIndicadorEditor.CriarData(const ID: Integer; AValue: Variant);
var
  Data: TcxDateEdit;
begin
  Data := TcxDateEdit.Create(Self);
  Data.Parent := cxScrollBox;
  Data.Top := FTopo;
  Data.Left := 150;
  Data.Width := 120;
  Data.Tag := ID;
  Data.Properties.ShowTime := False;
  Data.Properties.SaveTime := False;
  if (AValue <> '') then
    Data.Date := AValue;
  FTopo := FTopo + Data.Height;
end;

procedure TFrmIndicadorEditor.CriarDataHora(const ID: Integer; AValue: Variant);
var
  DataHora: TcxDateEdit;
begin
  DataHora := TcxDateEdit.Create(Self);
  DataHora.Parent := cxScrollBox;
  DataHora.Top := FTopo;
  DataHora.Left := 150;
  DataHora.Width := 120;
  DataHora.Tag := ID;
  DataHora.Properties.Kind := ckDateTime;
  if (AValue <> '') then
    DataHora.Date := AValue;
  FTopo := FTopo + DataHora.Height;
end;

procedure TFrmIndicadorEditor.CriarHora(const ID: Integer; AValue: Variant);
var
  Hora: TcxTimeEdit;
begin
  Hora := TcxTimeEdit.Create(Self);
  Hora.Parent := cxScrollBox;
  Hora.Top := FTopo;
  Hora.Left := 150;
  Hora.Width := 120;
  Hora.Tag := ID;
  Hora.Properties.TimeFormat := tfHourMin;
  if (AValue <> '') then
    Hora.Time := AValue;
  FTopo := FTopo + Hora.Height;
end;

procedure TFrmIndicadorEditor.CriarLegenda(const ACaption: string);
var
  Legenda: TLabel;
begin
  FTopo := FTopo + FEspaco;
  Legenda := TLabel.Create(Self);
  Legenda.Parent := cxScrollBox;
  Legenda.Left := 16;
  Legenda.Top := FTopo + 3;
  Legenda.Caption := ACaption + ':';
  Legenda.Transparent := True;
end;

procedure TFrmIndicadorEditor.CriarMoeda(const ID: Integer; AValue: Variant);
var
  Moeda: TcxCurrencyEdit;
begin
  Moeda := TcxCurrencyEdit.Create(Self);
  Moeda.Parent := cxScrollBox;
  Moeda.Top := FTopo;
  Moeda.Left := 150;
  Moeda.Width := 120;
  Moeda.Tag := ID;
  if (AValue <> '') then
    Moeda.Value := AValue;
  FTopo := FTopo + Moeda.Height;
end;

procedure TFrmIndicadorEditor.CriarInteiro(const ID: Integer; AValue: Variant);
var
  Inteiro: TcxCurrencyEdit;
begin
  Inteiro := TcxCurrencyEdit.Create(Self);
  Inteiro.Parent := cxScrollBox;
  Inteiro.Top := FTopo;
  Inteiro.Left := 150;
  Inteiro.Width := 120;
  Inteiro.Tag := ID;
  Inteiro.Properties.DisplayFormat := ',0;-,0';
  Inteiro.Properties.DecimalPlaces := 0;
  Inteiro.Properties.UseThousandSeparator := True;
  if (AValue <> '') then
    Inteiro.Value := AValue;
  FTopo := FTopo + Inteiro.Height;
end;

procedure TFrmIndicadorEditor.CriarReferencia(const ID: Integer; ASQL: string; AValue: Variant);
var
  Referencia: TcxLookupComboBox;
  Ds: TDataSource;
  Qry: TFDQuery;
begin
  Qry := TFDQuery.Create(Self);
  Qry.Connection := DtmConexaoModulo.FDConnection;
  Qry.Transaction := DtmConexaoModulo.FDReadTransaction;
  Qry.UpdateTransaction := DtmConexaoModulo.FDWriteTransaction;
  Qry.SQL.Add(ASQL);
  Qry.Open;

  Ds := TDataSource.Create(Self);
  Ds.DataSet := Qry;

  Referencia := TcxLookupComboBox.Create(Self);
  Referencia.Parent := cxScrollBox;
  Referencia.Top := FTopo;
  Referencia.Left := 150;
  Referencia.Width := 350;
  Referencia.Tag := ID;
  Referencia.Text := Avalue;

  Referencia.Properties.ListSource := Ds;
  Referencia.Properties.ListFieldNames := 'DESCRICAO';
  Referencia.Properties.KeyFieldNames := 'ID';
  Referencia.Properties.ListOptions.ShowHeader := False;
  Referencia.Properties.DropDownRows := 12;

  FTopo := FTopo + Referencia.Height;
end;

procedure TFrmIndicadorEditor.CriarTextoCurto(const ID: Integer; AValue: Variant);
var
  TextoCurto: TcxTextEdit;
begin
  TextoCurto := TcxTextEdit.Create(Self);
  TextoCurto.Parent := cxScrollBox;
  TextoCurto.Top := FTopo;
  TextoCurto.Left := 150;
  TextoCurto.Width := 350;
  TextoCurto.Tag := ID;
  TextoCurto.Text := Avalue;
  FTopo := FTopo + TextoCurto.Height;
end;

procedure TFrmIndicadorEditor.CriarLogico(const ID: Integer; ACaption: TCaption; AValue: Variant);
var
  Logico: TcxCheckBox;
begin
  Logico := TcxCheckBox.Create(Self);
  Logico.Parent := cxScrollBox;
  Logico.Top := FTopo + 2;
  Logico.Left := 150;
  Logico.Width := 350;
  Logico.Tag := ID;
  Logico.Caption := ACaption;
  Logico.Transparent := True;
  if (not VarIsNull(AValue)) and (AValue <> '') and (AValue = 1) then
    Logico.Checked := True;
  FTopo := FTopo + Logico.Height;
end;

procedure TFrmIndicadorEditor.CriarTextoLongo(const ID: Integer; AValue: Variant);
var
  TextoLongo: TcxMemo;
begin
  TextoLongo := TcxMemo.Create(Self);
  TextoLongo.Parent := cxScrollBox;
  TextoLongo.Top := FTopo;
  TextoLongo.Left := 150;
  TextoLongo.Width := 350;
  TextoLongo.Height := 90;

  TextoLongo.Tag := ID;
  TextoLongo.Properties.ScrollBars := ssVertical;
  TextoLongo.Text := Avalue;
  FTopo := FTopo + TextoLongo.Height;
end;

procedure TFrmIndicadorEditor.FormCreate(Sender: TObject);
begin
  inherited;

  QryIndicador.Open;
  FTopo := 0;
  while not QryIndicador.EOF do
  begin

    case QryIndicadorATR_TIPO.Value of
      Ord(atTextoLongo):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarTextoLongo(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atInteiro):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarInteiro(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atMoeda):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarMoeda(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atLogico):
        begin
          CriarLogico(QryIndicadorATR_ORDEM.Value, QryIndicadorATR_DESCRICAO.AsString, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atReferencia):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarReferencia(QryIndicadorATR_ORDEM.Value, QryIndicadorATR_SQL_LISTA.AsString, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atData):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarData(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atHora):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarHora(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atDataHora):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarDataHora(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
      Ord(atTextoCurto):
        begin
          CriarLegenda(QryIndicadorATR_DESCRICAO.AsString);
          CriarTextoCurto(QryIndicadorATR_ORDEM.Value, QryIndicadorRGA_VALOR.Value);
        end;
    end;

    QryIndicador.Next;
  end;

end;

initialization
  FormatSettings.LongTimeFormat := 'hh:mm';
  cxFormatController.UseDelphiDateTimeFormats := True;

end.
