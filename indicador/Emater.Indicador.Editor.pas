unit Emater.Indicador.Editor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, Vcl.ComCtrls, cxContainer, cxEdit, cxTreeView, cxScrollBox, cxTextEdit,
  Vcl.StdCtrls, cxDBEdit, cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxCore, cxDateUtils, cxCalendar, cxMemo,
  cxCheckBox, cxSpinEdit, cxTimeEdit, cxFormats, Vcl.Menus, cxButtons, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Vcl.ExtCtrls, cxLabel, cxDBLabel,
  dxGDIPlusClasses;

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
    PgCntrRegistro: TcxPageControl;
    TbShtRegistro: TcxTabSheet;
    QryRegistro: TFDQuery;
    QryRegistroREG_ID: TLargeintField;
    QryRegistroREG_DATA: TDateField;
    QryRegistroIND_ID: TIntegerField;
    QryRegistroUND_ID: TIntegerField;
    QryRegistroREG_EXCLUIDO: TSmallintField;
    QryRegistroREG_REPLICADO: TSmallintField;
    QryRegistroREG_USUARIO: TStringField;
    QryRegistroREG_MODIFICADO: TSQLTimeStampField;
    QryRegistroUND_NOME: TStringField;
    QryRegistroIND_DESCRICAO: TStringField;
    QryRegistroIND_CHAVE: TStringField;
    DtSrcRegistro: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DbLblIndicador: TcxDBLabel;
    DbLblData: TcxDBLabel;
    DbLblEscritorio: TcxDBLabel;
    DbLblChave: TcxDBLabel;
    ShpIndicador: TShape;
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure AtributoAlterar(Sender: TObject);
  private
    FTopo: Integer;
    FAtributoAlteradoLista: array of Integer;
    FPrimeiroControle: TcxCustomEditContainer;
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
    procedure DefinirFoco(const FControle: TcxCustomEditContainer);
    function AtributoAlterado(ID: Integer): Boolean;
  public
    procedure Editar(const IDRegistro: Largeint);
    procedure Novo;
    procedure Visualizar(const ID: Largeint);
  const
    FEspaco = 6;
    FLeft = 170;
  end;

var
  FrmIndicadorEditor: TFrmIndicadorEditor;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Indicador.Selecao, Emater.Indicador.Consts;

procedure TFrmIndicadorEditor.BtnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFrmIndicadorEditor.BtnOKClick(Sender: TObject);
var
  I, ID: Integer;
  Pendente: Boolean;

  procedure MsgAtributoObrigatorio;
  begin
    Msg.Aviso(Format(INDICADOR_ATRIBUTO_OBRIGATORIO, [QryIndicadorATR_DESCRICAO.AsString]));
    TcxCustomEditContainer(Components[I]).SetFocus;
    Pendente := True;
  end;

