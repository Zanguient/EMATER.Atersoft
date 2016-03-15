unit Emater.Cadastro.Beneficiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxGroupBox, cxTextEdit, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxSpinEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxImageComboBox, cxMemo, cxCheckBox, Vcl.ExtCtrls, cxButtonEdit, MaskUtils, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, Data.SqlTimSt;

type
  TFrmCadastroBeneficiario = class(TFrmBaseTabela)
    DtSrcBeneficiarioCategoria: TDataSource;
    DtSrcBeneficiarioDivisao: TDataSource;
    DtSrcBeneficiarioDAP: TDataSource;
    DtSrcFamilia: TDataSource;
    DtSrcBeneficiarioProducao: TDataSource;
    DtSrcCategoriaDisponivel: TDataSource;
    DtSrcDivisaoDisponivel: TDataSource;
    DtSrcProducaoBem: TDataSource;
    DtSrcProducaoSemovente: TDataSource;
    DtSrcProducaoAtividade: TDataSource;
    DtSrcProducaoProduto: TDataSource;
    PnlTop: TPanel;
    Image: TImage;
    LblTitulo: TLabel;
    LblReplicacao: TLabel;
    PgCntrlBeneficiario: TcxPageControl;
    TbShtBeneficiario: TcxTabSheet;
    GRpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    DbEdtNome: TcxDBTextEdit;
    DbEdtApelido: TcxDBTextEdit;
    DbEdtNascimento: TcxDBDateEdit;
    DbEdtRG: TcxDBTextEdit;
    DbEdtOrgao: TcxDBTextEdit;
    DbEdtDataEmissao: TcxDBDateEdit;
    DBImgCmbBxSexo: TcxDBImageComboBox;
    DbLkpCmbBxEstadoCivil: TcxDBLookupComboBox;
    DbEdtNacionalidade: TcxDBTextEdit;
    DbEdtMae: TcxDBTextEdit;
    DbEdtMembros: TcxDBSpinEdit;
    DbLkpCmbBxEscolaridade: TcxDBLookupComboBox;
    DbEdtCPF: TcxDBMaskEdit;
    DbBtnEdtNaturalidade: TcxDBButtonEdit;
    GrpBxEndereco: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label31: TLabel;
    DbEdtEndereco: TcxDBTextEdit;
    DbEdtNumero: TcxDBTextEdit;
    DbEdtComplemento: TcxDBTextEdit;
    DbEdtBairro: TcxDBTextEdit;
    DbEdtEmail: TcxDBTextEdit;
    DbLkpCmbBxMunicipio: TcxDBLookupComboBox;
    DbEdtUF: TcxDBTextEdit;
    DbEdtCEP: TcxDBMaskEdit;
    DbLkpCmbBxComunidade: TcxDBLookupComboBox;
    DbLkpCmbBxOrganizacao: TcxDBLookupComboBox;
    BtnComunidadeBuscar: TcxButton;
    BtnOrganizacaoBuscar: TcxButton;
    DbImgCmbBxRibeirinho: TcxDBImageComboBox;
    DbEdtTelefone1: TcxDBMaskEdit;
    DbEdtTelefone2: TcxDBMaskEdit;
    GrpBxRegistro: TcxGroupBox;
    Label54: TLabel;
    Label30: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label26: TLabel;
    Label37: TLabel;
    Label56: TLabel;
    DbLkpCmbBxTecnico: TcxDBLookupComboBox;
    DbLkpCmbBxMotivo: TcxDBLookupComboBox;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    DbImgCmbBxSituacao: TcxDBImageComboBox;
    DbEdtData: TcxDBDateEdit;
    DbEdtModificadoData: TcxDBTextEdit;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    LblCategoria: TLabel;
    LblAtividade: TLabel;
    GrdBenCtg: TcxGrid;
    GrdBenCtgTbl: TcxGridDBTableView;
    GrdBenCtgTblCAT_MARCADO: TcxGridDBColumn;
    GrdBenCtgTblCAT_DESCRICAO: TcxGridDBColumn;
    GrdBenCtgLvl: TcxGridLevel;
    GrdBenAtv: TcxGrid;
    GrdBenAtvTbl: TcxGridDBTableView;
    GrdBenAtvTblDIV_MARCADO: TcxGridDBColumn;
    GrdBenAtvTblDIV_DESCRICAO: TcxGridDBColumn;
    GrdBenAtvLvl: TcxGridLevel;
    TbShtIdentificacao: TcxTabSheet;
    TbShtDAP: TcxTabSheet;
    LblDAP: TLabel;
    GrpBxDAP: TcxGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label24: TLabel;
    DbEdtDAPEmissao: TcxDBDateEdit;
    DbEdtDAPValidade: TcxDBDateEdit;
    DbLkpCmbBxDAPTipo: TcxDBLookupComboBox;
    DbLkpCmbBxOrigem: TcxDBLookupComboBox;
    DbEdtNIS: TcxDBMaskEdit;
    DbEdtDAPNumero: TcxDBMaskEdit;
    BtnDAPNovo: TcxButton;
    BtnDAPSalvar: TcxButton;
    BtnDAPCancelar: TcxButton;
    BtnDAPExcluir: TcxButton;
    GrdDAP: TcxGrid;
    GrdDAPTbl: TcxGridDBTableView;
    GrdDAPTblBDP_NIS: TcxGridDBColumn;
    GrdDAPTblDTP_DESCRICAO: TcxGridDBColumn;
    GrdDAPTblBDP_DAP: TcxGridDBColumn;
    GrdDAPTblBDP_EMISSAO: TcxGridDBColumn;
    GrdDAPTblBDP_VALIDADE: TcxGridDBColumn;
    GrdDAPLvl: TcxGridLevel;
    TbShtSecundaria: TcxTabSheet;
    PgCntrlUnidade: TcxPageControl;
    TbShtFamilia: TcxTabSheet;
    Label38: TLabel;
    BtnFamExcluir: TcxButton;
    cxGroupBox5: TcxGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DbEdtFamiliaNascimento: TcxDBDateEdit;
    DbedtFamiliaNome: TcxDBTextEdit;
    DbEdtFamiliaRGNumero: TcxDBTextEdit;
    DbEdtFamiliaRGEmissor: TcxDBTextEdit;
    DbEdtFamiliaRGData: TcxDBDateEdit;
    DbChckBxTrabalha: TcxDBCheckBox;
    DbMemoFamiliaAtividades: TcxDBMemo;
    DbImgCmbBxFamiliaSexo: TcxDBImageComboBox;
    DbLkpCmbBxGrau: TcxDBLookupComboBox;
    DbLkpCmbBxFamiliaEstadoCivil: TcxDBLookupComboBox;
    DbLkpCmbBxFamiliaEscolaridade: TcxDBLookupComboBox;
    DbEdtFamiliaCPF: TcxDBMaskEdit;
    DbBtnEdtFamiliaNaturalidade: TcxDBButtonEdit;
    GrdFam: TcxGrid;
    GrdFamTbl: TcxGridDBTableView;
    GrdFamTblPAR_DESCRICAO: TcxGridDBColumn;
    GrdFamTblFAM_CPF: TcxGridDBColumn;
    GrdFamTblFAM_NOME: TcxGridDBColumn;
    GrdFamTblFAM_NASCIMENTO: TcxGridDBColumn;
    GrdFamTblFAM_UPF: TcxGridDBColumn;
    GrdFamLvl: TcxGridLevel;
    BtnFamNovo: TcxButton;
    BtnFamSalvar: TcxButton;
    BtnFamCancelar: TcxButton;
    TbShtUnidade: TcxTabSheet;
    Label50: TLabel;
    GrdBenPrdMn: TcxGrid;
    GrdBenPrdMnTbl: TcxGridDBTableView;
    GrdBenPrdMnTblPRO_DENOMINACAO: TcxGridDBColumn;
    GrdBenPrdMnTblCID_NOME: TcxGridDBColumn;
    GrdBenPrdMnTblPRO_CARACTERIZACAO_DOMINIO: TcxGridDBColumn;
    GrdBenPrdMnTblPRO_DOCUMENTO_DOMINIO: TcxGridDBColumn;
    GrdBenPrdMnTblBPR_DATA: TcxGridDBColumn;
    GrdBenPrdMnLvl: TcxGridLevel;
    BtnPrdIncluir: TcxButton;
    BtnPrdExcluir: TcxButton;
    BtnPrdVisualizar: TcxButton;
    BtnPrdEditar: TcxButton;
    TbShtProducao: TcxTabSheet;
    Label51: TLabel;
    GrdBenPrd: TcxGrid;
    GrdBenPrdTbl: TcxGridDBTableView;
    GrdBenPrdTblPRO_DENOMINACAO: TcxGridDBColumn;
    GrdBenPrdTblCID_NOME: TcxGridDBColumn;
    GrdBenPrdTblPRO_CARACTERIZACAO_DOMINIO: TcxGridDBColumn;
    GrdBenPrdTblPRO_DOCUMENTO_DOMINIO: TcxGridDBColumn;
    GrdBenPrdTblBPR_DATA: TcxGridDBColumn;
    GrdBenPrdLvl: TcxGridLevel;
    PgCntrlCaracterizacao: TcxPageControl;
    TbShtBenfeitorias: TcxTabSheet;
    GrdPrdBem: TcxGrid;
    GrdPrdBemTbl: TcxGridDBTableView;
    GrdPrdBemTblBEM_DESCRICAO: TcxGridDBColumn;
    GrdPrdBemTblBEM_QUANTIDADE: TcxGridDBColumn;
    GrdPrdBemTblBEM_ESTADO: TcxGridDBColumn;
    GrdPrdBemTblCLS_DESCRICAO: TcxGridDBColumn;
    GrdPrdBemLvl: TcxGridLevel;
    TbShtMaquinas: TcxTabSheet;
    GrdPrdMaq: TcxGrid;
    GrdPrdMaqTbl: TcxGridDBTableView;
    GrdPrdMaqTblBEM_DESCRICAO: TcxGridDBColumn;
    GrdPrdMaqTblBEM_QUANTIDADE: TcxGridDBColumn;
    GrdPrdMaqTblBEM_ESTADO: TcxGridDBColumn;
    GrdPrdMaqTblCLS_DESCRICAO: TcxGridDBColumn;
    GrdPrdMaqLvl: TcxGridLevel;
    TbShtSemoventes: TcxTabSheet;
    GrdPrdSem: TcxGrid;
    GrdPrdSemTbl: TcxGridDBTableView;
    GrdPrdSemTblPRD_DESCRICAO: TcxGridDBColumn;
    GrdPrdSemTblPRD_QUANTIDADE: TcxGridDBColumn;
    GrdPrdSemTblDIV_DESCRICAO: TcxGridDBColumn;
    GrdPrdSemTblGRP_DESCRICAO: TcxGridDBColumn;
    GrdPrdSemTblCLS_DESCRICAO: TcxGridDBColumn;
    GrdPrdSemLvl: TcxGridLevel;
    TbShtAtividades: TcxTabSheet;
    GrdPrdAtv: TcxGrid;
    GrdPrdAtvTbl: TcxGridDBTableView;
    GrdPrdAtvTblATV_PERIODO_PLANTIO: TcxGridDBColumn;
    GrdPrdAtvTblSIP_DESCRICAO: TcxGridDBColumn;
    GrdPrdAtvTblPRD_DESCRICAO: TcxGridDBColumn;
    GrdPrdAtvTblUNI_DESCRICAO: TcxGridDBColumn;
    GrdPrdAtvTblATV_QUANTIDADE: TcxGridDBColumn;
    GrdPrdAtvLvl: TcxGridLevel;
    GrdPrd: TcxGrid;
    GrdPrdTbl: TcxGridDBTableView;
    GrdPrdTblPRP_DESCRICAO_PRODUTO_DERIVADO: TcxGridDBColumn;
    GrdPrdTblPRP_QTDE_CONSUMIDA: TcxGridDBColumn;
    GrdPrdTblPRP_QTDE_COMERCIALIZADA: TcxGridDBColumn;
    GrdPrdTblUNI_UNIDADE: TcxGridDBColumn;
    GrdPrdTblPRP_VALOR: TcxGridDBColumn;
    GrdPrdTblPRP_VALOR_TOTAL: TcxGridDBColumn;
    GrdPrdLvl: TcxGridLevel;
    GrdPrdBemTblBEM_DATA: TcxGridDBColumn;
    GrdPrdMaqTblBEM_DATA: TcxGridDBColumn;
    BtnPrdNovo: TcxButton;
    TbShtProgramas: TcxTabSheet;
    DtSrcBeneficiarioProgramaGoverno: TDataSource;
    DtSrcProgramaGovernoDisponivel: TDataSource;
    LblPrgDis: TLabel;
    LblPrg: TLabel;
    LblProgramas: TLabel;
    Shape3: TShape;
    GrdPrgDis: TcxGrid;
    GrdPrgDisTbl: TcxGridDBTableView;
    GrdPrgDisTblPRG_MARCADO: TcxGridDBColumn;
    GrdPrgDisTblPRG_DESCRICAO: TcxGridDBColumn;
    GrdPrgDisLvl: TcxGridLevel;
    GrdPrg: TcxGrid;
    GrdPrgTbl: TcxGridDBTableView;
    GrdPrgTblPRG_MARCADO: TcxGridDBColumn;
    GrdPrgTblPRG_DESCRICAO: TcxGridDBColumn;
    GrdPrgTblPRG_DATA: TcxGridDBColumn;
    GrdPrgLvl: TcxGridLevel;
    BtnPrgRemover: TcxButton;
    BtnPrgAdicionar: TcxButton;
    LblCatDis: TLabel;
    LblCat: TLabel;
    LblDvsDis: TLabel;
    LblDvs: TLabel;
    LblDivisoes: TLabel;
    LblCategorias: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    GrdCatDis: TcxGrid;
    GrdCatDisTbl: TcxGridDBTableView;
    GrdCatDisTblCAT_ID: TcxGridDBColumn;
    GrdCatDisTblCAT_MARCADO: TcxGridDBColumn;
    GrdCatDisTblCAT_DESCRICAO: TcxGridDBColumn;
    GrdCatDisLvl: TcxGridLevel;
    GrdCat: TcxGrid;
    GrdCatTbl: TcxGridDBTableView;
    GrdCatTblCAT_MARCADO: TcxGridDBColumn;
    GrdCatTblCAT_DESCRICAO: TcxGridDBColumn;
    GrdCatLvl: TcxGridLevel;
    BtnCatRemover: TcxButton;
    BtnCatAdicionar: TcxButton;
    GrdDvsDis: TcxGrid;
    GrdDvsDisTbl: TcxGridDBTableView;
    GrdDvsDisTblDIV_MARCADO: TcxGridDBColumn;
    GrdDvsDisTblDIV_DESCRICAO: TcxGridDBColumn;
    GrdDvsDisLvl: TcxGridLevel;
    GrdDvs: TcxGrid;
    GrdDvsTbl: TcxGridDBTableView;
    GrdDvsTblDIV_MARCADO: TcxGridDBColumn;
    GrdDvsTblDIV_DESCRICAO: TcxGridDBColumn;
    GrdDvsLvl: TcxGridLevel;
    BtnDvsRemover: TcxButton;
    BtnDvsAdicionar: TcxButton;
    QryPrincipalBEN_ID: TLargeintField;
    QryPrincipalBEN_DATA: TDateField;
    QryPrincipalBEN_SITUACAO: TSmallintField;
    QryPrincipalBEN_NOME: TStringField;
    QryPrincipalBEN_NOME_MAE: TStringField;
    QryPrincipalBEN_APELIDO: TStringField;
    QryPrincipalBEN_MEMBROS: TSmallintField;
    QryPrincipalBEN_SEXO: TStringField;
    QryPrincipalBEN_NASCIMENTO: TDateField;
    QryPrincipalBEN_NACIONALIDADE: TStringField;
    QryPrincipalBEN_CPF: TStringField;
    QryPrincipalBEN_RG_NUMERO: TStringField;
    QryPrincipalBEN_RG_ORGAO: TStringField;
    QryPrincipalBEN_RG_DATA: TDateField;
    QryPrincipalBEN_RIBEIRINHO: TSmallintField;
    QryPrincipalBEN_ENDERECO: TStringField;
    QryPrincipalBEN_NUMERO: TStringField;
    QryPrincipalBEN_COMPLEMENTO: TStringField;
    QryPrincipalBEN_BAIRRO: TStringField;
    QryPrincipalBEN_CEP: TStringField;
    QryPrincipalBEN_TELEFONE: TStringField;
    QryPrincipalBEN_CELULAR: TStringField;
    QryPrincipalBEN_EMAIL: TStringField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalCID_ID_NATURALIDADE: TIntegerField;
    QryPrincipalCID_ID_ENDERECO: TIntegerField;
    QryPrincipalECV_ID: TIntegerField;
    QryPrincipalESC_ID: TIntegerField;
    QryPrincipalCOM_ID: TIntegerField;
    QryPrincipalORG_ID: TIntegerField;
    QryPrincipalFUN_ID: TIntegerField;
    QryPrincipalUND_ID: TIntegerField;
    QryPrincipalMOT_ID: TIntegerField;
    QryPrincipalUFE_ID: TStringField;
    QryPrincipalBEN_MODIFICADO_USUARIO_NOME: TStringField;
    QryPrincipalCID_NOME_NATURALIDADE: TStringField;
    QryBeneficiarioCPF: TFDQuery;
    QryBeneficiarioCPFBEN_NOME: TStringField;
    QryBeneficiarioCPFUND_NOME: TStringField;
    QryBeneficiarioCPFBEN_EXCLUIDO: TStringField;
    QryProducaoAtividade: TFDQuery;
    UpdtProducaoAtividade: TFDUpdateSQL;
    UpdtBeneficiarioCategoria: TFDUpdateSQL;
    QryBeneficiarioCategoria: TFDQuery;
    QryCategoriaDisponivel: TFDQuery;
    QryBeneficiarioDivisao: TFDQuery;
    UpdtBeneficiarioDivisao: TFDUpdateSQL;
    QryBeneficiarioDivisaoBDI_ID: TLargeintField;
    QryBeneficiarioDivisaoBEN_ID: TLargeintField;
    QryBeneficiarioDivisaoDIV_ID: TIntegerField;
    QryBeneficiarioDivisaoREG_EXCLUIDO: TSmallintField;
    QryBeneficiarioDivisaoREG_REPLICADO: TSmallintField;
    QryBeneficiarioDivisaoREG_USUARIO: TStringField;
    QryBeneficiarioDivisaoREG_MODIFICADO: TSQLTimeStampField;
    QryBeneficiarioDivisaoDIV_DESCRICAO: TStringField;
    QryBeneficiarioDivisaoDIV_TIPO: TStringField;
    QryBeneficiarioDivisaoDIV_MARCADO: TIntegerField;
    QryDivisaoDisponivel: TFDQuery;
    QryDivisaoDisponivelDIV_ID: TIntegerField;
    QryDivisaoDisponivelDIV_DESCRICAO: TStringField;
    QryBeneficiarioProgramaGoverno: TFDQuery;
    UpdtBeneficiarioProgramaGoverno: TFDUpdateSQL;
    QryBeneficiarioProgramaGovernoBPR_ID: TLargeintField;
    QryBeneficiarioProgramaGovernoBEN_ID: TLargeintField;
    QryBeneficiarioProgramaGovernoPRG_ID: TIntegerField;
    QryBeneficiarioProgramaGovernoPRG_DATA: TDateField;
    QryBeneficiarioProgramaGovernoREG_EXCLUIDO: TSmallintField;
    QryBeneficiarioProgramaGovernoREG_REPLICADO: TSmallintField;
    QryBeneficiarioProgramaGovernoREG_USUARIO: TStringField;
    QryBeneficiarioProgramaGovernoREG_MODIFICADO: TSQLTimeStampField;
    QryBeneficiarioProgramaGovernoPRG_DESCRICAO: TStringField;
    QryProgramaGovernoDisponivel: TFDQuery;
    QryProgramaGovernoDisponivelPRG_ID: TIntegerField;
    QryProgramaGovernoDisponivelPRG_DESCRICAO: TStringField;
    QryFamiliaCPF: TFDQuery;
    QryFamiliaCPFTOTAL: TIntegerField;
    QryBeneficiarioDAP: TFDQuery;
    UpdtBeneficiarioDAP: TFDUpdateSQL;
    QryBeneficiarioDAPBDP_ID: TLargeintField;
    QryBeneficiarioDAPBDP_NIS: TStringField;
    QryBeneficiarioDAPBDP_DAP: TStringField;
    QryBeneficiarioDAPBDP_EMISSAO: TDateField;
    QryBeneficiarioDAPBDP_VALIDADE: TDateField;
    QryBeneficiarioDAPBEN_ID: TLargeintField;
    QryBeneficiarioDAPDTP_ID: TIntegerField;
    QryBeneficiarioDAPORG_ID: TIntegerField;
    QryBeneficiarioDAPREG_EXCLUIDO: TSmallintField;
    QryBeneficiarioDAPREG_REPLICADO: TSmallintField;
    QryBeneficiarioDAPREG_USUARIO: TStringField;
    QryBeneficiarioDAPREG_MODIFICADO: TSQLTimeStampField;
    QryBeneficiarioDAPDTP_DESCRICAO: TStringField;
    UpdtFamilia: TFDUpdateSQL;
    QryFamilia: TFDQuery;
    QryFamiliaFAM_ID: TLargeintField;
    QryFamiliaFAM_NOME: TStringField;
    QryFamiliaFAM_SEXO: TStringField;
    QryFamiliaFAM_NASCIMENTO: TDateField;
    QryFamiliaFAM_CPF: TStringField;
    QryFamiliaFAM_RG_NUMERO: TStringField;
    QryFamiliaFAM_RG_ORGAO: TStringField;
    QryFamiliaFAM_RG_DATA: TDateField;
    QryFamiliaFAM_UPF: TSmallintField;
    QryFamiliaFAM_UPF_ATIVIDADE: TMemoField;
    QryFamiliaECV_ID: TIntegerField;
    QryFamiliaESC_ID: TIntegerField;
    QryFamiliaPAR_ID: TIntegerField;
    QryFamiliaCID_ID: TIntegerField;
    QryFamiliaBEN_ID: TLargeintField;
    QryFamiliaREG_EXCLUIDO: TSmallintField;
    QryFamiliaREG_REPLICADO: TSmallintField;
    QryFamiliaREG_USUARIO: TStringField;
    QryFamiliaREG_MODIFICADO: TSQLTimeStampField;
    QryFamiliaPAR_DESCRICAO: TStringField;
    QryFamiliaCID_NOME_NATURALIDADE: TStringField;
    QryBeneficiarioProducao: TFDQuery;
    UpdtBeneficiarioProducao: TFDUpdateSQL;
    QryBeneficiarioProducaoBPR_ID: TLargeintField;
    QryBeneficiarioProducaoBEN_ID: TLargeintField;
    QryBeneficiarioProducaoPRO_ID: TIntegerField;
    QryBeneficiarioProducaoBPR_DATA: TDateField;
    QryBeneficiarioProducaoREG_EXCLUIDO: TSmallintField;
    QryBeneficiarioProducaoREG_REPLICADO: TSmallintField;
    QryBeneficiarioProducaoREG_USUARIO: TStringField;
    QryBeneficiarioProducaoREG_MODIFICADO: TSQLTimeStampField;
    QryBeneficiarioProducaoPRO_DENOMINACAO: TStringField;
    QryBeneficiarioProducaoCID_NOME: TStringField;
    QryBeneficiarioProducaoPRO_CARACTERIZACAO_DOMINIO: TStringField;
    QryBeneficiarioProducaoPRO_DOCUMENTO_DOMINIO: TStringField;
    QryProducaoBem: TFDQuery;
    UpDtProducaoBem: TFDUpdateSQL;
    QryProducaoSemovente: TFDQuery;
    UpdtProducaoSemovente: TFDUpdateSQL;
    QryProducaoProduto: TFDQuery;
    UpdtProducaoProduto: TFDUpdateSQL;
    QryProducaoBemPRO_ID: TIntegerField;
    QryProducaoBemBEM_ID: TIntegerField;
    QryProducaoBemBEM_ESTADO: TSmallintField;
    QryProducaoBemBEM_DATA: TDateField;
    QryProducaoBemBEM_QUANTIDADE: TSmallintField;
    QryProducaoBemBEM_DESCRICAO: TStringField;
    QryProducaoBemCLS_ID: TIntegerField;
    QryProducaoBemCLS_DESCRICAO: TStringField;
    QryProducaoSemoventePRO_ID: TIntegerField;
    QryProducaoSemoventePRD_ID: TIntegerField;
    QryProducaoSemoventePRD_QUANTIDADE: TCurrencyField;
    QryProducaoSemoventePRD_DESCRICAO: TStringField;
    QryProducaoSemoventeDIV_DESCRICAO: TStringField;
    QryProducaoSemoventeGRP_DESCRICAO: TStringField;
    QryProducaoSemoventeCLS_DESCRICAO: TStringField;
    QryProducaoAtividadeATV_ID: TLargeintField;
    QryProducaoAtividadeATV_SAFRA_INICIO: TIntegerField;
    QryProducaoAtividadeATV_SAFRA_FIM: TIntegerField;
    QryProducaoAtividadeATV_PERIODO_PLANTIO: TIntegerField;
    QryProducaoAtividadeATV_AREA_PLANTADA: TCurrencyField;
    QryProducaoAtividadeATV_AREA_COLHIDA: TCurrencyField;
    QryProducaoAtividadeATV_QUANTIDADE: TCurrencyField;
    QryProducaoAtividadeATV_DATA_VISITA: TDateField;
    QryProducaoAtividadeREG_EXCLUIDO: TSmallintField;
    QryProducaoAtividadePRO_ID: TIntegerField;
    QryProducaoAtividadeSIP_ID: TIntegerField;
    QryProducaoAtividadePRD_ID: TIntegerField;
    QryProducaoAtividadeUNI_ID: TIntegerField;
    QryProducaoAtividadeUND_ID: TIntegerField;
    QryProducaoAtividadeFUN_ID: TIntegerField;
    QryProducaoAtividadeSIP_DESCRICAO: TStringField;
    QryProducaoAtividadePRD_DESCRICAO: TStringField;
    QryProducaoAtividadeUNI_DESCRICAO: TStringField;
    QryProducaoProdutoPRP_ID: TIntegerField;
    QryProducaoProdutoPRP_TIPO: TSmallintField;
    QryProducaoProdutoPRP_DESCRICAO: TStringField;
    QryProducaoProdutoPRP_QTDE_CONSUMIDA: TCurrencyField;
    QryProducaoProdutoPRP_QTDE_COMERCIALIZADA: TCurrencyField;
    QryProducaoProdutoPRP_VALOR: TBCDField;
    QryProducaoProdutoREG_EXCLUIDO: TSmallintField;
    QryProducaoProdutoATV_ID: TLargeintField;
    QryProducaoProdutoPRD_ID: TIntegerField;
    QryProducaoProdutoDEV_ID: TIntegerField;
    QryProducaoProdutoUNI_ID: TIntegerField;
    QryProducaoProdutoPRP_DESCRICAO_PRODUTO_DERIVADO: TStringField;
    QryProducaoProdutoUNI_UNIDADE: TStringField;
    QryProducaoAtividadeATV_AREA_PERDIDA: TCurrencyField;
    QryProducaoAtividadeATV_SAFRA_INICIO_FIM: TStringField;
    QryProducaoProdutoPRP_VALOR_TOTAL: TCurrencyField;
    QryBeneficiarioCategoriaBCA_ID: TLargeintField;
    QryBeneficiarioCategoriaBEN_ID: TLargeintField;
    QryBeneficiarioCategoriaCAT_ID: TIntegerField;
    QryBeneficiarioCategoriaCAT_DESCRICAO: TStringField;
    QryBeneficiarioCategoriaREG_EXCLUIDO: TSmallintField;
    QryBeneficiarioCategoriaREG_REPLICADO: TSmallintField;
    QryBeneficiarioCategoriaREG_USUARIO: TStringField;
    QryBeneficiarioCategoriaREG_MODIFICADO: TSQLTimeStampField;
    QryBeneficiarioCategoriaCAT_MARCADO: TIntegerField;
    QryCategoriaDisponivelCAT_ID: TIntegerField;
    QryCategoriaDisponivelCAT_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCatRemoverClick(Sender: TObject);
    procedure BtnDvsRemoverClick(Sender: TObject);
    procedure BtnCatAdicionarClick(Sender: TObject);
    procedure BtnDvsAdicionarClick(Sender: TObject);
    procedure GrdCatTblDblClick(Sender: TObject);
    procedure GrdDvsTblDblClick(Sender: TObject);
    procedure GrdDvsDisTblDblClick(Sender: TObject);
    procedure GrdCatDisTblDblClick(Sender: TObject);
    procedure BtnDAPNovoClick(Sender: TObject);
    procedure BtnDAPSalvarClick(Sender: TObject);
    procedure BtnDAPCancelarClick(Sender: TObject);
    procedure BtnDAPExcluirClick(Sender: TObject);
    procedure DtSrcBeneficiarioDAPStateChange(Sender: TObject);
    procedure DbEdtNomePropertiesChange(Sender: TObject);
    procedure BtnFamNovoClick(Sender: TObject);
    procedure BtnFamSalvarClick(Sender: TObject);
    procedure BtnFamCancelarClick(Sender: TObject);
    procedure BtnFamExcluirClick(Sender: TObject);
    procedure DtSrcFamiliaStateChange(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DbChckBxTrabalhaClick(Sender: TObject);
    procedure BtnPrdIncluirClick(Sender: TObject);
    procedure BtnPrdExcluirClick(Sender: TObject);
    procedure DtSrcBeneficiarioProducaoStateChange(Sender: TObject);
    procedure GrdBenPrdMnTblDblClick(Sender: TObject);
    procedure BtnPrdVisualizarClick(Sender: TObject);
    procedure BtnComunidadeBuscarClick(Sender: TObject);
    procedure BtnOrganizacaoBuscarClick(Sender: TObject);
    procedure BtnPrdEditarClick(Sender: TObject);
    procedure GrdBenPrdTblDblClick(Sender: TObject);
    procedure TbShtBenfeitoriasShow(Sender: TObject);
    procedure TbShtMaquinasShow(Sender: TObject);
    procedure TbShtSemoventesShow(Sender: TObject);
    procedure TbShtAtividadesShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnRelatorioClick(Sender: TObject);
    procedure DbBtnEdtNaturalidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure DbBtnEdtFamiliaNaturalidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure TbShtDAPShow(Sender: TObject);
    procedure TbShtFamiliaShow(Sender: TObject);
    procedure TbShtUnidadeShow(Sender: TObject);
    procedure TbShtProducaoShow(Sender: TObject);
    procedure BtnPrdNovoClick(Sender: TObject);
    procedure DbEdtCPFExit(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnPrgAdicionarClick(Sender: TObject);
    procedure BtnPrgRemoverClick(Sender: TObject);
    procedure GrdPrgDisTblDblClick(Sender: TObject);
    procedure GrdPrgTblDblClick(Sender: TObject);
    procedure QryBeneficiarioProgramaGovernoAfterPost(DataSet: TDataSet);
    procedure QryBeneficiarioProgramaGovernoNewRecord(DataSet: TDataSet);
    procedure QryBeneficiarioDAPAfterPost(DataSet: TDataSet);
    procedure QryBeneficiarioDAPBeforePost(DataSet: TDataSet);
    procedure QryBeneficiarioDAPNewRecord(DataSet: TDataSet);
    procedure QryFamiliaAfterPost(DataSet: TDataSet);
    procedure QryFamiliaAfterScroll(DataSet: TDataSet);
    procedure QryFamiliaBeforePost(DataSet: TDataSet);
    procedure QryFamiliaNewRecord(DataSet: TDataSet);
    procedure QryBeneficiarioProducaoAfterPost(DataSet: TDataSet);
    procedure QryProducaoAtividadeCalcFields(DataSet: TDataSet);
    procedure QryProducaoProdutoCalcFields(DataSet: TDataSet);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
    procedure QryPrincipalAfterScroll(DataSet: TDataSet);
    procedure QryPrincipalBeforePost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
    procedure QryBeneficiarioCategoriaAfterPost(DataSet: TDataSet);
    procedure QryBeneficiarioCategoriaNewRecord(DataSet: TDataSet);
    procedure QryBeneficiarioDivisaoAfterPost(DataSet: TDataSet);
    procedure QryBeneficiarioDivisaoNewRecord(DataSet: TDataSet);
  private
    procedure AtualizarReplicacaoPendente;
    function FamiliaExisteCPF(const ABeneficiarioID: Int64; const ACPF: string; const ID: Int64): Boolean;
    procedure AplicarUltimaAlteracao;
    procedure RecenteRegistrar;
  end;

var
  FrmCadastroBeneficiario: TFrmCadastroBeneficiario;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Cadastro.Modulo, Emater.Dne.Modulo, Emater.Base.Consts,
  Emater.Dialogo.Modulo, Emater.Sistema.Modulo, Emater.Cadastro.Consts, Emater.Pessoal.Modulo, Emater.Cadastro.Unidade.Busca,
  Emater.Cadastro.Unidade, Emater.Cadastro.Comunidade, Emater.Cadastro.Organizacao, Emater.Log.Modulo,
  Emater.Relatorio.Beneficiario.Cadastro, Emater.Dne.Cidade.Pesquisa, Emater.Sistema.Consts, Emater.Sistema.Principal;

procedure TFrmCadastroBeneficiario.AplicarUltimaAlteracao;
begin
  if not (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Edit;

  QryPrincipalREG_MODIFICADO.Value := DateTimeToSQLTimeStamp(Now);
  QryPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Post;
end;

procedure TFrmCadastroBeneficiario.AtualizarReplicacaoPendente;
begin
  DtmLogModulo.ReplicacaoPendenteExibir(
    CADASTRO_REPLICACAO_TABELAS_BENEFICIARIO,
    CampoChave,
    QryPrincipal.FieldByName(CampoChave).AsString, LblReplicacao);
end;

procedure TFrmCadastroBeneficiario.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  AtualizarReplicacaoPendente;
end;

procedure TFrmCadastroBeneficiario.BtnCatAdicionarClick(Sender: TObject);
begin
  if DtSrcBeneficiarioCategoria.AutoEdit then
    begin
      if (QryBeneficiarioCategoria.RecordCount = 1) then
        Msg.Aviso(CADASTRO_AVISO_UMA_CATEGORIA)
      else
        begin
          QryBeneficiarioCategoria.Last;
          QryBeneficiarioCategoria.Append;
          QryBeneficiarioCategoriaCAT_ID.Value := QryCategoriaDisponivelCAT_ID.Value;
          QryBeneficiarioCategoriaCAT_MARCADO.Value := 140;
          QryBeneficiarioCategoriaCAT_DESCRICAO.Value := QryCategoriaDisponivelCAT_DESCRICAO.Value;

          DtmSistemaModulo.GravarAuditoriaInclusao(QryBeneficiarioCategoria, 'TAB_CAD_BENEFICIARIO_CATEGORIA', 'BCA_ID');

          QryBeneficiarioCategoria.Post;
          QryCategoriaDisponivel.Close;
          QryCategoriaDisponivel.Open;
          DtSrcPrincipalStateChange(Sender);
          AtualizarReplicacaoPendente;
        end;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnCatRemoverClick(Sender: TObject);
begin
  if DtSrcBeneficiarioCategoria.AutoEdit then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryBeneficiarioCategoria);

      QryCategoriaDisponivel.Close;
      QryCategoriaDisponivel.Open;
      DtSrcPrincipalStateChange(Sender);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnComunidadeBuscarClick(Sender: TObject);
begin
  if DtSrcPrincipal.AutoEdit then
    begin
      FrmCadastroComunidade := TFrmCadastroComunidade.Create(Self);
      try
        Screen.Cursor := crHourglass;
        FrmCadastroComunidade.Novo;
      finally
        FrmCadastroComunidade.Release;
        FrmCadastroComunidade := nil;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnDAPCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (QryBeneficiarioDAP.State in [dsEdit, dsInsert]) then
        begin
          QryBeneficiarioDAP.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbEdtNIS.SetFocus;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnDAPExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryBeneficiarioDAP);
      DtSrcBeneficiarioDAP.OnStateChange(QryBeneficiarioDAP);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCadastroBeneficiario.BtnDAPNovoClick(Sender: TObject);
begin
  QryBeneficiarioDAP.Last;
  QryBeneficiarioDAP.Append;
  DbEdtNIS.SetFocus;
end;

procedure TFrmCadastroBeneficiario.BtnDAPSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(QryBeneficiarioDAP) then
      begin
        QryBeneficiarioDAP.Post;
        AtualizarReplicacaoPendente;
      end;
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCadastroBeneficiario.BtnDvsAdicionarClick(Sender: TObject);
begin
  if DtSrcBeneficiarioDivisao.AutoEdit then
    begin
      QryBeneficiarioDivisao.Last;
      QryBeneficiarioDivisao.Append;
      QryBeneficiarioDivisaoDIV_ID.Value := QryDivisaoDisponivelDIV_ID.Value;
      QryBeneficiarioDivisaoDIV_MARCADO.Value := 140;
      QryBeneficiarioDivisaoDIV_DESCRICAO.Value := QryDivisaoDisponivelDIV_DESCRICAO.Value;

      DtmSistemaModulo.GravarAuditoriaInclusao(QryBeneficiarioDivisao, 'TAB_CAD_BENEFICIARIO_DIVISAO', 'BDI_ID');

      QryBeneficiarioDivisao.Post;
      QryDivisaoDisponivel.Close;
      QryDivisaoDisponivel.Open;
      DtSrcPrincipalStateChange(Sender);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnDvsRemoverClick(Sender: TObject);
begin
  if DtSrcBeneficiarioDivisao.AutoEdit then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryBeneficiarioDivisao);
      QryDivisaoDisponivel.Close;
      QryDivisaoDisponivel.Open;
      DtSrcPrincipalStateChange(Sender);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnExcluirClick(Sender: TObject);
