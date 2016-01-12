unit Emater.Proater.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, FIBDataSet, pFIBDataSet, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxGroupBox, cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxLabel, cxDBLabel, cxDBNavigator;

type
  TFrmProaterPrincipal = class(TFrmBaseTabela)
    QryPrincipalPRO_ID: TLargeintField;
    QryPrincipalPRO_DATA: TDateField;
    QryPrincipalPRO_APRESENTACAO: TMemoField;
    QryPrincipalPRO_OBSERVACAO: TMemoField;
    QryPrincipalPRO_ESTATISTICA: TMemoField;
    QryPrincipalUND_ID: TIntegerField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    PgCntrlApresentacao: TcxPageControl;
    TbShtApresentacao: TcxTabSheet;
    TbShtObservacao: TcxTabSheet;
    Label30: TLabel;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    Label12: TLabel;
    DbDtEdtPROATER: TcxDBDateEdit;
    DbMemoApresentacao: TcxDBMemo;
    DbMemoObservacao: TcxDBMemo;
    BtnObservacao: TcxButton;
    BtnApresentacao: TcxButton;
    TbShtDiagnostico: TcxTabSheet;
    DtSrcComunidade: TDataSource;
    UpdtComunidade: TFDUpdateSQL;
    QryComunidade: TFDQuery;
    QryComunidadePRC_ID: TLargeintField;
    QryComunidadePRC_LOCALIZACAO: TStringField;
    QryComunidadePRC_QTDE_BENEFICIARIO: TIntegerField;
    QryComunidadePRC_QTDE_UPF: TIntegerField;
    QryComunidadePRO_ID: TLargeintField;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeCOM_NOME: TStringField;
    QryComunidadeREG_EXCLUIDO: TSmallintField;
    QryComunidadeREG_REPLICADO: TSmallintField;
    QryComunidadeREG_USUARIO: TStringField;
    QryComunidadeREG_MODIFICADO: TSQLTimeStampField;
    TbShtCapacidade: TcxTabSheet;
    TbShtPlano: TcxTabSheet;
    PgCntrlDiagnostico: TcxPageControl;
    TbShtComunidades: TcxTabSheet;
    GrdCom: TcxGrid;
    GrdComTbl: TcxGridDBTableView;
    GrdComTblCOM_NOME: TcxGridDBColumn;
    GrdComTblPRC_LOCALIZACAO: TcxGridDBColumn;
    GrdComTblPRC_QTDE_BENEFICIARIO: TcxGridDBColumn;
    GrdComTblPRC_QTDE_UPF: TcxGridDBColumn;
    GrdComLvl: TcxGridLevel;
    TbShtProblemas: TcxTabSheet;
    TbShtEstatistica: TcxTabSheet;
    TbShtAcordos: TcxTabSheet;
    BtnEstatistica: TcxButton;
    DbMemoEstatistica: TcxDBMemo;
    PgCntrlCapacidade: TcxPageControl;
    TbShtRecursos: TcxTabSheet;
    TbShtMobiliario: TcxTabSheet;
    TbShtEquipamentos: TcxTabSheet;
    TbShtVeiculos: TcxTabSheet;
    TbShtDespesas: TcxTabSheet;
    TbShtNecessidades: TcxTabSheet;
    PgCntrlPlano: TcxPageControl;
    TbShtProjetos: TcxTabSheet;
    TbShtMetas: TcxTabSheet;
    TbShtMetodologias: TcxTabSheet;
    TbShtBeneficiarios: TcxTabSheet;
    TbShtOrcamento: TcxTabSheet;
    DtSrcPotencial: TDataSource;
    UpdtPotencial: TFDUpdateSQL;
    QryPotencial: TFDQuery;
    QryPotencialPRP_ID: TLargeintField;
    QryPotencialPRP_POTENCIALIDADE: TMemoField;
    QryPotencialPRP_PROBLEMA: TMemoField;
    QryPotencialPRO_ID: TLargeintField;
    QryPotencialCTX_ID: TIntegerField;
    QryPotencialREG_EXCLUIDO: TSmallintField;
    QryPotencialREG_REPLICADO: TSmallintField;
    QryPotencialREG_USUARIO: TStringField;
    QryPotencialREG_MODIFICADO: TSQLTimeStampField;
    QryPotencialCTX_TIPO: TSmallintField;
    QryPotencialCTX_CONTEXTO: TStringField;
    QryPotencialCTX_TIPO_DESCRICAO: TStringField;
    GrdPot: TcxGrid;
    GrdPotTbl: TcxGridDBTableView;
    GrdPotLvl: TcxGridLevel;
    GrdPotTblPRP_POTENCIALIDADE: TcxGridDBColumn;
    GrdPotTblPRP_PROBLEMA: TcxGridDBColumn;
    GrdPotTblCTX_CONTEXTO: TcxGridDBColumn;
    GrdPotTblCTX_TIPO_DESCRICAO: TcxGridDBColumn;
    BtnPotIncluir: TcxButton;
    BtnPotEditar: TcxButton;
    BtnPotExcluir: TcxButton;
    BtnComIncluir: TcxButton;
    BtnComEditar: TcxButton;
    BtnComExcluir: TcxButton;
    DtSrcAcordo: TDataSource;
    UpdtAcordo: TFDUpdateSQL;
    QryAcordo: TFDQuery;
    QryAcordoPRA_ID: TLargeintField;
    QryAcordoPRA_TIPO: TSmallintField;
    QryAcordoPRA_DESCRICAO: TMemoField;
    QryAcordoPRA_OBJETIVO: TMemoField;
    QryAcordoPRA_ACAO: TMemoField;
    QryAcordoPRA_SITUACAO: TSmallintField;
    QryAcordoPRO_ID: TLargeintField;
    QryAcordoREG_EXCLUIDO: TSmallintField;
    QryAcordoREG_REPLICADO: TSmallintField;
    QryAcordoREG_USUARIO: TStringField;
    QryAcordoREG_MODIFICADO: TSQLTimeStampField;
    BtnAcrIncluir: TcxButton;
    BtnAcrEditar: TcxButton;
    BtnAcrExcluir: TcxButton;
    GrdAcr: TcxGrid;
    GrdAcrTbl: TcxGridDBTableView;
    GrdAcrLvl: TcxGridLevel;
    QryAcordoPRA_TIPO_DESCRICAO: TStringField;
    GrdAcrTblPRA_DESCRICAO: TcxGridDBColumn;
    GrdAcrTblPRA_OBJETIVO: TcxGridDBColumn;
    GrdAcrTblPRA_ACAO: TcxGridDBColumn;
    GrdAcrTblPRA_TIPO_DESCRICAO: TcxGridDBColumn;
    QryAcordoPRA_SITUACAO_DESCRICAO: TStringField;
    GrdAcrTblPRA_SITUACAO_DESCRICAO: TcxGridDBColumn;
    QryFuncionario: TFDQuery;
    UpdtFuncionario: TFDUpdateSQL;
    DtSrcFuncionario: TDataSource;
    QryFuncionarioPRF_ID: TLargeintField;
    QryFuncionarioPRO_ID: TLargeintField;
    QryFuncionarioFUN_ID: TIntegerField;
    QryFuncionarioREG_EXCLUIDO: TSmallintField;
    QryFuncionarioREG_REPLICADO: TSmallintField;
    QryFuncionarioREG_USUARIO: TStringField;
    QryFuncionarioREG_MODIFICADO: TSQLTimeStampField;
    QryFuncionarioFUN_NOME: TStringField;
    QryFuncionarioFUN_MATRICULA: TStringField;
    BtnFncIncluir: TcxButton;
    BtnFncExcluir: TcxButton;
    GrdFnc: TcxGrid;
    GrdFncTbl: TcxGridDBTableView;
    GrdFncLvl: TcxGridLevel;
    GrdFncTblFUN_NOME: TcxGridDBColumn;
    GrdFncTblFUN_MATRICULA: TcxGridDBColumn;
    UpdtDemanda: TFDUpdateSQL;
    DtSrcDemanda: TDataSource;
    QryDemanda: TFDQuery;
    QryDemandaDEM_ID: TLargeintField;
    QryDemandaDEM_QUANTIDADE: TSmallintField;
    QryDemandaCRG_ID: TIntegerField;
    QryDemandaPRO_ID: TLargeintField;
    QryDemandaREG_EXCLUIDO: TSmallintField;
    QryDemandaREG_REPLICADO: TSmallintField;
    QryDemandaREG_USUARIO: TStringField;
    QryDemandaREG_MODIFICADO: TSQLTimeStampField;
    QryDemandaCRG_DESCRICAO: TStringField;
    BtnDemIncluir: TcxButton;
    BtnDemExcluir: TcxButton;
    GrdDem: TcxGrid;
    GrdDemTbl: TcxGridDBTableView;
    GrdDemLvl: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    BtnMobIncluir: TcxButton;
    BtnMobEditar: TcxButton;
    BtnMobExcluir: TcxButton;
    GrdMob: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    GrdMobLvl: TcxGridLevel;
    QryMobiliario: TFDQuery;
    UpdtMobiliario: TFDUpdateSQL;
    DtSrcMobiliario: TDataSource;
    QryMobiliarioPRM_ID: TLargeintField;
    QryMobiliarioPRM_DESCRICAO: TMemoField;
    QryMobiliarioPRM_QTDE_EXISTENTE: TIntegerField;
    QryMobiliarioPRM_QTDE_NECESSARIA: TIntegerField;
    QryMobiliarioPRO_ID: TLargeintField;
    QryMobiliarioREG_EXCLUIDO: TSmallintField;
    QryMobiliarioREG_REPLICADO: TSmallintField;
    QryMobiliarioREG_USUARIO: TStringField;
    QryMobiliarioREG_MODIFICADO: TSQLTimeStampField;
    QryEquipamento: TFDQuery;
    UpdtEquipamento: TFDUpdateSQL;
    DtSrcEquipamento: TDataSource;
    GrdDemTblDEM_QUANTIDADE: TcxGridDBColumn;
    GrdDemTblCRG_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1PRM_DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1PRM_QTDE_EXISTENTE: TcxGridDBColumn;
    cxGridDBTableView1PRM_QTDE_NECESSARIA: TcxGridDBColumn;
    QryVeiculo: TFDQuery;
    UpdtVeiculo: TFDUpdateSQL;
    DtSrcVeiculo: TDataSource;
    BtnEqpIncluir: TcxButton;
    BtnEqpEditar: TcxButton;
    BtnEqpExcluir: TcxButton;
    GrdEqp: TcxGrid;
    GrdEqpTbl: TcxGridDBTableView;
    GrdEqpLvl: TcxGridLevel;
    QryEquipamentoPRE_ID: TLargeintField;
    QryEquipamentoPRE_DESCRICAO: TMemoField;
    QryEquipamentoPRE_QTDE_EXISTENTE: TIntegerField;
    QryEquipamentoPRE_QTDE_NECESSARIA: TIntegerField;
    QryEquipamentoPRO_ID: TLargeintField;
    QryEquipamentoREG_EXCLUIDO: TSmallintField;
    QryEquipamentoREG_REPLICADO: TSmallintField;
    QryEquipamentoREG_USUARIO: TStringField;
    QryEquipamentoREG_MODIFICADO: TSQLTimeStampField;
    GrdEqpTblPRE_DESCRICAO: TcxGridDBColumn;
    GrdEqpTblPRE_QTDE_EXISTENTE: TcxGridDBColumn;
    GrdEqpTblPRE_QTDE_NECESSARIA: TcxGridDBColumn;
    BtnVeiIncluir: TcxButton;
    BtnVeiEditar: TcxButton;
    BtnVeiExcluir: TcxButton;
    GrdVei: TcxGrid;
    GrdVeiTbl: TcxGridDBTableView;
    GrdVeiLvl: TcxGridLevel;
    QryVeiculoVEI_ID: TLargeintField;
    QryVeiculoVEI_DESCRICAO: TMemoField;
    QryVeiculoVEI_QTDE_EXISTENTE: TIntegerField;
    QryVeiculoVEI_QTDE_NECESSARIA: TIntegerField;
    QryVeiculoPRO_ID: TLargeintField;
    QryVeiculoVTP_ID: TIntegerField;
    QryVeiculoREG_EXCLUIDO: TSmallintField;
    QryVeiculoREG_REPLICADO: TSmallintField;
    QryVeiculoREG_USUARIO: TStringField;
    QryVeiculoREG_MODIFICADO: TSQLTimeStampField;
    QryVeiculoVTP_DESCRICAO: TStringField;
    GrdVeiTblVEI_DESCRICAO: TcxGridDBColumn;
    GrdVeiTblVEI_QTDE_EXISTENTE: TcxGridDBColumn;
    GrdVeiTblVEI_QTDE_NECESSARIA: TcxGridDBColumn;
    GrdVeiTblVTP_DESCRICAO: TcxGridDBColumn;
    QryCusto: TFDQuery;
    FDUpdateSQL2: TFDUpdateSQL;
    DtSrcCusto: TDataSource;
    QryCustoPRC_ID: TLargeintField;
    QryCustoPRO_ID: TLargeintField;
    QryCustoPCT_ID: TIntegerField;
    QryCustoPRC_CUSTO: TBCDField;
    QryCustoREG_EXCLUIDO: TSmallintField;
    QryCustoREG_REPLICADO: TSmallintField;
    QryCustoREG_USUARIO: TStringField;
    QryCustoREG_MODIFICADO: TSQLTimeStampField;
    QryCustoPCT_DESCRICAO: TStringField;
    BtnCusIncluir: TcxButton;
    BtnCusEditar: TcxButton;
    BtnCusExcluir: TcxButton;
    GrdCus: TcxGrid;
    GrdCusTbl: TcxGridDBTableView;
    GrdCusLvl: TcxGridLevel;
    GrdCusTblPRC_CUSTO: TcxGridDBColumn;
    GrdCusTblPCT_DESCRICAO: TcxGridDBColumn;
    QryQualificacao: TFDQuery;
    UpdtQualificacao: TFDUpdateSQL;
    DtSrcQualificacao: TDataSource;
    QryQualificacaoQUA_ID: TLargeintField;
    QryQualificacaoQUA_TEMATICA: TMemoField;
    QryQualificacaoQUA_QTDE_TECNICO: TIntegerField;
    QryQualificacaoPRO_ID: TLargeintField;
    QryQualificacaoMET_ID: TIntegerField;
    QryQualificacaoREG_EXCLUIDO: TSmallintField;
    QryQualificacaoREG_REPLICADO: TSmallintField;
    QryQualificacaoREG_USUARIO: TStringField;
    QryQualificacaoREG_MODIFICADO: TSQLTimeStampField;
    QryQualificacaoMET_DESCRICAO: TStringField;
    BtnQuaIncluir: TcxButton;
    BtnQuaEditar: TcxButton;
    BtnQuaExcluir: TcxButton;
    GrdQua: TcxGrid;
    GrdQuaTbl: TcxGridDBTableView;
    GrdQuaLvl: TcxGridLevel;
    GrdQuaTblQUA_TEMATICA: TcxGridDBColumn;
    GrdQuaTblQUA_QTDE_TECNICO: TcxGridDBColumn;
    GrdQuaTblMET_DESCRICAO: TcxGridDBColumn;
    QrySubProjeto: TFDQuery;
    UpdtSubProjeto: TFDUpdateSQL;
    DtSrcSubProjeto: TDataSource;
    QrySubProjetoSPR_ID: TIntegerField;
    QrySubProjetoSPR_DATA: TDateField;
    QrySubProjetoSPR_ANO_MES_INICIO: TIntegerField;
    QrySubProjetoSPR_ANO_MES_FIM: TIntegerField;
    QrySubProjetoSPR_NOME: TStringField;
    QrySubProjetoSPR_JUSTIFICATIVA: TMemoField;
    QrySubProjetoSPR_OBJETIVO_GERAL: TMemoField;
    QrySubProjetoSPR_OBJETIVO_ESPECIFICO: TMemoField;
    QrySubProjetoPRJ_ID: TIntegerField;
    QrySubProjetoFUN_ID_RESPONSAVEL: TIntegerField;
    QrySubProjetoFUN_ID_SUBSTITUTO: TIntegerField;
    QrySubProjetoPRO_ID: TLargeintField;
    QrySubProjetoREG_EXCLUIDO: TSmallintField;
    QrySubProjetoREG_REPLICADO: TSmallintField;
    QrySubProjetoREG_USUARIO: TStringField;
    QrySubProjetoREG_MODIFICADO: TSQLTimeStampField;
    QrySubProjetoPRJ_NOME: TStringField;
    QrySubProjetoPRG_NOME: TStringField;
    QrySubProjetoFUN_RESPONSAVEL: TStringField;
    QrySubProjetoFUN_SUBSTITUTO: TStringField;
    BtnSubIncluir: TcxButton;
    BtnSubEditar: TcxButton;
    BtnSubExcluir: TcxButton;
    GrdSub: TcxGrid;
    GrdSubTbl: TcxGridDBTableView;
    GrdSubLvl: TcxGridLevel;
    GrdSubTblSPR_ANO_MES_INICIO: TcxGridDBColumn;
    GrdSubTblSPR_ANO_MES_FIM: TcxGridDBColumn;
    GrdSubTblSPR_NOME: TcxGridDBColumn;
    GrdSubTblPRJ_NOME: TcxGridDBColumn;
    GrdSubTblPRG_NOME: TcxGridDBColumn;
    GrdSubTblFUN_RESPONSAVEL: TcxGridDBColumn;
    BtnMetaIncluir: TcxButton;
    BtnMetaEditar: TcxButton;
    BtnMetaExcluir: TcxButton;
    GrdMeta: TcxGrid;
    GrdMetaTbl: TcxGridDBTableView;
    GrdMetaLvl: TcxGridLevel;
    QrySubMeta: TFDQuery;
    UpdtSubMeta: TFDUpdateSQL;
    DtSrcSubMeta: TDataSource;
    QrySubMetaMET_ID: TLargeintField;
    QrySubMetaMET_DESCRICAO: TMemoField;
    QrySubMetaMET_QUANTIDADE: TIntegerField;
    QrySubMetaMET_UNIDADE: TStringField;
    QrySubMetaSPR_ID: TIntegerField;
    QrySubMetaREG_EXCLUIDO: TSmallintField;
    QrySubMetaREG_REPLICADO: TSmallintField;
    QrySubMetaREG_USUARIO: TStringField;
    QrySubMetaREG_MODIFICADO: TSQLTimeStampField;
    GrdMetaTblMET_DESCRICAO: TcxGridDBColumn;
    GrdMetaTblMET_QUANTIDADE: TcxGridDBColumn;
    GrdMetaTblMET_UNIDADE: TcxGridDBColumn;
    QrySubMetodo: TFDQuery;
    UpdtSubMetodo: TFDUpdateSQL;
    DtSrcSubMetodo: TDataSource;
    GrpBxSubprojeto: TcxGroupBox;
    cxDBNavigator1: TcxDBNavigator;
    DbLblSubprojeto: TcxDBLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DbLblPrograma: TcxDBLabel;
    DbLblProjeto: TcxDBLabel;
    Bevel1: TBevel;
    BtnMetIncluir: TcxButton;
    BtnMetEditar: TcxButton;
    BtnMetExcluir: TcxButton;
    GrdMet: TcxGrid;
    GrdMetTbl: TcxGridDBTableView;
    GrdMetLvl: TcxGridLevel;
    QrySubMetodoPSM_ID: TLargeintField;
    QrySubMetodoSPR_ID: TIntegerField;
    QrySubMetodoMET_ID: TIntegerField;
    QrySubMetodoMET_ANO: TSmallintField;
    QrySubMetodoMET_QUANTIDADE: TIntegerField;
    QrySubMetodoREG_EXCLUIDO: TSmallintField;
    QrySubMetodoREG_REPLICADO: TSmallintField;
    QrySubMetodoREG_USUARIO: TStringField;
    QrySubMetodoREG_MODIFICADO: TSQLTimeStampField;
    QrySubMetodoMET_DESCRICAO: TStringField;
    GrdMetTblMET_ANO: TcxGridDBColumn;
    GrdMetTblMET_QUANTIDADE: TcxGridDBColumn;
    GrdMetTblMET_DESCRICAO: TcxGridDBColumn;
    BtnBenIncluir: TcxButton;
    BtnBenEditar: TcxButton;
    BtnBenExcluir: TcxButton;
    GrdBen: TcxGrid;
    GrdBenTbl: TcxGridDBTableView;
    GrdBenLvl: TcxGridLevel;
    QrySubBeneficiario: TFDQuery;
    UpdtSubBeneficiario: TFDUpdateSQL;
    DtSrcSubBeneficiario: TDataSource;
    QrySubBeneficiarioPLC_ID: TLargeintField;
    QrySubBeneficiarioPLC_ANO: TSmallintField;
    QrySubBeneficiarioPLC_QUANTIDADE: TIntegerField;
    QrySubBeneficiarioCOM_ID: TIntegerField;
    QrySubBeneficiarioCAT_ID: TIntegerField;
    QrySubBeneficiarioPRD_ID: TIntegerField;
    QrySubBeneficiarioSPR_ID: TIntegerField;
    QrySubBeneficiarioREG_EXCLUIDO: TSmallintField;
    QrySubBeneficiarioREG_REPLICADO: TSmallintField;
    QrySubBeneficiarioREG_USUARIO: TStringField;
    QrySubBeneficiarioREG_MODIFICADO: TSQLTimeStampField;
    QrySubBeneficiarioCOM_NOME: TStringField;
    QrySubBeneficiarioCAT_DESCRICAO: TStringField;
    QrySubBeneficiarioPRD_DESCRICAO: TStringField;
    GrdBenTblPLC_ANO: TcxGridDBColumn;
    GrdBenTblPLC_QUANTIDADE: TcxGridDBColumn;
    GrdBenTblCOM_NOME: TcxGridDBColumn;
    GrdBenTblCAT_DESCRICAO: TcxGridDBColumn;
    GrdBenTblPRD_DESCRICAO: TcxGridDBColumn;
    QrySubOrcamento: TFDQuery;
    UpdtSubOrcamento: TFDUpdateSQL;
    DtSrcSubOrcamento: TDataSource;
    QrySubOrcamentoORC_ID: TLargeintField;
    QrySubOrcamentoORC_FONTE: TStringField;
    QrySubOrcamentoORC_ELEMENTO: TStringField;
    QrySubOrcamentoORC_ANO: TSmallintField;
    QrySubOrcamentoORC_VALOR: TBCDField;
    QrySubOrcamentoSPR_ID: TIntegerField;
    QrySubOrcamentoREG_EXCLUIDO: TSmallintField;
    QrySubOrcamentoREG_REPLICADO: TSmallintField;
    QrySubOrcamentoREG_USUARIO: TStringField;
    QrySubOrcamentoREG_MODIFICADO: TSQLTimeStampField;
    BtnOrcIncluir: TcxButton;
    BtnOrcEditar: TcxButton;
    BtnOrcExcluir: TcxButton;
    GrdOrc: TcxGrid;
    GrdOrcTbl: TcxGridDBTableView;
    GrdOrcLvl: TcxGridLevel;
    GrdOrcTblORC_FONTE: TcxGridDBColumn;
    GrdOrcTblORC_ELEMENTO: TcxGridDBColumn;
    GrdOrcTblORC_ANO: TcxGridDBColumn;
    GrdOrcTblORC_VALOR: TcxGridDBColumn;
    QryPrincipalPRO_PERIODO_INICIO: TIntegerField;
    QryPrincipalPRO_PERIODO_FIM: TIntegerField;
    LblPeriodoPlantio: TLabel;
    DbEdtPeriodoInicio: TcxDBMaskEdit;
    LblPeriodoColheita: TLabel;
    DbEdtPeriodoFim: TcxDBMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
    procedure BtnApresentacaoClick(Sender: TObject);
    procedure BtnObservacaoClick(Sender: TObject);
    procedure BtnEstatisticaClick(Sender: TObject);
    procedure QryComunidadeBeforePost(DataSet: TDataSet);
    procedure QryComunidadeNewRecord(DataSet: TDataSet);
    procedure BtnComIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcComunidadeStateChange(Sender: TObject);
    procedure BtnComEditarClick(Sender: TObject);
    procedure BtnComExcluirClick(Sender: TObject);
    procedure GrdComTblDblClick(Sender: TObject);
    procedure QryPotencialNewRecord(DataSet: TDataSet);
    procedure QryPotencialBeforePost(DataSet: TDataSet);
    procedure GrdPotTblDblClick(Sender: TObject);
    procedure BtnPotIncluirClick(Sender: TObject);
    procedure BtnPotEditarClick(Sender: TObject);
    procedure BtnPotExcluirClick(Sender: TObject);
    procedure DtSrcPotencialStateChange(Sender: TObject);
  private
    procedure VisualizarTexto(const FieldName: string);
  end;

