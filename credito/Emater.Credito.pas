unit Emater.Credito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxCalendar, cxMaskEdit, cxSpinEdit, cxMemo, cxTextEdit, cxButtonEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxCalc, dxBarBuiltInMenu;

type
  TFrmCredito = class(TFrmBaseTabela)
    DtStPrincipalCRD_ID: TFIBBCDField;
    DtStPrincipalCRD_TITULO: TFIBStringField;
    DtStPrincipalCRD_DESCRICAO: TFIBMemoField;
    DtStPrincipalCRD_DATA_ELABORACAO: TFIBDateField;
    DtStPrincipalCRD_DATA_INTERNALIZACAO: TFIBDateField;
    DtStPrincipalCRD_DATA_CONTRATACAO: TFIBDateField;
    DtStPrincipalCRD_DATA_ENCERRAMENTO: TFIBDateField;
    DtStPrincipalCRD_DATA_HORA_REGISTRO: TFIBDateTimeField;
    DtStPrincipalCRD_VALOR_ELABORADO: TFIBBCDField;
    DtStPrincipalCRD_VALOR_CONTRATADO: TFIBBCDField;
    DtStPrincipalFUN_ID_CAMPO: TFIBIntegerField;
    DtStPrincipalFUN_ID_ELABORADOR: TFIBIntegerField;
    DtStPrincipalUND_ID: TFIBIntegerField;
    DtStPrincipalFIN_ID: TFIBIntegerField;
    DtStPrincipalLIN_ID: TFIBIntegerField;
    DtStPrincipalTIP_ID: TFIBIntegerField;
    DtStPrincipalPUB_ID: TFIBIntegerField;
    DtStPrincipalCOM_ID: TFIBIntegerField;
    DtStPrincipalSIT_ID: TFIBIntegerField;
    DtStPrincipalCRD_MODIFICADO_USUARIO_NOME: TFIBStringField;
    PnlTop: TPanel;
    LblTitulo: TLabel;
    Image: TImage;
    LblReplicacao: TLabel;
    GrpBxMovimentacao: TcxGroupBox;
    GrpBxRegistro: TcxGroupBox;
    GrpBxProjeto: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DbEdtTitulo: TcxDBTextEdit;
    DbEdtIdentificador: TcxDBTextEdit;
    Label3: TLabel;
    DbMemoDetalhes: TcxDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DbDtEdtElaboracao: TcxDBDateEdit;
    Label13: TLabel;
    DbEdtValorElaborado: TcxDBCurrencyEdit;
    Label14: TLabel;
    DbDtEdtContratacao: TcxDBDateEdit;
    Label15: TLabel;
    DbEdtValorContratado: TcxDBCurrencyEdit;
    Label16: TLabel;
    DbDtEdtDataVigencia: TcxDBDateEdit;
    Label37: TLabel;
    Label56: TLabel;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    DbEdtModificadoData: TcxDBTextEdit;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    Label30: TLabel;
    Label17: TLabel;
    DbEdtCriacaoData: TcxDBTextEdit;
    DbLkpCmbBxFinanceira: TcxDBLookupComboBox;
    DbLkpCmbBxLinha: TcxDBLookupComboBox;
    DbLkpCmbBxTipo: TcxDBLookupComboBox;
    DbLkpCmbBxPublico: TcxDBLookupComboBox;
    DbLkpCmbBxComunidade: TcxDBLookupComboBox;
    DbLkpCmbBxSituacao: TcxDBLookupComboBox;
    BtnFinanceiraTabela: TcxButton;
    BtnLinhaTabela: TcxButton;
    BtnTipoTabela: TcxButton;
    BtnPublicoTabela: TcxButton;
    BtnComunidadeTabela: TcxButton;
    DbEdtTecnicoCampo: TcxDBButtonEdit;
    DbEdtTecnicoElaborador: TcxDBButtonEdit;
    BtnSituacaoTabela: TcxButton;
    TbShtVisita: TcxTabSheet;
    TbShtProponentes: TcxTabSheet;
    TbShtItens: TcxTabSheet;
    DtStPrincipalCRD_TECNICO_CAMPO: TFIBStringField;
    DtStPrincipalCRD_TECNICO_ELABORADOR: TFIBStringField;
    DtStVisita: TpFIBDataSet;
    DtSrcVisita: TDataSource;
    DtStVisitaREG_ID: TFIBBCDField;
    DtStVisitaREG_DATA_VISITA: TFIBDateField;
    DtStVisitaREG_OBSERVACAO: TFIBMemoField;
    DtStVisitaREG_EXCLUIDO: TFIBBooleanField;
    DtStVisitaFUN_ID_VISITA: TFIBIntegerField;
    DtStVisitaFUN_ID_REGISTRO: TFIBIntegerField;
    DtStVisitaCRD_ID: TFIBBCDField;
    DtStVisitaREG_TECNICO_VISITA: TFIBStringField;
    DtStVisitaREG_TECNICO_REGISTRO: TFIBStringField;
    GrpBxVisita: TcxGroupBox;
    BtnVisitaNovo: TcxButton;
    BtnVisitaSalvar: TcxButton;
    BtnVisitaCancelar: TcxButton;
    BtnVisitaExcluir: TcxButton;
    LblVisitas: TLabel;
    GrdVis: TcxGrid;
    GrdVisTbl: TcxGridDBTableView;
    GrdVisLvl: TcxGridLevel;
    Label18: TLabel;
    DbDtVisita: TcxDBDateEdit;
    Label19: TLabel;
    DbMemoVisita: TcxDBMemo;
    Label20: TLabel;
    DbEdtTecnico: TcxDBButtonEdit;
    GrdVisTblREG_DATA_VISITA: TcxGridDBColumn;
    GrdVisTblREG_OBSERVACAO: TcxGridDBColumn;
    GrdVisTblREG_TECNICO_VISITA: TcxGridDBColumn;
    Label21: TLabel;
    DbEdtDataRegistro: TcxDBTextEdit;
    Label22: TLabel;
    DbEdtTecnicoRegistro: TcxDBTextEdit;
    DtStProponente: TpFIBDataSet;
    DtSrcProponente: TDataSource;
    GrpBxProponente: TcxGroupBox;
    Label26: TLabel;
    DbEdtDataHoraProponente: TcxDBTextEdit;
    BtnPropNovo: TcxButton;
    BtnPropSalvar: TcxButton;
    BtnPropCancelar: TcxButton;
    BtnPropExcluir: TcxButton;
    GrdProp: TcxGrid;
    GrdPropTbl: TcxGridDBTableView;
    GrdPropLvl: TcxGridLevel;
    Label28: TLabel;
    DtStProponentePRO_ID: TFIBBCDField;
    DtStProponentePRO_TIPO: TFIBStringField;
    DtStProponentePRO_DOCUMENTO: TFIBStringField;
    DtStProponentePRO_NOME: TFIBStringField;
    DtStProponentePRO_DAP: TFIBStringField;
    DtStProponenteCRD_ID: TFIBBCDField;
    DtStProponenteCLS_ID: TFIBIntegerField;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DbEdtNome: TcxDBTextEdit;
    Label27: TLabel;
    Label29: TLabel;
    DbEdtDAPNumero: TcxDBMaskEdit;
    DbImgCmbBxTipoPessoa: TcxDBImageComboBox;
    DbLkpCmbBxClassificacao: TcxDBLookupComboBox;
    DbEdtCPFCNPJ: TcxDBMaskEdit;
    BtnClassificacaoTabela: TcxButton;
    BtnProponenteTabela: TcxButton;
    BtnProponenteBuscar: TcxButton;
    GrdPropTblPRO_TIPO: TcxGridDBColumn;
    GrdPropTblPRO_NOME: TcxGridDBColumn;
    GrdPropTblPRO_DAP: TcxGridDBColumn;
    DtStDAP: TpFIBDataSet;
    DtStDAPDAP: TFIBStringField;
    DtStNome: TpFIBDataSet;
    DtStNomeNOME: TFIBStringField;
    DtStItem: TpFIBDataSet;
    DtSrcItem: TDataSource;
    GrdItm: TcxGrid;
    GrdItmTbl: TcxGridDBTableView;
    GrdItmLvl: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    LblItemTipo: TLabel;
    DbLkpCmbBxGrupo: TcxDBLookupComboBox;
    BtnItmNovo: TcxButton;
    BtnItmSalvar: TcxButton;
    BtnItmCancelar: TcxButton;
    BtnItmExcluir: TcxButton;
    DtStItemITM_ID: TFIBBCDField;
    DtStItemITM_TIPO: TFIBSmallIntField;
    DtStItemITM_AREA_FINANCIADA: TFIBBCDField;
    DtStItemITM_QTDE_SOLICITADA: TFIBBCDField;
    DtStItemITM_QTDE_LIBERADA: TFIBBCDField;
    DtStItemITM_VALOR_UNITARIO: TFIBBCDField;
    DtStItemITM_VALOR_ELABORADO: TFIBBCDField;
    DtStItemITM_VALOR_LIBERADO: TFIBBCDField;
    DtStItemPRD_ID: TFIBIntegerField;
    DtStItemUNI_ID: TFIBIntegerField;
    DtStItemVAR_ID: TFIBIntegerField;
    DtStItemRAC_ID: TFIBIntegerField;
    DtStItemBEM_ID: TFIBIntegerField;
    DtStItemCRD_ID: TFIBBCDField;
    DtStItemGRP_ID: TFIBIntegerField;
    DtStItemITM_DESCRICAO: TFIBStringField;
    LblItemTipoCredito: TLabel;
    DbImgCmbBxTipoCredito: TcxDBImageComboBox;
    LblItemDescricao: TLabel;
    DbLkpCmbBxProduto: TcxDBLookupComboBox;
    LblVariedade: TLabel;
    DbLkpCmbBxVariedade: TcxDBLookupComboBox;
    BtnVariedadeTabela: TcxButton;
    LblRaca: TLabel;
    DbLkpCmbBxRaca: TcxDBLookupComboBox;
    BtnRacaTabela: TcxButton;
    LblItemUnidade: TLabel;
    DbLkpCmbBxUnidadeMedida: TcxDBLookupComboBox;
    LblItemAreaFinanciada: TLabel;
    DbEdtAreaFinanciada: TcxDBCalcEdit;
    LblItemQuantidade: TLabel;
    DbEdtQuantidade: TcxDBCalcEdit;
    LblItemQuantidadeContratada: TLabel;
    DbEdtQuantidadeLiberada: TcxDBCalcEdit;
    LblItemValorUnitario: TLabel;
    DbEdtItemValorUnitario: TcxDBCalcEdit;
    DbEdtItemValorElaborado: TcxDBCalcEdit;
    LblItemValorElaborado: TLabel;
    DbEdtItemValorLiberado: TcxDBCalcEdit;
    LblItemValorContratado: TLabel;
    Label41: TLabel;
    DbEdtItemDataHora: TcxDBTextEdit;
    GrdItmTblITM_QTDE_SOLICITADA: TcxGridDBColumn;
    GrdItmTblITM_QTDE_LIBERADA: TcxGridDBColumn;
    GrdItmTblITM_VALOR_ELABORADO: TcxGridDBColumn;
    GrdItmTblITM_VALOR_LIBERADO: TcxGridDBColumn;
    GrdItmTblITM_DESCRICAO: TcxGridDBColumn;
    GrdItmTblGRP_ID: TcxGridDBColumn;
    DtStPrincipalREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_REPLICADO: TFIBBooleanField;
    DtStPrincipalREG_USUARIO: TFIBStringField;
    DtStPrincipalREG_MODIFICADO: TFIBDateTimeField;
    DtStVisitaREG_REPLICADO: TFIBBooleanField;
    DtStVisitaREG_USUARIO: TFIBStringField;
    DtStVisitaREG_MODIFICADO: TFIBDateTimeField;
    DtStProponenteREG_EXCLUIDO: TFIBBooleanField;
    DtStProponenteREG_REPLICADO: TFIBBooleanField;
    DtStProponenteREG_USUARIO: TFIBStringField;
    DtStProponenteREG_MODIFICADO: TFIBDateTimeField;
    DtStItemREG_EXCLUIDO: TFIBBooleanField;
    DtStItemREG_REPLICADO: TFIBBooleanField;
    DtStItemREG_USUARIO: TFIBStringField;
    DtStItemREG_MODIFICADO: TFIBDateTimeField;
    Label31: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnFinanceiraTabelaClick(Sender: TObject);
    procedure BtnLinhaTabelaClick(Sender: TObject);
    procedure BtnTipoTabelaClick(Sender: TObject);
    procedure BtnPublicoTabelaClick(Sender: TObject);
    procedure BtnSituacaoTabelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtStPrincipalBeforePost(DataSet: TDataSet);
    procedure DtStPrincipalNewRecord(DataSet: TDataSet);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure BtnComunidadeTabelaClick(Sender: TObject);
    procedure DbEdtTecnicoCampoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DbEdtTecnicoElaboradorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DtSrcVisitaStateChange(Sender: TObject);
    procedure TbShtVisitaShow(Sender: TObject);
    procedure DbEdtTecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DtStVisitaNewRecord(DataSet: TDataSet);
    procedure DtStVisitaBeforePost(DataSet: TDataSet);
    procedure DtStVisitaAfterPost(DataSet: TDataSet);
    procedure BtnVisitaNovoClick(Sender: TObject);
    procedure BtnVisitaSalvarClick(Sender: TObject);
    procedure BtnVisitaCancelarClick(Sender: TObject);
    procedure BtnVisitaExcluirClick(Sender: TObject);
    procedure DtSrcProponenteStateChange(Sender: TObject);
    procedure BtnClassificacaoTabelaClick(Sender: TObject);
    procedure TbShtProponentesShow(Sender: TObject);
    procedure DbImgCmbBxTipoPessoaPropertiesChange(Sender: TObject);
    procedure BtnProponenteTabelaClick(Sender: TObject);
    procedure BtnProponenteBuscarClick(Sender: TObject);
    procedure DbEdtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure DbEdtCPFCNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnPropSalvarClick(Sender: TObject);
    procedure BtnPropCancelarClick(Sender: TObject);
    procedure BtnPropExcluirClick(Sender: TObject);
    procedure DtStProponenteAfterPost(DataSet: TDataSet);
    procedure DtStProponenteBeforePost(DataSet: TDataSet);
    procedure DtStProponenteNewRecord(DataSet: TDataSet);
    procedure DtSrcItemStateChange(Sender: TObject);
    procedure BtnPropNovoClick(Sender: TObject);
    procedure BtnItmNovoClick(Sender: TObject);
    procedure BtnItmSalvarClick(Sender: TObject);
    procedure BtnItmCancelarClick(Sender: TObject);
    procedure BtnItmExcluirClick(Sender: TObject);
    procedure TbShtItensShow(Sender: TObject);
    procedure DtStItemAfterPost(DataSet: TDataSet);
    procedure DtStItemBeforePost(DataSet: TDataSet);
    procedure DtStItemNewRecord(DataSet: TDataSet);
    procedure DbLkpCmbBxGrupoPropertiesChange(Sender: TObject);
    procedure BtnVariedadeTabelaClick(Sender: TObject);
    procedure BtnRacaTabelaClick(Sender: TObject);
  private
    procedure AtualizarReplicacaoPendente;
    procedure AplicarUltimaAlteracao;
    procedure AtualizarDAP;
    procedure LimparProponente;
    function RecuperarNome: string;
  end;