var
  ID: Int64;
begin
  ID := QryPrincipalBEN_ID.AsLargeInt;
  inherited;
  if (QryPrincipal.RecordCount = 0) then
    FrmSistemaPrincipal.RecenteRemover(FrmSistemaPrincipal.VwGlrCntrlBeneficiarios, ID);
end;

procedure TFrmCadastroBeneficiario.BtnFamCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (QryFamilia.State in [dsEdit, dsInsert]) then
        begin
          QryFamilia.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbLkpCmbBxGrau.SetFocus;
    end
end;

procedure TFrmCadastroBeneficiario.BtnFamExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryFamilia);

      DtSrcFamilia.OnStateChange(QryFamilia);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCadastroBeneficiario.BtnFamNovoClick(Sender: TObject);
begin
  QryFamilia.Last;
  QryFamilia.Append;
  DbLkpCmbBxGrau.SetFocus;
end;

procedure TFrmCadastroBeneficiario.BtnFamSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(QryFamilia) then
      begin
        if (QryFamiliaFAM_CPF.AsString <> '') then
          begin
            if not Str.ValidarCPF(QryFamiliaFAM_CPF.AsString) then
              begin
                Msg.Aviso(CADASTRO_AVISO_CPF_INVALIDO);
                DbEdtFamiliaCPF.SetFocus;
                Exit;
              end;

            if FamiliaExisteCPF(QryPrincipalBEN_ID.AsLargeInt, QryFamiliaFAM_CPF.AsString, QryFamiliaFAM_ID.AsLargeInt) then
              begin
                Msg.Aviso(CADASTRO_AVISO_CPF_FAMILIA_EXISTENTE);
                DbEdtFamiliaCPF.SetFocus;
                Exit;
              end;
          end;

        QryFamilia.Post;
        AtualizarReplicacaoPendente;
      end;
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCadastroBeneficiario.BtnNovoClick(Sender: TObject);
begin
  inherited;
  PgCntrlMain.ActivePage := TbShtPrincipal;
  PgCntrlBeneficiario.ActivePage := TbShtBeneficiario;
