unit Emater.Credito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxCalendar, cxMaskEdit, cxSpinEdit, cxMemo, cxTextEdit, cxButtonEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxCalc, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCredito = class(TFrmBaseTabela)
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
    DtSrcVisita: TDataSource;
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
    Label31: TLabel;
    QryPrincipalCRD_ID: TLargeintField;
    QryPrincipalCRD_TITULO: TStringField;
    QryPrincipalCRD_DESCRICAO: TMemoField;
    QryPrincipalCRD_DATA_ELABORACAO: TDateField;
    QryPrincipalCRD_DATA_INTERNALIZACAO: TDateField;
    QryPrincipalCRD_DATA_CONTRATACAO: TDateField;
    QryPrincipalCRD_DATA_ENCERRAMENTO: TDateField;
    QryPrincipalCRD_DATA_HORA_REGISTRO: TSQLTimeStampField;
    QryPrincipalCRD_VALOR_ELABORADO: TBCDField;
    QryPrincipalCRD_VALOR_CONTRATADO: TBCDField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalFUN_ID_CAMPO: TIntegerField;
    QryPrincipalFUN_ID_ELABORADOR: TIntegerField;
    QryPrincipalUND_ID: TIntegerField;
    QryPrincipalFIN_ID: TIntegerField;
    QryPrincipalLIN_ID: TIntegerField;
    QryPrincipalTIP_ID: TIntegerField;
    QryPrincipalPUB_ID: TIntegerField;
    QryPrincipalCOM_ID: TIntegerField;
    QryPrincipalSIT_ID: TIntegerField;
    QryPrincipalCRD_MODIFICADO_USUARIO_NOME: TStringField;
    QryPrincipalCRD_TECNICO_CAMPO: TStringField;
    QryPrincipalCRD_TECNICO_ELABORADOR: TStringField;
    QryItem: TFDQuery;
    UpdtItem: TFDUpdateSQL;
    QryVisita: TFDQuery;
    UpdtVisita: TFDUpdateSQL;
    QryVisitaREG_ID: TLargeintField;
    QryVisitaREG_DATA_VISITA: TDateField;
    QryVisitaREG_OBSERVACAO: TMemoField;
    QryVisitaREG_EXCLUIDO: TSmallintField;
    QryVisitaREG_REPLICADO: TSmallintField;
    QryVisitaREG_USUARIO: TStringField;
    QryVisitaREG_MODIFICADO: TSQLTimeStampField;
    QryVisitaFUN_ID_VISITA: TIntegerField;
    QryVisitaFUN_ID_REGISTRO: TIntegerField;
    QryVisitaCRD_ID: TLargeintField;
    QryVisitaREG_TECNICO_VISITA: TStringField;
    QryVisitaREG_TECNICO_REGISTRO: TStringField;
    QryProponente: TFDQuery;
    UpdtProponente: TFDUpdateSQL;
    QryProponentePRO_ID: TLargeintField;
    QryProponentePRO_TIPO: TStringField;
    QryProponentePRO_DOCUMENTO: TStringField;
    QryProponentePRO_NOME: TStringField;
    QryProponentePRO_DAP: TStringField;
    QryProponenteREG_EXCLUIDO: TSmallintField;
    QryProponenteREG_REPLICADO: TSmallintField;
    QryProponenteREG_USUARIO: TStringField;
    QryProponenteREG_MODIFICADO: TSQLTimeStampField;
    QryProponenteCRD_ID: TLargeintField;
    QryProponenteCLS_ID: TIntegerField;
    QryDAP: TFDQuery;
    QryItemITM_ID: TLargeintField;
    QryItemITM_TIPO: TSmallintField;
    QryItemITM_AREA_FINANCIADA: TBCDField;
    QryItemITM_QTDE_SOLICITADA: TBCDField;
    QryItemITM_QTDE_LIBERADA: TBCDField;
    QryItemITM_VALOR_UNITARIO: TBCDField;
    QryItemITM_VALOR_ELABORADO: TBCDField;
    QryItemITM_VALOR_LIBERADO: TBCDField;
    QryItemREG_EXCLUIDO: TSmallintField;
    QryItemREG_REPLICADO: TSmallintField;
    QryItemREG_USUARIO: TStringField;
    QryItemREG_MODIFICADO: TSQLTimeStampField;
    QryItemPRD_ID: TIntegerField;
    QryItemUNI_ID: TIntegerField;
    QryItemVAR_ID: TIntegerField;
    QryItemRAC_ID: TIntegerField;
    QryItemBEM_ID: TIntegerField;
    QryItemCRD_ID: TLargeintField;
    QryItemGRP_ID: TIntegerField;
    QryItemITM_DESCRICAO: TStringField;
    QryNome: TFDQuery;
    QryDAPDAP: TStringField;
    QryNomeNOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnFinanceiraTabelaClick(Sender: TObject);
    procedure BtnLinhaTabelaClick(Sender: TObject);
    procedure BtnTipoTabelaClick(Sender: TObject);
    procedure BtnPublicoTabelaClick(Sender: TObject);
    procedure BtnSituacaoTabelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure BtnComunidadeTabelaClick(Sender: TObject);
    procedure DbEdtTecnicoCampoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DbEdtTecnicoElaboradorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DtSrcVisitaStateChange(Sender: TObject);
    procedure TbShtVisitaShow(Sender: TObject);
    procedure DbEdtTecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
    procedure DtSrcItemStateChange(Sender: TObject);
    procedure BtnPropNovoClick(Sender: TObject);
    procedure BtnItmNovoClick(Sender: TObject);
    procedure BtnItmSalvarClick(Sender: TObject);
    procedure BtnItmCancelarClick(Sender: TObject);
    procedure BtnItmExcluirClick(Sender: TObject);
    procedure TbShtItensShow(Sender: TObject);
    procedure DbLkpCmbBxGrupoPropertiesChange(Sender: TObject);
    procedure BtnVariedadeTabelaClick(Sender: TObject);
    procedure BtnRacaTabelaClick(Sender: TObject);
    procedure QryVisitaAfterPost(DataSet: TDataSet);
    procedure QryVisitaBeforePost(DataSet: TDataSet);
    procedure QryVisitaNewRecord(DataSet: TDataSet);
    procedure QryPrincipalBeforePost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
    procedure QryProponenteAfterPost(DataSet: TDataSet);
    procedure QryProponenteBeforePost(DataSet: TDataSet);
    procedure QryProponenteNewRecord(DataSet: TDataSet);
    procedure QryItemAfterPost(DataSet: TDataSet);
    procedure QryItemBeforePost(DataSet: TDataSet);
    procedure QryItemNewRecord(DataSet: TDataSet);
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
    QryPrincipal.Edit;
  QryPrincipalREG_MODIFICADO.AsDateTime := Now;
  QryPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Post;