var
  FrmProaterPrincipal: TFrmProaterPrincipal;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Produtividade.Fater.Editor, Emater.Proater.Comunidade, Emater.Base.Consts, Emater.Proater.Potencial,
  Emater.Proater.Modulo, Emater.Recurso.Modulo;

procedure TFrmProaterPrincipal.BtnApresentacaoClick(Sender: TObject);
begin
  VisualizarTexto('PRO_APRESENTACAO');
end;

procedure TFrmProaterPrincipal.BtnComEditarClick(Sender: TObject);
begin
  FrmProaterComunidade := TFrmProaterComunidade.Create(Self);
  try
    QryComunidade.Edit;
    if (FrmProaterComunidade.ShowModal = mrOK) then
      begin
        QryComunidadeCOM_NOME.AsString := FrmProaterComunidade.DbLkpCmbBxComunidade.Text;
        QryComunidade.Post;
      end
    else
      QryComunidade.Cancel;
  finally
    FrmProaterComunidade.Release;
    FrmProaterComunidade := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnComExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryComunidade, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnComIncluirClick(Sender: TObject);
begin
  FrmProaterComunidade := TFrmProaterComunidade.Create(Self);
  try
    QryComunidade.Insert;
    if (FrmProaterComunidade.ShowModal = mrOK) then
      begin
        QryComunidadeCOM_NOME.AsString := FrmProaterComunidade.DbLkpCmbBxComunidade.Text;
        QryComunidade.Post;
      end
    else
      QryComunidade.Cancel;
  finally
    FrmProaterComunidade.Release;
    FrmProaterComunidade := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnNovoClick(Sender: TObject);