end;

procedure TFrmCadastroBeneficiario.BtnPrdEditarClick(Sender: TObject);
begin
  Screen.Cursor  := crHourGlass;
  FrmCadastroUnidade := TFrmCadastroUnidade.Create(Self);
  try
    FrmCadastroUnidade.Editar(QryBeneficiarioProducaoPRO_ID.AsLargeInt);
    QryBeneficiarioProducao.Refresh;
  finally
    FrmCadastroUnidade.Release;
    FrmCadastroUnidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroBeneficiario.BtnPrdExcluirClick(Sender: TObject);
begin
  if MSG.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryBeneficiarioProducao);
      DtSrcBeneficiarioProducao.OnStateChange(QryBeneficiarioProducao);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnPrdIncluirClick(Sender: TObject);
begin
  FrmCadastroUnidadeBusca := TFrmCadastroUnidadeBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    if (FrmCadastroUnidadeBusca.ShowModal = mrOk) then
      begin
        if QryBeneficiarioProducao.Locate('PRO_ID', FrmCadastroUnidadeBusca.QryConsultaPRO_ID.AsInteger, []) then
          MSG.Aviso(BASE_MSG_AVISO_REGISTRO_DUPLICADO)
        else
          try
            QryBeneficiarioProducao.Last;
            QryBeneficiarioProducao.Append;
            QryBeneficiarioProducaoBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
            QryBeneficiarioProducaoPRO_ID.AsInteger := FrmCadastroUnidadeBusca.QryConsultaPRO_ID.AsInteger;
            QryBeneficiarioProducaoBPR_DATA.AsDateTime := Date;

            DtmSistemaModulo.GravarAuditoriaInclusao(QryBeneficiarioProducao, 'TAB_CAD_BENEFICIARIO_PRODUCAO', 'BPR_ID');

            QryBeneficiarioProducao.Post;
            AtualizarReplicacaoPendente;
          except
            on E: Exception do
              if QryBeneficiarioProducao.State = dsInsert then
                QryBeneficiarioProducao.Cancel;
          end;
      end;
  finally
    FrmCadastroUnidadeBusca.Release;
    FrmCadastroUnidadeBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroBeneficiario.BtnPrdNovoClick(Sender: TObject);
