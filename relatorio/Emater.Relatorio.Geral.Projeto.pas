unit Emater.Relatorio.Geral.Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons, frxDBSet,
  Data.DB, FIBDataSet, pFIBDataSet, dxSkinSeven, dxSkinSevenClassic, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo,
  DateUtils, Emater.Relatorio.Filtro.Projeto;

type
  TFrmRelatorioGeralProjeto = class(TFrmBaseRelatorio)
    DtStPrincipal: TpFIBDataSet;
    FrxDtStPrincipal: TfrxDBDataset;
    FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionarioPeriodo;
    FrmFiltroProjeto: TFrmRelatorioFiltroProjeto;
    DtStPrincipalTITULO: TFIBStringField;
    DtStPrincipalGRUPO: TFIBStringField;
    DtStPrincipalITEM: TFIBStringField;
    DtStPrincipalTOTAL: TFIBIntegerField;
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
  FrmRelatorioGeralProjeto: TFrmRelatorioGeralProjeto;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo, Emater.Sistema.Modulo;

procedure TFrmRelatorioGeralProjeto.BtnImprimirClick(Sender: TObject);
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
      begin
        // Período:
        DtStPrincipal.ParamByName('data_inicio').AsDate := FrmFiltro.EdtDataInicio.Date;
        DtStPrincipal.ParamByName('data_fim').AsDate := FrmFiltro.EdtDataFim.Date;

        // Projeto:
        if not VarIsNull(FrmFiltroProjeto.LkpCmbBxProjeto.EditValue) then
          begin
            DtStPrincipal.ParamByName('projeto').AsInteger := FrmFiltroProjeto.LkpCmbBxProjeto.EditValue;
          end
        else
          begin
            DtStPrincipal.ParamByName('projeto').AsInteger := 0;
          end;

        DtStPrincipal.CloseOpen(True);
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

procedure TFrmRelatorioGeralProjeto.BtnLimparClick(Sender: TObject);
begin
  inherited;
  FrmFiltro.EdtDataInicio.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FrmFiltro.EdtDataFim.Date := EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));
  FrmFiltro.LkpCmbBxUnidade.Clear;
  FrmFiltro.LkpCmbBxFuncionario.Clear;
  FrmFiltroProjeto.LkpCmbBxProjeto.Clear;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  FrmFiltro.EdtDataInicio.SetFocus;
end;

procedure TFrmRelatorioGeralProjeto.FormCreate(Sender: TObject);
begin
  inherited;
  FrmFiltro.EdtDataInicio.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FrmFiltro.EdtDataFim.Date := EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));
end;

procedure TFrmRelatorioGeralProjeto.FormShow(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioGeralProjeto.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
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
end;

end.
