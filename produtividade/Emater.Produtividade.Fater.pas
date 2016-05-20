unit Emater.Produtividade.Fater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxMemo, cxDBEdit, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, dxBevel,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ExtCtrls, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmProdutividadeFater = class(TFrmBaseTabela)
    GrpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    DbEdtDataAcao: TcxDBDateEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TbShtDetalhes: TcxTabSheet;
    Label27: TLabel;
    Label29: TLabel;
    GrdTecVw: TcxGrid;
    GrdTecVwTbl: TcxGridDBTableView;
    GrdTecVwTblTEC_DESCRICAO: TcxGridDBColumn;
    GrdTecVwLvl: TcxGridLevel;
    GrdFerVw: TcxGrid;
    GrdFerVwTbl: TcxGridDBTableView;
    GrdFerVwLvl: TcxGridLevel;
    PgCntrlDetalhes: TcxPageControl;
    TbShtBeneficiarios: TcxTabSheet;
    TbShtTecnico: TcxTabSheet;
    TbShtComunidades: TcxTabSheet;
    TbShtOrganizacao: TcxTabSheet;
    GrdBen: TcxGrid;
    GrdBenTbl: TcxGridDBTableView;
    GrdBenLvl: TcxGridLevel;
    BtnBenIncluir: TcxButton;
    BtnBenExcluir: TcxButton;
    BtnTecIncluir: TcxButton;
    BtnTecExcluir: TcxButton;
    GrdPar: TcxGrid;
    GrdParTbl: TcxGridDBTableView;
    GrdParLvl: TcxGridLevel;
    GrdOrg: TcxGrid;
    GrdOrgTbl: TcxGridDBTableView;
    GrdOrgLvl: TcxGridLevel;
    BtnOrgIncluir: TcxButton;
    BtnOrgExcluir: TcxButton;
    GrdCom: TcxGrid;
    GrdComTbl: TcxGridDBTableView;
    GrdComLvl: TcxGridLevel;
    BtnComIncluir: TcxButton;
    BtnComExcluir: TcxButton;
    TbShtTecnicas: TcxTabSheet;
    Label18: TLabel;
    DbLkpCmbBxMunicipio: TcxDBLookupComboBox;
    DbEdtUF: TcxDBTextEdit;
    DbLkpCmbBxMetodoInicial: TcxDBLookupComboBox;
    DbLkpCmbBxFinalidade: TcxDBLookupComboBox;
    DtSrcMetodo: TDataSource;
    DtSrcFinalidade: TDataSource;
    Label2: TLabel;
    DbLkpCmbBxRecurso: TcxDBLookupComboBox;
    DtSrcRecurso: TDataSource;
    DtSrcFaterTecnica: TDataSource;
    DtSrcTecnica: TDataSource;
    DtSrcFaterFerramenta: TDataSource;
    DtSrcFerramenta: TDataSource;
    GrdTecVwTblTEC_MARCADA: TcxGridDBColumn;
    GrdFerVwTblFER_DESCRICAO: TcxGridDBColumn;
    GrdFerVwTblFER_MARCADA: TcxGridDBColumn;
    Label15: TLabel;
    DtSrcFaterBeneficiario: TDataSource;
    GrdBenTblBEN_NOME: TcxGridDBColumn;
    GrdBenTblBEN_CPF: TcxGridDBColumn;
    GrdBenTblBEN_SEXO: TcxGridDBColumn;
    GrdBenTblBEN_NASCIMENTO: TcxGridDBColumn;
    DtSrcFaterParticipante: TDataSource;
    GrdBenPar: TcxGrid;
    GrdBenParTbl: TcxGridDBTableView;
    GrdBenParLvl: TcxGridLevel;
    GrdBenParTblPRT_NOME: TcxGridDBColumn;
    GrdBenParTblPRT_CPF: TcxGridDBColumn;
    GrdBenParTblPRT_SEXO: TcxGridDBColumn;
    GrdBenParTblPRT_NASCIMENTO: TcxGridDBColumn;
    Label16: TLabel;
    BtnBenParIncluir: TcxButton;
    BtnBenParExcluir: TcxButton;
    DtSrcFaterComunidade: TDataSource;
    GrdComTblCOM_NOME: TcxGridDBColumn;
    GrdComTblCID_NOME: TcxGridDBColumn;
    GrdComTblUFE_ID: TcxGridDBColumn;
    DtSrcFaterOrganizacao: TDataSource;
    GrdOrgTblORG_NOME: TcxGridDBColumn;
    GrdOrgTblCID_NOME: TcxGridDBColumn;
    GrdOrgTblUFE_ID: TcxGridDBColumn;
    DtSrcFaterFuncionario: TDataSource;
    GrdParTblFUN_NOME: TcxGridDBColumn;
    GrdParTblFUN_MATRICULA: TcxGridDBColumn;
    DbLkpCmbBxProjeto: TcxDBLookupComboBox;
    Label12: TLabel;
    DtSrcProjeto: TDataSource;
    PnlTop: TPanel;
    LblTitulo: TLabel;
    Image: TImage;
    LblReplicacao: TLabel;
    DbLkpCmbBxMetodoFinal: TcxDBLookupComboBox;
    Label17: TLabel;
    TbShtProduto: TcxTabSheet;
    DtSrcFaterProduto: TDataSource;
    GrdPrd: TcxGrid;
    GrdPrdTbl: TcxGridDBTableView;
    GrdPrdLvl: TcxGridLevel;
    GrdPrdTblPRD_DESCRICAO: TcxGridDBColumn;
    GrdPrdTblDIV_DESCRICAO: TcxGridDBColumn;
    GrdPrdTblGRP_DESCRICAO: TcxGridDBColumn;
    GrdPrdTblCLS_DESCRICAO: TcxGridDBColumn;
    GrdPrdTblUNI_DESCRICAO: TcxGridDBColumn;
    BtnPrdIncluir: TcxButton;
    BtnPrdExcluir: TcxButton;
    GrpBxRegistro: TcxGroupBox;
    Label13: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DbEdtDataVisita: TcxDBDateEdit;
    DbImgCmbBxSituacao: TcxDBImageComboBox;
    DbLkpCmbBxTecnico: TcxDBLookupComboBox;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    Label21: TLabel;
    DbEdtModificadoData: TcxDBTextEdit;
    Label22: TLabel;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    DtSrcMetodoFinal: TDataSource;
    PgCntrlTexto: TcxPageControl;
    TbShtTematica: TcxTabSheet;
    TbShtOrientacao: TcxTabSheet;
    TbShtResumo: TcxTabSheet;
    BtnTematica: TcxButton;
    DbMemoTematica: TcxDBMemo;
    DbMemoOrientacao: TcxDBMemo;
    BtnOrientacao: TcxButton;
    DbMemoResumo: TcxDBMemo;
    BtnResumo: TcxButton;
    TbShtParceria: TcxTabSheet;
    BtnParceria: TcxButton;
    DbMemoParceria: TcxDBMemo;
    TbShtTecnologia: TcxTabSheet;
    DbChckBxTecnologia: TcxDBCheckBox;
    BtnTecnologia: TcxButton;
    DbMemoTecnologia: TcxDBMemo;
    TbShtPratica: TcxTabSheet;
    DbChckBxBoas: TcxDBCheckBox;
    BtnPratica: TcxButton;
    DbMemoPratica: TcxDBMemo;
    LblTecDis: TLabel;
    LblTec: TLabel;
    LblFerDis: TLabel;
    LblFer: TLabel;
    LblCategorias: TLabel;
    Shape1: TShape;
    Label14: TLabel;
    Shape2: TShape;
    GrdTecDis: TcxGrid;
    GrdTecDisTbl: TcxGridDBTableView;
    GrdTecDisTblTEC_DESMARCADO: TcxGridDBColumn;
    GrdTecDisTblTEC_DESCRICAO: TcxGridDBColumn;
    GrdTecDisLvl: TcxGridLevel;
    GrdTec: TcxGrid;
    GrdTecTbl: TcxGridDBTableView;
    GrdTecTblTEC_MARCADO: TcxGridDBColumn;
    GrdTecTblTEC_DESCRICAO: TcxGridDBColumn;
    GrdTecLvl: TcxGridLevel;
    BtnTecRemover: TcxButton;
    BtnTecAdicionar: TcxButton;
    GrdFerDis: TcxGrid;
    GrdFerDisTbl: TcxGridDBTableView;
    GrdFerDisTbFER_DESMARCADA: TcxGridDBColumn;
    GrdFerDisTblFER_DESCRICAO: TcxGridDBColumn;
    GrdFerDisLvl: TcxGridLevel;
    GrdFer: TcxGrid;
    GrdFerTbl: TcxGridDBTableView;
    GrdFerTblFER_MARCADA: TcxGridDBColumn;
    GrdFerTblFER_DESCRICAO: TcxGridDBColumn;
    GrdFerLvl: TcxGridLevel;
    BtnFerRemover: TcxButton;
    BtnFerAdicionar: TcxButton;
    QryPrincipalFAT_ID: TLargeintField;
    QryPrincipalFAT_DATA_ACAO: TDateField;
    QryPrincipalFAT_DATA_VISITA: TDateField;
    QryPrincipalFAT_SITUACAO: TSmallintField;
    QryPrincipalFAT_TEMATICA: TMemoField;
    QryPrincipalFAT_ORIENTACAO: TMemoField;
    QryPrincipalFAT_RESUMO: TMemoField;
    QryPrincipalFAT_PARCERIA: TMemoField;
    QryPrincipalFAT_TECNOLOGIA_USO: TSmallintField;
    QryPrincipalFAT_TECNOLOGIA: TMemoField;
    QryPrincipalFAT_BOA_PRATICA_USO: TSmallintField;
    QryPrincipalFAT_BOA_PRATICA: TMemoField;
    QryPrincipalUND_ID: TIntegerField;
    QryPrincipalFIN_ID: TIntegerField;
    QryPrincipalMET_ID_INICIAL: TIntegerField;
    QryPrincipalMET_ID_FINAL: TIntegerField;
    QryPrincipalCID_ID: TIntegerField;
    QryPrincipalFUN_ID: TIntegerField;
    QryPrincipalREC_ID: TIntegerField;
    QryPrincipalPRJ_ID: TIntegerField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalUFE_ID: TStringField;
    QryPrincipalFAT_MODIFICADO_USUARIO_NOME: TStringField;
    DtStFaterProduto: TFDQuery;
    UpdtFaterProduto: TFDUpdateSQL;
    DtStFaterTecnica: TFDQuery;
    UpdtFaterTecnica: TFDUpdateSQL;
    DtStFaterTecnicaFTE_ID: TLargeintField;
    DtStFaterTecnicaFAT_ID: TLargeintField;
    DtStFaterTecnicaTEC_ID: TIntegerField;
    DtStFaterTecnicaREG_EXCLUIDO: TSmallintField;
    DtStFaterTecnicaREG_REPLICADO: TSmallintField;
    DtStFaterTecnicaREG_USUARIO: TStringField;
    DtStFaterTecnicaREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterTecnicaTEC_DESCRICAO: TStringField;
    DtStTecnica: TFDQuery;
    DtStTecnicaTEC_ID: TIntegerField;
    DtStTecnicaTEC_DESCRICAO: TStringField;
    DtStFaterFerramenta: TFDQuery;
    UpdtFaterFerramenta: TFDUpdateSQL;
    DtStFaterFerramentaFFE_ID: TLargeintField;
    DtStFaterFerramentaFAT_ID: TLargeintField;
    DtStFaterFerramentaFER_ID: TIntegerField;
    DtStFaterFerramentaREG_EXCLUIDO: TSmallintField;
    DtStFaterFerramentaREG_REPLICADO: TSmallintField;
    DtStFaterFerramentaREG_USUARIO: TStringField;
    DtStFaterFerramentaREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterFerramentaFER_DESCRICAO: TStringField;
    DtStFaterBeneficiario: TFDQuery;
    UpdtFaterBeneficiario: TFDUpdateSQL;
    DtStFaterBeneficiarioFBE_ID: TLargeintField;
    DtStFaterBeneficiarioFAT_ID: TLargeintField;
    DtStFaterBeneficiarioBEN_ID: TLargeintField;
    DtStFaterBeneficiarioREG_EXCLUIDO: TSmallintField;
    DtStFaterBeneficiarioREG_REPLICADO: TSmallintField;
    DtStFaterBeneficiarioREG_USUARIO: TStringField;
    DtStFaterBeneficiarioREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterBeneficiarioBEN_NOME: TStringField;
    DtStFaterBeneficiarioBEN_CPF: TStringField;
    DtStFaterBeneficiarioBEN_SEXO: TStringField;
    DtStFaterBeneficiarioBEN_NASCIMENTO: TDateField;
    DtStFaterParticipante: TFDQuery;
    UpdtFaterParticipante: TFDUpdateSQL;
    DtStFaterComunidade: TFDQuery;
    UpdtFaterComunidade: TFDUpdateSQL;
    DtStFerramenta: TFDQuery;
    DtStFerramentaFER_ID: TIntegerField;
    DtStFerramentaFER_DESCRICAO: TStringField;
    DtStFaterParticipantePRT_ID: TLargeintField;
    DtStFaterParticipantePRT_NOME: TStringField;
    DtStFaterParticipantePRT_CPF: TStringField;
    DtStFaterParticipantePRT_SEXO: TStringField;
    DtStFaterParticipantePRT_NASCIMENTO: TDateField;
    DtStFaterParticipantePRT_OBSERVACAO: TMemoField;
    DtStFaterParticipanteREG_EXCLUIDO: TSmallintField;
    DtStFaterParticipanteREG_REPLICADO: TSmallintField;
    DtStFaterParticipanteREG_USUARIO: TStringField;
    DtStFaterParticipanteREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterParticipanteFAT_ID: TLargeintField;
    DtStFaterParticipantePRT_SEXO_DESCRICAO: TStringField;
    DtStFaterComunidadeFCO_ID: TLargeintField;
    DtStFaterComunidadeFAT_ID: TLargeintField;
    DtStFaterComunidadeCOM_ID: TIntegerField;
    DtStFaterComunidadeREG_EXCLUIDO: TSmallintField;
    DtStFaterComunidadeREG_REPLICADO: TSmallintField;
    DtStFaterComunidadeREG_USUARIO: TStringField;
    DtStFaterComunidadeREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterComunidadeCOM_NOME: TStringField;
    DtStFaterComunidadeCID_NOME: TStringField;
    DtStFaterComunidadeUFE_ID: TStringField;
    DtStFaterOrganizacao: TFDQuery;
    UpdtFaterOrganizacao: TFDUpdateSQL;
    DtStFaterOrganizacaoFOR_ID: TLargeintField;
    DtStFaterOrganizacaoFAT_ID: TLargeintField;
    DtStFaterOrganizacaoORG_ID: TIntegerField;
    DtStFaterOrganizacaoREG_EXCLUIDO: TSmallintField;
    DtStFaterOrganizacaoREG_REPLICADO: TSmallintField;
    DtStFaterOrganizacaoREG_USUARIO: TStringField;
    DtStFaterOrganizacaoREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterOrganizacaoORG_NOME: TStringField;
    DtStFaterOrganizacaoCID_NOME: TStringField;
    DtStFaterOrganizacaoUFE_ID: TStringField;
    DtStFaterFuncionario: TFDQuery;
    UpdtFaterFuncionario: TFDUpdateSQL;
    DtStFaterFuncionarioFFU_ID: TLargeintField;
    DtStFaterFuncionarioFAT_ID: TLargeintField;
    DtStFaterFuncionarioFUN_ID: TIntegerField;
    DtStFaterFuncionarioREG_EXCLUIDO: TSmallintField;
    DtStFaterFuncionarioREG_REPLICADO: TSmallintField;
    DtStFaterFuncionarioREG_USUARIO: TStringField;
    DtStFaterFuncionarioREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterFuncionarioFUN_NOME: TStringField;
    DtStFaterFuncionarioFUN_MATRICULA: TStringField;
    DtStFaterProdutoFPR_ID: TLargeintField;
    DtStFaterProdutoFAT_ID: TLargeintField;
    DtStFaterProdutoPRD_ID: TIntegerField;
    DtStFaterProdutoREG_EXCLUIDO: TSmallintField;
    DtStFaterProdutoREG_REPLICADO: TSmallintField;
    DtStFaterProdutoREG_USUARIO: TStringField;
    DtStFaterProdutoREG_MODIFICADO: TSQLTimeStampField;
    DtStFaterProdutoPRD_DESCRICAO: TStringField;
    DtStFaterProdutoDIV_ID: TIntegerField;
    DtStFaterProdutoDIV_DESCRICAO: TStringField;
    DtStFaterProdutoDIV_TIPO: TSmallintField;
    DtStFaterProdutoGRP_DESCRICAO: TStringField;
    DtStFaterProdutoCLS_DESCRICAO: TStringField;
    DtStFaterProdutoUNI_DESCRICAO: TStringField;
    DtStFaterProdutoUNI_ID: TIntegerField;
    DtStProjeto: TFDQuery;
    DtStProjetoPRJ_ID: TIntegerField;
    DtStProjetoPRJ_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure BtnTecAdicionarClick(Sender: TObject);
    procedure BtnFerAdicionarClick(Sender: TObject);
    procedure BtnTecRemoverClick(Sender: TObject);
    procedure BtnFerRemoverClick(Sender: TObject);
    procedure GrdTecTblDblClick(Sender: TObject);
    procedure GrdFerTblDblClick(Sender: TObject);
    procedure GrdFerDisTblDblClick(Sender: TObject);
    procedure GrdTecDisTblDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DtSrcFaterBeneficiarioStateChange(Sender: TObject);
    procedure BtnBenIncluirClick(Sender: TObject);
    procedure BtnBenExcluirClick(Sender: TObject);
    procedure BtnBenParIncluirClick(Sender: TObject);
    procedure BtnBenParExcluirClick(Sender: TObject);
    procedure DtSrcFaterParticipanteStateChange(Sender: TObject);
    procedure DtSrcFaterComunidadeStateChange(Sender: TObject);
    procedure BtnComIncluirClick(Sender: TObject);
    procedure BtnComExcluirClick(Sender: TObject);
    procedure DtSrcFaterOrganizacaoStateChange(Sender: TObject);
    procedure DtSrcFaterFuncionarioStateChange(Sender: TObject);
    procedure BtnTecIncluirClick(Sender: TObject);
    procedure BtnOrgIncluirClick(Sender: TObject);
    procedure BtnTecExcluirClick(Sender: TObject);
    procedure BtnOrgExcluirClick(Sender: TObject);
    procedure TbShtBeneficiariosShow(Sender: TObject);
    procedure TbShtTecnicoShow(Sender: TObject);
    procedure TbShtComunidadesShow(Sender: TObject);
    procedure TbShtOrganizacaoShow(Sender: TObject);
    procedure DbChckBxTecnologiaClick(Sender: TObject);
    procedure DbChckBxBoasClick(Sender: TObject);
    procedure BtnTematicaClick(Sender: TObject);
    procedure BtnOrientacaoClick(Sender: TObject);
    procedure BtnResumoClick(Sender: TObject);
    procedure BtnParceriaClick(Sender: TObject);
    procedure BtnTecnologiaClick(Sender: TObject);
    procedure BtnPraticaClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DbLkpCmbBxProjetoPropertiesChange(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnPrdIncluirClick(Sender: TObject);
    procedure BtnPrdExcluirClick(Sender: TObject);
    procedure DtSrcFaterProdutoStateChange(Sender: TObject);
    procedure TbShtProdutoShow(Sender: TObject);
    procedure DbLkpCmbBxMunicipioPropertiesEditValueChanged(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DtStFaterTecnicaAfterPost(DataSet: TDataSet);
    procedure DtStFaterFerramentaAfterPost(DataSet: TDataSet);
    procedure QryFaterBeneficiarioAfterPost(DataSet: TDataSet);
    procedure DtStFaterParticipanteAfterPost(DataSet: TDataSet);
    procedure DtStFaterParticipanteBeforePost(DataSet: TDataSet);
    procedure DtStFaterComunidadeAfterPost(DataSet: TDataSet);
    procedure DtStFaterOrganizacaoAfterPost(DataSet: TDataSet);
    procedure DtStFaterFuncionarioAfterPost(DataSet: TDataSet);
    procedure DtStFaterProdutoAfterPost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
    procedure TbShtTecnicasShow(Sender: TObject);
  private
    procedure VisualizarTexto(const FieldName: string);
    procedure AtualizarReplicacaoPendente;
    procedure AplicarUltimaAlteracao;
    procedure CarregarProjetoPorCidade(const Cidade: Integer);
    procedure RecenteRegistrar;
  end;

var
  FrmProdutividadeFater: TFrmProdutividadeFater;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Dne.Modulo, Emater.Produtividade.Modulo, Emater.Sistema.Modulo,
  Emater.Cadastro.Beneficiario.Busca, Emater.Base.Consts, Emater.Produtividade.Fater.Participante,
  Emater.Cadastro.Comunidade.Busca, Emater.Pessoal.Modulo, Emater.Pessoal.Funcionario.Busca, Emater.Cadastro.Organizacao.Busca,
  Emater.Produtividade.Fater.Editor, Emater.Log.Modulo, Emater.Produtividade.Consts, Emater.Produtividade.Fater.Produto,
  Emater.Sistema.Consts, Emater.Sistema.Principal;

procedure TFrmProdutividadeFater.AtualizarReplicacaoPendente;
begin
  DtmLogModulo.ReplicacaoPendenteExibir(
    PRODUTIVIDADE_REPLICACAO_TABELAS_FATER,
    CampoChave,
    QryPrincipal.FieldByName(CampoChave).AsString, LblReplicacao);
end;

procedure TFrmProdutividadeFater.BtnBenExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterBeneficiario);
      DtSrcFaterBeneficiario.OnStateChange(DtSrcFaterBeneficiario);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnBenIncluirClick(Sender: TObject);
begin
  FrmCadastroBeneficiarioBusca := TFrmCadastroBeneficiarioBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmCadastroBeneficiarioBusca.ShowModal = mrOk) then
      try
        DtStFaterBeneficiario.Last;
        DtStFaterBeneficiario.Append;
        DtStFaterBeneficiarioFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
        DtStFaterBeneficiarioBEN_ID.AsLargeInt := FrmCadastroBeneficiarioBusca.QryConsultaBEN_ID.AsLargeInt;

        DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterBeneficiario, 'TAB_PRD_FATER_BENEFICIARIO', 'FBE_ID');

        DtStFaterBeneficiario.Post;
        DtStFaterBeneficiario.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if DtStFaterBeneficiario.State = dsInsert then
            DtStFaterBeneficiario.Cancel;
      end;
  finally
    FrmCadastroBeneficiarioBusca.Release;
    FrmCadastroBeneficiarioBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.BtnBenParExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterParticipante);
      DtSrcFaterParticipante.OnStateChange(DtSrcFaterParticipante);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnBenParIncluirClick(Sender: TObject);