begin
  FrmCadastroUnidade := TFrmCadastroUnidade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCadastroUnidade.Novo;

    if not (FrmCadastroUnidade.QryPrincipal.IsEmpty) then
      begin

        if QryBeneficiarioProducao.Locate('PRO_ID', FrmCadastroUnidade.QryPrincipalPRO_ID.AsInteger, []) then
          MSG.Aviso(BASE_MSG_AVISO_REGISTRO_DUPLICADO)
        else
          try
            QryBeneficiarioProducao.Last;
            QryBeneficiarioProducao.Append;
            QryBeneficiarioProducaoBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
            QryBeneficiarioProducaoPRO_ID.AsInteger := FrmCadastroUnidade.QryPrincipalPRO_ID.AsInteger;
            QryBeneficiarioProducaoBPR_DATA.AsDateTime := Date;

            DtmSistemaModulo.GravarAuditoriaInclusao(QryBeneficiarioProducao, 'TAB_CAD_BENEFICIARIO_PRODUCAO', 'BPR_ID');

            QryBeneficiarioProducao.Post;
            AtualizarReplicacaoPendente;
          except
            on E: Exception do
              if QryBeneficiarioProducao.State = dsInsert then
                QryBeneficiarioProducao.Cancel;
          end;
      end;

  finally
    FrmCadastroUnidade.Release;
    FrmCadastroUnidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroBeneficiario.BtnPrdVisualizarClick(Sender: TObject);
