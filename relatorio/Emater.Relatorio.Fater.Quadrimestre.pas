unit Emater.Relatorio.Fater.Quadrimestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons, frxDBSet,
  Data.DB, dxSkinSeven, dxSkinSevenClassic, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo,
  DateUtils, Emater.Relatorio.Filtro.UnidadeFuncionario, cxSpinEdit, Emater.Relatorio.Filtro.Metodologia,
  dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelatorioFaterQuadrimestre = class(TFrmBaseRelatorio)
    FrxDtStPrincipal: TfrxDBDataset;
    LblAno: TLabel;
    LblQuadrimestre: TLabel;
    CmbBxQuadrimestre: TcxComboBox;
    FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario;
    FrmFiltroMetodologia: TFrmRelatorioFiltroMetodologia;
    EdtAno: TcxTextEdit;
    DtStPrincipal: TFDQuery;
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
  FrmRelatorioFaterQuadrimestre: TFrmRelatorioFaterQuadrimestre;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo, Emater.Sistema.Modulo;

procedure TFrmRelatorioFaterQuadrimestre.BtnImprimirClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  BtnImprimir.Enabled := False;
  try
    inherited;
      if VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
        begin
          MSG.Aviso(RELATORIO_AVISO_INFORMAR_UNIDADE);
          FrmFiltro.LkpCmbBxUnidade.SetFocus;
        end
      else
        begin
          // Período:
          DtStPrincipal.ParamByName('ano').AsSmallInt := StrToInt(EdtAno.Text);
          DtStPrincipal.ParamByName('quadrimestre').AsSmallint := CmbBxQuadrimestre.ItemIndex + 1;

          // Unidade (escritório):
          if not VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
            begin
              DtStPrincipal.ParamByName('unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('unidade').AsInteger := 0;
            end;

          // Funcionário:
          if not VarIsNull(FrmFiltro.LkpCmbBxFuncionario.EditValue) then
            begin
              DtStPrincipal.ParamByName('funcionario').AsInteger := FrmFiltro.LkpCmbBxFuncionario.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('funcionario').AsInteger := 0;
            end;

          // Metodologia:
          if not VarIsNull(FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue) then
            DtStPrincipal.ParamByName('metodo').AsInteger := FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue
          else
            DtStPrincipal.ParamByName('metodo').AsInteger := 0;

          DtStPrincipal.Close;
          DtStPrincipal.Open;
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

procedure TFrmRelatorioFaterQuadrimestre.BtnLimparClick(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.Clear;
  FrmFiltro.LkpCmbBxFuncionario.Clear;
  FrmFiltroMetodologia.LkpCmbBxMetodologia.Clear;
  CmbBxQuadrimestre.ItemIndex := 0;
  EdtAno.Text := IntToStr(YearOf(Date));
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  EdtAno.SetFocus;
end;

procedure TFrmRelatorioFaterQuadrimestre.FormCreate(Sender: TObject);
begin
  inherited;
  EdtAno.Text := IntToStr(YearOf(Date));
end;

procedure TFrmRelatorioFaterQuadrimestre.FormShow(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioFaterQuadrimestre.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
var
  Unidade: string;
begin
  inherited;

  if (VarName = RELATORIO_CONST_FILTRO_ANO_QUADRIMESTRE) then
    Value := Format(RELATORIO_INFO_ANO_QUADRIMESTRE, [EdtAno.Text, CmbBxQuadrimestre.Text]);

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
        Value := Format(RELATORIO_INFO_METODOLOGIA, ['Todas']);
    end;
end;

end.