begin
  FrmProdutividadeFaterParticipante := TFrmProdutividadeFaterParticipante.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    DtStFaterParticipante.Last;
    DtStFaterParticipante.Append;
    DtStFaterParticipanteFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
    DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterParticipante, 'TAB_PRD_FATER_PARTICIPANTE', 'PRT_ID');

    if (FrmProdutividadeFaterParticipante.ShowModal = mrOk) then
      try
        DtStFaterParticipante.Post;
        DtStFaterParticipante.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if (DtStFaterParticipante.State = dsInsert) then
            DtStFaterParticipante.Cancel;
      end
    else
      DtStFaterParticipante.Cancel;
  finally
    FrmProdutividadeFaterParticipante.Release;
    FrmProdutividadeFaterParticipante := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  AtualizarReplicacaoPendente;
end;

procedure TFrmProdutividadeFater.BtnComExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterComunidade);
      DtSrcFaterComunidade.OnStateChange(DtSrcFaterComunidade);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnComIncluirClick(Sender: TObject);
begin
  FrmCadastroComunidadeBusca := TFrmCadastroComunidadeBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmCadastroComunidadeBusca.ShowModal = mrOk) then
      try
        DtStFaterComunidade.Last;
        DtStFaterComunidade.Append;
        DtStFaterComunidadeFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
        DtStFaterComunidadeCOM_ID.Value := FrmCadastroComunidadeBusca.QryConsultaCOM_ID.Value;
        DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterComunidade, 'TAB_PRD_FATER_COMUNIDADE', 'FCO_ID');
        DtStFaterComunidade.Post;
        DtStFaterComunidade.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if DtStFaterComunidade.State = dsInsert then
            DtStFaterComunidade.Cancel;
      end;
  finally
    FrmCadastroComunidadeBusca.Release;
    FrmCadastroComunidadeBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.BtnExcluirClick(Sender: TObject);
