unit Emater.Proater.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxGroupBox, cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxLabel, cxDBLabel, cxDBNavigator, DateUtils;

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
    GrdMobTbl: TcxGridDBTableView;
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
    GrdMobTblPRM_DESCRICAO: TcxGridDBColumn;
    GrdMobTblPRM_QTDE_EXISTENTE: TcxGridDBColumn;
    GrdMobTblPRM_QTDE_NECESSARIA: TcxGridDBColumn;
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
    QrySubComunidade: TFDQuery;
    UpdtSubComunidade: TFDUpdateSQL;
    DtSrcSubComunidade: TDataSource;
    QrySubComunidadePLC_ID: TLargeintField;
    QrySubComunidadePLC_ANO: TSmallintField;
    QrySubComunidadePLC_QUANTIDADE: TIntegerField;
    QrySubComunidadeCOM_ID: TIntegerField;
    QrySubComunidadeCAT_ID: TIntegerField;
    QrySubComunidadePRD_ID: TIntegerField;
    QrySubComunidadeSPR_ID: TIntegerField;
    QrySubComunidadeREG_EXCLUIDO: TSmallintField;
    QrySubComunidadeREG_REPLICADO: TSmallintField;
    QrySubComunidadeREG_USUARIO: TStringField;
    QrySubComunidadeREG_MODIFICADO: TSQLTimeStampField;
    QrySubComunidadeCOM_NOME: TStringField;
    QrySubComunidadeCAT_DESCRICAO: TStringField;
    QrySubComunidadePRD_DESCRICAO: TStringField;
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
    QrySubMetodoMET_MES: TSmallintField;
    GrdMetTblMET_MES: TcxGridDBColumn;
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
    procedure QryAcordoNewRecord(DataSet: TDataSet);
    procedure QryAcordoBeforePost(DataSet: TDataSet);
    procedure DtSrcAcordoStateChange(Sender: TObject);
    procedure GrdAcrTblDblClick(Sender: TObject);
    procedure BtnAcrIncluirClick(Sender: TObject);
    procedure BtnAcrEditarClick(Sender: TObject);
    procedure BtnAcrExcluirClick(Sender: TObject);
    procedure QryFuncionarioNewRecord(DataSet: TDataSet);
    procedure QryFuncionarioBeforePost(DataSet: TDataSet);
    procedure QryDemandaBeforePost(DataSet: TDataSet);
    procedure QryMobiliarioBeforePost(DataSet: TDataSet);
    procedure QryEquipamentoBeforePost(DataSet: TDataSet);
    procedure QryVeiculoBeforePost(DataSet: TDataSet);
    procedure QryCustoBeforePost(DataSet: TDataSet);
    procedure QryQualificacaoBeforePost(DataSet: TDataSet);
    procedure QrySubProjetoBeforePost(DataSet: TDataSet);
    procedure QrySubMetaBeforePost(DataSet: TDataSet);
    procedure QrySubMetodoBeforePost(DataSet: TDataSet);
    procedure QrySubComunidadeBeforePost(DataSet: TDataSet);
    procedure QrySubOrcamentoBeforePost(DataSet: TDataSet);
    procedure QryDemandaNewRecord(DataSet: TDataSet);
    procedure QryMobiliarioNewRecord(DataSet: TDataSet);
    procedure QryEquipamentoNewRecord(DataSet: TDataSet);
    procedure QryVeiculoNewRecord(DataSet: TDataSet);
    procedure QryCustoNewRecord(DataSet: TDataSet);
    procedure QryQualificacaoNewRecord(DataSet: TDataSet);
    procedure QrySubProjetoNewRecord(DataSet: TDataSet);
    procedure QrySubMetaNewRecord(DataSet: TDataSet);
    procedure QrySubMetodoNewRecord(DataSet: TDataSet);
    procedure QrySubComunidadeNewRecord(DataSet: TDataSet);
    procedure QrySubOrcamentoNewRecord(DataSet: TDataSet);
    procedure DtSrcFuncionarioStateChange(Sender: TObject);
    procedure DtSrcDemandaStateChange(Sender: TObject);
    procedure DtSrcMobiliarioStateChange(Sender: TObject);
    procedure DtSrcEquipamentoStateChange(Sender: TObject);
    procedure DtSrcVeiculoStateChange(Sender: TObject);
    procedure DtSrcCustoStateChange(Sender: TObject);
    procedure DtSrcQualificacaoStateChange(Sender: TObject);
    procedure DtSrcSubProjetoStateChange(Sender: TObject);
    procedure DtSrcSubMetaStateChange(Sender: TObject);
    procedure DtSrcSubMetodoStateChange(Sender: TObject);
    procedure DtSrcSubComunidadeStateChange(Sender: TObject);
    procedure DtSrcSubOrcamentoStateChange(Sender: TObject);
    procedure GrdMobTblDblClick(Sender: TObject);
    procedure GrdEqpTblDblClick(Sender: TObject);
    procedure GrdVeiTblDblClick(Sender: TObject);
    procedure GrdCusTblDblClick(Sender: TObject);
    procedure GrdQuaTblDblClick(Sender: TObject);
    procedure GrdSubTblDblClick(Sender: TObject);
    procedure GrdMetaTblDblClick(Sender: TObject);
    procedure GrdMetTblDblClick(Sender: TObject);
    procedure GrdBenTblDblClick(Sender: TObject);
    procedure GrdOrcTblDblClick(Sender: TObject);
    procedure BtnFncIncluirClick(Sender: TObject);
    procedure BtnFncExcluirClick(Sender: TObject);
    procedure QryPrincipalPRO_PERIODO_INICIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QryPrincipalPRO_PERIODO_INICIOSetText(Sender: TField; const Text: string);
    procedure BtnDemIncluirClick(Sender: TObject);
    procedure BtnDemExcluirClick(Sender: TObject);
    procedure BtnMobIncluirClick(Sender: TObject);
    procedure BtnMobEditarClick(Sender: TObject);
    procedure BtnMobExcluirClick(Sender: TObject);
    procedure BtnEqpIncluirClick(Sender: TObject);
    procedure BtnEqpEditarClick(Sender: TObject);
    procedure BtnEqpExcluirClick(Sender: TObject);
    procedure BtnVeiIncluirClick(Sender: TObject);
    procedure BtnVeiEditarClick(Sender: TObject);
    procedure BtnVeiExcluirClick(Sender: TObject);
    procedure BtnCusIncluirClick(Sender: TObject);
    procedure BtnCusEditarClick(Sender: TObject);
    procedure BtnCusExcluirClick(Sender: TObject);
    procedure BtnQuaExcluirClick(Sender: TObject);
    procedure BtnQuaIncluirClick(Sender: TObject);
    procedure BtnQuaEditarClick(Sender: TObject);
    procedure BtnSubIncluirClick(Sender: TObject);
    procedure BtnSubEditarClick(Sender: TObject);
    procedure BtnSubExcluirClick(Sender: TObject);
    procedure QrySubProjetoSPR_ANO_MES_INICIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QrySubProjetoSPR_ANO_MES_INICIOSetText(Sender: TField; const Text: string);
    procedure PgCntrlPlanoChange(Sender: TObject);
    procedure BtnMetaIncluirClick(Sender: TObject);
    procedure BtnMetaEditarClick(Sender: TObject);
    procedure BtnMetaExcluirClick(Sender: TObject);
    procedure BtnMetExcluirClick(Sender: TObject);
    procedure BtnBenExcluirClick(Sender: TObject);
    procedure BtnOrcExcluirClick(Sender: TObject);
    procedure BtnMetIncluirClick(Sender: TObject);
    procedure BtnMetEditarClick(Sender: TObject);
    procedure BtnBenIncluirClick(Sender: TObject);
    procedure BtnBenEditarClick(Sender: TObject);
    procedure BtnOrcIncluirClick(Sender: TObject);
    procedure BtnOrcEditarClick(Sender: TObject);
    procedure QrySubMetodoMET_MESGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QrySubMetodoMET_MESSetText(Sender: TField; const Text: string);
  private
    procedure VisualizarTexto(const FieldName: string);
    procedure EditarItem(const FDQuery: TFDQuery; const Button: TcxButton);
  end;

