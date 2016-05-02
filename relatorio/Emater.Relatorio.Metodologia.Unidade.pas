unit Emater.Relatorio.Metodologia.Unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons, frxDBSet,
  Data.DB, dxSkinSeven, dxSkinSevenClassic, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo,
  DateUtils, Emater.Relatorio.Filtro.Metodologia, frxChart, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelatorioMetodologiaUnidade = class(TFrmBaseRelatorio)
    FrxDtStPrincipal: TfrxDBDataset;
    FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionarioPeriodo;
    FrmFiltroMetodologia: TFrmRelatorioFiltroMetodologia;
    FrxDtStGrafico: TfrxDBDataset;
    DtStPrincipal: TFDQuery;
    DtStGrafico: TFDQuery;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioMetodologiaUnidade: TFrmRelatorioMetodologiaUnidade;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo, Emater.Sistema.Modulo;

procedure TFrmRelatorioMetodologiaUnidade.BtnImprimirClick(Sender: TObject);
var
  ChartView: TfrxChartView;
begin
  Screen.Cursor := crHourGlass;
  BtnImprimir.Enabled := False;
  try
    inherited;
    if VarIsNull(FrmFiltro.EdtDataInicio.EditValue) or VarIsNull(FrmFiltro.EdtDataFim.EditValue) then
      begin
        MSG.Aviso(RELATORIO_AVISO_INFORMAR_PERIODO);
        FrmFiltro.EdtDataInicio.SetFocus;
      end
    else
      if VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
        begin
          MSG.Aviso(RELATORIO_AVISO_INFORMAR_UNIDADE);
          FrmFiltro.LkpCmbBxUnidade.SetFocus;
        end
      else
        if VarIsNull(FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue) then
          begin
            MSG.Aviso(RELATORIO_AVISO_INFORMAR_METODOLOGIA);
            FrmFiltroMetodologia.LkpCmbBxMetodologia.SetFocus;
          end
        else
          begin
            // Período:
            DtStPrincipal.ParamByName('data_inicio').AsDate := FrmFiltro.EdtDataInicio.Date;
            DtStPrincipal.ParamByName('data_fim').AsDate := FrmFiltro.EdtDataFim.Date;
            DtStGrafico.ParamByName('data_inicio').AsDate := FrmFiltro.EdtDataInicio.Date;
            DtStGrafico.ParamByName('data_fim').AsDate := FrmFiltro.EdtDataFim.Date;

            // Unidade (escritório):
            if not VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
              begin
                DtStPrincipal.ParamByName('unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
                DtStGrafico.ParamByName('unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
              end
            else
              begin
                DtStPrincipal.ParamByName('unidade').AsInteger := 0;
                DtStGrafico.ParamByName('unidade').AsInteger := 0;
              end;

            // Metodologia:
            if not VarIsNull(FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue) then
              begin
                DtStPrincipal.ParamByName('metodo').AsInteger := FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue;
                DtStGrafico.ParamByName('metodo').AsInteger := FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue;

                ChartView := TfrxChartView(FrxPrincipal.FindComponent('Chart'));
                ChartView.Chart.Title.Text.Clear;
                ChartView.Chart.Title.Text.Add('DESEMPENHO DO ESCRITÓRIO POR ' + AnsiUpperCase(FrmFiltroMetodologia.LkpCmbBxMetodologia.Text));
              end
            else
              begin
                DtStPrincipal.ParamByName('metodo').AsInteger := 0;
                DtStGrafico.ParamByName('metodo').AsInteger := 0;

                ChartView := TfrxChartView(FrxPrincipal.FindComponent('Chart'));
                ChartView.Chart.Title.Text.Clear;
                ChartView.Chart.Title.Text.Add('DESEMPENHO DO ESCRITÓRIO (TODAS METODOLOGIAS)');
              end;

            DtStPrincipal.Close;
            DtStPrincipal.Open;
            DtStGrafico.Close;
            DtStGrafico.Open;
            FrxPrincipal.PrepareReport;
            if (CmbBxModo.ItemIndex = 0) then
              FrxPrincipal.ShowPreparedReport
            else
              FrxPrincipal.Print;
          end;
  finally
    BtnImprimir.Enabled := True;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmRelatorioMetodologiaUnidade.BtnLimparClick(Sender: TObject);
begin
  inherited;
  FrmFiltro.EdtDataInicio.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FrmFiltro.EdtDataFim.Date := EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));
  FrmFiltro.LkpCmbBxUnidade.Clear;
  FrmFiltro.LkpCmbBxFuncionario.Clear;
  FrmFiltroMetodologia.LkpCmbBxMetodologia.Clear;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  FrmFiltro.EdtDataInicio.SetFocus;
end;

procedure TFrmRelatorioMetodologiaUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  FrmFiltro.EdtDataInicio.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FrmFiltro.EdtDataFim.Date := EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));
end;

procedure TFrmRelatorioMetodologiaUnidade.FormShow(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioMetodologiaUnidade.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
var
  DataInicio, DataFim, Unidade: string;
begin
  inherited;

  // Filtro do período:
  DataInicio := FormatDateTime('dd/mm/yyyy', FrmFiltro.EdtDataInicio.Date);
  DataFim := FormatDateTime('dd/mm/yyyy', FrmFiltro.EdtDataFim.Date);

  if (VarName = RELATORIO_CONST_FILTRO_PERIODO) then
    Value := Format(RELATORIO_INFO_PERIODO, [DataInicio, DataFim]);

  // Filtro da unidade:
  if (VarName = RELATORIO_CONST_FILTRO_UNIDADE) then
    begin
      if (FrmFiltro.LkpCmbBxUnidade.Text <> '') then
        begin
          DtmRelatorioModulo.DtStUnidadeLocal.Locate('und_id', FrmFiltro.LkpCmbBxUnidade.EditValue, []);
          Unidade := DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('und_tipo').AsString + ' ' +
            DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('und_nome').AsString;
          Value := Format(RELATORIO_INFO_UNIDADE, [Unidade]);
        end
      else
        Value := '';
    end;

  // Filtro do funcionário:
  if (VarName = RELATORIO_CONST_FILTRO_FUNCIONARIO) then
    begin
      if (FrmFiltro.LkpCmbBxFuncionario.Text <> '') then
        Value := Format(RELATORIO_INFO_FUNCIONARIO, [FrmFiltro.LkpCmbBxFuncionario.Text])
      else
        Value := '';
    end;

  // Filtro da metodologia:
  if (VarName = RELATORIO_CONST_FILTRO_METODOLOGIA) then
    begin
      if (FrmFiltroMetodologia.LkpCmbBxMetodologia.Text <> '') then
        Value := Format(RELATORIO_INFO_METODOLOGIA, [FrmFiltroMetodologia.LkpCmbBxMetodologia.Text])
      else
        Value := Format(RELATORIO_INFO_METODOLOGIA, ['(Todas)']);
    end;
end;

end.