begin
  inherited;
  if (PgCntrlMain.ActivePage = TbShtPrincipal) then
    DbDtEdtPROATER.SetFocus;
end;

procedure TFrmProaterPrincipal.BtnObservacaoClick(Sender: TObject);
begin
  VisualizarTexto('PRO_OBSERVACAO');
end;

procedure TFrmProaterPrincipal.BtnPotEditarClick(Sender: TObject);
begin
  FrmProaterPotencial := TFrmProaterPotencial.Create(Self);
  try
    QryPotencial.Edit;
    if (FrmProaterPotencial.ShowModal = mrOK) then
      begin
        if DtmProaterModulo.QryContexto.Locate('CTX_ID', QryPotencialCTX_ID.Value, []) then
          begin
            QryPotencialCTX_TIPO_DESCRICAO.AsString := DtmProaterModulo.QryContexto.FieldByName('ctx_tipo_descricao').AsString;
            QryPotencialCTX_CONTEXTO.AsString := DtmProaterModulo.QryContexto.FieldByName('ctx_contexto').AsString;
          end;
        QryPotencial.Post;
      end
    else
      QryPotencial.Cancel;
  finally
    FrmProaterPotencial.Release;
    FrmProaterPotencial := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnPotExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryPotencial, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnPotIncluirClick(Sender: TObject);
