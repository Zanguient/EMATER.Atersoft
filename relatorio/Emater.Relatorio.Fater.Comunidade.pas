unit Emater.Relatorio.Fater.Comunidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons, frxDBSet,
  Data.DB, dxSkinSeven, dxSkinSevenClassic, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo,
  DateUtils, Emater.Relatorio.Filtro.UnidadeFuncionario, cxSpinEdit, Emater.Relatorio.Filtro.Metodologia, Emater.Relatorio.Filtro.Comunidade,
  dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelatorioFaterComunidade = class(TFrmBaseRelatorio)
    FrxDtStPrincipal: TfrxDBDataset;
    LblAno: TLabel;
    FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario;
    FrmFiltroMetodologia: TFrmRelatorioFiltroMetodologia;
    EdtAno: TcxTextEdit;
    FrmFiltroComunidade: TFrmRelatorioFiltroComunidade;
    LblComunidade: TLabel;
    CmbBxQuantidade: TcxComboBox;
    DtStPrincipal: TFDQuery;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
    procedure BtnLimparClick(Sender: TObject);
    procedure FrmFiltroLkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioFaterComunidade: TFrmRelatorioFaterComunidade;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo, Emater.Sistema.Modulo;

procedure TFrmRelatorioFaterComunidade.BtnImprimirClick(Sender: TObject);
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
          DtStPrincipal.ParamByName('ano').AsSmallint := StrToInt(EdtAno.Text);

          // Unidade (escritório):
          if not VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
            DtStPrincipal.ParamByName('unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue
          else
            DtStPrincipal.ParamByName('unidade').AsInteger := 0;

          // Funcionário:
          if not VarIsNull(FrmFiltro.LkpCmbBxFuncionario.EditValue) then
            DtStPrincipal.ParamByName('funcionario').AsInteger := FrmFiltro.LkpCmbBxFuncionario.EditValue
          else
            DtStPrincipal.ParamByName('funcionario').AsInteger := 0;

          // Metodologia:
          if not VarIsNull(FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue) then
            DtStPrincipal.ParamByName('metodologia').AsInteger := FrmFiltroMetodologia.LkpCmbBxMetodologia.EditValue
          else
            DtStPrincipal.ParamByName('metodologia').AsInteger := 0;

          // Comunidade:
          if not VarIsNull(FrmFiltroComunidade.LkpCmbBxComunidade.EditValue) then
            DtStPrincipal.ParamByName('comunidade').AsInteger := FrmFiltroComunidade.LkpCmbBxComunidade.EditValue
          else
            DtStPrincipal.ParamByName('comunidade').AsInteger := 0;

          // Quantidade:
          if (CmbBxQuantidade.Text <> '') then
            DtStPrincipal.ParamByName('atendimentos').AsInteger := StrToIntDef(CmbBxQuantidade.Text, 0)
          else
            DtStPrincipal.ParamByName('atendimentos').AsInteger := 0;

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

procedure TFrmRelatorioFaterComunidade.BtnLimparClick(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.Clear;
  FrmFiltro.LkpCmbBxFuncionario.Clear;
  FrmFiltroMetodologia.LkpCmbBxMetodologia.Clear;
  FrmFiltroComunidade.LkpCmbBxComunidade.Clear;
  CmbBxQuantidade.ItemIndex := 0;
  EdtAno.Text := IntToStr(YearOf(Date));
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  EdtAno.SetFocus;
end;

procedure TFrmRelatorioFaterComunidade.FormCreate(Sender: TObject);
begin
  inherited;
  EdtAno.Text := IntToStr(YearOf(Date));
end;

procedure TFrmRelatorioFaterComunidade.FormShow(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioFaterComunidade.FrmFiltroLkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
var
  Cidade: Integer;
begin
  Cidade := 0;
  if (FrmFiltro.LkpCmbBxUnidade.Text <> '') then
    begin
      if DtmRelatorioModulo.DtStUnidadeLocal.Locate('UND_ID', FrmFiltro.LkpCmbBxUnidade.EditValue, []) then
        Cidade := DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('CID_ID').AsInteger;
    end;
  DtmRelatorioModulo.CarregarComunidadePorCidade(Cidade);
end;

procedure TFrmRelatorioFaterComunidade.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
var
  Unidade: string;
begin
  inherited;

  // Filtro do ano:
  if (VarName = RELATORIO_CONST_FILTRO_ANO) then
    Value := Format(RELATORIO_INFO_ANO, [EdtAno.Text]);

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
        Value := Format(RELATORIO_INFO_FUNCIONARIO, ['todos técnicos']);
    end;

  // Filtro da metodologia:
  if (VarName = RELATORIO_CONST_FILTRO_METODOLOGIA) then
    begin
      if (FrmFiltroMetodologia.LkpCmbBxMetodologia.Text <> '') then
        Value := Format(RELATORIO_INFO_METODOLOGIA, [FrmFiltroMetodologia.LkpCmbBxMetodologia.Text])
      else
        Value := Format(RELATORIO_INFO_METODOLOGIA, ['todas metodologias']);
    end;

  // Filtro da comunidade:
  if (VarName = RELATORIO_CONST_FILTRO_COMUNIDADE) then
    begin
      if (FrmFiltroComunidade.LkpCmbBxComunidade.Text <> '') then
        Value := Format(RELATORIO_INFO_COMUNIDADE, [FrmFiltroComunidade.LkpCmbBxComunidade.Text])
      else
        Value := Format(RELATORIO_INFO_COMUNIDADE, ['todas comunidades']);
    end;
end;

end.