var
  ID: Int64;
begin
  ID := QryPrincipalFAT_ID.AsLargeInt;
  inherited;
  if (QryPrincipal.RecordCount = 0) then
    FrmSistemaPrincipal.RecenteRemover(FrmSistemaPrincipal.VwGlrCntrlFATER, ID);
end;

procedure TFrmProdutividadeFater.BtnFerAdicionarClick(Sender: TObject);
begin
  if DtSrcFaterFerramenta.AutoEdit then
    begin
      DtStFaterFerramenta.Last;
      DtStFaterFerramenta.Append;
      DtStFaterFerramentaFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
      DtStFaterFerramentaFER_ID.Value := DtStFerramentaFER_ID.Value;
      DtStFaterFerramentaFER_DESCRICAO.Value := DtStFerramentaFER_DESCRICAO.Value;

      DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterFerramenta, 'TAB_PRD_FATER_FERRAMENTA', 'FFE_ID');

      DtStFaterFerramenta.Post;
      DtStFerramenta.Close;
      DtStFerramenta.Open;
      DtSrcPrincipal.OnStateChange(DtSrcPrincipal);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnFerRemoverClick(Sender: TObject);
begin
  if DtSrcFaterFerramenta.AutoEdit then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterFerramenta);
      DtStFerramenta.Close;
      DtStFerramenta.Open;
      DtSrcPrincipal.OnStateChange(DtSrcPrincipal);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnOrgExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterOrganizacao);
      DtSrcFaterOrganizacao.OnStateChange(DtSrcFaterOrganizacao);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnOrgIncluirClick(Sender: TObject);