var
  FrmProaterPrincipal: TFrmProaterPrincipal;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Produtividade.Fater.Editor, Emater.Proater.Comunidade, Emater.Base.Consts, Emater.Proater.Potencial,
  Emater.Proater.Modulo, Emater.Recurso.Modulo, Emater.Proater.Acordo, Emater.Pessoal.Funcionario.Busca, Emater.Proater.Demanda, Emater.Proater.Mobiliario,
  Emater.Proater.Equipamento, Emater.Proater.Veiculo, Emater.Proater.Custo, Emater.Proater.Qualificacao, Emater.Proater.SubProjeto, Emater.Proater.Meta,
  Emater.Proater.Metodo, Emater.Proater.Beneficiario, Emater.Proater.Orcamento, Emater.Proater.Consts;

procedure TFrmProaterPrincipal.BtnAcrEditarClick(Sender: TObject);
begin
  FrmProaterAcordo := TFrmProaterAcordo.Create(Self);
  try
    QryAcordo.Edit;
    if (FrmProaterAcordo.ShowModal = mrOK) then
      begin
        QryAcordoPRA_TIPO_DESCRICAO.AsString := FrmProaterAcordo.DbImgCmbBxTipo.Text;
        QryAcordoPRA_SITUACAO_DESCRICAO.AsString := FrmProaterAcordo.DbImgCmbBxSituacao.Text;
        QryAcordo.Post;
      end
    else
      QryAcordo.Cancel;
  finally
    FrmProaterAcordo.Release;
    FrmProaterAcordo := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnAcrExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryAcordo, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnAcrIncluirClick(Sender: TObject);
begin
  FrmProaterAcordo := TFrmProaterAcordo.Create(Self);
  try
    QryAcordo.Insert;
    if (FrmProaterAcordo.ShowModal = mrOK) then
      begin
        QryAcordoPRA_TIPO_DESCRICAO.AsString := FrmProaterAcordo.DbImgCmbBxTipo.Text;
        QryAcordoPRA_SITUACAO_DESCRICAO.AsString := FrmProaterAcordo.DbImgCmbBxSituacao.Text;
        QryAcordo.Post;
      end
    else
      QryAcordo.Cancel;
  finally
    FrmProaterAcordo.Release;
    FrmProaterAcordo := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnApresentacaoClick(Sender: TObject);