begin
  Screen.Cursor  := crHourGlass;
  FrmCadastroUnidade := TFrmCadastroUnidade.Create(Self);
  try
    FrmCadastroUnidade.Visualizar(QryBeneficiarioProducaoPRO_ID.AsLargeInt);
  finally
    FrmCadastroUnidade.Release;
    FrmCadastroUnidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroBeneficiario.BtnPrgAdicionarClick(Sender: TObject);
begin
  if DtSrcBeneficiarioProgramaGoverno.AutoEdit then
    begin
      QryBeneficiarioProgramaGoverno.Last;
      QryBeneficiarioProgramaGoverno.Append;
      QryBeneficiarioProgramaGovernoPRG_ID.Value := QryProgramaGovernoDisponivelPRG_ID.Value;
      QryBeneficiarioProgramaGovernoPRG_DESCRICAO.Value := QryProgramaGovernoDisponivelPRG_DESCRICAO.Value;
      QryBeneficiarioProgramaGovernoPRG_DATA.Value := Date;

      DtmSistemaModulo.GravarAuditoriaInclusao(QryBeneficiarioProgramaGoverno, 'TAB_CAD_BENEFICIARIO_PROGRAMA', 'BPR_ID');

      QryBeneficiarioProgramaGoverno.Post;
      QryProgramaGovernoDisponivel.Close;
      QryProgramaGovernoDisponivel.Open;
      DtSrcPrincipal.OnStateChange(QryBeneficiarioProgramaGoverno);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnPrgRemoverClick(Sender: TObject);