end;

procedure TFrmCredito.AtualizarReplicacaoPendente;
begin
  DtmLogModulo.ReplicacaoPendenteExibir(
    CREDITO_REPLICACAO_TABELAS,
    CampoChave,
    QryPrincipal.FieldByName(CampoChave).AsString, LblReplicacao);
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
      if (QryItem.State in [dsEdit, dsInsert]) then
        begin
          QryItem.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbLkpCmbBxGrupo.SetFocus;
    end;
end;

procedure TFrmCredito.BtnItmExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryItem);

      DtSrcItem.OnStateChange(QryItem);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCredito.BtnItmNovoClick(Sender: TObject);
begin
  QryItem.Last;
  QryItem.Append;
  DBLkpCmbBxGrupo.SetFocus;
end;

procedure TFrmCredito.BtnItmSalvarClick(Sender: TObject);
begin

  // Validação dos campos:
  if QryItemGRP_ID.IsNull or QryItemITM_TIPO.IsNull or (((
     QryItemGRP_ID.Value = 100000001) or (QryItemGRP_ID.Value = 100000002)) and QryItemPRD_ID.IsNull) or (((
     QryItemGRP_ID.Value >= 100000003) and (QryItemGRP_ID.Value <= 100000005)) and QryItemBEM_ID.IsNull) or
     QryItemUNI_ID.IsNull or
     QryItemITM_QTDE_SOLICITADA.IsNull or
     QryItemITM_QTDE_LIBERADA.IsNull or
     QryItemITM_VALOR_UNITARIO.IsNull or
     QryItemITM_VALOR_ELABORADO.IsNull or
     QryItemITM_VALOR_LIBERADO.IsNull or
     QryItemITM_AREA_FINANCIADA.IsNull then
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
  if (QryItemITM_QTDE_SOLICITADA.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_QUANTIDADE);
      DbEdtQuantidade.SetFocus;
      Exit;
    end;

  if (QryItemITM_VALOR_UNITARIO.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_VALOR_UNITARIO);
      DbEdtItemValorUnitario.SetFocus;
      Exit;
    end;

  if (QryItemITM_VALOR_ELABORADO.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_VALOR_ELABORADO);
      DbEdtItemValorElaborado.SetFocus;
      Exit;
    end;

  if (QryItemITM_VALOR_LIBERADO.Value <= 0) then
    begin
      Msg.Aviso(CREDITO_VALIDACAO_VALOR_LIBERADO);
      DbEdtItemValorLiberado.SetFocus;
      Exit;
    end;

  try
    if not DtmDialogoModulo.ExisteCamposPendentes(QryItem) then
      begin
        QryItem.Post;
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
      if (QryVisita.State in [dsEdit, dsInsert]) then
        begin
          QryVisita.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbDtVisita.SetFocus;
    end;