begin
  VisualizarTexto('PRO_APRESENTACAO');
end;

procedure TFrmProaterPrincipal.BtnBenEditarClick(Sender: TObject);
begin
  FrmProaterBeneficiario := TFrmProaterBeneficiario.Create(Self);
  try
    QrySubComunidade.Edit;
    if (FrmProaterBeneficiario.ShowModal = mrOK) then
      begin
        QrySubComunidadeCOM_NOME.AsString := FrmProaterBeneficiario.DbLkpCmbBxComunidade.Text;
        QrySubComunidadeCAT_DESCRICAO.AsString := FrmProaterBeneficiario.DbLkpCmbBxCategoria.Text;
        QrySubComunidadePRD_DESCRICAO.AsString := FrmProaterBeneficiario.DbLkpCmbBxProduto.Text;
        QrySubComunidade.Post;
      end
    else
      QrySubComunidade.Cancel;
  finally
    FrmProaterBeneficiario.Release;
    FrmProaterBeneficiario := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnBenExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QrySubComunidade, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnBenIncluirClick(Sender: TObject);
begin
  FrmProaterBeneficiario := TFrmProaterBeneficiario.Create(Self);
  try
    QrySubComunidade.Insert;
    if (FrmProaterBeneficiario.ShowModal = mrOK) then
      begin
        QrySubComunidadeCOM_NOME.AsString := FrmProaterBeneficiario.DbLkpCmbBxComunidade.Text;
        QrySubComunidadeCAT_DESCRICAO.AsString := FrmProaterBeneficiario.DbLkpCmbBxCategoria.Text;
        QrySubComunidadePRD_DESCRICAO.AsString := FrmProaterBeneficiario.DbLkpCmbBxProduto.Text;
        QrySubComunidade.Post;
      end
    else
      QrySubComunidade.Cancel;
  finally
    FrmProaterBeneficiario.Release;
    FrmProaterBeneficiario := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnComEditarClick(Sender: TObject);
var
  Lista: TStringList;
begin
  FrmProaterComunidade := TFrmProaterComunidade.Create(Self);
  try
    Lista := DtmSistemaModulo.CriarListaChave(QryComunidade, 'COM_ID', QryComunidadeCOM_ID.AsString);
    QryComunidade.Edit;
    if (FrmProaterComunidade.ShowModal = mrOK) then
      begin
        if DtmSistemaModulo.RegistroDuplicadoNaLista(Lista, FrmProaterComunidade.DbLkpCmbBxComunidade.EditValue) then
          begin
            Msg.Aviso(PROATER_COMUNIDADE_DUPLICADA);
            QryComunidade.Cancel;
          end
        else
          begin
            QryComunidadeCOM_NOME.AsString := FrmProaterComunidade.DbLkpCmbBxComunidade.Text;
            QryComunidade.Post;
          end;
      end
    else
      QryComunidade.Cancel;
    Lista.Free;
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
var
  Lista: TStringList;
begin
  FrmProaterComunidade := TFrmProaterComunidade.Create(Self);
  try
    Lista := DtmSistemaModulo.CriarListaChave(QryComunidade, 'COM_ID');
    QryComunidade.Insert;
    if (FrmProaterComunidade.ShowModal = mrOK) then
      begin
        if DtmSistemaModulo.RegistroDuplicadoNaLista(Lista, FrmProaterComunidade.DbLkpCmbBxComunidade.EditValue) then
          begin
            Msg.Aviso(PROATER_COMUNIDADE_DUPLICADA);
            QryComunidade.Cancel;
          end
        else
          begin
            QryComunidadeCOM_NOME.AsString := FrmProaterComunidade.DbLkpCmbBxComunidade.Text;
            QryComunidade.Post;
          end;
      end
    else
      QryComunidade.Cancel;
    Lista.Free;
  finally
    FrmProaterComunidade.Release;
    FrmProaterComunidade := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnCusEditarClick(Sender: TObject);
begin
  FrmProaterCusto := TFrmProaterCusto.Create(Self);
  try
    QryCusto.Edit;
    if (FrmProaterCusto.ShowModal = mrOK) then
      begin
        QryCustoPCT_DESCRICAO.AsString := FrmProaterCusto.DbLkpCmbBxCustoTipo.Text;
        QryCusto.Post;
      end
    else
      QryCusto.Cancel;
  finally
    FrmProaterCusto.Release;
    FrmProaterCusto := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnCusExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryCusto, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnCusIncluirClick(Sender: TObject);
begin
  FrmProaterCusto := TFrmProaterCusto.Create(Self);
  try
    QryCusto.Insert;
    if (FrmProaterCusto.ShowModal = mrOK) then
      begin
        QryCustoPCT_DESCRICAO.AsString := FrmProaterCusto.DbLkpCmbBxCustoTipo.Text;
        QryCusto.Post;
      end
    else
      QryCusto.Cancel;
  finally
    FrmProaterCusto.Release;
    FrmProaterCusto := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnDemExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryDemanda, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnDemIncluirClick(Sender: TObject);