begin
  FrmCadastroOrganizacaoBusca := TFrmCadastroOrganizacaoBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmCadastroOrganizacaoBusca.ShowModal = mrOk) then
      try
        DtStFaterOrganizacao.Last;
        DtStFaterOrganizacao.Append;
        DtStFaterOrganizacaoFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
        DtStFaterOrganizacaoORG_ID.Value := FrmCadastroOrganizacaoBusca.QryConsultaORG_ID.Value;
        DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterOrganizacao, 'TAB_PRD_FATER_ORGANIZACAO', 'FOR_ID');
        DtStFaterOrganizacao.Post;
        DtStFaterOrganizacao.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if DtStFaterOrganizacao.State = dsInsert then
            DtStFaterOrganizacao.Cancel;
      end;
  finally
    FrmCadastroOrganizacaoBusca.Release;
    FrmCadastroOrganizacaoBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.BtnOrientacaoClick(Sender: TObject);
begin
  VisualizarTexto('FAT_ORIENTACAO');
end;

procedure TFrmProdutividadeFater.BtnParceriaClick(Sender: TObject);
begin
  VisualizarTexto('FAT_PARCERIA');
end;

procedure TFrmProdutividadeFater.BtnPraticaClick(Sender: TObject);
begin
  VisualizarTexto('FAT_BOA_PRATICA');