end;

procedure TFrmCredito.BtnVisitaExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryVisita);

      DtSrcVisita.OnStateChange(QryVisita);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCredito.BtnVisitaNovoClick(Sender: TObject);
begin
  QryVisita.Last;
  QryVisita.Append;
  DbDtVisita.SetFocus;
end;

procedure TFrmCredito.BtnVisitaSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(QryVisita) then
      begin
        QryVisita.Post;
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
      if (QryProponente.State in [dsEdit, dsInsert]) then
        begin
          QryProponente.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbImgCmbBxTipoPessoa.SetFocus;
    end;
end;

procedure TFrmCredito.BtnPropExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryProponente);

      DtSrcProponente.OnStateChange(QryProponente);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCredito.BtnPropNovoClick(Sender: TObject);
begin
  QryProponente.Last;
  QryProponente.Append;
  DbImgCmbBxTipoPessoa.SetFocus;
end;

procedure TFrmCredito.BtnProponenteBuscarClick(Sender: TObject);
begin
  if DtSrcProponente.AutoEdit then
    begin
      if (QryProponentePRO_TIPO.AsString = 'F') then
        begin
          FrmCadastroBeneficiarioBusca := TFrmCadastroBeneficiarioBusca.Create(Self);
          try
            Screen.Cursor := crHourGlass;

            if (FrmCadastroBeneficiarioBusca.ShowModal = mrOk) then
              try
                if not (QryProponente.State in [dsEdit, dsInsert]) then
                  QryProponente.Edit;

                LimparProponente;
                QryProponentePRO_DOCUMENTO.AsString := FrmCadastroBeneficiarioBusca.QryConsultaBEN_CPF.AsString;
                QryProponentePRO_NOME.AsString := FrmCadastroBeneficiarioBusca.QryConsultaBEN_NOME.AsString;
                AtualizarDAP;

                AtualizarReplicacaoPendente;
              except
                on E: Exception do
                  if QryProponente.State = dsInsert then
                    QryProponente.Cancel;
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
  if (QryProponentePRO_TIPO.AsString = 'F') then
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
    if not DtmDialogoModulo.ExisteCamposPendentes(QryProponente) then
      begin
        QryProponente.Post;
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
          if not (QryProponente.State in [dsEdit, dsInsert]) then QryProponente.Edit;
          QryProponentePRO_DAP.Clear;
          QryProponentePRO_NOME.Clear;
        end;
end;