begin
  FrmProaterDemanda := TFrmProaterDemanda.Create(Self);
  try
    QryDemanda.Insert;
    if (FrmProaterDemanda.ShowModal = mrOK) then
      begin
        QryDemandaCRG_DESCRICAO.AsString := FrmProaterDemanda.DbLkpCmbBxCargo.Text;
        QryDemanda.Post;
      end
    else
      QryDemanda.Cancel;
  finally
    FrmProaterDemanda.Release;
    FrmProaterDemanda := nil;
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

procedure TFrmProaterPrincipal.BtnOrcEditarClick(Sender: TObject);
begin
  FrmProaterOrcamento := TFrmProaterOrcamento.Create(Self);
  try
    QrySubOrcamento.Edit;
    if (FrmProaterOrcamento.ShowModal = mrOK) then
      begin
        QrySubOrcamento.Post;
      end
    else
      QrySubOrcamento.Cancel;
  finally
    FrmProaterOrcamento.Release;
    FrmProaterOrcamento := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnOrcExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QrySubOrcamento, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnOrcIncluirClick(Sender: TObject);
begin
  FrmProaterOrcamento := TFrmProaterOrcamento.Create(Self);
  try
    QrySubOrcamento.Insert;
    if (FrmProaterOrcamento.ShowModal = mrOK) then
      begin
        QrySubOrcamento.Post;
      end
    else
      QrySubOrcamento.Cancel;
  finally
    FrmProaterOrcamento.Release;
    FrmProaterOrcamento := nil;
  end;
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

procedure TFrmProaterPrincipal.BtnQuaEditarClick(Sender: TObject);
begin
  FrmProaterQualificacao := TFrmProaterQualificacao.Create(Self);
  try
    QryQualificacao.Edit;
    if (FrmProaterQualificacao.ShowModal = mrOK) then
      begin
        QryQualificacaoMET_DESCRICAO.AsString := FrmProaterQualificacao.DbLkpCmbBxMetodologia.Text;
        QryQualificacao.Post;
      end
    else
      QryQualificacao.Cancel;
  finally
    FrmProaterQualificacao.Release;
    FrmProaterQualificacao := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnQuaExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryQualificacao, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnQuaIncluirClick(Sender: TObject);
begin
  FrmProaterQualificacao := TFrmProaterQualificacao.Create(Self);
  try
    QryQualificacao.Insert;
    if (FrmProaterQualificacao.ShowModal = mrOK) then
      begin
        QryQualificacaoMET_DESCRICAO.AsString := FrmProaterQualificacao.DbLkpCmbBxMetodologia.Text;
        QryQualificacao.Post;
      end
    else
      QryQualificacao.Cancel;
  finally
    FrmProaterQualificacao.Release;
    FrmProaterQualificacao := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnSubEditarClick(Sender: TObject);
begin
  FrmProaterSubProjeto := TFrmProaterSubProjeto.Create(Self);
  try
    QrySubProjeto.Edit;
    if (FrmProaterSubProjeto.ShowModal = mrOK) then
      begin
        FrmProaterSubProjeto.DtStProjeto.Locate('PRJ_ID', QrySubProjetoPRJ_ID.Value, []);
        QrySubProjetoPRJ_NOME.AsString := FrmProaterSubProjeto.DbLkpCmbBxProjeto.Text;
        QrySubProjetoPRG_NOME.AsString := FrmProaterSubProjeto.DtStProjetoPRG_NOME.AsString;
        QrySubProjetoFUN_RESPONSAVEL.AsString := FrmProaterSubProjeto.DbLkpCmbBxResponsavel.Text;
        QrySubProjeto.Post;
      end
    else
      QrySubProjeto.Cancel;
  finally
    FrmProaterSubProjeto.Release;
    FrmProaterSubProjeto := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnSubExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QrySubProjeto, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnSubIncluirClick(Sender: TObject);
begin
  FrmProaterSubProjeto := TFrmProaterSubProjeto.Create(Self);
  try
    QrySubProjeto.Insert;
    if (FrmProaterSubProjeto.ShowModal = mrOK) then
      begin
        FrmProaterSubProjeto.DtStProjeto.Locate('PRJ_ID', QrySubProjetoPRJ_ID.Value, []);
        QrySubProjetoPRJ_NOME.AsString := FrmProaterSubProjeto.DbLkpCmbBxProjeto.Text;
        QrySubProjetoPRG_NOME.AsString := FrmProaterSubProjeto.DtStProjetoPRG_NOME.AsString;
        QrySubProjetoFUN_RESPONSAVEL.AsString := FrmProaterSubProjeto.DbLkpCmbBxResponsavel.Text;
        QrySubProjeto.Post;
      end
    else
      QrySubProjeto.Cancel;
  finally
    FrmProaterSubProjeto.Release;
    FrmProaterSubProjeto := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnVeiEditarClick(Sender: TObject);
begin
  FrmProaterVeiculo := TFrmProaterVeiculo.Create(Self);
  try
    QryVeiculo.Edit;
    if (FrmProaterVeiculo.ShowModal = mrOK) then
      begin
        QryVeiculoVTP_DESCRICAO.AsString := FrmProaterVeiculo.DbLkpCmbBxVeiculoTipo.Text;
        QryVeiculo.Post;
      end
    else
      QryVeiculo.Cancel;
  finally
    FrmProaterVeiculo.Release;
    FrmProaterVeiculo := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnVeiExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryVeiculo, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnVeiIncluirClick(Sender: TObject);
