unit Emater.Relatorio.Producao.Comercio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit, frxClass, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  cxGroupBox, Vcl.StdCtrls, cxPC, cxButtons, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo, Emater.Relatorio.Filtro.UnidadePeriodo, DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox;

type
  TFrmRelatorioProducaoComercio = class(TFrmBaseRelatorio)
    QryPrincipal: TFDQuery;
    FrxDtStPrincipal: TfrxDBDataset;
    LblUnidade: TLabel;
    Label2: TLabel;
    EdtAnoInicio: TcxTextEdit;
    EdtAnoFim: TcxTextEdit;
    Label4: TLabel;
    Label6: TLabel;
    CmbBxTipo: TcxComboBox;
    DtSrcUnidadeLocal: TDataSource;
    Label1: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioProducaoComercio: TFrmRelatorioProducaoComercio;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo;

procedure TFrmRelatorioProducaoComercio.BtnImprimirClick(Sender: TObject);

  function ValidarPeriodo(EdtMsk: TcxTextEdit; Mensagem: string): Boolean;
  begin
    Result := True;
    EdtMsk.Tag := 0;
    try
      if (Trim(EdtMsk.Text) <> '') then
        begin
          if not IsValidDate(StrToInt(Copy(EdtMsk.Text, 1, 4)), 1, 1) then
            begin
              Result := False;
              Msg.Aviso(Format(RELATORIO_AVISO_ANO_INVALIDO, [Mensagem]));
              EdtMsk.SetFocus;
            end
          else
            EdtMsk.Tag := StrToInt(Copy(EdtMsk.Text, 1, 4));
        end;
    except
      Result := False;
      Msg.Aviso(Format(RELATORIO_AVISO_PERIODO_INVALIDO, [Mensagem]));
      EdtMsk.SetFocus;
    end;
  end;
begin
  Screen.Cursor := crHourGlass;
  BtnImprimir.SetFocus;
  BtnImprimir.Enabled := False;
  try
    inherited;

    if VarIsNull(LkpCmbBxUnidade.EditValue) then
      begin
        MSG.Aviso(RELATORIO_AVISO_INFORMAR_UNIDADE);
        LkpCmbBxUnidade.SetFocus;
      end
    else
      begin
        if ValidarPeriodo(EdtAnoInicio, 'inicial') and ValidarPeriodo(EdtAnoFim, 'final') then
          begin

            QryPrincipal.Close;
            QryPrincipal.SQL.Clear;
            QryPrincipal.SQL.AddStrings(SQLMestre);

            // Per�odo:
            QryPrincipal.ParamByName('ano_inicio').AsInteger := StrToInt(EdtAnoInicio.Text);
            QryPrincipal.ParamByName('ano_fim').AsInteger := StrToInt(EdtAnoFim.Text);

            // Unidade (escrit�rio):
            if not VarIsNull(LkpCmbBxUnidade.EditValue) then
              QryPrincipal.ParamByName('escritorio').AsInteger := LkpCmbBxUnidade.EditValue
            else
              QryPrincipal.ParamByName('escritorio').AsInteger := 0;

            // Tipo:
            QryPrincipal.ParamByName('tipo').AsInteger := CmbBxTipo.ItemIndex;


            QryPrincipal.Open;
            FrxPrincipal.PrepareReport;
            if (CmbBxModo.ItemIndex = 0) then
              FrxPrincipal.ShowPreparedReport
            else
              FrxPrincipal.Print;
          end;
      end;
  finally
    BtnImprimir.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmRelatorioProducaoComercio.BtnLimparClick(Sender: TObject);
begin
  EdtAnoInicio.Clear;
  EdtAnoFim.Clear;
  CmbBxTipo.ItemIndex := 0;
  LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  EdtAnoInicio.SetFocus;
end;

procedure TFrmRelatorioProducaoComercio.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMestre.AddStrings(QryPrincipal.SQL);
end;

procedure TFrmRelatorioProducaoComercio.FormShow(Sender: TObject);
begin
  inherited;
  LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioProducaoComercio.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
var
  Ano, Unidade: string;
begin
  inherited;

  Ano := '';

  // Filtro do per�odo:
  if (Trim(EdtAnoInicio.Text) <> '') then Ano := 'a partir de ' + EdtAnoInicio.Text + ' ';
  if (Trim(EdtAnoFim.Text) <> '') then Ano := Ano + 'at� ' + EdtAnoFim.Text;
  if (VarName = RELATORIO_CONST_FILTRO_PERIODO) then
    begin
      Value := '';
      if (Ano <> '') then Value := Format(RELATORIO_INFO_ANO, [Ano]);
    end;

  // Filtro da unidade:
  if (VarName = RELATORIO_CONST_FILTRO_UNIDADE) then
    begin
      if (LkpCmbBxUnidade.Text <> '') then
        begin
          DtmRelatorioModulo.DtStUnidadeLocal.Locate('und_id', LkpCmbBxUnidade.EditValue, []);
          Unidade := DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('und_tipo').AsString + ' ' +
            DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('und_nome').AsString;
          Value := Format(RELATORIO_INFO_UNIDADE, [Unidade]);
        end
      else
        Value := '';
    end;

  // Filtro do tipo de produto/sevi�o:
  if (VarName = 'filtro_tipo') then
    Value := 'Tipo de produto/servi�o: ' + CmbBxTipo.Text;
end;

end.