var
  FrmCredito: TFrmCredito;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Credito.Modulo, Emater.Recurso.Modulo, Emater.Credito.Financeira, Emater.Credito.Linha,
  Emater.Credito.Publico, Emater.Credito.Situacao, Emater.Credito.Tipo, Emater.Log.Modulo, Emater.Credito.Consts, Emater.Sistema.Modulo,
  Emater.Cadastro.Comunidade, Emater.Pessoal.Funcionario.Busca, Emater.Dialogo.Modulo, Emater.Base.Consts, Emater.Credito.Classificacao,
  Emater.Cadastro.Beneficiario, Emater.Cadastro.Organizacao, Emater.Cadastro.Beneficiario.Busca, Emater.Cadastro.Modulo,
  Emater.Credito.Variedade, Emater.Credito.Raca;

procedure TFrmCredito.AplicarUltimaAlteracao;
begin
  if not (DtStPrincipal.State in [dsEdit, dsInsert]) then
    DtStPrincipal.Edit;
  DtStPrincipalREG_MODIFICADO.Value := Now;
  DtStPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  if (DtStPrincipal.State in [dsEdit, dsInsert]) then
    DtStPrincipal.Post;
end;

procedure TFrmCredito.AtualizarReplicacaoPendente;
begin
  DtmLogModulo.ReplicacaoPendenteExibir(
    CREDITO_REPLICACAO_TABELAS,
    CampoChave,
    DtStPrincipal.FieldByName(CampoChave).AsString, LblReplicacao);