begin
  FrmProaterVeiculo := TFrmProaterVeiculo.Create(Self);
  try
    QryVeiculo.Insert;
    if (FrmProaterVeiculo.ShowModal = mrOK) then
      begin
        QryVeiculoVTP_DESCRICAO.AsString := FrmProaterVeiculo.DbLkpCmbBxVeiculoTipo.Text;
        QryVeiculo.Post;
      end
    else
      QryVeiculo.Cancel;
  finally
    FrmProaterVeiculo.Release;
    FrmProaterVeiculo := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnEqpEditarClick(Sender: TObject);
begin
  FrmProaterEquipamento := TFrmProaterEquipamento.Create(Self);
  try
    QryEquipamento.Edit;
    if (FrmProaterEquipamento.ShowModal = mrOK) then
      QryEquipamento.Post
    else
      QryEquipamento.Cancel;
  finally
    FrmProaterEquipamento.Release;
    FrmProaterEquipamento := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnEqpExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryEquipamento, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnEqpIncluirClick(Sender: TObject);
begin
  FrmProaterEquipamento := TFrmProaterEquipamento.Create(Self);
  try
    QryEquipamento.Insert;
    if (FrmProaterEquipamento.ShowModal = mrOK) then
      QryEquipamento.Post
    else
      QryEquipamento.Cancel;
  finally
    FrmProaterEquipamento.Release;
    FrmProaterEquipamento := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnEstatisticaClick(Sender: TObject);
begin
  VisualizarTexto('PRO_ESTATISTICA');
end;

procedure TFrmProaterPrincipal.BtnFncExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryFuncionario, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnFncIncluirClick(Sender: TObject);
var
  Lista: TStringList;
begin
  FrmPessoalFuncionarioBusca := TFrmPessoalFuncionarioBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    Lista := DtmSistemaModulo.CriarListaChave(QryFuncionario, 'FUN_ID');
    if (FrmPessoalFuncionarioBusca.ShowModal = mrOk) then
      try
        if DtmSistemaModulo.RegistroDuplicadoNaLista(Lista, FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.AsString) then
            Msg.Aviso(PROATER_TECNICO_DUPLICADO)
        else
          begin
            QryFuncionario.Insert;
            QryFuncionarioFUN_ID.Value := FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.Value;
            QryFuncionarioFUN_NOME.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_NOME.AsString;
            QryFuncionarioFUN_MATRICULA.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_MATRICULA.AsString;
            QryFuncionario.Post;
          end;
      except
        on E: Exception do
          if QryFuncionario.State = dsInsert then
            QryFuncionario.Cancel;
      end;
    Lista.Free;
  finally
    FrmPessoalFuncionarioBusca.Release;
    FrmPessoalFuncionarioBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProaterPrincipal.BtnMetaEditarClick(Sender: TObject);
begin
  FrmProaterMeta := TFrmProaterMeta.Create(Self);
  try
    QrySubMeta.Edit;
    if (FrmProaterMeta.ShowModal = mrOK) then
      begin
        QrySubMeta.Post;
      end
    else
      QrySubMeta.Cancel;
  finally
    FrmProaterMeta.Release;
    FrmProaterMeta := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnMetaExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QrySubMeta, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnMetaIncluirClick(Sender: TObject);
begin
  FrmProaterMeta := TFrmProaterMeta.Create(Self);
  try
    QrySubMeta.Insert;
    if (FrmProaterMeta.ShowModal = mrOK) then
      begin
        QrySubMeta.Post;
      end
    else
      QrySubMeta.Cancel;
  finally
    FrmProaterMeta.Release;
    FrmProaterMeta := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnMetEditarClick(Sender: TObject);
begin
  inherited;
  FrmProaterMetodo := TFrmProaterMetodo.Create(Self);
  try
    QrySubMetodo.Edit;
    if (FrmProaterMetodo.ShowModal = mrOK) then
      begin
        QrySubMetodoMET_DESCRICAO.AsString := FrmProaterMetodo.DbLkpCmbBxMetodo.Text;
        QrySubMetodo.Post;
      end
    else
      QrySubMetodo.Cancel;
  finally
    FrmProaterMetodo.Release;
    FrmProaterMetodo := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnMetExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QrySubMetodo, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnMetIncluirClick(Sender: TObject);
begin
  FrmProaterMetodo := TFrmProaterMetodo.Create(Self);
  try
    QrySubMetodo.Insert;
    if (FrmProaterMetodo.ShowModal = mrOK) then
      begin
        QrySubMetodoMET_DESCRICAO.AsString := FrmProaterMetodo.DbLkpCmbBxMetodo.Text;
        QrySubMetodo.Post;
      end
    else
      QrySubMetodo.Cancel;
  finally
    FrmProaterMetodo.Release;
    FrmProaterMetodo := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnMobEditarClick(Sender: TObject);
begin
  FrmProaterMobiliario := TFrmProaterMobiliario.Create(Self);
  try
    QryMobiliario.Edit;
    if (FrmProaterMobiliario.ShowModal = mrOK) then
      QryMobiliario.Post
    else
      QryMobiliario.Cancel;
  finally
    FrmProaterMobiliario.Release;
    FrmProaterMobiliario := nil;
  end;
end;