end;

procedure TFrmProdutividadeFater.BtnPrdExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterProduto);
      DtSrcFaterProduto.OnStateChange(DtSrcFaterProduto);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnPrdIncluirClick(Sender: TObject);
var
  ProdutoID: Integer;
begin
  FrmProdutividadeFaterProduto := TFrmProdutividadeFaterProduto.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    ProdutoID := FrmProdutividadeFaterProduto.SelecionarProduto;
    if (ProdutoID <> 0) then
      try
        DtStFaterProduto.Last;
        DtStFaterProduto.Append;
        DtStFaterProdutoFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
        DtStFaterProdutoPRD_ID.Value := ProdutoID;
        DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterProduto, 'TAB_PRD_FATER_PRODUTO', 'FPR_ID');
        DtStFaterProduto.Post;
        DtStFaterProduto.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if DtStFaterProduto.State = dsInsert then
            DtStFaterProduto.Cancel;
      end;
  finally
    FrmProdutividadeFaterProduto.Release;
    FrmProdutividadeFaterProduto := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.BtnResumoClick(Sender: TObject);
begin
  VisualizarTexto('FAT_RESUMO');
end;

procedure TFrmProdutividadeFater.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  AtualizarReplicacaoPendente;
end;

procedure TFrmProdutividadeFater.BtnTecAdicionarClick(Sender: TObject);
begin
  if DtSrcFaterTecnica.AutoEdit then
    begin
      DtStFaterTecnica.Last;
      DtStFaterTecnica.Append;
      DtStFaterTecnicaFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
      DtStFaterTecnicaTEC_ID.Value := DtStTecnicaTEC_ID.Value;
      DtStFaterTecnicaTEC_DESCRICAO.Value := DtStTecnicaTEC_DESCRICAO.Value;

      DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterTecnica, 'TAB_PRD_FATER_TECNICA', 'FTE_ID');

      DtStFaterTecnica.Post;
      DtStTecnica.Close;
      DtStTecnica.Open;
      DtSrcPrincipal.OnStateChange(DtSrcPrincipal);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnTecExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterFuncionario);
      DtSrcFaterFuncionario.OnStateChange(DtSrcFaterFuncionario);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnTecIncluirClick(Sender: TObject);