end;

procedure TFrmCredito.BtnClassificacaoTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoClassificacao := TFrmCreditoClassificacao.Create(Self);
  try
    FrmCreditoClassificacao.ShowModal;
  finally
    FrmCreditoClassificacao.Release;
    FrmCreditoClassificacao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnComunidadeTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FrmCadastroComunidade := TFrmCadastroComunidade.Create(Self);
  try
    FrmCadastroComunidade.Novo;
  finally
    FrmCadastroComunidade.Release;
    FrmCadastroComunidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnFinanceiraTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoFinanceira := TFrmCreditoFinanceira.Create(Self);
  try
    FrmCreditoFinanceira.ShowModal;
  finally
    FrmCreditoFinanceira.Release;
    FrmCreditoFinanceira := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnItmCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (DtStItem.State in [dsEdit, dsInsert]) then
        begin
          DtStItem.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbLkpCmbBxGrupo.SetFocus;
    end;
end;

procedure TFrmCredito.BtnItmExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStItem);

      DtSrcItem.OnStateChange(DtStItem);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCredito.BtnItmNovoClick(Sender: TObject);
begin
  DtStItem.Last;
  DtStItem.Append;
  DBLkpCmbBxGrupo.SetFocus;
end;

procedure TFrmCredito.BtnItmSalvarClick(Sender: TObject);
begin

  // Validação dos campos:
  if DtStItemGRP_ID.IsNull or DtStItemITM_TIPO.IsNull or (((
     DtStItemGRP_ID.Value = 100000001) or (DtStItemGRP_ID.Value = 100000002)) and DtStItemPRD_ID.IsNull) or (((
     DtStItemGRP_ID.Value >= 100000003) and (DtStItemGRP_ID.Value <= 100000005)) and DtStItemBEM_ID.IsNull) or
     DtStItemUNI_ID.IsNull or
     DtStItemITM_QTDE_SOLICITADA.IsNull or
     DtStItemITM_QTDE_LIBERADA.IsNull or
     DtStItemITM_VALOR_UNITARIO.IsNull or
     DtStItemITM_VALOR_ELABORADO.IsNull or
     DtStItemITM_VALOR_LIBERADO.IsNull or
     DtStItemITM_AREA_FINANCIADA.IsNull then
    begin
      Msg.Aviso(CREDITO_CAMPOS_ORIGATORIOS);
      LblItemTipo.Font.Color := clRed;
      LblItemTipoCredito.Font.Color := clRed;
      LblItemDescricao.Font.Color := clRed;
      LblItemUnidade.Font.Color := clRed;
      LblItemQuantidade.Font.Color := clRed;
      LblItemQuantidadeContratada.Font.Color := clRed;
      LblItemValorUnitario.Font.Color := clRed;
      LblItemValorElaborado.Font.Color := clRed;
      LblItemValorContratado.Font.Color := clRed;
      LblItemAreaFinanciada.Font.Color := clRed;
      Exit;
    end;

  PgCntrlMain.ActivePage := TbShtItens;

  // Mais Validações:
  if (DtStItemITM_QTDE_SOLICITADA.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_QUANTIDADE);
      DbEdtQuantidade.SetFocus;
      Exit;
    end;

  if (DtStItemITM_VALOR_UNITARIO.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_VALOR_UNITARIO);
      DbEdtItemValorUnitario.SetFocus;
      Exit;
    end;

  if (DtStItemITM_VALOR_ELABORADO.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_VALOR_ELABORADO);
      DbEdtItemValorElaborado.SetFocus;
      Exit;
    end;

  if (DtStItemITM_VALOR_LIBERADO.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_VALOR_LIBERADO);
      DbEdtItemValorLiberado.SetFocus;
      Exit;
    end;

  try
    if not DtmDialogoModulo.ExisteCamposPendentes(DtStItem) then
      begin
        DtStItem.Post;
        AtualizarReplicacaoPendente;
      end;
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCredito.BtnLinhaTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoLinha := TFrmCreditoLinha.Create(Self);
  try
    FrmCreditoLinha.ShowModal;
  finally
    FrmCreditoLinha.Release;
    FrmCreditoLinha := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnPublicoTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoPublico := TFrmCreditoPublico.Create(Self);
  try
    FrmCreditoPublico.ShowModal;
  finally
    FrmCreditoPublico.Release;
    FrmCreditoPublico := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnRacaTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoRaca := TFrmCreditoRaca.Create(Self);
  try
    FrmCreditoRaca.ShowModal;
  finally
    FrmCreditoRaca.Release;
    FrmCreditoRaca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnSituacaoTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoSituacao := TFrmCreditoSituacao.Create(Self);
  try
    FrmCreditoSituacao.ShowModal;
  finally
    FrmCreditoSituacao.Release;
    FrmCreditoSituacao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnTipoTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoTipo := TFrmCreditoTipo.Create(Self);
  try
    FrmCreditoTipo.ShowModal;
  finally
    FrmCreditoTipo.Release;
    FrmCreditoTipo := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnVariedadeTabelaClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  FrmCreditoVariedade := TFrmCreditoVariedade.Create(Self);
  try
    FrmCreditoVariedade.ShowModal;
  finally
    FrmCreditoVariedade.Release;
    FrmCreditoVariedade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCredito.BtnVisitaCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (DtStVisita.State in [dsEdit, dsInsert]) then
        begin
          DtStVisita.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbDtVisita.SetFocus;
    end;