procedure TFrmProaterPrincipal.BtnMobExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryMobiliario, False);
      DtSrcPrincipalStateChange(Sender);
    end;
end;

procedure TFrmProaterPrincipal.BtnMobIncluirClick(Sender: TObject);
begin
  FrmProaterMobiliario := TFrmProaterMobiliario.Create(Self);
  try
    QryMobiliario.Insert;
    if (FrmProaterMobiliario.ShowModal = mrOK) then
      QryMobiliario.Post
    else
      QryMobiliario.Cancel;
  finally
    FrmProaterMobiliario.Release;
    FrmProaterMobiliario := nil;
  end;
end;

procedure TFrmProaterPrincipal.DtSrcAcordoStateChange(Sender: TObject);
begin
  BtnAcrIncluir.Enabled := QryAcordo.Active;
  BtnAcrEditar.Enabled := (QryAcordo.RecordCount > 0);
  BtnAcrExcluir.Enabled := (QryAcordo.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcComunidadeStateChange(Sender: TObject);
begin
  BtnComIncluir.Enabled := QryComunidade.Active;
  BtnComEditar.Enabled := (QryComunidade.RecordCount > 0);
  BtnComExcluir.Enabled := (QryComunidade.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcCustoStateChange(Sender: TObject);
begin
  BtnCusIncluir.Enabled := QryCusto.Active;
  BtnCusEditar.Enabled := (QryCusto.RecordCount > 0);
  BtnCusExcluir.Enabled := (QryCusto.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcDemandaStateChange(Sender: TObject);
begin
  BtnDemIncluir.Enabled := QryDemanda.Active;
  BtnDemExcluir.Enabled := (QryDemanda.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcEquipamentoStateChange(Sender: TObject);
begin
  BtnEqpIncluir.Enabled := QryEquipamento.Active;
  BtnEqpEditar.Enabled := (QryEquipamento.RecordCount > 0);
  BtnEqpExcluir.Enabled := (QryEquipamento.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcFuncionarioStateChange(Sender: TObject);
begin
  BtnFncIncluir.Enabled := QryFuncionario.Active;
  BtnFncExcluir.Enabled := (QryFuncionario.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcMobiliarioStateChange(Sender: TObject);
begin
  BtnMobIncluir.Enabled := QryMobiliario.Active;
  BtnMobEditar.Enabled := (QryMobiliario.RecordCount > 0);
  BtnMobExcluir.Enabled := (QryMobiliario.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcPotencialStateChange(Sender: TObject);
begin
  BtnPotIncluir.Enabled := QryPotencial.Active;
  BtnPotEditar.Enabled := (QryPotencial.RecordCount > 0);
  BtnPotExcluir.Enabled := (QryPotencial.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcQualificacaoStateChange(Sender: TObject);
begin
  BtnQuaIncluir.Enabled := QryQualificacao.Active;
  BtnQuaEditar.Enabled := (QryQualificacao.RecordCount > 0);
  BtnQuaExcluir.Enabled := (QryQualificacao.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcSubComunidadeStateChange(Sender: TObject);
begin
  BtnBenIncluir.Enabled := QrySubComunidade.Active and (QrySubProjeto.RecordCount > 0);
  BtnBenEditar.Enabled := (QrySubComunidade.RecordCount > 0);
  BtnBenExcluir.Enabled := (QrySubComunidade.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcSubMetaStateChange(Sender: TObject);
begin
  BtnMetaIncluir.Enabled := QrySubMeta.Active and (QrySubProjeto.RecordCount > 0);
  BtnMetaEditar.Enabled := (QrySubMeta.RecordCount > 0);
  BtnMetaExcluir.Enabled := (QrySubMeta.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcSubMetodoStateChange(Sender: TObject);
begin
  BtnMetIncluir.Enabled := QrySubMetodo.Active and (QrySubProjeto.RecordCount > 0);
  BtnMetEditar.Enabled := (QrySubMetodo.RecordCount > 0);
  BtnMetExcluir.Enabled := (QrySubMetodo.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcSubOrcamentoStateChange(Sender: TObject);
begin
  BtnOrcIncluir.Enabled := QrySubOrcamento.Active and (QrySubProjeto.RecordCount > 0);
  BtnOrcEditar.Enabled := (QrySubOrcamento.RecordCount > 0);
  BtnOrcExcluir.Enabled := (QrySubOrcamento.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcSubProjetoStateChange(Sender: TObject);
begin
  inherited;
  BtnPotIncluir.Enabled := QryPotencial.Active;
  BtnPotEditar.Enabled := (QryPotencial.RecordCount > 0);
  BtnPotExcluir.Enabled := (QryPotencial.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.DtSrcVeiculoStateChange(Sender: TObject);
begin
  BtnVeiIncluir.Enabled := QryVeiculo.Active;
  BtnVeiEditar.Enabled := (QryVeiculo.RecordCount > 0);
  BtnVeiExcluir.Enabled := (QryVeiculo.RecordCount > 0);

  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmProaterPrincipal.EditarItem(const FDQuery: TFDQuery; const Button: TcxButton);
begin
  if (not FDQuery.IsEmpty) and (Button.Enabled) and (Button.Visible) then
    Button.Click;
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
  QryAcordo.Open;
  QryFuncionario.Open;
  QryDemanda.Open;
  QryMobiliario.Open;
  QryEquipamento.Open;
  QryVeiculo.Open;
  QryCusto.Open;
  QryQualificacao.Open;
  QrySubProjeto.Open;
  QrySubMeta.Open;
  QrySubMetodo.Open;
  QrySubComunidade.Open;
  QrySubOrcamento.Open;

  DbDtEdtPROATER.SetFocus;
end;

procedure TFrmProaterPrincipal.GrdAcrTblDblClick(Sender: TObject);
begin
  EditarItem(QryAcordo, BtnAcrEditar);
end;

procedure TFrmProaterPrincipal.GrdBenTblDblClick(Sender: TObject);
begin
  EditarItem(QrySubComunidade, BtnBenEditar);
end;

procedure TFrmProaterPrincipal.GrdComTblDblClick(Sender: TObject);
begin
  EditarItem(QryComunidade, BtnComEditar);
end;

procedure TFrmProaterPrincipal.GrdCusTblDblClick(Sender: TObject);
begin
  EditarItem(QryCusto, BtnCusEditar);
end;

procedure TFrmProaterPrincipal.GrdEqpTblDblClick(Sender: TObject);
begin
  EditarItem(QryEquipamento, BtnEqpEditar);
end;

procedure TFrmProaterPrincipal.GrdMetaTblDblClick(Sender: TObject);
begin
  EditarItem(QrySubMeta, BtnMetaEditar);
end;

procedure TFrmProaterPrincipal.GrdMetTblDblClick(Sender: TObject);
begin
  EditarItem(QrySubMetodo, BtnMetEditar);
end;

procedure TFrmProaterPrincipal.GrdMobTblDblClick(Sender: TObject);
begin
  EditarItem(QryMobiliario, BtnMobEditar);
end;

procedure TFrmProaterPrincipal.GrdOrcTblDblClick(Sender: TObject);
begin
  EditarItem(QrySubOrcamento, BtnOrcEditar);
end;

procedure TFrmProaterPrincipal.GrdPotTblDblClick(Sender: TObject);
begin
  inherited;
  EditarItem(QryPotencial, BtnPotEditar);
end;

procedure TFrmProaterPrincipal.GrdQuaTblDblClick(Sender: TObject);
begin
  EditarItem(QryQualificacao, BtnQuaEditar);
end;

procedure TFrmProaterPrincipal.GrdSubTblDblClick(Sender: TObject);
begin
    EditarItem(QrySubProjeto, BtnSubEditar);
end;

procedure TFrmProaterPrincipal.GrdVeiTblDblClick(Sender: TObject);
begin
  EditarItem(QryVeiculo, BtnVeiEditar);
end;

procedure TFrmProaterPrincipal.PgCntrlPlanoChange(Sender: TObject);
begin
  if (PgCntrlPlano.ActivePage <> TbShtProjetos) then
    GrpBxSubprojeto.Parent := PgCntrlPlano.ActivePage;
end;

procedure TFrmProaterPrincipal.QryAcordoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryAcordo);
end;

procedure TFrmProaterPrincipal.QryAcordoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryAcordo, 'TAB_PRD_PROATER_ACORDO', 'PRA_ID');
  QryAcordoPRO_ID.Value := QryPrincipalPRO_ID.Value;
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

procedure TFrmProaterPrincipal.QryCustoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryCusto);
end;

procedure TFrmProaterPrincipal.QryCustoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryCusto, 'TAB_PRD_PROATER_CUSTO', 'PRC_ID');
  QryCustoPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QryDemandaBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryDemanda);
end;

procedure TFrmProaterPrincipal.QryDemandaNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryDemanda, 'TAB_PRD_PROATER_DEMANDA', 'DEM_ID');
  QryDemandaPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QryEquipamentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryEquipamento);
end;

procedure TFrmProaterPrincipal.QryEquipamentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryEquipamento, 'TAB_PRD_PROATER_EQUIPAMENTO', 'PRE_ID');
  QryEquipamentoPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QryFuncionarioBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryFuncionario);
end;

procedure TFrmProaterPrincipal.QryFuncionarioNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryFuncionario, 'TAB_PRD_PROATER_FUNCIONARIO', 'PRF_ID');
  QryFuncionarioPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QryMobiliarioBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryMobiliario);
end;

procedure TFrmProaterPrincipal.QryMobiliarioNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryMobiliario, 'TAB_PRD_PROATER_MOBILIARIO', 'PRM_ID');
  QryMobiliarioPRO_ID.Value := QryPrincipalPRO_ID.Value;
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

procedure TFrmProaterPrincipal.QryPrincipalPRO_PERIODO_INICIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  Ano, Mes: string;
begin
  Ano := Copy(Sender.AsString, 1, 4);
  Mes := Copy(Sender.AsString, 5, 2);
  if (Ano <> '') and (Mes <> '') then
    Text :=  Mes + '/' + Ano
  else
    Text := '  /    ';
end;

procedure TFrmProaterPrincipal.QryPrincipalPRO_PERIODO_INICIOSetText(Sender: TField; const Text: string);
begin
  if (Trim(Text) <> '') then
    Sender.AsInteger := StrToInt(Copy(Text, 3, 4) + Copy(Text, 1 ,2));
end;

procedure TFrmProaterPrincipal.QryQualificacaoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryQualificacao);
end;

procedure TFrmProaterPrincipal.QryQualificacaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryQualificacao, 'TAB_PRD_PROATER_QUALIFICACAO', 'QUA_ID');
  QryQualificacaoPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QrySubComunidadeBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QrySubComunidade);