begin
  FrmProaterPotencial := TFrmProaterPotencial.Create(Self);
  try
    QryPotencial.Insert;
    if (FrmProaterPotencial.ShowModal = mrOK) then
      begin
        if DtmProaterModulo.QryContexto.Locate('CTX_ID', QryPotencialCTX_ID.Value, []) then
          begin
            QryPotencialCTX_TIPO_DESCRICAO.AsString := DtmProaterModulo.QryContexto.FieldByName('ctx_tipo_descricao').AsString;
            QryPotencialCTX_CONTEXTO.AsString := DtmProaterModulo.QryContexto.FieldByName('ctx_contexto').AsString;
          end;
        QryPotencial.Post;
      end
    else
      QryPotencial.Cancel;
  finally
    FrmProaterPotencial.Release;
    FrmProaterPotencial := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnEstatisticaClick(Sender: TObject);
begin
  VisualizarTexto('PRO_ESTATISTICA');
end;

procedure TFrmProaterPrincipal.DtSrcComunidadeStateChange(Sender: TObject);
begin
  BtnComIncluir.Enabled := QryComunidade.Active;
  BtnComEditar.Enabled := (QryComunidade.RecordCount > 0);
  BtnComExcluir.Enabled := (QryComunidade.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcPotencialStateChange(Sender: TObject);
begin
  BtnPotIncluir.Enabled := QryPotencial.Active;
  BtnPotEditar.Enabled := (QryPotencial.RecordCount > 0);
  BtnPotExcluir.Enabled := (QryPotencial.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.FormCreate(Sender: TObject);
begin
  inherited;

  CampoChave := 'PRO_ID';
  Tabela := 'TAB_PRD_PROATER';

  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;

  PgCntrlApresentacao.ActivePageIndex := 0;
  PgCntrlDiagnostico.ActivePageIndex := 0;
  PgCntrlCapacidade.ActivePageIndex := 0;
  PgCntrlPlano.ActivePageIndex := 0;

  FrmProaterPrincipal := Self;
end;

procedure TFrmProaterPrincipal.FormShow(Sender: TObject);
begin
  inherited;
  QryComunidade.Open;
  QryPotencial.Open;
end;

procedure TFrmProaterPrincipal.GrdComTblDblClick(Sender: TObject);
begin
  inherited;
  if (not QryComunidade.IsEmpty) and (BtnComEditar.Enabled) and (BtnComEditar.Visible) then
    BtnComEditar.Click;
end;

procedure TFrmProaterPrincipal.GrdPotTblDblClick(Sender: TObject);
begin
  inherited;
  if (not QryPotencial.IsEmpty) and (BtnPotEditar.Enabled) and (BtnPotEditar.Visible) then
    BtnPotEditar.Click;
end;

procedure TFrmProaterPrincipal.QryComunidadeBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryComunidade);
end;

procedure TFrmProaterPrincipal.QryComunidadeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryComunidade, 'TAB_PRD_PROATER_COMUNIDADE', 'PRC_ID');

  QryComunidadePRO_ID.Value := QryPrincipalPRO_ID.Value;
  QryComunidadePRC_QTDE_UPF.Value := 0;
  QryComunidadePRC_QTDE_BENEFICIARIO.Value := 0;
end;

procedure TFrmProaterPrincipal.QryPotencialBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryPotencial);
end;

procedure TFrmProaterPrincipal.QryPotencialNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryPotencial, 'TAB_PRD_PROATER_POTENCIAL', 'PRP_ID');
  QryPotencialPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalPRO_ID.Value := DtmSistemaModulo.GerarIdentificador('TAB_PRD_PROATER', 'PRO_ID');

  QryPrincipalPRO_DATA.AsDateTime := Date;
  //QryPrincipalPRO_APRESENTACAO.Value := '';
  //QryPrincipalPRO_OBSERVACAO.Value := '';
  //QryPrincipalPRO_ESTATISTICA.Value := '';
  QryPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
end;

procedure TFrmProaterPrincipal.VisualizarTexto(const FieldName: string);
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

end.