begin
  if DtSrcBeneficiarioProgramaGoverno.AutoEdit then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryBeneficiarioProgramaGoverno);

      QryProgramaGovernoDisponivel.Close;
      QryProgramaGovernoDisponivel.Open;
      DtSrcPrincipal.OnStateChange(QryBeneficiarioProgramaGoverno);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnRelatorioClick(Sender: TObject);
begin
  if (QryPrincipal.IsEmpty) or (QryPrincipal.RecordCount = 0) then
    Msg.Aviso(CADASTRO_AVISO_IMPRIMIR_FICHA)
  else
    begin
      Screen.Cursor := crHourGlass;
      FrmRelatorioBeneficiarioCadastro := TFrmRelatorioBeneficiarioCadastro.Create(Self);
      try
        FrmRelatorioBeneficiarioCadastro.VisualizarImpressao(QryPrincipalBEN_ID.AsLargeInt, QryPrincipalBEN_CPF.AsString);
      finally
        FrmRelatorioBeneficiarioCadastro.Release;
        FrmRelatorioBeneficiarioCadastro := nil;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmCadastroBeneficiario.BtnSalvarClick(Sender: TObject);
begin

  // Validando o CPF:
  if (Trim(QryPrincipalBEN_CPF.AsString) <> '') then
    if not Str.ValidarCPF(QryPrincipalBEN_CPF.AsString) then
      begin
        Msg.Aviso(CADASTRO_AVISO_CPF_INVALIDO);
        PgCntrlMain.ActivePage := TbShtPrincipal;
        DbEdtCPF.SetFocus;
        Exit;
      end;

  // Validando o nome informado:
  if (Length(DbEdtNome.Text) < 6) then
    begin
      Msg.Aviso(CADASTRO_AVISO_NOME_INCOMPLETO);
      PgCntrlMain.ActivePage := TbShtPrincipal;
      DbEdtCPF.SetFocus;
      Exit;
    end;

  inherited;

  if (QryPrincipal.State = dsBrowse) then
    begin

      AtualizarReplicacaoPendente;

      if (not QryPrincipal.IsEmpty) and (QryPrincipal.RecordCount > 0) then
        begin
          if (QryBeneficiarioCategoria.RecordCount = 0) or (QryBeneficiarioDivisao.RecordCount = 0) then
            begin
              Msg.Aviso(CADASTRO_AVISO_INFORMAR_CATEGORIA_ATIVIDADE);
              PgCntrlMain.ActivePage := TbShtIdentificacao;
            end;
        end;
    end;
end;

procedure TFrmCadastroBeneficiario.TbShtProducaoShow(Sender: TObject);
begin
  if not QryBeneficiarioProducao.Active then
    QryBeneficiarioProducao.Open;

  if not QryProducaoBem.Active then
    QryProducaoBem.Open;
  QryProducaoBem.Filtered := False;
  QryProducaoBem.Filter := 'cls_id = 100000001';
  QryProducaoBem.Filtered := True;
end;

procedure TFrmCadastroBeneficiario.TbShtUnidadeShow(Sender: TObject);
begin
  if not QryBeneficiarioProducao.Active then
    QryBeneficiarioProducao.Open;
end;

procedure TFrmCadastroBeneficiario.TbShtFamiliaShow(Sender: TObject);
begin
  if not QryFamilia.Active then
    QryFamilia.Open;
end;

procedure TFrmCadastroBeneficiario.TbShtDAPShow(Sender: TObject);
begin
  if not QryBeneficiarioDAP.Active then
    QryBeneficiarioDAP.Open;
end;

procedure TFrmCadastroBeneficiario.TbShtAtividadesShow(Sender: TObject);
begin
  if not QryProducaoAtividade.Active then
    begin
      QryProducaoAtividade.Open;
      QryProducaoProduto.Open;
    end;
end;

procedure TFrmCadastroBeneficiario.TbShtBenfeitoriasShow(Sender: TObject);
begin
  if not QryProducaoBem.Active then
    QryProducaoBem.Open;
  QryProducaoBem.Filtered := False;
  QryProducaoBem.Filter := 'cls_id = 100000001';
  QryProducaoBem.Filtered := True;
end;

procedure TFrmCadastroBeneficiario.DbBtnEdtFamiliaNaturalidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  ID: Integer;
  Nome: string;