end;

procedure TFrmProaterPrincipal.QrySubComunidadeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QrySubComunidade, 'TAB_PRD_SUBPROJETO_COMUNIDADE', 'PLC_ID');
  QrySubComunidadeSPR_ID.Value := QrySubProjetoSPR_ID.Value;
  QrySubComunidadePLC_ANO.Value := YearOf(Date);
end;

procedure TFrmProaterPrincipal.QrySubMetaBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QrySubMeta);
end;

procedure TFrmProaterPrincipal.QrySubMetaNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QrySubMeta, 'TAB_PRD_SUBPROJETO_META', 'MET_ID');
  QrySubMetaSPR_ID.Value := QrySubProjetoSPR_ID.Value;
end;

procedure TFrmProaterPrincipal.QrySubMetodoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QrySubMetodo);
end;

procedure TFrmProaterPrincipal.QrySubMetodoMET_MESGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  case QrySubMetodoMET_MES.Value of
    1: Text := MES_JANEIRO;
    2: Text := MES_FEVEREIRO;
    3: Text := MES_MARCO;
    4: Text := MES_ABRIL;
    5: Text := MES_MAIO;
    6: Text := MES_JUNHO;
    7: Text := MES_JULHO;
    8: Text := MES_AGOSTO;
    9: Text := MES_SETEMBRO;
    10: Text := MES_OUTUBRO;
    11: Text := MES_NOVEMBRO;
    12: Text := MES_DEZEMBRO;
  end;