end;

procedure TFrmCredito.BtnVisitaExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStVisita);

      DtSrcVisita.OnStateChange(DtStVisita);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCredito.BtnVisitaNovoClick(Sender: TObject);
begin
  DtStVisita.Last;
  DtStVisita.Append;
  DbDtVisita.SetFocus;
end;

procedure TFrmCredito.BtnVisitaSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(DtStVisita) then
      begin
        DtStVisita.Post;
        AtualizarReplicacaoPendente;
      end;
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCredito.BtnPropCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (DtStProponente.State in [dsEdit, dsInsert]) then
        begin
          DtStProponente.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbImgCmbBxTipoPessoa.SetFocus;
    end;
end;

procedure TFrmCredito.BtnPropExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStProponente);

      DtSrcProponente.OnStateChange(DtStProponente);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCredito.BtnPropNovoClick(Sender: TObject);
begin
  DtStProponente.Last;
  DtStProponente.Append;
  DbImgCmbBxTipoPessoa.SetFocus;
end;

procedure TFrmCredito.BtnProponenteBuscarClick(Sender: TObject);
begin
  if DtSrcProponente.AutoEdit then
    begin
      if (DtStProponentePRO_TIPO.AsString = 'F') then
        begin
          FrmCadastroBeneficiarioBusca := TFrmCadastroBeneficiarioBusca.Create(Self);
          try
            Screen.Cursor := crHourGlass;

            if (FrmCadastroBeneficiarioBusca.ShowModal = mrOk) then
              try
                if not (DtStProponente.State in [dsEdit, dsInsert]) then
                  DtStProponente.Edit;

                LimparProponente;
                DtStProponentePRO_DOCUMENTO.AsString := FrmCadastroBeneficiarioBusca.DtStConsultaBEN_CPF.AsString;
                DtStProponentePRO_NOME.AsString := FrmCadastroBeneficiarioBusca.DtStConsultaBEN_NOME.AsString;
                AtualizarDAP;

                AtualizarReplicacaoPendente;
              except
                on E: Exception do
                  if DtStProponente.State = dsInsert then
                    DtStProponente.Cancel;
              end;
          finally
            FrmCadastroBeneficiarioBusca.Release;
            FrmCadastroBeneficiarioBusca := nil;
            Screen.Cursor := crDefault;
          end;
        end
      else
        begin
          // Implementar buscar rápida de organização social.
        end;
    end
  else
    Msg.Aviso(CREDITO_REGISTRO_SOMENTE_LEITURA);