begin
  Pendente := False;

  if not DtmConexaoModulo.FDWriteTransaction.Active then
    DtmConexaoModulo.FDWriteTransaction.StartTransaction;

  if not DtmConexaoModulo.FDReadTransaction.Active then
    DtmConexaoModulo.FDReadTransaction.StartTransaction;

  for I := 0 to ComponentCount - 1 do
    begin
      if (Components[I] is TcxCustomEditContainer)  then
        begin

          ID := TcxCustomEditContainer(Components[I]).Tag;

          if (ID > 0) and (QryIndicador.Locate('ATR_ORDEM', ID, [])) then
            begin

              QryIndicador.Edit;
              case QryIndicadorATR_TIPO.Value of
                Ord(atTextoLongo):
                  begin
                    if (QryIndicadorATR_OBRIGATORIO.Value = 1) and (TcxMemo(Components[I]).Text = '') then
                      begin
                        MsgAtributoObrigatorio;
                        Break;
                      end
                    else
                      if (TcxMemo(Components[I]).Text <> '') then
                        QryIndicadorRGA_VALOR.AsString := TcxMemo(Components[I]).Text;
                  end;
                Ord(atInteiro), Ord(atMoeda):
                  begin
                    if (QryIndicadorATR_OBRIGATORIO.Value = 1) and (TcxCurrencyEdit(Components[I]).Text = '') then
                      begin
                        MsgAtributoObrigatorio;
                        Break;
                      end
                    else
                      if (TcxCurrencyEdit(Components[I]).Text <> '') then
                        QryIndicadorRGA_VALOR.AsString := FloatToStr(TcxCurrencyEdit(Components[I]).Value);
                  end;
                Ord(atLogico):
                  begin
                    if (TcxCheckBox(Components[I]).Checked) then
                      QryIndicadorRGA_VALOR.AsString := '1'
                    else
                      QryIndicadorRGA_VALOR.AsString := '0';
                  end;
                Ord(atReferencia):
                  begin
                    if (QryIndicadorATR_OBRIGATORIO.Value = 1) and (TcxLookupComboBox(Components[I]).Text = '') then
                      begin
                        MsgAtributoObrigatorio;
                        Break;
                      end
                    else
                      if (TcxLookupComboBox(Components[I]).Text <> '') then
                        QryIndicadorRGA_VALOR.AsString := TcxLookupComboBox(Components[I]).EditValue;
                  end;
                Ord(atData), Ord(atDataHora):
                  begin
                    if (QryIndicadorATR_OBRIGATORIO.Value = 1) and (TcxDateEdit(Components[I]).Text = '') then
                      begin
                        MsgAtributoObrigatorio;
                        Break;
                      end
                    else
                      if (TcxDateEdit(Components[I]).Text <> '') then
                        QryIndicadorRGA_VALOR.AsString := TcxDateEdit(Components[I]).Text;
                  end;
                Ord(atHora):
                  begin
                    if (QryIndicadorATR_OBRIGATORIO.Value = 1) and (TcxTimeEdit(Components[I]).Text = '') then
                      begin
                        MsgAtributoObrigatorio;
                        Break;
                      end
                    else
                      if (TcxTimeEdit(Components[I]).Text <> '') then
                        QryIndicadorRGA_VALOR.AsString := TcxTimeEdit(Components[I]).Text;
                  end;
                Ord(atTextoCurto):
                  begin
                    if (QryIndicadorATR_OBRIGATORIO.Value = 1) and (TcxTextEdit(Components[I]).Text = '') then
                      begin
                        MsgAtributoObrigatorio;
                        Break;
                      end
                    else
                      if (TcxTextEdit(Components[I]).Text <> '') then
                        QryIndicadorRGA_VALOR.AsString := TcxTextEdit(Components[I]).Text;
                  end;
              end;

              if AtributoAlterado(ID) then
                begin
                  QryIndicadorREG_REPLICADO.Value := 0;
                  QryIndicadorREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
                  QryIndicadorREG_MODIFICADO.AsDateTime := Now;
                  QryIndicador.Post;
                end
              else
                QryIndicador.Cancel;
            end;
        end;
    end;

  if not Pendente then
    begin
      if DtmConexaoModulo.FDWriteTransaction.Active then
        DtmConexaoModulo.FDWriteTransaction.CommitRetaining;

      if DtmConexaoModulo.FDReadTransaction.Active then
        DtmConexaoModulo.FDReadTransaction.CommitRetaining;

      ModalResult := mrOk;
    end
  else
    begin
      if DtmConexaoModulo.FDWriteTransaction.Active then
        DtmConexaoModulo.FDWriteTransaction.RollbackRetaining;

      if DtmConexaoModulo.FDReadTransaction.Active then
        DtmConexaoModulo.FDReadTransaction.RollbackRetaining;
    end;
end;

procedure TFrmIndicadorEditor.CriarData(const ID: Integer; AValue: Variant);
var
  Data: TcxDateEdit;
begin
  Data := TcxDateEdit.Create(Self);
  Data.Parent := cxScrollBox;
  Data.Top := FTopo;
  Data.Left := FLeft;
  Data.Width := 120;
  Data.Tag := ID;
  Data.Properties.ShowTime := False;
  Data.Properties.SaveTime := False;
  if (AValue <> '') then
    Data.Date := StrToDate(AValue);
  FTopo := FTopo + Data.Height;
  DefinirFoco(Data);
  Data.Properties.OnChange := AtributoAlterar;
end;

procedure TFrmIndicadorEditor.CriarDataHora(const ID: Integer; AValue: Variant);
var
  DataHora: TcxDateEdit;