end;

procedure TFrmProaterPrincipal.QrySubMetodoMET_MESSetText(Sender: TField; const Text: string);
begin
  if (Text = MES_JANEIRO) then QrySubMetodoMET_MES.Value := 1;
  if (Text = MES_FEVEREIRO) then QrySubMetodoMET_MES.Value := 2;
  if (Text = MES_MARCO) then QrySubMetodoMET_MES.Value := 3;
  if (Text = MES_ABRIL) then QrySubMetodoMET_MES.Value := 4;
  if (Text = MES_MAIO) then QrySubMetodoMET_MES.Value := 5;
  if (Text = MES_JUNHO) then QrySubMetodoMET_MES.Value := 6;
  if (Text = MES_JULHO) then QrySubMetodoMET_MES.Value := 7;
  if (Text = MES_AGOSTO) then QrySubMetodoMET_MES.Value := 8;
  if (Text = MES_SETEMBRO) then QrySubMetodoMET_MES.Value := 9;
  if (Text = MES_OUTUBRO) then QrySubMetodoMET_MES.Value := 10;
  if (Text = MES_NOVEMBRO) then QrySubMetodoMET_MES.Value := 11;
  if (Text = MES_DEZEMBRO) then QrySubMetodoMET_MES.Value := 12;

end;

procedure TFrmProaterPrincipal.QrySubMetodoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QrySubMetodo, 'TAB_PRD_SUBPROJETO_METODO', 'PSM_ID');
  QrySubMetodoSPR_ID.Value := QrySubProjetoSPR_ID.Value;
  QrySubMetodoMET_ANO.Value := YearOf(Date);
end;

procedure TFrmProaterPrincipal.QrySubOrcamentoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QrySubOrcamento);
end;

procedure TFrmProaterPrincipal.QrySubOrcamentoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QrySubOrcamento, 'TAB_PRD_SUBPROJETO_ORCAMENTO', 'ORC_ID');
  QrySubOrcamentoSPR_ID.Value := QrySubProjetoSPR_ID.Value;
  QrySubOrcamentoORC_ANO.Value := YearOf(Date);
end;

procedure TFrmProaterPrincipal.QrySubProjetoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QrySubProjeto);
end;

procedure TFrmProaterPrincipal.QrySubProjetoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QrySubProjeto, 'TAB_PRD_SUBPROJETO', 'SPR_ID');
  QrySubProjetoPRO_ID.Value := QryPrincipalPRO_ID.Value;
end;

procedure TFrmProaterPrincipal.QrySubProjetoSPR_ANO_MES_INICIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  Ano, Mes: string;
begin
  Ano := Copy(Sender.AsString, 1, 4);
  Mes := Copy(Sender.AsString, 5, 2);
  if (Ano <> '') and (Mes <> '') then
    Text :=  Mes + '/' + Ano
  else
    Text := '  /    ';
end;

procedure TFrmProaterPrincipal.QrySubProjetoSPR_ANO_MES_INICIOSetText(Sender: TField; const Text: string);
begin
  if (Trim(Text) <> '') then
    Sender.AsInteger := StrToInt(Copy(Text, 3, 4) + Copy(Text, 1 ,2));
end;

procedure TFrmProaterPrincipal.QryVeiculoBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryVeiculo);
end;

procedure TFrmProaterPrincipal.QryVeiculoNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryVeiculo, 'TAB_PRD_PROATER_VEICULO', 'VEI_ID');
  QryVeiculoPRO_ID.Value := QryPrincipalPRO_ID.Value;
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
