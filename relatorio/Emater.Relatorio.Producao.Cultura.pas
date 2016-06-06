unit Emater.Relatorio.Producao.Cultura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit, frxClass, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  cxGroupBox, Vcl.StdCtrls, cxPC, cxButtons, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo, Emater.Relatorio.Filtro.UnidadePeriodo, DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox;

type
  TFrmRelatorioProducaoCultura = class(TFrmBaseRelatorio)
    Label1: TLabel;
    QryPrincipal: TFDQuery;
    FrxDtStPrincipal: TfrxDBDataset;
    DtSrcUnidadeLocal: TDataSource;
    LkpCmbBxUnidade: TcxLookupComboBox;
    LblUnidade: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtPlantioInicio: TcxMaskEdit;
    EdtPlantioFim: TcxMaskEdit;
    EdtColheitaInicio: TcxMaskEdit;
    EdtColheitaFim: TcxMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ChckBxProducao: TcxCheckBox;
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
  FrmRelatorioProducaoCultura: TFrmRelatorioProducaoCultura;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo;

procedure TFrmRelatorioProducaoCultura.BtnImprimirClick(Sender: TObject);

  function ValidarPeriodo(EdtMsk: TcxMaskEdit; Mensagem: string): Boolean;
  begin
    Result := True;
    EdtMsk.Tag := 0;
    try
      if (Trim(EdtMsk.Text) <> '/') then
        begin
          if not IsValidDate(StrToInt(Copy(EdtMsk.Text, 4, 4)), StrToInt(Copy(EdtMsk.Text, 1, 2)), 1) then
            begin
              Result := False;
              Msg.Aviso(Format(RELATORIO_AVISO_PERIODO_INVALIDO, [Mensagem]));
              EdtMsk.SetFocus;
            end
          else
            EdtMsk.Tag := StrToInt(Copy(EdtMsk.Text, 4, 4) + Copy(EdtMsk.Text, 1, 2));
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
        if ValidarPeriodo(EdtPlantioInicio, 'inicial do plantio') and ValidarPeriodo(EdtPlantioFim, 'final do plantio') and
          ValidarPeriodo(EdtColheitaInicio, 'inicial da colheita') and ValidarPeriodo(EdtColheitaFim, 'final da colheita') then
          begin

            QryPrincipal.Close;
            QryPrincipal.SQL.Clear;
            QryPrincipal.SQL.AddStrings(SQLMestre);

            // Período:
            QryPrincipal.ParamByName('plantio_inicio').AsInteger := EdtPlantioInicio.Tag;
            QryPrincipal.ParamByName('plantio_fim').AsInteger := EdtPlantioFim.Tag;
            QryPrincipal.ParamByName('colheita_inicio').AsInteger := EdtColheitaInicio.Tag;
            QryPrincipal.ParamByName('colheiat_fim').AsInteger := EdtColheitaFim.Tag;

            // Unidade (escritório):
            if not VarIsNull(LkpCmbBxUnidade.EditValue) then
              QryPrincipal.ParamByName('unidade').AsInteger := LkpCmbBxUnidade.EditValue
            else
              QryPrincipal.ParamByName('unidade').AsInteger := 0;

            // Culturas:
            if ChckBxProducao.Checked then
              QryPrincipal.SQL.Add('where (producao > 0)');

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

procedure TFrmRelatorioProducaoCultura.BtnLimparClick(Sender: TObject);
begin
  EdtPlantioInicio.Clear;
  EdtPlantioFim.Clear;
  EdtColheitaInicio.Clear;
  EdtColheitaFim.Clear;
  LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  EdtPlantioInicio.SetFocus;
end;

procedure TFrmRelatorioProducaoCultura.FormCreate(Sender: TObject);
begin
  inherited;
  SQLMestre.AddStrings(QryPrincipal.SQL);
end;

procedure TFrmRelatorioProducaoCultura.FormShow(Sender: TObject);
begin
  inherited;
  LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioProducaoCultura.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
var
  Plantio, Colheita, Unidade: string;
begin
  inherited;

  Value := '';
  Plantio := '';
  Colheita := '';

  // Filtro do período:
  if (Trim(EdtPlantioInicio.Text) <> '/') then Plantio := 'de ' + EdtPlantioInicio.Text + ' ';
  if (Trim(EdtPlantioFim.Text) <> '/') then Plantio := Plantio + 'até ' + EdtPlantioFim.Text;
  if (Trim(EdtColheitaInicio.Text) <> '/') then Colheita := 'de ' + EdtColheitaInicio.Text + ' ';
  if (Trim(EdtColheitaFim.Text) <> '/') then Colheita := Colheita + 'até ' + EdtColheitaFim.Text;

  if (VarName = RELATORIO_CONST_FILTRO_PERIODO) then
    begin
      if (Plantio <> '') then Value := Format(RELATORIO_INFO_PLANTIO, [Plantio]);
      if (Colheita <> '') then
        begin
          if (Value <> '') then
            Value := Value + ' e ' + Format(RELATORIO_INFO_COLHEITA, [Colheita])
          else
            Value := Format(RELATORIO_INFO_COLHEITA, [Colheita]);
        end;

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
end;

end.
