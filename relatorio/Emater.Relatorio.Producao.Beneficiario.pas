unit Emater.Relatorio.Producao.Beneficiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons, frxDBSet,
  Data.DB, dxSkinSeven, dxSkinSevenClassic, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo,
  DateUtils, Emater.Relatorio.Filtro.Producao, Emater.Relatorio.Filtro.UnidadeFuncionario, Vcl.Grids, Vcl.DBGrids,
  dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelatorioProducaoBeneficiario = class(TFrmBaseRelatorio)
    FrxDtStPrincipal: TfrxDBDataset;
    FrxDtStResumo: TfrxDBDataset;
    FrmFiltroProducao: TFrmRelatorioFiltroProducao;
    FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario;
    LblSafra: TLabel;
    EdtAnoInicio: TcxTextEdit;
    EdtAnoFim: TcxTextEdit;
    LblBarra: TLabel;
    FrxDtStComercio: TfrxDBDataset;
    FrxDtStGrafico: TfrxDBDataset;
    FrxDtStBeneficiario: TfrxDBDataset;
    DtSrcPrincipal: TDataSource;
    FrxDtStProducao: TfrxDBDataset;
    DtStPrincipal: TFDQuery;
    DtStComercio: TFDQuery;
    DtStBeneficiario: TFDQuery;
    DtStProducao: TFDQuery;
    DtStResumo: TFDQuery;
    DtStGrafico: TFDQuery;
    DtStPrincipalID: TIntegerField;
    DtStPrincipalUPF: TStringField;
    DtStPrincipalCATEGORIA_INICIO: TIntegerField;
    DtStPrincipalCATEGORIA_FIM: TIntegerField;
    DtStPrincipalANO_INICIO: TIntegerField;
    DtStPrincipalANO_FIM: TIntegerField;
    DtStPrincipalDIVISAO_INICIO: TIntegerField;
    DtStPrincipalDIVISAO_FIM: TIntegerField;
    DtStPrincipalGRUPO_INICIO: TIntegerField;
    DtStPrincipalGRUPO_FIM: TIntegerField;
    DtStPrincipalCLASSE_INICIO: TIntegerField;
    DtStPrincipalCLASSE_FIM: TIntegerField;
    DtStPrincipalPRODUTO_INICIO: TIntegerField;
    DtStPrincipalPRODUTO_FIM: TIntegerField;
    DtStPrincipalSISTEMA_INICIO: TIntegerField;
    DtStPrincipalSISTEMA_FIM: TIntegerField;
    DtStPrincipalSAFRA_INICIO_FIM: TStringField;
    DtStComercioPRO_ID: TIntegerField;
    DtStComercioATV_ID: TLargeintField;
    DtStComercioPRP_ID: TIntegerField;
    DtStComercioSAFRA_INICIO: TIntegerField;
    DtStComercioSAFRA_FIM: TIntegerField;
    DtStComercioCOMERCIO_DESCRICAO: TStringField;
    DtStComercioCOMERCIO_QUANTIDADE: TCurrencyField;
    DtStComercioCOMERCIO_UNIDADE: TStringField;
    DtStComercioCOMERCIO_VALOR: TBCDField;
    DtStComercioCOMERCIO_TOTAL: TFMTBCDField;
    DtStComercioCOMERCIO_DESTINOS: TStringField;
    DtStComercioSAFRA_INICIO_FIM: TStringField;
    DtStBeneficiarioCPF: TStringField;
    DtStBeneficiarioNOME: TStringField;
    DtStBeneficiarioCATEGORIA: TStringField;
    DtStProducaoSAFRA_INICIO: TIntegerField;
    DtStProducaoSAFRA_FIM: TIntegerField;
    DtStProducaoPRODUTO: TStringField;
    DtStProducaoAREA_PLANTADA: TCurrencyField;
    DtStProducaoAREA_COLHIDA: TCurrencyField;
    DtStProducaoQUANTIDADE: TCurrencyField;
    DtStProducaoUNIDADE: TStringField;
    DtStResumoCULTURA_NOME: TStringField;
    DtStResumoBENEFICIARIOS: TIntegerField;
    DtStResumoTOTAL_QUANTIDADE: TBCDField;
    DtStResumoTOTAL_AREA_PLANTADA: TBCDField;
    DtStResumoUNIDADE_MEDIDA: TStringField;
    DtStGraficoCULTURA_NOME: TStringField;
    DtStGraficoBENEFICIARIOS: TIntegerField;
    DtStGraficoTOTAL_QUANTIDADE: TBCDField;
    DtStGraficoTOTAL_AREA_PLANTADA: TBCDField;
    DtStGraficoUNIDADE_MEDIDA: TStringField;
    DtStProducaoSAFRA_INICIO_FIM: TStringField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtStComercioCalcFields(DataSet: TDataSet);
    procedure DtStProducaoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioProducaoBeneficiario: TFrmRelatorioProducaoBeneficiario;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Relatorio.Consts, Emater.Relatorio.Modulo, Emater.Sistema.Modulo;