begin
  DataHora := TcxDateEdit.Create(Self);
  DataHora.Parent := cxScrollBox;
  DataHora.Top := FTopo;
  DataHora.Left := FLeft;
  DataHora.Width := 120;
  DataHora.Tag := ID;
  DataHora.Properties.Kind := ckDateTime;
  if (AValue <> '') then
    DataHora.Date := StrToDateTime(AValue);
  FTopo := FTopo + DataHora.Height;
  DefinirFoco(DataHora);
  DataHora.Properties.OnChange := AtributoAlterar;
end;

procedure TFrmIndicadorEditor.CriarHora(const ID: Integer; AValue: Variant);
var
  Hora: TcxTimeEdit;
begin
  Hora := TcxTimeEdit.Create(Self);
  Hora.Parent := cxScrollBox;
  Hora.Top := FTopo;
  Hora.Left := FLeft;
  Hora.Width := 120;
  Hora.Tag := ID;
  Hora.Properties.TimeFormat := tfHourMin;
  if (AValue <> '') then
    Hora.Time := StrToTime(AValue);
  FTopo := FTopo + Hora.Height;
  DefinirFoco(Hora);
  Hora.Properties.OnChange := AtributoAlterar;
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
  if (Legenda.Width > 150) then
    begin
      //FTopo := FTopo + 8;
      Legenda.AutoSize := False;
      Legenda.WordWrap := True;
      Legenda.Width := 150;
      Legenda.Height := 26;
      Legenda.Top := FTopo - 3;
    end;
end;

procedure TFrmIndicadorEditor.CriarMoeda(const ID: Integer; AValue: Variant);
var
  Moeda: TcxCurrencyEdit;
begin
  Moeda := TcxCurrencyEdit.Create(Self);
  Moeda.Parent := cxScrollBox;
  Moeda.Top := FTopo;
  Moeda.Left := FLeft;
  Moeda.Width := 120;
  Moeda.Tag := ID;
  if (AValue <> '') then
    Moeda.Value := StrToCurr(AValue);
  FTopo := FTopo + Moeda.Height;
  DefinirFoco(Moeda);
  Moeda.Properties.OnChange := AtributoAlterar;
end;

procedure TFrmIndicadorEditor.CriarInteiro(const ID: Integer; AValue: Variant);
var
  Inteiro: TcxCurrencyEdit;
begin
  Inteiro := TcxCurrencyEdit.Create(Self);
  Inteiro.Parent := cxScrollBox;
  Inteiro.Top := FTopo;
  Inteiro.Left := FLeft;
  Inteiro.Width := 120;
  Inteiro.Tag := ID;
  Inteiro.Properties.DisplayFormat := ',0;-,0';
  Inteiro.Properties.DecimalPlaces := 0;
  Inteiro.Properties.UseThousandSeparator := True;
  if (AValue <> '') then
    Inteiro.Value := AValue;
  FTopo := FTopo + Inteiro.Height;
  DefinirFoco(Inteiro);
  Inteiro.Properties.OnChange := AtributoAlterar;
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
  Referencia.Left := FLeft;
  Referencia.Width := 350;
  Referencia.Tag := ID;
  if (AValue <> '') then
    Referencia.EditValue := AValue;

  Referencia.Properties.ListSource := Ds;
  Referencia.Properties.ListFieldNames := 'DESCRICAO';
  Referencia.Properties.KeyFieldNames := 'ID';
  Referencia.Properties.ListOptions.ShowHeader := False;
  Referencia.Properties.DropDownRows := 12;
  Referencia.Properties.OnChange := AtributoAlterar;
  DefinirFoco(Referencia);

  FTopo := FTopo + Referencia.Height;
end;

procedure TFrmIndicadorEditor.CriarTextoCurto(const ID: Integer; AValue: Variant);
var
  TextoCurto: TcxTextEdit;
begin
  TextoCurto := TcxTextEdit.Create(Self);
  TextoCurto.Parent := cxScrollBox;
  TextoCurto.Top := FTopo;
  TextoCurto.Left := FLeft;
  TextoCurto.Width := 350;
  TextoCurto.Tag := ID;
  TextoCurto.Text := Avalue;
  FTopo := FTopo + TextoCurto.Height;
  DefinirFoco(TextoCurto);
  TextoCurto.Properties.OnChange := AtributoAlterar;
end;

procedure TFrmIndicadorEditor.CriarLogico(const ID: Integer; ACaption: TCaption; AValue: Variant);
var
  Logico: TcxCheckBox;