end;

procedure TFrmCredito.BtnProponenteTabelaClick(Sender: TObject);
begin
  if (DtStProponentePRO_TIPO.AsString = 'F') then
    begin
      Screen.Cursor := crHourGlass;
      FrmCadastroBeneficiario := TFrmCadastroBeneficiario.Create(Self);
      try
        FrmCadastroBeneficiario.Novo;
      finally
        FrmCadastroBeneficiario.Release;
        FrmCadastroBeneficiario := nil;
        Screen.Cursor := crDefault;
      end;
    end
  else
    begin
      FrmCadastroOrganizacao := TFrmCadastroOrganizacao.Create(Self);
      try
        Screen.Cursor := crHourglass;
        FrmCadastroOrganizacao.Novo;
      finally
        FrmCadastroOrganizacao.Release;
        FrmCadastroOrganizacao := nil;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmCredito.BtnPropSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(DtStProponente) then
      begin
        DtStProponente.Post;
        AtualizarReplicacaoPendente;
      end;
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCredito.DbEdtCPFCNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if DtSrcProponente.AutoEdit then
    if (Key = VK_DELETE) then
        begin
          if not (DtStProponente.State in [dsEdit, dsInsert]) then DtStProponente.Edit;
          DtStProponentePRO_DAP.Clear;
          DtStProponentePRO_NOME.Clear;
        end;
end;