begin
  FrmDneCidadePesquisa := TFrmDneCidadePesquisa.Create(Self);
  try
    if (FrmDneCidadePesquisa.Executar(ID, Nome) = true) then
      begin
        if not (QryFamilia.State in [dsEdit, dsInsert]) and BtnFamSalvar.Visible then
          QryFamilia.Edit;
        QryFamiliaCID_ID.AsInteger := ID;
        QryFamiliaCID_NOME_NATURALIDADE.AsString := Nome;
      end;
  finally
    FrmDneCidadePesquisa.Release;
    FrmDneCidadePesquisa := nil;
  end;
end;

procedure TFrmCadastroBeneficiario.DbBtnEdtNaturalidadePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  ID: Integer;
  Nome: string;
begin
  FrmDneCidadePesquisa := TFrmDneCidadePesquisa.Create(Self);
  try
    if (FrmDneCidadePesquisa.Executar(ID, Nome) = true) then
      begin
        if not (QryPrincipal.State in [dsEdit, dsInsert]) and BtnSalvar.Visible then
          QryPrincipal.Edit;
        QryPrincipalCID_ID_NATURALIDADE.AsInteger := ID;
        QryPrincipalCID_NOME_NATURALIDADE.AsString := Nome;
      end;
  finally
    FrmDneCidadePesquisa.Release;
    FrmDneCidadePesquisa := nil;
  end;
end;

procedure TFrmCadastroBeneficiario.DbChckBxTrabalhaClick(Sender: TObject);
begin
  DbMemoFamiliaAtividades.Enabled := DbChckBxTrabalha.Checked;
end;

procedure TFrmCadastroBeneficiario.DbEdtCPFExit(Sender: TObject);
begin
  if (QryPrincipal.State = dsInsert) then
    begin
      QryBeneficiarioCPF.Close;
      QryBeneficiarioCPF.ParamByName('cpf').AsString := QryPrincipalBEN_CPF.AsString;
      QryBeneficiarioCPF.Open;
      if (not QryBeneficiarioCPF.IsEmpty) then
        begin
          Msg.Aviso(Format(CADASTRO_AVISO_CPF_BENEFICIARIO_EXISTENTE, [QryBeneficiarioCPFBEN_NOME.AsString,
            QryBeneficiarioCPFUND_NOME.AsString,
            QryBeneficiarioCPFBEN_EXCLUIDO.AsString]));
        end;
    end;
end;

procedure TFrmCadastroBeneficiario.DbEdtNomePropertiesChange(Sender: TObject);
begin
  inherited;
  LblTitulo.Caption := StringOfChar(' ', 6) + DbEdtNome.Text;
end;

procedure TFrmCadastroBeneficiario.DtSrcBeneficiarioDAPStateChange(Sender: TObject);
begin
  with QryBeneficiarioDAP do
    begin
      BtnDAPNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnDAPExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnDAPCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnDAPSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCadastroBeneficiario.DtSrcBeneficiarioProducaoStateChange(Sender: TObject);
begin
  BtnPrdIncluir.Enabled := not (QryBeneficiarioProducao.State = dsInactive);
  BtnPrdEditar.Enabled := not QryBeneficiarioProducao.IsEmpty;
  BtnPrdExcluir.Enabled := not QryBeneficiarioProducao.IsEmpty;
  BtnPrdVisualizar.Enabled := not QryBeneficiarioProducao.IsEmpty;
end;

procedure TFrmCadastroBeneficiario.DtSrcFamiliaStateChange(Sender: TObject);
begin
  with QryFamilia do
    begin
      BtnFamNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
      BtnFamExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
      BtnFamCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
      BtnFamSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
    end;
end;

procedure TFrmCadastroBeneficiario.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;

  // Categorias:
  LblCategoria.Visible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdBenCtg.Visible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdCat.Enabled := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdCatDis.Enabled := GrdCat.Enabled;
  LblCategorias.Enabled := GrdCat.Enabled;
  LblCat.Enabled := GrdCat.Enabled;
  LblCatDis.Enabled := GrdCat.Enabled;
  BtnCatRemover.Enabled := GrdCat.Enabled and (QryBeneficiarioCategoria.RecordCount > 0);
  BtnCatAdicionar.Enabled := GrdCat.Enabled and (QryCategoriaDisponivel.RecordCount > 0);

  // Atividades produtivas (divisões):
  LblAtividade.Visible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdBenAtv.Visible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdDvs.Enabled := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdDvsDis.Enabled := GrdDvs.Enabled;
  LblDivisoes.Enabled := GrdDvs.Enabled;
  LblDvs.Enabled := GrdDvs.Enabled;
  LblDvsDis.Enabled := GrdDvs.Enabled;
  BtnDvsRemover.Enabled := GrdDvs.Enabled and (QryBeneficiarioDivisao.RecordCount > 0);
  BtnDvsAdicionar.Enabled := GrdDvs.Enabled and (QryDivisaoDisponivel.RecordCount > 0);

  // Campos dos programas do governo:
  GrdPrg.Enabled := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  GrdPrgDis.Enabled := GrdPrg.Enabled;
  LblProgramas.Enabled := GrdPrg.Enabled;
  LblPrg.Enabled := GrdPrg.Enabled;
  LblPrgDis.Enabled := GrdPrg.Enabled;
  BtnPrgRemover.Enabled := GrdPrg.Enabled and (QryBeneficiarioProgramaGoverno.RecordCount > 0);
  BtnPrgAdicionar.Enabled := GrdPrg.Enabled and (QryProgramaGovernoDisponivel.RecordCount > 0);

  // Demais informações:
  TbShtIdentificacao.TabVisible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  TbShtSecundaria.TabVisible := TbShtIdentificacao.TabVisible;
  TbShtDAP.TabVisible := TbShtIdentificacao.TabVisible;
  TbShtFamilia.TabVisible := TbShtIdentificacao.TabVisible;
  TbShtUnidade.TabVisible := TbShtIdentificacao.TabVisible;
  TbShtProducao.TabVisible := TbShtIdentificacao.TabVisible;
  TbShtProgramas.TabVisible := TbShtIdentificacao.TabVisible;
end;

function TFrmCadastroBeneficiario.FamiliaExisteCPF(const ABeneficiarioID: Int64; const ACPF: string; const ID: Int64): Boolean;
begin
  QryFamiliaCPF.Close;
  QryFamiliaCPF.ParamByName('ben_id').AsLargeInt := ABeneficiarioID;
  QryFamiliaCPF.ParamByName('fam_cpf').AsString := ACPF;
  QryFamiliaCPF.ParamByName('fam_id').AsLargeInt := ID;
  QryFamiliaCPF.Open;
  Result := (QryFamiliaCPFTOTAL.Value > 0);
end;

procedure TFrmCadastroBeneficiario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not QryPrincipal.IsEmpty) and (QryPrincipal.RecordCount > 0) then
    begin
      if (QryBeneficiarioCategoria.RecordCount = 0) or (QryBeneficiarioDivisao.RecordCount = 0) then
        Msg.Aviso(CADASTRO_AVISO_INFORMAR_CATEGORIA_ATIVIDADE);
    end;

  inherited;
end;

procedure TFrmCadastroBeneficiario.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtCPF;
  CampoChave := 'BEN_ID';
  Tabela := 'TAB_CAD_BENEFICIARIO';

  DbLkpCmbBxEstadoCivil.Properties.ListSource := DtmCadastroModulo.DtSrcEstadoCivil;
  DbLkpCmbBxFamiliaEstadoCivil.Properties.ListSource := DtmCadastroModulo.DtSrcEstadoCivil;
  DbLkpCmbBxEscolaridade.Properties.ListSource := DtmCadastroModulo.DtSrcEscolaridade;
  DbLkpCmbBxFamiliaEscolaridade.Properties.ListSource := DtmCadastroModulo.DtSrcEscolaridade;
  DbLkpCmbBxComunidade.Properties.ListSource := DtmCadastroModulo.DtSrcComunidade;
  DbLkpCmbBxOrigem.Properties.ListSource := DtmCadastroModulo.DtSrcDAPOrigem;
  DbLkpCmbBxOrganizacao.Properties.ListSource := DtmCadastroModulo.DtSrcOrganizacao;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  DbLkpCmbBxMotivo.Properties.ListSource := DtmCadastroModulo.DtSrcMotivo;
  DbLkpCmbBxGrau.Properties.ListSource := DtmCadastroModulo.DtSrcParentesco;
  DbLkpCmbBxDAPTipo.Properties.ListSource := DtmCadastroModulo.DtSrcDAPTipo;
  DbLkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;

  DbLkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidade;

  PgCntrlCaracterizacao.ActivePage := TbShtBenfeitorias;

  // Controle serão ativos somente para o usuário administrador:
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_ADMINISTRADOR) or (DtmConexaoModulo.PerfilID =  SISTEMA_PERFIL_CHEFIA) then
    begin
      DbLkpCmbBxMunicipio.Enabled := True;
      DbLkpCmbBxUnidade.Enabled := True;
      DbImgCmbBxSituacao.Enabled := True;
    end;