begin
  FrmPessoalFuncionarioBusca := TFrmPessoalFuncionarioBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmPessoalFuncionarioBusca.ShowModal = mrOk) then
      try
        DtStFaterFuncionario.Last;
        DtStFaterFuncionario.Append;
        DtStFaterFuncionarioFAT_ID.AsLargeInt := QryPrincipalFAT_ID.AsLargeInt;
        DtStFaterFuncionarioFUN_ID.Value := FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.Value;
        DtmSistemaModulo.GravarAuditoriaInclusao(DtStFaterFuncionario, 'TAB_PRD_FATER_FUNCIONARIO', 'FFU_ID');
        DtStFaterFuncionario.Post;
        DtStFaterFuncionario.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if DtStFaterFuncionario.State = dsInsert then
            DtStFaterFuncionario.Cancel;
      end;
  finally
    FrmPessoalFuncionarioBusca.Release;
    FrmPessoalFuncionarioBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.BtnTecnologiaClick(Sender: TObject);
begin
  VisualizarTexto('FAT_TECNOLOGIA');
end;

procedure TFrmProdutividadeFater.BtnTecRemoverClick(Sender: TObject);
begin
  if DtSrcFaterTecnica.AutoEdit then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(DtStFaterTecnica);

      DtStTecnica.Close;
      DtStTecnica.Open;
      DtSrcPrincipal.OnStateChange(DtSrcPrincipal);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmProdutividadeFater.BtnTematicaClick(Sender: TObject);
begin
  VisualizarTexto('FAT_TEMATICA');
end;

procedure TFrmProdutividadeFater.DbChckBxBoasClick(Sender: TObject);
begin
  DbMemoPratica.Enabled := DbChckBxBoas.Checked;
  BtnPratica.Enabled := DbChckBxBoas.Checked;
end;

procedure TFrmProdutividadeFater.TbShtTecnicasShow(Sender: TObject);
begin
  inherited;
  DtStFaterTecnica.Open;
  DtStTecnica.Open;
  DtStFaterFerramenta.Open;
  DtStFerramenta.Open;
  DtSrcPrincipal.OnStateChange(DtSrcPrincipal);