procedure TFrmCredito.DbEdtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if DtSrcProponente.AutoEdit then
    begin
      if CharInSet(Key, ['0'..'9', #8]) then
        begin
          if not (DtStProponente.State in [dsEdit, dsInsert]) then DtStProponente.Edit;
          DtStProponentePRO_DAP.Clear;
          DtStProponentePRO_NOME.Clear;
        end;

      if CharInSet(Key, [#13]) then
        begin
          Key := #0;
          if not (DtStProponente.State in [dsEdit, dsInsert]) then DtStProponente.Edit;
          DtStProponentePRO_DAP.Clear;
          DtStProponentePRO_NOME.Clear;

          DtStProponentePRO_NOME.AsString := RecuperarNome;
          if (DbImgCmbBxTipoPessoa.ItemIndex = 0) then AtualizarDAP;
        end;
    end;
end;

procedure TFrmCredito.DbEdtTecnicoCampoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (BtnSalvar.Visible) then
    begin
      FrmPessoalFuncionarioBusca := TFrmPessoalFuncionarioBusca.Create(Self);
      try
        if (FrmPessoalFuncionarioBusca.ShowModal = mrOk) then
          begin
            if not (DtStPrincipal.State in [dsEdit, dsInsert]) then
              DtStPrincipal.Edit;
            DtStPrincipalFUN_ID_CAMPO.AsInteger := FrmPessoalFuncionarioBusca.DtStConsultaFUN_ID.AsInteger;
            DtStPrincipalCRD_TECNICO_CAMPO.AsString := FrmPessoalFuncionarioBusca.DtStConsultaFUN_NOME.AsString;
          end;
      finally
        FrmPessoalFuncionarioBusca.Release;
        FrmPessoalFuncionarioBusca := nil;
      end;
    end
  else
    Msg.Aviso(CREDITO_EDICAO_BLOQUEADA);
end;

procedure TFrmCredito.DbEdtTecnicoElaboradorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (BtnSalvar.Visible) then
    begin
      FrmPessoalFuncionarioBusca := TFrmPessoalFuncionarioBusca.Create(Self);
      try
        if (FrmPessoalFuncionarioBusca.ShowModal = mrOk) then
          begin
            if not (DtStPrincipal.State in [dsEdit, dsInsert]) then
              DtStPrincipal.Edit;
            DtStPrincipalFUN_ID_ELABORADOR.AsInteger := FrmPessoalFuncionarioBusca.DtStConsultaFUN_ID.AsInteger;
            DtStPrincipalCRD_TECNICO_ELABORADOR.AsString := FrmPessoalFuncionarioBusca.DtStConsultaFUN_NOME.AsString;
          end;
      finally
        FrmPessoalFuncionarioBusca.Release;
        FrmPessoalFuncionarioBusca := nil;
      end;
    end
  else
    Msg.Aviso(CREDITO_EDICAO_BLOQUEADA);
end;

procedure TFrmCredito.DbEdtTecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if (BtnSalvar.Visible) then
    begin
      FrmPessoalFuncionarioBusca := TFrmPessoalFuncionarioBusca.Create(Self);
      try
        if (FrmPessoalFuncionarioBusca.ShowModal = mrOk) then
          begin
            if not (DtStVisita.State in [dsEdit, dsInsert]) then
              DtStVisita.Edit;
            DtStVisitaFUN_ID_VISITA.AsInteger := FrmPessoalFuncionarioBusca.DtStConsultaFUN_ID.AsInteger;
            DtStVisitaREG_TECNICO_VISITA.AsString := FrmPessoalFuncionarioBusca.DtStConsultaFUN_NOME.AsString;
          end;
      finally
        FrmPessoalFuncionarioBusca.Release;
        FrmPessoalFuncionarioBusca := nil;
      end;
    end
  else
    Msg.Aviso(CREDITO_EDICAO_BLOQUEADA);
end;

procedure TFrmCredito.DbImgCmbBxTipoPessoaPropertiesChange(Sender: TObject);
begin
  case DbImgCmbBxTipoPessoa.ItemIndex of
    0: DbEdtCPFCNPJ.Properties.EditMask := '999.999.999-99;0; ';
    1: DbEdtCPFCNPJ.Properties.EditMask := '99.999.999/9999-99;0; ';
  end;
  LimparProponente;
end;

procedure TFrmCredito.DbLkpCmbBxGrupoPropertiesChange(Sender: TObject);
begin
  LblVariedade.Visible := False;
  DbLkpCmbBxVariedade.Visible := False;
  BtnVariedadeTabela.Visible := False;
  LblItemAreaFinanciada.Visible := False;
  DbEdtAreaFinanciada.Visible := False;

  LblRaca.Visible := False;
  DbLkpCmbBxRaca.Visible := False;
  BtnRacaTabela.Visible := False;

  case DtStItemGRP_ID.Value of
    100000001: // Cultura:
      begin
        DbLkpCmbBxProduto.DataBinding.DataField := 'PRD_ID';
        DbLkpCmbBxProduto.Properties.ListSource := DtmCreditoModulo.DtSrcCultura;
        LblVariedade.Visible := True;
        DbLkpCmbBxVariedade.Visible := True;
        BtnVariedadeTabela.Visible := True;
        LblItemAreaFinanciada.Visible := True;
        DbEdtAreaFinanciada.Visible := True;
      end;
    100000002: // Criação:
      begin
        DbLkpCmbBxProduto.DataBinding.DataField := 'PRD_ID';
        DbLkpCmbBxProduto.Properties.ListSource := DtmCreditoModulo.DtSrcCriacao;
        LblRaca.Visible := True;
        DbLkpCmbBxRaca.Visible := True;
        BtnRacaTabela.Visible := True;
      end;
    100000003: // Máquinas:
      begin
        DbLkpCmbBxProduto.DataBinding.DataField := 'BEM_ID';
        DbLkpCmbBxProduto.Properties.ListSource := DtmCreditoModulo.DtSrcMaquina;
      end;
    100000004: // Equipamentos e insumos:
      begin
        DbLkpCmbBxProduto.DataBinding.DataField := 'BEM_ID';
        DbLkpCmbBxProduto.Properties.ListSource := DtmCreditoModulo.DtSrcEquipamento;
      end;
    100000005: // Benfeitorias:
      begin
        DbLkpCmbBxProduto.DataBinding.DataField := 'BEM_ID';
        DbLkpCmbBxProduto.Properties.ListSource := DtmCreditoModulo.DtSrcBenfeitoria;
      end;
  end;
end;

procedure TFrmCredito.DtSrcItemStateChange(Sender: TObject);
begin
  with DtStItem do
    begin
      BtnItmNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnItmExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnItmCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnItmSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCredito.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;
  TbShtVisita.TabVisible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (DtStPrincipal.RecordCount > 0);
  TbShtProponentes.TabVisible := TbShtVisita.TabVisible;
  TbShtItens.TabVisible := TbShtVisita.TabVisible;
end;

procedure TFrmCredito.DtSrcProponenteStateChange(Sender: TObject);
begin
  with DtStProponente do
    begin
      BtnPropNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnPropExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnPropCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnPropSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCredito.DtSrcVisitaStateChange(Sender: TObject);
begin
  with DtStVisita do
    begin
      BtnVisitaNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnVisitaExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnVisitaCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnVisitaSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCredito.DtStItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCredito.DtStItemBeforePost(DataSet: TDataSet);
begin
  case DtStItemGRP_ID.Value of
    100000001: DtStItemBEM_ID.Clear; // Cultura.
    100000002: DtStItemBEM_ID.Clear; // Criação.
    100000003: DtStItemPRD_ID.Clear; // Máquinas.
    100000004: DtStItemPRD_ID.Clear; // Equipamentos e insumos.
    100000005: DtStItemPRD_ID.Clear; // Benfeitorias.
  end;

  DtmSistemaModulo.GravarAuditoriaInclusao(DtStItem, 'TAB_CRD_ITEM', 'ITM_ID');
end;

procedure TFrmCredito.DtStItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtStItemCRD_ID.AsInt64 := DtStPrincipalCRD_ID.AsInt64;
  DtStItemITM_AREA_FINANCIADA.Value := 0;
  DtStItemITM_QTDE_SOLICITADA.Value := 0;
  DtStItemITM_QTDE_LIBERADA.Value := 0;
  DtStItemITM_VALOR_UNITARIO.Value := 0;
  DtStItemITM_VALOR_ELABORADO.Value := 0;
  DtStItemITM_VALOR_LIBERADO.Value := 0;
end;

procedure TFrmCredito.DtStPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtStPrincipalREG_MODIFICADO.Value := Now;
  DtStPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
end;

procedure TFrmCredito.DtStPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtStPrincipalCRD_DATA_ELABORACAO.Value := Date;
  DtStPrincipalCRD_DATA_HORA_REGISTRO.Value := Now;
  DtStPrincipalCRD_VALOR_ELABORADO.Value := 0;
  DtStPrincipalCRD_VALOR_CONTRATADO.Value := 0;
  DtStPrincipalREG_EXCLUIDO.Value := False;
  DtStPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;

  DtStPrincipalFUN_ID_CAMPO.AsInteger := DtmConexaoModulo.FuncionarioID;
  DtStPrincipalFUN_ID_ELABORADOR.AsInteger := DtmConexaoModulo.FuncionarioID;

  DtStPrincipalCRD_TECNICO_CAMPO.AsString := DtmConexaoModulo.UsuarioNome;
  DtStPrincipalCRD_TECNICO_ELABORADOR.AsString := DtmConexaoModulo.UsuarioNome;
end;

procedure TFrmCredito.DtStProponenteAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCredito.DtStProponenteBeforePost(DataSet: TDataSet);
begin
  DtmSistemaModulo.GravarAuditoriaInclusao(DtStProponente, 'TAB_CRD_PROPONENTE', 'PRO_ID');
end;

procedure TFrmCredito.DtStProponenteNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtStProponentePRO_TIPO.AsString := 'F';
  DtStProponenteCRD_ID.AsInt64 := DtStPrincipalCRD_ID.AsInt64;
end;

procedure TFrmCredito.DtStVisitaAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCredito.DtStVisitaBeforePost(DataSet: TDataSet);
begin
  DtmSistemaModulo.GravarAuditoriaInclusao(DtStVisita, 'TAB_CRD_VISITA', 'REG_ID');
end;

procedure TFrmCredito.DtStVisitaNewRecord(DataSet: TDataSet);
begin
  DtStVisitaREG_DATA_VISITA.Value := Date;
  DtStVisitaFUN_ID_REGISTRO.Value := DtmConexaoModulo.FuncionarioID;
  DtStVisitaCRD_ID.AsInt64 := DtStPrincipalCRD_ID.AsInt64;
  DtStVisitaREG_TECNICO_REGISTRO.AsString := DtmConexaoModulo.UsuarioNome;
end;

procedure TFrmCredito.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtTitulo;
  CampoChave := 'CRD_ID';
  Tabela := 'TAB_CRD_CREDITO_RURAL';

  DbLkpCmbBxFinanceira.Properties.ListSource := DtmCreditoModulo.DtSrcFinanceira;
  DbLkpCmbBxLinha.Properties.ListSource := DtmCreditoModulo.DtSrcLinha;
  DbLkpCmbBxTipo.Properties.ListSource := DtmCreditoModulo.DtSrcTipo;
  DbLkpCmbBxPublico.Properties.ListSource := DtmCreditoModulo.DtSrcPublico;
  DbLkpCmbBxSituacao.Properties.ListSource := DtmCreditoModulo.DtSrcSituacao;
  DbLkpCmbBxClassificacao.Properties.ListSource := DtmCreditoModulo.DtSrcClassificacao;
  DbLkpCmbBxGrupo.Properties.ListSource := DtmCreditoModulo.DtSrcGrupo;
  DbLkpCmbBxVariedade.Properties.ListSource := DtmCreditoModulo.DtSrcVariedade;
  DbLkpCmbBxRaca.Properties.ListSource := DtmCreditoModulo.DtSrcRaca;
  DbLkpCmbBxUnidadeMedida.Properties.ListSource := DtmCadastroModulo.DtSrcUnidade;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;

  PgCntrlMain.ActivePage := TbShtPrincipal;
  GrpBxProjeto.Anchors := GrpBxProjeto.Anchors + [akBottom];

  DtmCreditoModulo.DtStCultura.Close;
  DtmCreditoModulo.DtStCultura.Open;
  DtmCreditoModulo.DtStCriacao.Close;
  DtmCreditoModulo.DtStCriacao.Open;
  DtmCreditoModulo.DtStMaquina.Close;
  DtmCreditoModulo.DtStMaquina.Open;
  DtmCreditoModulo.DtStEquipamento.Close;
  DtmCreditoModulo.DtStEquipamento.Open;
  DtmCreditoModulo.DtStBenfeitoria.Close;
  DtmCreditoModulo.DtStBenfeitoria.Open;
end;

procedure TFrmCredito.FormShow(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStFinanceira.Open;
  DtmCreditoModulo.DtStLinha.Open;
  DtmCreditoModulo.DtStTipo.Open;
  DtmCreditoModulo.DtStPublico.Open;
  DtmCreditoModulo.DtStSituacao.Open;
  DtmCreditoModulo.DtStClassificacao.Open;
  DtmCreditoModulo.DtStGrupo.Open;
  DtmCreditoModulo.DtStRaca.Open;
  DtmCreditoModulo.DtStVariedade.Open;
  DtmSistemaModulo.DtStUnidade.Open;
end;

procedure TFrmCredito.LimparProponente;
begin
  if DtStProponente.State in [dsEdit, dsInsert] then
    begin
      DtStProponentePRO_DOCUMENTO.Clear;
      DtStProponentePRO_DAP.Clear;
      DtStProponentePRO_NOME.Clear;
    end;
end;

function TFrmCredito.RecuperarNome: string;
begin
  DtStNome.Close;
  DtStNome.SQLs.SelectSQL.Clear;
  case DbImgCmbBxTipoPessoa.ItemIndex of
    0: DtStNome.SQLs.SelectSQL.Add('select a.ben_nome as nome from tab_cad_beneficiario a where a.ben_cpf = :documento');
    1: DtStNome.SQLs.SelectSQL.Add('select a.org_nome as nome from tab_cad_organizacao a where a.org_cnpj = :documento');
  end;
  DtStNome.ParamByName('documento').AsString := DtStProponentePRO_DOCUMENTO.AsString;
  DtStNome.Open;
  if DtStNome.IsEmpty then
    Result := ''
  else
    Result := DtStNomeNOME.AsString;
end;

procedure TFrmCredito.AtualizarDAP;
begin
  DtStProponentePRO_DAP.Clear;
  DtStDAP.Close;
  DtStDAP.ParamByName('cpf').AsString := DtStProponentePRO_DOCUMENTO.AsString;
  DtStDAP.Open;
  if DtStDAP.IsEmpty then
    Msg.Informacao(CREDITO_DAP_NAO_ENCONTRADA)
  else
    DtStProponentePRO_DAP.AsString := DtStDAPDAP.AsString;
end;

procedure TFrmCredito.TbShtItensShow(Sender: TObject);
begin
  if not DtStItem.Active then
    begin
      DtStItem.Open;
      DtmCreditoModulo.DtStGrupo.Close;
      DtmCreditoModulo.DtStGrupo.Open;
    end;

  DbLkpCmbBxGrupo.Properties.OnChange(Sender);
  TcxLookupComboBoxProperties(GrdItmTblGRP_ID.Properties).ListSource := DtmCreditoModulo.DtSrcGrupo;
end;

procedure TFrmCredito.TbShtProponentesShow(Sender: TObject);
begin
  if not DtStProponente.Active then
    begin
      DtStProponente.Open;
      DtmCreditoModulo.DtStClassificacao.Close;
      DtmCreditoModulo.DtStClassificacao.Open;
    end;
end;

procedure TFrmCredito.TbShtVisitaShow(Sender: TObject);
begin
  if not DtStVisita.Active then
    DtStVisita.Open;
end;

end.