end;

procedure TFrmCadastroBeneficiario.FormShow(Sender: TObject);
begin
  inherited;
  QryBeneficiarioProgramaGoverno.Open;
  QryProgramaGovernoDisponivel.Open;
  QryBeneficiarioCategoria.Open;
  QryCategoriaDisponivel.Open;
  QryBeneficiarioDivisao.Open;
  QryDivisaoDisponivel.Open;
  DtSrcPrincipal.OnStateChange(QryPrincipal);

  AtualizarReplicacaoPendente;

  RecenteRegistrar;
end;

procedure TFrmCadastroBeneficiario.GrdBenPrdMnTblDblClick(Sender: TObject);
begin
  if BtnPrdEditar.Enabled and BtnPrdEditar.Visible then
    BtnPrdEditar.Click;
end;

procedure TFrmCadastroBeneficiario.GrdBenPrdTblDblClick(Sender: TObject);
begin
  if BtnPrdEditar.Enabled and BtnPrdEditar.Visible then
    BtnPrdEditar.Click;
end;

procedure TFrmCadastroBeneficiario.GrdCatDisTblDblClick(Sender: TObject);
begin
  if BtnCatAdicionar.Enabled and BtnCatAdicionar.Visible then
    BtnCatAdicionar.Click;
end;

procedure TFrmCadastroBeneficiario.GrdCatTblDblClick(Sender: TObject);
begin
  if BtnCatRemover.Enabled and BtnCatRemover.Visible then
    BtnCatRemover.Click;
end;

procedure TFrmCadastroBeneficiario.GrdDvsDisTblDblClick(Sender: TObject);
begin
  if BtnDvsAdicionar.Enabled and BtnDvsAdicionar.Visible then
    BtnDvsAdicionar.Click;
end;

procedure TFrmCadastroBeneficiario.GrdDvsTblDblClick(Sender: TObject);
begin
  if BtnDvsRemover.Enabled and BtnDvsRemover.Visible then
    BtnDvsRemover.Click;
end;

procedure TFrmCadastroBeneficiario.GrdPrgDisTblDblClick(Sender: TObject);
begin
  if BtnPrgAdicionar.Enabled and BtnPrgAdicionar.Visible then
    BtnPrgAdicionar.Click;
end;

procedure TFrmCadastroBeneficiario.GrdPrgTblDblClick(Sender: TObject);
begin
  if BtnPrgRemover.Enabled and BtnPrgRemover.Visible then
    BtnPrgRemover.Click;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioCategoriaAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioCategoriaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryBeneficiarioCategoriaBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioDAPAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioDAPBeforePost(DataSet: TDataSet);
begin
  if (QryBeneficiarioDAP.State = dsInsert) then
    DtmSistemaModulo.GravarAuditoriaInclusao(QryBeneficiarioDAP, 'TAB_CAD_BENEFICIARIO_DAP', 'BDP_ID')
  else
    DtmSistemaModulo.GravarAuditoriaAlteracao(QryBeneficiarioDAP);
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioDAPNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryBeneficiarioDAPBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioDivisaoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioDivisaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryBeneficiarioDivisaoBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioProducaoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioProgramaGovernoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroBeneficiario.QryBeneficiarioProgramaGovernoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryBeneficiarioProgramaGovernoBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
end;

procedure TFrmCadastroBeneficiario.QryFamiliaAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroBeneficiario.QryFamiliaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DbChckBxTrabalha.OnClick(DbChckBxTrabalha);
end;

procedure TFrmCadastroBeneficiario.QryFamiliaBeforePost(DataSet: TDataSet);
begin
  if (QryFamilia.State = dsInsert) then
    QryFamiliaFAM_ID.AsLargeInt := DtmSistemaModulo.GerarIdentificador('TAB_CAD_FAMILIA', 'FAM_ID')
  else
    DtmSistemaModulo.GravarAuditoriaAlteracao(QryFamilia);

  if not (QryFamiliaFAM_UPF.Value = 1) then
    QryFamiliaFAM_UPF_ATIVIDADE.Clear;
end;

procedure TFrmCadastroBeneficiario.QryFamiliaNewRecord(DataSet: TDataSet);
begin
  QryFamiliaBEN_ID.AsLargeInt := QryPrincipalBEN_ID.AsLargeInt;
  QryFamiliaFAM_UPF.Value := 0;
end;

procedure TFrmCadastroBeneficiario.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  RecenteRegistrar;
end;

procedure TFrmCadastroBeneficiario.QryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DtSrcPrincipal.OnStateChange(DataSet);
end;

procedure TFrmCadastroBeneficiario.QryPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalBEN_SITUACAO.Value := 1; // Ativo e atualizado.
end;

procedure TFrmCadastroBeneficiario.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalBEN_DATA.Value := Date;
  QryPrincipalBEN_SITUACAO.Value := 1;
  QryPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  QryPrincipalBEN_RIBEIRINHO.Value := 0;
  QryPrincipalCID_ID_ENDERECO.Value := DtmConexaoModulo.MunicipioID;
  QryPrincipalUFE_ID.AsString := 'PA';

  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    QryPrincipalFUN_ID.AsInteger := DtmConexaoModulo.FuncionarioID;
end;

procedure TFrmCadastroBeneficiario.QryProducaoAtividadeCalcFields(DataSet: TDataSet);
begin
  if not QryProducaoAtividadeATV_SAFRA_INICIO.IsNull then
    QryProducaoAtividadeATV_SAFRA_INICIO_FIM.AsString := QryProducaoAtividadeATV_SAFRA_INICIO.AsString + '/';

  if not QryProducaoAtividadeATV_SAFRA_FIM.IsNull then
    QryProducaoAtividadeATV_SAFRA_INICIO_FIM.AsString := QryProducaoAtividadeATV_SAFRA_INICIO_FIM.AsString +
      QryProducaoAtividadeATV_SAFRA_FIM.AsString;
end;

procedure TFrmCadastroBeneficiario.QryProducaoProdutoCalcFields(DataSet: TDataSet);
begin
  QryProducaoProdutoPRP_VALOR_TOTAL.Value := (
    (QryProducaoProdutoPRP_QTDE_CONSUMIDA.Value + QryProducaoProdutoPRP_QTDE_COMERCIALIZADA.Value) *
    QryProducaoProdutoPRP_VALOR.Value);
end;

procedure TFrmCadastroBeneficiario.RecenteRegistrar;
begin
  if (not QryPrincipal.IsEmpty) and (QryPrincipalBEN_CPF.AsString <> '') and (QryPrincipalBEN_NOME.AsString <> '') then
    FrmSistemaPrincipal.RecenteAdicionar(
      FrmSistemaPrincipal.VwGlrCntrlBeneficiarios,
      QryPrincipalBEN_ID.AsLargeInt,
      QryPrincipalBEN_NOME.AsString,
      'CPF: ' + FormatMaskText('999.999.999-99;0; ', QryPrincipalBEN_CPF.AsString),
      0,
      False);
end;

procedure TFrmCadastroBeneficiario.TbShtMaquinasShow(Sender: TObject);
begin
  if not QryProducaoBem.Active then
    QryProducaoBem.Open;
  QryProducaoBem.Filtered := False;
  QryProducaoBem.Filter := 'cls_id in (100000002, 100000003)';
  QryProducaoBem.Filtered := True;
end;

procedure TFrmCadastroBeneficiario.TbShtSemoventesShow(Sender: TObject);
begin
  if not QryProducaoSemovente.Active then
    QryProducaoSemovente.Open;
end;

procedure TFrmCadastroBeneficiario.BtnOrganizacaoBuscarClick(Sender: TObject);
begin
  if DtSrcPrincipal.AutoEdit then
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

end.