procedure TFrmCredito.DbEdtCPFCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if DtSrcProponente.AutoEdit then
    begin
      if CharInSet(Key, ['0'..'9', #8]) then
        begin
          if not (QryProponente.State in [dsEdit, dsInsert]) then QryProponente.Edit;
          QryProponentePRO_DAP.Clear;
          QryProponentePRO_NOME.Clear;
        end;

      if CharInSet(Key, [#13]) then
        begin
          Key := #0;
          if not (QryProponente.State in [dsEdit, dsInsert]) then QryProponente.Edit;
          QryProponentePRO_DAP.Clear;
          QryProponentePRO_NOME.Clear;

          QryProponentePRO_NOME.AsString := RecuperarNome;
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
            if not (QryPrincipal.State in [dsEdit, dsInsert]) then
              QryPrincipal.Edit;
            QryPrincipalFUN_ID_CAMPO.AsInteger := FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.AsInteger;
            QryPrincipalCRD_TECNICO_CAMPO.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_NOME.AsString;
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
            if not (QryPrincipal.State in [dsEdit, dsInsert]) then
              QryPrincipal.Edit;
            QryPrincipalFUN_ID_ELABORADOR.AsInteger := FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.AsInteger;
            QryPrincipalCRD_TECNICO_ELABORADOR.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_NOME.AsString;
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
            if not (QryVisita.State in [dsEdit, dsInsert]) then
              QryVisita.Edit;
            QryVisitaFUN_ID_VISITA.AsInteger := FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.AsInteger;
            QryVisitaREG_TECNICO_VISITA.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_NOME.AsString;
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

  case QryItemGRP_ID.Value of
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
  with QryItem do
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
  TbShtVisita.TabVisible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  TbShtProponentes.TabVisible := TbShtVisita.TabVisible;
  TbShtItens.TabVisible := TbShtVisita.TabVisible;
end;

procedure TFrmCredito.DtSrcProponenteStateChange(Sender: TObject);
begin
  with QryProponente do
    begin
      BtnPropNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnPropExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnPropCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnPropSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCredito.DtSrcVisitaStateChange(Sender: TObject);
begin
  with QryVisita do
    begin
      BtnVisitaNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnVisitaExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnVisitaCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnVisitaSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCredito.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalCRD_DATA_ELABORACAO.Value := Date;
  QryPrincipalCRD_DATA_HORA_REGISTRO.AsDateTime := Now;
  QryPrincipalCRD_VALOR_ELABORADO.Value := 0;
  QryPrincipalCRD_VALOR_CONTRATADO.Value := 0;
  QryPrincipalREG_EXCLUIDO.Value := 0;
  QryPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;

  QryPrincipalFUN_ID_CAMPO.AsInteger := DtmConexaoModulo.FuncionarioID;
  QryPrincipalFUN_ID_ELABORADOR.AsInteger := DtmConexaoModulo.FuncionarioID;

  QryPrincipalCRD_TECNICO_CAMPO.AsString := DtmConexaoModulo.UsuarioNome;
  QryPrincipalCRD_TECNICO_ELABORADOR.AsString := DtmConexaoModulo.UsuarioNome;
end;

procedure TFrmCredito.QryProponenteAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCredito.QryProponenteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QryProponente.State = dsinsert) then
    DtmSistemaModulo.GravarAuditoriaInclusao(QryProponente, 'TAB_CRD_PROPONENTE', 'PRO_ID')
  else
    DtmSistemaModulo.GravarAuditoriaAlteracao(QryProponente);
end;

procedure TFrmCredito.QryProponenteNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryProponentePRO_TIPO.AsString := 'F';
  QryProponenteCRD_ID.AsLargeint := QryPrincipalCRD_ID.AsLargeint;
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
  if QryProponente.State in [dsEdit, dsInsert] then
    begin
      QryProponentePRO_DOCUMENTO.Clear;
      QryProponentePRO_DAP.Clear;
      QryProponentePRO_NOME.Clear;
    end;
end;

procedure TFrmCredito.QryItemAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCredito.QryItemBeforePost(DataSet: TDataSet);
begin
  inherited;
  case QryItemGRP_ID.Value of
    100000001: QryItemBEM_ID.Clear; // Cultura.
    100000002: QryItemBEM_ID.Clear; // Criação.
    100000003: QryItemPRD_ID.Clear; // Máquinas.
    100000004: QryItemPRD_ID.Clear; // Equipamentos e insumos.
    100000005: QryItemPRD_ID.Clear; // Benfeitorias.
  end;

  QryItemITM_DESCRICAO.AsString := DbLkpCmbBxProduto.Text;

  if (QryItem.State = dsInsert) then
    DtmSistemaModulo.GravarAuditoriaInclusao(QryItem, 'TAB_CRD_ITEM', 'ITM_ID')
  else
    DtmSistemaModulo.GravarAuditoriaAlteracao(QryItem);
end;

procedure TFrmCredito.QryItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryItemCRD_ID.AsLargeint := QryPrincipalCRD_ID.AsLargeint;
  QryItemITM_AREA_FINANCIADA.Value := 0;
  QryItemITM_QTDE_SOLICITADA.Value := 0;
  QryItemITM_QTDE_LIBERADA.Value := 0;
  QryItemITM_VALOR_UNITARIO.Value := 0;
  QryItemITM_VALOR_ELABORADO.Value := 0;
  QryItemITM_VALOR_LIBERADO.Value := 0;
end;

procedure TFrmCredito.QryPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalREG_MODIFICADO.AsDateTime := Now;
  QryPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
end;

procedure TFrmCredito.QryVisitaAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCredito.QryVisitaBeforePost(DataSet: TDataSet);
begin
  if (QryVisita.State = dsInsert) then
    DtmSistemaModulo.GravarAuditoriaInclusao(QryVisita, 'TAB_CRD_VISITA', 'REG_ID')
  else
    DtmSistemaModulo.GravarAuditoriaAlteracao(QryVisita);
end;

procedure TFrmCredito.QryVisitaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryVisitaREG_DATA_VISITA.Value := Date;
  QryVisitaFUN_ID_REGISTRO.Value := DtmConexaoModulo.FuncionarioID;
  QryVisitaCRD_ID.AsLargeint := QryPrincipalCRD_ID.AsLargeInt;
  QryVisitaREG_TECNICO_REGISTRO.AsString := DtmConexaoModulo.UsuarioNome;
end;

function TFrmCredito.RecuperarNome: string;
begin
  QryNome.Close;
  QryNome.SQL.Clear;
  case DbImgCmbBxTipoPessoa.ItemIndex of
    0: QryNome.SQL.Add('select a.ben_nome as nome from tab_cad_beneficiario a where a.ben_cpf = :documento');
    1: QryNome.SQL.Add('select a.org_nome as nome from tab_cad_organizacao a where a.org_cnpj = :documento');
  end;
  QryNome.ParamByName('documento').AsString := QryProponentePRO_DOCUMENTO.AsString;
  QryNome.Open;
  if QryNome.IsEmpty then
    Result := ''
  else
    Result := QryNomeNOME.AsString;
end;

procedure TFrmCredito.AtualizarDAP;
begin
  QryProponentePRO_DAP.Clear;
  QryDAP.Close;
  QryDAP.ParamByName('cpf').AsString := QryProponentePRO_DOCUMENTO.AsString;
  QryDAP.Open;
  if QryDAP.IsEmpty then
    Msg.Informacao(CREDITO_DAP_NAO_ENCONTRADA)
  else
    QryProponentePRO_DAP.AsString := QryDAPDAP.AsString;
end;

procedure TFrmCredito.TbShtItensShow(Sender: TObject);
begin
  if not QryItem.Active then
    begin
      QryItem.Open;
      DtmCreditoModulo.DtStGrupo.Close;
      DtmCreditoModulo.DtStGrupo.Open;
    end;

  DbLkpCmbBxGrupo.Properties.OnChange(Sender);
  TcxLookupComboBoxProperties(GrdItmTblGRP_ID.Properties).ListSource := DtmCreditoModulo.DtSrcGrupo;
end;

procedure TFrmCredito.TbShtProponentesShow(Sender: TObject);
begin
  if not QryProponente.Active then
    begin
      QryProponente.Open;
      DtmCreditoModulo.DtStClassificacao.Close;
      DtmCreditoModulo.DtStClassificacao.Open;
    end;
end;

procedure TFrmCredito.TbShtVisitaShow(Sender: TObject);
begin
  if not QryVisita.Active then
    QryVisita.Open;
end;

end.
