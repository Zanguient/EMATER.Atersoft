unit Emater.Relatorio.Producao.Beneficiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, frxClass,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Imaging.jpeg, Vcl.ExtCtrls, cxPC, Vcl.StdCtrls, cxButtons, frxDBSet,
  Data.DB, FIBDataSet, pFIBDataSet, dxSkinSeven, dxSkinSevenClassic, Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo,
  DateUtils, Emater.Relatorio.Filtro.Producao, Emater.Relatorio.Filtro.UnidadeFuncionario, Vcl.Grids, Vcl.DBGrids;

type
  TFrmRelatorioProducaoBeneficiario = class(TFrmBaseRelatorio)
    DtStPrincipal: TpFIBDataSet;
    FrxDtStPrincipal: TfrxDBDataset;
    DtStResumo: TpFIBDataSet;
    FrxDtStResumo: TfrxDBDataset;
    DtStResumoCULTURA_NOME: TFIBStringField;
    DtStResumoBENEFICIARIOS: TFIBIntegerField;
    DtStResumoTOTAL_QUANTIDADE: TFIBBCDField;
    DtStResumoUNIDADE_MEDIDA: TFIBStringField;
    DtStResumoTOTAL_AREA_PLANTADA: TFIBBCDField;
    FrmFiltroProducao: TFrmRelatorioFiltroProducao;
    FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario;
    LblSafra: TLabel;
    EdtAnoInicio: TcxTextEdit;
    EdtAnoFim: TcxTextEdit;
    LblBarra: TLabel;
    DtStComercio: TpFIBDataSet;
    FrxDtStComercio: TfrxDBDataset;
    DtStComercioSAFRA_INICIO_FIM: TFIBStringField;
    DtStGrafico: TpFIBDataSet;
    FIBStringField1: TFIBStringField;
    FIBIntegerField1: TFIBIntegerField;
    FIBBCDField1: TFIBBCDField;
    FIBStringField2: TFIBStringField;
    FIBBCDField2: TFIBBCDField;
    FrxDtStGrafico: TfrxDBDataset;
    FrxDtStBeneficiario: TfrxDBDataset;
    DtStBeneficiario: TpFIBDataSet;
    DtSrcPrincipal: TDataSource;
    FrxDtStProducao: TfrxDBDataset;
    DtStProducao: TpFIBDataSet;
    DtStPrincipalID: TFIBIntegerField;
    DtStPrincipalUPF: TFIBStringField;
    DtStPrincipalCATEGORIA_INICIO: TFIBIntegerField;
    DtStPrincipalCATEGORIA_FIM: TFIBIntegerField;
    DtStPrincipalANO_INICIO: TFIBIntegerField;
    DtStPrincipalANO_FIM: TFIBIntegerField;
    DtStPrincipalDIVISAO_INICIO: TFIBIntegerField;
    DtStPrincipalDIVISAO_FIM: TFIBIntegerField;
    DtStPrincipalGRUPO_INICIO: TFIBIntegerField;
    DtStPrincipalGRUPO_FIM: TFIBIntegerField;
    DtStPrincipalCLASSE_INICIO: TFIBIntegerField;
    DtStPrincipalCLASSE_FIM: TFIBIntegerField;
    DtStPrincipalPRODUTO_INICIO: TFIBIntegerField;
    DtStPrincipalPRODUTO_FIM: TFIBIntegerField;
    DtStPrincipalSISTEMA_INICIO: TFIBIntegerField;
    DtStPrincipalSISTEMA_FIM: TFIBIntegerField;
    DtStBeneficiarioCPF: TFIBStringField;
    DtStBeneficiarioNOME: TFIBStringField;
    DtStBeneficiarioCATEGORIA: TFIBStringField;
    DtStProducaoSAFRA_INICIO: TFIBIntegerField;
    DtStProducaoSAFRA_FIM: TFIBIntegerField;
    DtStProducaoPRODUTO: TFIBStringField;
    DtStProducaoAREA_PLANTADA: TFIBFloatField;
    DtStProducaoAREA_COLHIDA: TFIBFloatField;
    DtStProducaoQUANTIDADE: TFIBFloatField;
    DtStProducaoUNIDADE: TFIBStringField;
    DtStProducaoSAFRA_INICIO_FIM: TFIBStringField;
    DtStComercioSAFRA_INICIO: TFIBIntegerField;
    DtStComercioSAFRA_FIM: TFIBIntegerField;
    DtStComercioCOMERCIO_DESCRICAO: TFIBStringField;
    DtStComercioCOMERCIO_QUANTIDADE: TFIBFloatField;
    DtStComercioCOMERCIO_UNIDADE: TFIBStringField;
    DtStComercioCOMERCIO_VALOR: TFIBBCDField;
    DtStComercioCOMERCIO_TOTAL: TFIBBCDField;
    DtStComercioCOMERCIO_DESTINOS: TFIBStringField;
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
    procedure DtStPrincipalCalcFields(DataSet: TDataSet);
    procedure DtStComercioCalcFields(DataSet: TDataSet);
    procedure BtnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

          DtStPrincipal.CloseOpen(True);
          DtStBeneficiario.CloseOpen(True);
          DtStProducao.CloseOpen(True);
          DtStComercio.CloseOpen(True);

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

          DtStResumo.CloseOpen(True);
          DtStGrafico.CloseOpen(True);
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

procedure TFrmRelatorioProducaoBeneficiario.DtStPrincipalCalcFields(DataSet: TDataSet);
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