end;

procedure TFrmProdutividadeFater.TbShtTecnicoShow(Sender: TObject);
begin
  if not DtStFaterFuncionario.Active then
    DtStFaterFuncionario.Open;
end;

procedure TFrmProdutividadeFater.VisualizarTexto(const FieldName: string);
begin
  FrmProdutividadeFaterEditor := TFrmProdutividadeFaterEditor.Create(Self);
  Screen.Cursor := crHourGlass;
  try
    FrmProdutividadeFaterEditor.Width := Width;
    FrmProdutividadeFaterEditor.Height := Height;
    FrmProdutividadeFaterEditor.Top := Top;
    FrmProdutividadeFaterEditor.Left := Left;
    FrmProdutividadeFaterEditor.VisualizarTexto(QryPrincipal, FieldName);
  finally
    FrmProdutividadeFaterEditor.Release;
    FrmProdutividadeFaterEditor := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProdutividadeFater.DbChckBxTecnologiaClick(Sender: TObject);
begin
  DbMemoTecnologia.Enabled := DbChckBxTecnologia.Checked;
  BtnTecnologia.Enabled := DbChckBxTecnologia.Checked;
end;

procedure TFrmProdutividadeFater.DbLkpCmbBxMunicipioPropertiesEditValueChanged(Sender: TObject);
var
  Cidade: Integer;
begin
  Cidade := 0;
  if (DbLkpCmbBxMunicipio.Text <> '') then Cidade := DbLkpCmbBxMunicipio.EditValue;

  CarregarProjetoPorCidade(Cidade);
end;

procedure TFrmProdutividadeFater.CarregarProjetoPorCidade(const Cidade: Integer);
begin
  DtStProjeto.Close;
  DtStProjeto.ParamByName('cidade').AsInteger := Cidade;
  DtStProjeto.Open;
  DtStProjeto.FetchAll;
end;

procedure TFrmProdutividadeFater.DbLkpCmbBxProjetoPropertiesChange(Sender: TObject);
begin
  LblTitulo.Caption := StringOfChar(' ', 6) + DbLkpCmbBxProjeto.Text;
end;

procedure TFrmProdutividadeFater.DtSrcFaterBeneficiarioStateChange(Sender: TObject);
begin
  BtnBenIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterBeneficiario.State = dsBrowse);
  BtnBenExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterBeneficiario.RecordCount > 0);
end;

procedure TFrmProdutividadeFater.DtSrcFaterComunidadeStateChange(Sender: TObject);
begin
  BtnComIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterComunidade.State = dsBrowse);
  BtnComExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterComunidade.RecordCount > 0);
end;

procedure TFrmProdutividadeFater.DtSrcFaterFuncionarioStateChange(Sender: TObject);
begin
  BtnTecIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterFuncionario.State = dsBrowse);
  BtnTecExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterFuncionario.RecordCount > 0);
end;

procedure TFrmProdutividadeFater.DtSrcFaterOrganizacaoStateChange(Sender: TObject);
begin
  BtnOrgIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterOrganizacao.State = dsBrowse);
  BtnOrgExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterOrganizacao.RecordCount > 0);
end;

procedure TFrmProdutividadeFater.DtSrcFaterParticipanteStateChange(Sender: TObject);
begin
  BtnBenParIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterParticipante.State = dsBrowse);
  BtnBenparExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterParticipante.RecordCount > 0);
end;

procedure TFrmProdutividadeFater.DtSrcFaterProdutoStateChange(Sender: TObject);
begin
  BtnPrdIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterProduto.State = dsBrowse);
  BtnPrdExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (DtStFaterProduto.RecordCount > 0);
end;

procedure TFrmProdutividadeFater.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;

  // Técnicas:
  GrdTec.Enabled := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdTecDis.Enabled := GrdTec.Enabled;
  LblCategorias.Enabled := GrdTec.Enabled;
  LblTec.Enabled := GrdTec.Enabled;
  LblTecDis.Enabled := GrdTec.Enabled;
  BtnTecRemover.Enabled := GrdTec.Enabled and (DtStFaterTecnica.RecordCount > 0);
  BtnTecAdicionar.Enabled := GrdTec.Enabled and (DtStTecnica.RecordCount > 0);

  // Ferramentas:
  GrdFer.Enabled := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdFerDis.Enabled := GrdFer.Enabled;
  LblFer.Enabled := GrdFer.Enabled;
  LblFerDis.Enabled := GrdFer.Enabled;
  BtnFerRemover.Enabled := GrdFer.Enabled and (DtStFaterFerramenta.RecordCount > 0);
  BtnFerAdicionar.Enabled := GrdFer.Enabled and (DtStFerramenta.RecordCount > 0);

  // Demais informações:
  TbShtTecnicas.TabVisible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  TbShtDetalhes.TabVisible := TbShtTecnicas.TabVisible;
end;

