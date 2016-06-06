unit Emater.Relatorio.Beneficiario.Genero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit, frxClass, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  cxGroupBox, Vcl.StdCtrls, cxPC, cxButtons, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo, Emater.Relatorio.Filtro.UnidadePeriodo, DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelatorioBeneficiarioGenero = class(TFrmBaseRelatorio)
    FrmFiltro: TFrmRelatorioFiltroUnidadePeriodo;
    Label1: TLabel;
    QryPrincipal: TFDQuery;
    FrxDtStPrincipal: TfrxDBDataset;
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioBeneficiarioGenero: TFrmRelatorioBeneficiarioGenero;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo;

procedure TFrmRelatorioBeneficiarioGenero.BtnImprimirClick(Sender: TObject);
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
        begin
          // Período:
          QryPrincipal.ParamByName('data_inicio').AsDate := FrmFiltro.EdtDataInicio.Date;
          QryPrincipal.ParamByName('data_fim').AsDate := FrmFiltro.EdtDataFim.Date;

          // Unidade (escritório):
          if not VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
            begin
              QryPrincipal.ParamByName('unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
            end
          else
            begin
              QryPrincipal.ParamByName('unidade').AsInteger := 0;
            end;

          QryPrincipal.Close;
          QryPrincipal.Open;
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

procedure TFrmRelatorioBeneficiarioGenero.BtnLimparClick(Sender: TObject);
begin
  FrmFiltro.EdtDataInicio.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FrmFiltro.EdtDataFim.Date := EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));
  FrmFiltro.LkpCmbBxUnidade.Clear;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  FrmFiltro.EdtDataInicio.SetFocus;
end;

procedure TFrmRelatorioBeneficiarioGenero.FormCreate(Sender: TObject);
begin
  inherited;
  FrmFiltro.EdtDataInicio.Date := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FrmFiltro.EdtDataFim.Date := EncodeDate(YearOf(Date), MonthOf(Date), DaysInMonth(Date));
end;

procedure TFrmRelatorioBeneficiarioGenero.FormShow(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioBeneficiarioGenero.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
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
end;

end.