begin
  Logico := TcxCheckBox.Create(Self);
  Logico.Parent := cxScrollBox;
  Logico.Top := FTopo + 2;
  Logico.Left := FLeft;
  Logico.Width := 350;
  Logico.Tag := ID;
  Logico.Caption := ACaption;
  Logico.Transparent := True;
  Logico.Checked := False;
  if (not VarIsNull(AValue)) and (AValue <> '') and (AValue = 1) then
    Logico.Checked := True;
  FTopo := FTopo + Logico.Height;
  DefinirFoco(Logico);
  Logico.Properties.OnChange := AtributoAlterar;
end;

procedure TFrmIndicadorEditor.CriarTextoLongo(const ID: Integer; AValue: Variant);
var
  TextoLongo: TcxMemo;
begin
  TextoLongo := TcxMemo.Create(Self);
  TextoLongo.Parent := cxScrollBox;
  TextoLongo.Top := FTopo;
  TextoLongo.Left := FLeft;
  TextoLongo.Width := 350;
  TextoLongo.Height := 90;

  TextoLongo.Tag := ID;
  TextoLongo.Properties.ScrollBars := ssVertical;
  TextoLongo.Text := Avalue;
  FTopo := FTopo + TextoLongo.Height;
  DefinirFoco(TextoLongo);
  TextoLongo.Properties.OnChange := AtributoAlterar;
end;

function TFrmIndicadorEditor.AtributoAlterado(ID: Integer): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := Low(FAtributoAlteradoLista) to High(FAtributoAlteradoLista) do
    if (FAtributoAlteradoLista[I] = ID) then
      begin
        Result := True;
        Break;
      end;
end;

procedure TFrmIndicadorEditor.AtributoAlterar(Sender: TObject);
var
  Tamanho, I: Integer;
  Existe: Boolean;
begin
  if (TcxCustomEditContainer(Sender).Tag > 0) then
  begin
    Existe := False;

    for I := Low(FAtributoAlteradoLista) to High(FAtributoAlteradoLista) do
      if (FAtributoAlteradoLista[I] = TcxCustomEditContainer(Sender).Tag) then
        begin
          Existe := True;
          Break;
        end;

    if not Existe then
      begin
        Tamanho := Length(FAtributoAlteradoLista) + 1;
        SetLength(FAtributoAlteradoLista, Tamanho);
        FAtributoAlteradoLista[Tamanho - 1] := TcxCustomEditContainer(Sender).Tag;
      end;
  end;
end;

procedure TFrmIndicadorEditor.DefinirFoco(const FControle: TcxCustomEditContainer);
begin
  if (QryIndicador.RecNo = 1) then
    FPrimeiroControle := FControle;
end;

procedure TFrmIndicadorEditor.Editar(const IDRegistro: Largeint);
begin
  QryRegistro.Close;
  QryRegistro.ParamByName('REG_ID').AsLargeInt := IDRegistro;
  QryRegistro.Open;

  QryIndicador.Close;
  QryIndicador.ParamByName('REG_ID').AsLargeInt := IDRegistro;
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
  ShowModal;
end;

procedure TFrmIndicadorEditor.FormShow(Sender: TObject);
begin
  inherited;
  if Assigned(FPrimeiroControle) then
    FPrimeiroControle.SetFocus;
end;

procedure TFrmIndicadorEditor.Novo;
var
  ID: Largeint;
begin
  FrmIndicadorSelecao := TFrmIndicadorSelecao.Create(Self);
  try
    Screen.Cursor := crHourglass;
    if (FrmIndicadorSelecao.ShowModal = mrOk) then
      begin
        ID := FrmIndicadorSelecao.StrdPrcRegistrar.ParamByName('REGISTRO').AsLargeInt;
        Editar(ID);
      end;
  finally
    FrmIndicadorSelecao.Release;
    FrmIndicadorSelecao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmIndicadorEditor.Visualizar(const ID: Largeint);
var
  I: Integer;
begin
  Editar(ID);
  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TcxControl) then
      TcxControl(Components[I]).Enabled := False;

  end;
end;

initialization
  FormatSettings.LongTimeFormat := 'hh:mm';
  cxFormatController.UseDelphiDateTimeFormats := True;

end.