procedure TFrmProdutividadeFater.AplicarUltimaAlteracao;
begin
  if not (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Edit;
  QryPrincipalREG_MODIFICADO.AsDateTime := Now;
  QryPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Post;
end;

procedure TFrmProdutividadeFater.DtStFaterParticipanteAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.DtStFaterParticipanteBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (DtStFaterParticipante.State = dsInsert) then
  begin
    DtStFaterParticipantePRT_ID.AsLargeInt := DtmSistemaModulo.GerarIdentificador('TAB_PRD_FATER_PARTICIPANTE', 'PRT_ID');
  end;

  DtmSistemaModulo.GravarAuditoriaAlteracao(DtStFaterParticipante);
end;

procedure TFrmProdutividadeFater.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtDataAcao;
  CampoChave := 'FAT_ID';
  Tabela := 'TAB_PRD_FATER';

  DtSrcMetodo.DataSet := DtmProdutividadeModulo.DtStMetodo;
  DtSrcFinalidade.DataSet := DtmProdutividadeModulo.DtStFinalidade;
  DtSrcRecurso.DataSet := DtmProdutividadeModulo.DtStRecurso;

  DbLkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidadeAcao;
  DbLkpCmbBxMetodoInicial.Properties.ListSource := DtSrcMetodo;
  DbLkpCmbBxMetodoFinal.Properties.ListSource := DtSrcMetodoFinal;
  DbLkpCmbBxFinalidade.Properties.ListSource := DtSrcFinalidade;
  DbLkpCmbBxRecurso.Properties.ListSource := DtSrcRecurso;
  DbLkpCmbBxProjeto.Properties.ListSource := DtSrcProjeto;
  DbLkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;

  PgCntrlDetalhes.ActivePage := TbShtProduto;

  // Controle serão ativos somente para o usuário administrador:
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_ADMINISTRADOR) or (DtmConexaoModulo.PerfilID =  SISTEMA_PERFIL_CHEFIA) then
    begin
      DbImgCmbBxSituacao.Enabled := True;
    end;
end;

procedure TFrmProdutividadeFater.FormShow(Sender: TObject);
begin
  inherited;

  DbChckBxTecnologia.OnClick(DbChckBxTecnologia);
  DbChckBxBoas.OnClick(DbChckBxBoas);

  AtualizarReplicacaoPendente;

  GrdFer.Height := 212;
  GrdFerDis.Height := 212;

  LblTitulo.Caption := StringOfChar(' ', 6) + DbLkpCmbBxProjeto.Text;

  RecenteRegistrar;
end;

procedure TFrmProdutividadeFater.GrdFerDisTblDblClick(Sender: TObject);
begin
  if BtnFerAdicionar.Enabled and BtnFerAdicionar.Visible then
    BtnFerAdicionar.Click;
end;

procedure TFrmProdutividadeFater.GrdFerTblDblClick(Sender: TObject);
begin
  if BtnFerRemover.Enabled and BtnFerRemover.Visible then
    BtnFerRemover.Click;
end;

procedure TFrmProdutividadeFater.GrdTecDisTblDblClick(Sender: TObject);
begin
  if BtnTecAdicionar.Enabled and BtnTecAdicionar.Visible then
    BtnTecAdicionar.Click;
end;

procedure TFrmProdutividadeFater.GrdTecTblDblClick(Sender: TObject);
begin
  if BtnTecRemover.Enabled and BtnTecRemover.Visible then
    BtnTecRemover.Click;
end;

procedure TFrmProdutividadeFater.QryFaterBeneficiarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalFAT_DATA_ACAO.Value := Date;
  QryPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  QryPrincipalFAT_SITUACAO.Value := 1;
  QryPrincipalFAT_TECNOLOGIA_USO.Value := 0;
  QryPrincipalFAT_BOA_PRATICA_USO.Value := 0;
  if (DtmSistemaModulo.CidadeLocalID <> 0) then
    QryPrincipalCID_ID.Value := DtmSistemaModulo.CidadeLocalID;

  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    QryPrincipalFUN_ID.AsInteger := DtmConexaoModulo.FuncionarioID;
end;

procedure TFrmProdutividadeFater.DtStFaterProdutoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.DtStFaterFuncionarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.DtStFaterOrganizacaoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.DtStFaterComunidadeAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.DtStFaterFerramentaAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.DtStFaterTecnicaAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmProdutividadeFater.RecenteRegistrar;
begin
  if (not QryPrincipal.IsEmpty) and (DbLkpCmbBxProjeto.Text <> '') then
    FrmSistemaPrincipal.RecenteAdicionar(
      FrmSistemaPrincipal.VwGlrCntrlFATER,
      QryPrincipalFAT_ID.AsLargeInt,
      'Projeto: ' + DbLkpCmbBxProjeto.Text,
      'Data da ação: ' + DbEdtDataAcao.Text +
      ' - Município: ' + DbLkpCmbBxMunicipio.Text + ' - Técnico responsável: ' + DbLkpCmbBxTecnico.Text,
      0,
      False);
end;

procedure TFrmProdutividadeFater.TbShtBeneficiariosShow(Sender: TObject);
begin
  if not DtStFaterBeneficiario.Active then
    begin
      DtStFaterBeneficiario.Open;
      DtStFaterParticipante.Open;
    end;
end;

procedure TFrmProdutividadeFater.TbShtComunidadesShow(Sender: TObject);
begin
  if not DtStFaterComunidade.Active then
    DtStFaterComunidade.Open;
end;

procedure TFrmProdutividadeFater.TbShtOrganizacaoShow(Sender: TObject);
begin
  if not DtStFaterOrganizacao.Active then
    DtStFaterOrganizacao.Open;
end;

procedure TFrmProdutividadeFater.TbShtProdutoShow(Sender: TObject);
begin
  if not DtStFaterProduto.Active then
    DtStFaterProduto.Open;
end;

end.