procedure TFrmRelatorioProducaoBeneficiario.BtnImprimirClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  BtnImprimir.Enabled := False;
  try
    inherited;
    if (Trim(EdtAnoInicio.Text) = '') or (Trim(EdtAnoFim.Text) = '') then
      begin
        MSG.Aviso(RELATORIO_AVISO_INFORMAR_ANO);
        EdtAnoInicio.SetFocus;
      end
    else
      if VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
        begin
          MSG.Aviso(RELATORIO_AVISO_INFORMAR_UNIDADE);
          FrmFiltro.LkpCmbBxUnidade.SetFocus;
        end
      else
        begin
          // Safra:
          DtStPrincipal.ParamByName('id_ano_inicio').AsInteger := StrToIntDef(EdtAnoInicio.Text, 0);
          DtStPrincipal.ParamByName('id_ano_fim').AsInteger := StrToIntDef(EdtAnoFim.Text, 0);
          DtStResumo.ParamByName('id_ano_inicio').AsInteger := StrToIntDef(EdtAnoInicio.Text, 0);
          DtStResumo.ParamByName('id_ano_fim').AsInteger := StrToIntDef(EdtAnoFim.Text, 0);
          DtStGrafico.ParamByName('id_ano_inicio').AsInteger := StrToIntDef(EdtAnoInicio.Text, 0);
          DtStGrafico.ParamByName('id_ano_fim').AsInteger := StrToIntDef(EdtAnoFim.Text, 0);

          // Unidade (escritório):
          if not VarIsNull(FrmFiltro.LkpCmbBxUnidade.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
              DtStResumo.ParamByName('id_unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
              DtStGrafico.ParamByName('id_unidade').AsInteger := FrmFiltro.LkpCmbBxUnidade.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_unidade').AsInteger := 0;
              DtStResumo.ParamByName('id_unidade').AsInteger := 0;
              DtStGrafico.ParamByName('id_unidade').AsInteger := 0;
            end;

          // Funcionário:
          if not VarIsNull(FrmFiltro.LkpCmbBxFuncionario.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_tecnico').AsInteger := FrmFiltro.LkpCmbBxFuncionario.EditValue;
              DtStResumo.ParamByName('id_tecnico').AsInteger := FrmFiltro.LkpCmbBxFuncionario.EditValue;
              DtStGrafico.ParamByName('id_tecnico').AsInteger := FrmFiltro.LkpCmbBxFuncionario.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_tecnico').AsInteger := 0;
              DtStResumo.ParamByName('id_tecnico').AsInteger := 0;
              DtStGrafico.ParamByName('id_tecnico').AsInteger := 0;
            end;

          // Categoria:
          if not VarIsNull(FrmFiltroProducao.LkpCmbBxCategoria.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_categoria').AsInteger := FrmFiltroProducao.LkpCmbBxCategoria.EditValue;
              DtStResumo.ParamByName('id_categoria').AsInteger := FrmFiltroProducao.LkpCmbBxCategoria.EditValue;
              DtStGrafico.ParamByName('id_categoria').AsInteger := FrmFiltroProducao.LkpCmbBxCategoria.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_categoria').AsInteger := 0;
              DtStResumo.ParamByName('id_categoria').AsInteger := 0;
              DtStGrafico.ParamByName('id_categoria').AsInteger := 0;
            end;

          // Atividade produtiva (divisão):
          if not VarIsNull(FrmFiltroProducao.LkpCmbBxAtividade.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_divisao').AsInteger := FrmFiltroProducao.LkpCmbBxAtividade.EditValue;
              DtStResumo.ParamByName('id_divisao').AsInteger := FrmFiltroProducao.LkpCmbBxAtividade.EditValue;
              DtStGrafico.ParamByName('id_divisao').AsInteger := FrmFiltroProducao.LkpCmbBxAtividade.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_divisao').AsInteger := 0;
              DtStResumo.ParamByName('id_divisao').AsInteger := 0;
              DtStGrafico.ParamByName('id_divisao').AsInteger := 0;
            end;

          // Grupo:
          if not VarIsNull(FrmFiltroProducao.LkpCmbBxGrupo.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_grupo').AsInteger := FrmFiltroProducao.LkpCmbBxGrupo.EditValue;
              DtStResumo.ParamByName('id_grupo').AsInteger := FrmFiltroProducao.LkpCmbBxGrupo.EditValue;
              DtStGrafico.ParamByName('id_grupo').AsInteger := FrmFiltroProducao.LkpCmbBxGrupo.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_grupo').AsInteger := 0;
              DtStResumo.ParamByName('id_grupo').AsInteger := 0;
              DtStGrafico.ParamByName('id_grupo').AsInteger := 0;
            end;

          // Classe:
          if not VarIsNull(FrmFiltroProducao.LkpCmbBxClasse.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_classe').AsInteger := FrmFiltroProducao.LkpCmbBxClasse.EditValue;
              DtStResumo.ParamByName('id_classe').AsInteger := FrmFiltroProducao.LkpCmbBxClasse.EditValue;
              DtStGrafico.ParamByName('id_classe').AsInteger := FrmFiltroProducao.LkpCmbBxClasse.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_classe').AsInteger := 0;
              DtStResumo.ParamByName('id_classe').AsInteger := 0;
              DtStGrafico.ParamByName('id_classe').AsInteger := 0;
            end;

          // Cultura/criação/serviço (produto):
          if not VarIsNull(FrmFiltroProducao.LkpCmbBxCultura.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_produto').AsInteger := FrmFiltroProducao.LkpCmbBxCultura.EditValue;
              DtStResumo.ParamByName('id_produto').AsInteger := FrmFiltroProducao.LkpCmbBxCultura.EditValue;
              DtStGrafico.ParamByName('id_produto').AsInteger := FrmFiltroProducao.LkpCmbBxCultura.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_produto').AsInteger := 0;
              DtStResumo.ParamByName('id_produto').AsInteger := 0;
              DtStGrafico.ParamByName('id_produto').AsInteger := 0;
            end;

          // Sistema produtivo:
          if not VarIsNull(FrmFiltroProducao.LkpCmbBxSistema.EditValue) then
            begin
              DtStPrincipal.ParamByName('id_sistema').AsInteger := FrmFiltroProducao.LkpCmbBxSistema.EditValue;
              DtStResumo.ParamByName('id_sistema').AsInteger := FrmFiltroProducao.LkpCmbBxSistema.EditValue;
              DtStGrafico.ParamByName('id_sistema').AsInteger := FrmFiltroProducao.LkpCmbBxSistema.EditValue;
            end
          else
            begin
              DtStPrincipal.ParamByName('id_sistema').AsInteger := 0;
              DtStResumo.ParamByName('id_sistema').AsInteger := 0;
              DtStGrafico.ParamByName('id_sistema').AsInteger := 0;
            end;

          DtStPrincipal.Close;
          DtStPrincipal.Open;
          DtStBeneficiario.Close;
          DtStBeneficiario.Open;
          DtStProducao.Close;
          DtStProducao.Open;
          DtStComercio.Close;
          DtStComercio.Open;

          DtStResumo.Close;
          DtStGrafico.Close;

          DtStResumo.ParamByName('ano_inicio').AsInteger := DtStPrincipalANO_INICIO.Value;
          DtStResumo.ParamByName('ano_fim').AsInteger := DtStPrincipalANO_FIM.Value;
          DtStResumo.ParamByName('sistema_inicio').AsInteger := DtStPrincipalSISTEMA_INICIO.Value;
          DtStResumo.ParamByName('sistema_fim').AsInteger := DtStPrincipalSISTEMA_FIM.Value;
          DtStResumo.ParamByName('produto_inicio').AsInteger := DtStPrincipalPRODUTO_INICIO.Value;
          DtStResumo.ParamByName('produto_fim').AsInteger := DtStPrincipalPRODUTO_FIM.Value;
          DtStResumo.ParamByName('divisao_inicio').AsInteger := DtStPrincipalDIVISAO_INICIO.Value;
          DtStResumo.ParamByName('divisao_fim').AsInteger := DtStPrincipalDIVISAO_FIM.Value;
          DtStResumo.ParamByName('grupo_inicio').AsInteger := DtStPrincipalGRUPO_INICIO.Value;
          DtStResumo.ParamByName('grupo_fim').AsInteger := DtStPrincipalGRUPO_FIM.Value;
          DtStResumo.ParamByName('classe_inicio').AsInteger := DtStPrincipalCLASSE_INICIO.Value;
          DtStResumo.ParamByName('classe_fim').AsInteger := DtStPrincipalCLASSE_FIM.Value;
          DtStResumo.ParamByName('categoria_inicio').AsInteger := DtStPrincipalCATEGORIA_INICIO.Value;
          DtStResumo.ParamByName('categoria_fim').AsInteger := DtStPrincipalCATEGORIA_FIM.Value;

          DtStGrafico.ParamByName('ano_inicio').AsInteger := DtStPrincipalANO_INICIO.Value;
          DtStGrafico.ParamByName('ano_fim').AsInteger := DtStPrincipalANO_FIM.Value;
          DtStGrafico.ParamByName('sistema_inicio').AsInteger := DtStPrincipalSISTEMA_INICIO.Value;
          DtStGrafico.ParamByName('sistema_fim').AsInteger := DtStPrincipalSISTEMA_FIM.Value;
          DtStGrafico.ParamByName('produto_inicio').AsInteger := DtStPrincipalPRODUTO_INICIO.Value;
          DtStGrafico.ParamByName('produto_fim').AsInteger := DtStPrincipalPRODUTO_FIM.Value;
          DtStGrafico.ParamByName('divisao_inicio').AsInteger := DtStPrincipalDIVISAO_INICIO.Value;
          DtStGrafico.ParamByName('divisao_fim').AsInteger := DtStPrincipalDIVISAO_FIM.Value;
          DtStGrafico.ParamByName('grupo_inicio').AsInteger := DtStPrincipalGRUPO_INICIO.Value;
          DtStGrafico.ParamByName('grupo_fim').AsInteger := DtStPrincipalGRUPO_FIM.Value;
          DtStGrafico.ParamByName('classe_inicio').AsInteger := DtStPrincipalCLASSE_INICIO.Value;
          DtStGrafico.ParamByName('classe_fim').AsInteger := DtStPrincipalCLASSE_FIM.Value;
          DtStGrafico.ParamByName('categoria_inicio').AsInteger := DtStPrincipalCATEGORIA_INICIO.Value;
          DtStGrafico.ParamByName('categoria_fim').AsInteger := DtStPrincipalCATEGORIA_FIM.Value;

          DtStResumo.Close;
          DtStResumo.Open;
          DtStGrafico.Close;
          DtStGrafico.Close;
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

procedure TFrmRelatorioProducaoBeneficiario.BtnLimparClick(Sender: TObject);
begin
  inherited;
  EdtAnoInicio.Text := IntToStr(YearOf(Date));
  EdtAnoFim.Text := IntToStr(YearOf(Date) + 1);
  FrmFiltro.LkpCmbBxUnidade.Clear;
  FrmFiltro.LkpCmbBxFuncionario.Clear;
  FrmFiltroProducao.LkpCmbBxGrupo.Clear;
  FrmFiltroProducao.LkpCmbBxClasse.Clear;
  FrmFiltroProducao.LkpCmbBxCultura.Clear;
  FrmFiltroProducao.LkpCmbBxSistema.Clear;
  FrmFiltroProducao.LkpCmbBxCategoria.Clear;
  FrmFiltroProducao.LkpCmbBxAtividade.Clear;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
  EdtAnoInicio.SetFocus;
end;

procedure TFrmRelatorioProducaoBeneficiario.DtStComercioCalcFields(DataSet: TDataSet);
begin
  if not DtStComercioSAFRA_INICIO.IsNull then
    DtStComercioSAFRA_INICIO_FIM.AsString := DtStComercioSAFRA_INICIO.AsString + '/';

  if not DtStComercioSAFRA_FIM.IsNull then
    DtStComercioSAFRA_INICIO_FIM.AsString := DtStComercioSAFRA_INICIO_FIM.AsString +
      DtStComercioSAFRA_FIM.AsString;
end;

procedure TFrmRelatorioProducaoBeneficiario.DtStProducaoCalcFields(DataSet: TDataSet);
begin
  if not DtStProducaoSAFRA_INICIO.IsNull then
    DtStProducaoSAFRA_INICIO_FIM.AsString := DtStProducaoSAFRA_INICIO.AsString + '/';

  if not DtStProducaoSAFRA_FIM.IsNull then
    DtStProducaoSAFRA_INICIO_FIM.AsString := DtStProducaoSAFRA_INICIO_FIM.AsString +
      DtStProducaoSAFRA_FIM.AsString;
end;

procedure TFrmRelatorioProducaoBeneficiario.FormCreate(Sender: TObject);
begin
  inherited;
  EdtAnoInicio.Text := IntToStr(YearOf(Date));
  EdtAnoFim.Text := IntToStr(YearOf(Date) + 1);
end;

procedure TFrmRelatorioProducaoBeneficiario.FormShow(Sender: TObject);
begin
  inherited;
  FrmFiltro.LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmRelatorioProducaoBeneficiario.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
var
  AnoInicio, AnoFim, Unidade, S: string;
begin
  inherited;

  // Filtro da safra:
  AnoInicio := EdtAnoInicio.Text;
  AnoFim := EdtAnoFim.Text;

  if (VarName = RELATORIO_CONST_FILTRO_PERIODO) then
    Value := Format(RELATORIO_INFO_SAFRA, [AnoInicio, AnoFim]);

  // Filtro da unidade:
  if (VarName = RELATORIO_CONST_FILTRO_UNIDADE) then
    begin
      if (FrmFiltro.LkpCmbBxUnidade.Text <> '') then
        begin
          DtmRelatorioModulo.DtStUnidadeLocal.Locate('und_id', FrmFiltro.LkpCmbBxUnidade.EditValue, []);
          Unidade := DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('und_tipo').AsString + ' ' +
            DtmRelatorioModulo.DtStUnidadeLocal.FieldByName('und_nome').AsString;
          Value := ' - ' + Format(RELATORIO_INFO_UNIDADE, [Unidade]);
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

  // Filtro pelos demais atributos:
  if (VarName = RELATORIO_CONST_FILTRO_ATRIBUTOS) then
    begin
      Value := '';
      S := '';

      // Categoria:
      if (FrmFiltroProducao.LkpCmbBxCategoria.Text <> '') then
        begin
          Value := Value + S + 'Categoria: ' + FrmFiltroProducao.LkpCmbBxCategoria.Text;
          S := ' - ';
        end;

      // Atividade produtiva:
      if (FrmFiltroProducao.LkpCmbBxAtividade.Text <> '') then
        begin
          Value := Value + S + 'Atividade produtiva: ' + FrmFiltroProducao.LkpCmbBxAtividade.Text;
          S := ' - ';
        end;

      // Grupo:
      if (FrmFiltroProducao.LkpCmbBxGrupo.Text <> '') then
        begin
          Value := Value + S + 'Grupo: ' + FrmFiltroProducao.LkpCmbBxGrupo.Text;
          S := ' - ';
        end;

      // Classe:
      if (FrmFiltroProducao.LkpCmbBxClasse.Text <> '') then
        begin
          Value := Value + S + 'Classe: ' + FrmFiltroProducao.LkpCmbBxClasse.Text;
          S := ' - ';
        end;

      // Cultura/criação/serviço:
      if (FrmFiltroProducao.LkpCmbBxCultura.Text <> '') then
        begin
          Value := Value + S + 'Cultura/criação/serviço: ' + FrmFiltroProducao.LkpCmbBxCultura.Text;
          S := ' - ';
        end;

      // Sistema produtivo:
      if (FrmFiltroProducao.LkpCmbBxSistema.Text <> '') then
        begin
          Value := Value + S + 'Sistema produtivo: ' + FrmFiltroProducao.LkpCmbBxSistema.Text;
          S := ' - ';
        end;
    end;
end;

end.
