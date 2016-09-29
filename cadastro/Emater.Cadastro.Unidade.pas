unit Emater.Cadastro.Unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, cxPC, Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxGroupBox, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxImageComboBox, cxCurrencyEdit, cxCalc, Vcl.ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.DBCtrls, Math, cxSpinEdit, cxCalendar, DateUtils, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.SqlTimSt, cxLabel, cxDBLabel, cxDBNavigator;

type
  TFrmCadastroUnidade = class(TFrmBaseTabela)
    GRpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    DbEdtDenominacao: TcxDBTextEdit;
    Label2: TLabel;
    DbEdtEndereco: TcxDBTextEdit;
    Label3: TLabel;
    DbEdtNumero: TcxDBTextEdit;
    Label4: TLabel;
    DbEdtComplemento: TcxDBTextEdit;
    Label5: TLabel;
    DbEdtBairro: TcxDBTextEdit;
    Label17: TLabel;
    DbLkpCmbBxMunicipio: TcxDBLookupComboBox;
    Label18: TLabel;
    DbEdtUF: TcxDBTextEdit;
    Label6: TLabel;
    DbEdtVia: TcxDBTextEdit;
    Label22: TLabel;
    DbLkpCmbBxComunidade: TcxDBLookupComboBox;
    BtnComunidadeBuscar: TcxButton;
    Label16: TLabel;
    DbEdtCEP: TcxDBMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    GrpBxCAR: TcxGroupBox;
    DbEdtCARNumero: TcxDBTextEdit;
    LblCARNumero: TLabel;
    DbChckBxCAR: TcxDBCheckBox;
    GrpBxEnergia: TcxGroupBox;
    DbChckBxEnergia: TcxDBCheckBox;
    DbChckBxEnergiaConcessioaria: TcxDBCheckBox;
    DbChckBxEnergiaOutras: TcxDBCheckBox;
    GrpBxAgua: TcxGroupBox;
    DbChckBxAgua: TcxDBCheckBox;
    DbChckBxAguaConcessionaria: TcxDBCheckBox;
    DbChckBxAguaPocoArtesiano: TcxDBCheckBox;
    DbChckBxAguaPocoAmazonico: TcxDBCheckBox;
    DbChckBxAguaRio: TcxDBCheckBox;
    DbChckBxAguaOutras: TcxDBCheckBox;
    GrpBxGeo: TcxGroupBox;
    DbEdtLatGraus: TcxDBTextEdit;
    DbEdtLatMinutos: TcxDBTextEdit;
    DbEdtLatSegundos: TcxDBTextEdit;
    Label15: TLabel;
    DbEdtLongGraus: TcxDBTextEdit;
    DbEdtLongMinutos: TcxDBTextEdit;
    DbEdtLongSegundos: TcxDBTextEdit;
    Label19: TLabel;
    GrpBxTerra: TcxGroupBox;
    Label20: TLabel;
    DbEdtAreaLegal: TcxDBCalcEdit;
    Label21: TLabel;
    DbEdtAreaReal: TcxDBCalcEdit;
    Label23: TLabel;
    DbEdtTerraNua: TcxDBCalcEdit;
    Label24: TLabel;
    DbEdtPastagem: TcxDBCalcEdit;
    Label25: TLabel;
    DbEdtPermanente: TcxDBCalcEdit;
    Label26: TLabel;
    DbEdtTemporaria: TcxDBCalcEdit;
    Label27: TLabel;
    DbEdtReserva: TcxDBCalcEdit;
    Label28: TLabel;
    DbEdtOutros: TcxDBCalcEdit;
    Label29: TLabel;
    Label30: TLabel;
    DbEdtTerraNuaPerc: TcxDBTextEdit;
    DbEdtPastagemPerc: TcxDBTextEdit;
    DbEdtPermanentePerc: TcxDBTextEdit;
    DbEdtTemporariaPerc: TcxDBTextEdit;
    DbEdtReservaPerc: TcxDBTextEdit;
    DbEdtOutrosPerc: TcxDBTextEdit;
    GrpBxRegistro: TcxGroupBox;
    DbLkpCmbBxTecnico: TcxDBLookupComboBox;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    Label31: TLabel;
    Label32: TLabel;
    DbLkpCmbBxOcupacao: TcxDBLookupComboBox;
    DbLkpCmbBxDocumento: TcxDBLookupComboBox;
    DbImgCmbBxLatHemisferio: TcxDBImageComboBox;
    DbImgCmbBxHemisferio: TcxDBImageComboBox;
    Label9: TLabel;
    DbTxtTotal: TDBText;
    Shape2: TShape;
    TbShtBenfeitorias: TcxTabSheet;
    TbShtMaquinas: TcxTabSheet;
    TbShtSemoventes: TcxTabSheet;
    TbShtAtividades: TcxTabSheet;
    GrdPrdBem: TcxGrid;
    GrdPrdBemTbl: TcxGridDBTableView;
    GrdPrdBemLvl: TcxGridLevel;
    GrdPrdMaq: TcxGrid;
    GrdPrdMaqTbl: TcxGridDBTableView;
    GrdPrdMaqLvl: TcxGridLevel;
    GrdPrdSem: TcxGrid;
    GrdPrdSemTbl: TcxGridDBTableView;
    GrdPrdSemLvl: TcxGridLevel;
    GrdPrdAtv: TcxGrid;
    GrdPrdAtvTbl: TcxGridDBTableView;
    GrdPrdAtvLvl: TcxGridLevel;
    BtnAtvIncluir: TcxButton;
    BtnAtvExcluir: TcxButton;
    GrdPrd: TcxGrid;
    GrdPrdTbl: TcxGridDBTableView;
    GrdPrdLvl: TcxGridLevel;
    BtnPrdIncluir: TcxButton;
    BtnPrdExcluir: TcxButton;
    GRpBxBenfeitorias: TcxGroupBox;
    BtnBemNovo: TcxButton;
    BtnBemSalvar: TcxButton;
    BtnBemCancelar: TcxButton;
    BtnBemExcluir: TcxButton;
    DtSrcProducaoBem: TDataSource;
    DtSrcBem: TDataSource;
    Label10: TLabel;
    DbLkpCmbBxBenfeitoria: TcxDBLookupComboBox;
    Label33: TLabel;
    DbEdtQuantidade: TcxDBSpinEdit;
    Label34: TLabel;
    DbImgCmbBxEstado: TcxDBImageComboBox;
    GrdPrdBemTblBEM_ESTADO: TcxGridDBColumn;
    GrdPrdBemTblBEM_QUANTIDADE: TcxGridDBColumn;
    GrdPrdBemTblBEM_DESCRICAO: TcxGridDBColumn;
    GrdPrdBemTblCLS_DESCRICAO: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DbLkpCmbBxMaquina: TcxDBLookupComboBox;
    DbEdtMaquinaQtde: TcxDBSpinEdit;
    DbImgCmbBxMaquinaEstado: TcxDBImageComboBox;
    BtnMaqNovo: TcxButton;
    BtnMaqSalvar: TcxButton;
    BtnMaqCancelar: TcxButton;
    BtnMaqExcluir: TcxButton;
    GrdPrdMaqTblBEM_ESTADO: TcxGridDBColumn;
    GrdPrdMaqTblBEM_QUANTIDADE: TcxGridDBColumn;
    GrdPrdMaqTblBEM_DESCRICAO: TcxGridDBColumn;
    GrdPrdMaqTblCLS_DESCRICAO: TcxGridDBColumn;
    DtSrcProducaoSemovente: TDataSource;
    DtSrcSemovente: TDataSource;
    GrpBxSemovente: TcxGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    DbLkpCmbBxSemovente: TcxDBLookupComboBox;
    DbEdtSemoventeQtde: TcxDBSpinEdit;
    BtnSemNovo: TcxButton;
    BtnSemSalvar: TcxButton;
    BtnSemCancelar: TcxButton;
    BtnSemExcluir: TcxButton;
    GrdPrdSemTblPRD_QUANTIDADE: TcxGridDBColumn;
    GrdPrdSemTblPRD_DESCRICAO: TcxGridDBColumn;
    BtnAtvEditar: TcxButton;
    BtnPrdEditar: TcxButton;
    DtSrcProducaoAtividade: TDataSource;
    GrdPrdAtvTblATV_PERIODO_PLANTIO: TcxGridDBColumn;
    GrdPrdAtvTblATV_AREA_PLANTADA: TcxGridDBColumn;
    GrdPrdAtvTblATV_AREA_COLHIDA: TcxGridDBColumn;
    GrdPrdAtvTblATV_QUANTIDADE: TcxGridDBColumn;
    GrdPrdAtvTblSIP_DESCRICAO: TcxGridDBColumn;
    GrdPrdAtvTblPRD_DESCRICAO: TcxGridDBColumn;
    GrdPrdAtvTblUNI_DESCRICAO: TcxGridDBColumn;
    DtSrcProduto: TDataSource;
    DtSrcProducaoProduto: TDataSource;
    GrdPrdTblPRP_QTDE_CONSUMIDA: TcxGridDBColumn;
    GrdPrdTblPRP_QTDE_COMERCIALIZADA: TcxGridDBColumn;
    GrdPrdTblPRP_VALOR: TcxGridDBColumn;
    GrdPrdTblPRP_DESCRICAO_PRODUTO_DERIVADO: TcxGridDBColumn;
    GrdPrdTblUNI_UNIDADE: TcxGridDBColumn;
    DtSrcDestino: TDataSource;
    GrdPrdTblPRP_VALOR_TOTAL: TcxGridDBColumn;
    DbEdtReceita: TcxDBCurrencyEdit;
    LblReceita: TLabel;
    TbShtBeneficiarios: TcxTabSheet;
    DtSrcProducaoBeneficiario: TDataSource;
    GrdBen: TcxGrid;
    GrdBenTbl: TcxGridDBTableView;
    GrdBenTblBEN_NOME: TcxGridDBColumn;
    GrdBenTblBEN_CPF: TcxGridDBColumn;
    GrdBenTblBEN_SEXO: TcxGridDBColumn;
    GrdBenTblBEN_NASCIMENTO: TcxGridDBColumn;
    GrdBenLvl: TcxGridLevel;
    BtnBenExcluir: TcxButton;
    BtnBenIncluir: TcxButton;
    BtnBenVisualizar: TcxButton;
    PnlTop: TPanel;
    LblTitulo: TLabel;
    Image: TImage;
    LblReplicacao: TLabel;
    DbEdtCARData: TcxDBDateEdit;
    LblCARData: TLabel;
    Label43: TLabel;
    DbEdtData: TcxDBDateEdit;
    Label44: TLabel;
    DbEdtModificadoData: TcxDBTextEdit;
    Label45: TLabel;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    GrdPrdBemTblBEM_DATA: TcxGridDBColumn;
    GrdPrdMaqTblBEM_DATA: TcxGridDBColumn;
    Label46: TLabel;
    EdtDataBem: TcxDBDateEdit;
    Label47: TLabel;
    EdtDataEquipamento: TcxDBDateEdit;
    DbTxtTotalArea: TDBText;
    GrdPrdTblDESTINO: TcxGridDBColumn;
    QryProducaoBem: TFDQuery;
    UpdtProducaoBem: TFDUpdateSQL;
    QryProducaoSemovente: TFDQuery;
    UpdtProducaoSemovente: TFDUpdateSQL;
    QryProducaoAtividade: TFDQuery;
    UpdtProducaoAtividade: TFDUpdateSQL;
    QryProducaoProduto: TFDQuery;
    UpdtProducaoProduto: TFDUpdateSQL;
    QryProducaoBeneficiario: TFDQuery;
    UpdtProducaoBeneficiario: TFDUpdateSQL;
    QryPrincipalPRO_ID: TIntegerField;
    QryPrincipalPRO_DATA: TDateField;
    QryPrincipalPRO_DENOMINACAO: TStringField;
    QryPrincipalPRO_ENDERECO: TStringField;
    QryPrincipalPRO_NUMERO: TStringField;
    QryPrincipalPRO_COMPLEMENTO: TStringField;
    QryPrincipalPRO_BAIRRO: TStringField;
    QryPrincipalPRO_CEP: TStringField;
    QryPrincipalPRO_ACESSO: TStringField;
    QryPrincipalPRO_ENERGIA_SITUACAO: TSmallintField;
    QryPrincipalPRO_ENERGIA_CONCESSIONARIA: TSmallintField;
    QryPrincipalPRO_ENERGIA_OUTRAS: TSmallintField;
    QryPrincipalPRO_AGUA_SITUACAO: TSmallintField;
    QryPrincipalPRO_AGUA_CONCESSIONARIA: TSmallintField;
    QryPrincipalPRO_AGUA_POCO_ARTESIANO: TSmallintField;
    QryPrincipalPRO_AGUA_POCO_AMAZONICO: TSmallintField;
    QryPrincipalPRO_AGUA_RIO: TSmallintField;
    QryPrincipalPRO_AGUA_OUTRAS: TSmallintField;
    QryPrincipalPRO_CAR: TSmallintField;
    QryPrincipalPRO_CAR_NUMERO: TStringField;
    QryPrincipalPRO_CAR_DATA: TDateField;
    QryPrincipalPRO_RECEITA_ANUAL: TBCDField;
    QryPrincipalPRO_LATITUDE_GRAUS: TCurrencyField;
    QryPrincipalPRO_LATITUDE_MINUTOS: TCurrencyField;
    QryPrincipalPRO_LATITUDE_SEGUNDOS: TCurrencyField;
    QryPrincipalPRO_LATITUDE_HEMISFERIO: TStringField;
    QryPrincipalPRO_LONGITUDE_GRAUS: TCurrencyField;
    QryPrincipalPRO_LONGITUDE_MINUTOS: TCurrencyField;
    QryPrincipalPRO_LONGITUDE_SEGUNDOS: TCurrencyField;
    QryPrincipalPRO_LONGITUDE_HEMISFERIO: TStringField;
    QryPrincipalPRO_AREA_LEGAL: TCurrencyField;
    QryPrincipalPRO_AREA_REAL: TCurrencyField;
    QryPrincipalPRO_AREA_NUA: TCurrencyField;
    QryPrincipalPRO_AREA_PASTAGEM: TCurrencyField;
    QryPrincipalPRO_AREA_PERMANENTE: TCurrencyField;
    QryPrincipalPRO_AREA_TEMPORARIA: TCurrencyField;
    QryPrincipalPRO_AREA_RESERVA: TCurrencyField;
    QryPrincipalPRO_AREA_OUTROS: TCurrencyField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalCID_ID: TIntegerField;
    QryPrincipalCOM_ID: TIntegerField;
    QryPrincipalFUN_ID: TIntegerField;
    QryPrincipalUND_ID: TIntegerField;
    QryPrincipalOCT_ID: TIntegerField;
    QryPrincipalDCT_ID: TIntegerField;
    QryPrincipalUFE_ID: TStringField;
    QryPrincipalPRO_MODIFICADO_USUARIO_NOME: TStringField;
    QryPrincipalPRO_AREA_NUA_PERC: TFloatField;
    QryPrincipalPRO_AREA_PASTAGEM_PERC: TFloatField;
    QryPrincipalPRO_AREA_PERMANENTE_PERC: TFloatField;
    QryPrincipalPRO_AREA_TEMPORARIA_PERC: TFloatField;
    QryPrincipalPRO_AREA_RESERVA_PERC: TFloatField;
    QryPrincipalPRO_AREA_OUTROS_PERC: TFloatField;
    QryPrincipalPRO_AREA_TOTAL_PERC: TFloatField;
    QryPrincipalPRO_AREA_TOTAL_REAL: TFloatField;
    QryProducaoBemPBE_ID: TLargeintField;
    QryProducaoBemPRO_ID: TIntegerField;
    QryProducaoBemBEM_ID: TIntegerField;
    QryProducaoBemBEM_ESTADO: TSmallintField;
    QryProducaoBemBEM_DATA: TDateField;
    QryProducaoBemBEM_QUANTIDADE: TSmallintField;
    QryProducaoBemREG_EXCLUIDO: TSmallintField;
    QryProducaoBemREG_REPLICADO: TSmallintField;
    QryProducaoBemREG_USUARIO: TStringField;
    QryProducaoBemREG_MODIFICADO: TSQLTimeStampField;
    QryProducaoBemBEM_DESCRICAO: TStringField;
    QryProducaoBemCLS_ID: TIntegerField;
    QryProducaoBemCLS_DESCRICAO: TStringField;
    QryProducaoSemoventePSE_ID: TLargeintField;
    QryProducaoSemoventePRO_ID: TIntegerField;
    QryProducaoSemoventePRD_ID: TIntegerField;
    QryProducaoSemoventePRD_QUANTIDADE: TCurrencyField;
    QryProducaoSemoventePRD_DESCRICAO: TStringField;
    QryProducaoSemoventeDIV_DESCRICAO: TStringField;
    QryProducaoSemoventeGRP_DESCRICAO: TStringField;
    QryProducaoSemoventeCLS_DESCRICAO: TStringField;
    QryProducaoAtividadeATV_ID: TLargeintField;
    QryProducaoAtividadeATV_AREA_PLANTADA: TCurrencyField;
    QryProducaoAtividadeATV_AREA_COLHIDA: TCurrencyField;
    QryProducaoAtividadeATV_AREA_PERDIDA: TCurrencyField;
    QryProducaoAtividadeATV_PERIODO_PLANTIO: TIntegerField;
    QryProducaoAtividadeATV_QUANTIDADE: TCurrencyField;
    QryProducaoAtividadeATV_DATA_VISITA: TDateField;
    QryProducaoAtividadeREG_EXCLUIDO: TSmallintField;
    QryProducaoAtividadeREG_REPLICADO: TSmallintField;
    QryProducaoAtividadeREG_USUARIO: TStringField;
    QryProducaoAtividadeREG_MODIFICADO: TSQLTimeStampField;
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
    QryProducaoProdutoREG_REPLICADO: TSmallintField;
    QryProducaoProdutoREG_USUARIO: TStringField;
    QryProducaoProdutoREG_MODIFICADO: TSQLTimeStampField;
    QryProducaoProdutoATV_ID: TLargeintField;
    QryProducaoProdutoPRD_ID: TIntegerField;
    QryProducaoProdutoDEV_ID: TIntegerField;
    QryProducaoProdutoUNI_ID: TIntegerField;
    QryProducaoProdutoDES_ID: TIntegerField;
    QryProducaoProdutoPRP_DESCRICAO_PRODUTO_DERIVADO: TStringField;
    QryProducaoProdutoUNI_UNIDADE: TStringField;
    QryProducaoProdutoDESTINO: TStringField;
    QryProducaoProdutoPRP_VALOR_TOTAL: TBCDField;
    QryProducaoBeneficiarioBPR_ID: TLargeintField;
    QryProducaoBeneficiarioBEN_ID: TLargeintField;
    QryProducaoBeneficiarioPRO_ID: TIntegerField;
    QryProducaoBeneficiarioBPR_DATA: TDateField;
    QryProducaoBeneficiarioREG_EXCLUIDO: TSmallintField;
    QryProducaoBeneficiarioREG_REPLICADO: TSmallintField;
    QryProducaoBeneficiarioREG_USUARIO: TStringField;
    QryProducaoBeneficiarioREG_MODIFICADO: TSQLTimeStampField;
    QryProducaoBeneficiarioBEN_NOME: TStringField;
    QryProducaoBeneficiarioBEN_CPF: TStringField;
    QryProducaoBeneficiarioBEN_SEXO: TStringField;
    QryProducaoBeneficiarioBEN_NASCIMENTO: TDateField;
    QryBem: TFDQuery;
    QrySemovente: TFDQuery;
    QryProduto: TFDQuery;
    UpdtProduto: TFDUpdateSQL;
    QryDerivado: TFDQuery;
    QryDerivadoDEV_ID: TIntegerField;
    QryDerivadoDEV_DESCRICAO: TStringField;
    QryDerivadoUNI_ID: TIntegerField;
    QryDerivadoUNI_DESCRICAO: TStringField;
    QryDestino: TFDQuery;
    QryDestinoDES_ID: TIntegerField;
    QryDestinoDES_DESCRICAO: TStringField;
    QryProducaoSemoventeREG_EXCLUIDO: TSmallintField;
    QryProducaoSemoventeREG_REPLICADO: TSmallintField;
    QryProducaoSemoventeREG_USUARIO: TStringField;
    QryProducaoSemoventeREG_MODIFICADO: TSQLTimeStampField;
    GrpBxBeneficiario: TcxGroupBox;
    cxDBNavigator1: TcxDBNavigator;
    DbEdtBeneficiario: TcxDBTextEdit;
    DbEdtCPF: TcxDBTextEdit;
    QryProducaoBemBEN_ID: TLargeintField;
    QryProducaoSemoventeBEN_ID: TLargeintField;
    QryProducaoAtividadeBEN_ID: TLargeintField;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label48: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label12: TLabel;
    QryProducaoAtividadeATV_ANO: TIntegerField;
    QryProducaoAtividadeATV_PERIODO_COLHEITA: TIntegerField;
    QryProducaoAtividadeATV_PERIODO: TStringField;
    QryPrincipalDAT_ID: TIntegerField;
    DbLkpCmbBxDatum: TcxDBLookupComboBox;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure DbChckBxCARClick(Sender: TObject);
    procedure DbChckBxEnergiaClick(Sender: TObject);
    procedure DbChckBxAguaClick(Sender: TObject);
    procedure DbEdtDenominacaoPropertiesChange(Sender: TObject);
    procedure BtnComunidadeBuscarClick(Sender: TObject);
    procedure BtnBemNovoClick(Sender: TObject);
    procedure BtnBemSalvarClick(Sender: TObject);
    procedure BtnBemCancelarClick(Sender: TObject);
    procedure BtnBemExcluirClick(Sender: TObject);
    procedure DtSrcProducaoBemStateChange(Sender: TObject);
    procedure TbShtBenfeitoriasShow(Sender: TObject);
    procedure TbShtMaquinasShow(Sender: TObject);
    procedure TbShtSemoventesShow(Sender: TObject);
    procedure BtnSemNovoClick(Sender: TObject);
    procedure BtnSemSalvarClick(Sender: TObject);
    procedure BtnSemCancelarClick(Sender: TObject);
    procedure BtnSemExcluirClick(Sender: TObject);
    procedure DtSrcProducaoSemoventeStateChange(Sender: TObject);
    procedure DtSrcProducaoAtividadeStateChange(Sender: TObject);
    procedure BtnAtvIncluirClick(Sender: TObject);
    procedure BtnAtvEditarClick(Sender: TObject);
    procedure BtnAtvExcluirClick(Sender: TObject);
    procedure GrdPrdAtvTblDblClick(Sender: TObject);
    procedure DtSrcProducaoProdutoStateChange(Sender: TObject);
    procedure BtnPrdIncluirClick(Sender: TObject);
    procedure BtnPrdEditarClick(Sender: TObject);
    procedure BtnPrdExcluirClick(Sender: TObject);
    procedure GrdPrdTblDblClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DtSrcProducaoBeneficiarioStateChange(Sender: TObject);
    procedure TbShtBeneficiariosShow(Sender: TObject);
    procedure BtnBenIncluirClick(Sender: TObject);
    procedure BtnBenExcluirClick(Sender: TObject);
    procedure BtnBenVisualizarClick(Sender: TObject);
    procedure GrdBenTblDblClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
    procedure QryPrincipalAfterScroll(DataSet: TDataSet);
    procedure QryPrincipalCalcFields(DataSet: TDataSet);
    procedure QryProducaoBemAfterPost(DataSet: TDataSet);
    procedure QryProducaoBemNewRecord(DataSet: TDataSet);
    procedure QryProducaoBemBeforePost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
    procedure QryProducaoSemoventeAfterPost(DataSet: TDataSet);
    procedure QryProducaoSemoventeBeforePost(DataSet: TDataSet);
    procedure QryProducaoSemoventeNewRecord(DataSet: TDataSet);
    procedure QryProducaoAtividadeAfterPost(DataSet: TDataSet);
    procedure QryProducaoAtividadeAfterScroll(DataSet: TDataSet);
    procedure QryProducaoAtividadeBeforePost(DataSet: TDataSet);
    procedure QryProducaoAtividadeNewRecord(DataSet: TDataSet);
    procedure QryProducaoProdutoAfterPost(DataSet: TDataSet);
    procedure QryProducaoProdutoBeforePost(DataSet: TDataSet);
    procedure QryProducaoProdutoCalcFields(DataSet: TDataSet);
    procedure QryProducaoProdutoNewRecord(DataSet: TDataSet);
    procedure QryProducaoBeneficiarioAfterPost(DataSet: TDataSet);
    procedure TbShtAtividadesShow(Sender: TObject);
    procedure QryProducaoAtividadeATV_PERIODO_PLANTIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QryProducaoAtividadeATV_PERIODO_PLANTIOSetText(Sender: TField; const Text: string);
    procedure QryProducaoBeneficiarioAfterScroll(DataSet: TDataSet);
  private
    procedure AtualizarReplicacaoPendente;
    procedure AplicarUltimaAlteracao;
    procedure RecenteRegistrar;
  end;

var
  FrmCadastroUnidade: TFrmCadastroUnidade;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Cadastro.Modulo, Emater.Recurso.Modulo, Emater.Dne.Modulo, Emater.Sistema.Modulo,
  Emater.Pessoal.Modulo, Emater.Dialogo.Modulo, Emater.Base.Consts, Emater.Cadastro.Unidade.Atividade,
  Emater.Cadastro.Unidade.Comercio, Emater.Cadastro.Comunidade, Emater.Cadastro.Consts, Emater.Cadastro.Beneficiario.Busca,
  Emater.Cadastro.Beneficiario, Emater.Log.Modulo, Emater.Sistema.Consts, Emater.Sistema.Principal;

procedure TFrmCadastroUnidade.AtualizarReplicacaoPendente;
begin
  DtmLogModulo.ReplicacaoPendenteExibir(
    CADASTRO_REPLICACAO_TABELAS_UNIDADE,
    CampoChave,
    QryPrincipal.FieldByName(CampoChave).AsString, LblReplicacao);
end;

procedure TFrmCadastroUnidade.BtnAtvEditarClick(Sender: TObject);
begin
  FrmCadastroUnidadeAtividade := TFrmCadastroUnidadeAtividade.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    QryProducaoAtividade.Edit;

    if not (FrmCadastroUnidadeAtividade.DtSrcProducaoAtividade.DataSet = QryProducaoAtividade) then
      begin
        FrmCadastroUnidadeAtividade.DtSrcProducaoAtividade.DataSet := QryProducaoAtividade;
        FrmCadastroUnidadeAtividade.DtSrcProduto.DataSet := QryProduto;
      end;

    if (FrmCadastroUnidadeAtividade.ShowModal = mrOk) then
      QryProducaoAtividade.Post
    else
      QryProducaoAtividade.Cancel;
    AtualizarReplicacaoPendente;
  finally
    FrmCadastroUnidadeAtividade.Release;
    FrmCadastroUnidadeAtividade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroUnidade.BtnAtvExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryProducaoAtividade);

      DtSrcProducaoAtividade.OnStateChange(QryProducaoAtividade);

      QryProducaoProduto.Close;
      QryProducaoProduto.Open;

      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCadastroUnidade.BtnAtvIncluirClick(Sender: TObject);
begin
  FrmCadastroUnidadeAtividade := TFrmCadastroUnidadeAtividade.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    QryProducaoAtividade.Last;
    QryProducaoAtividade.Append;

    FrmCadastroUnidadeAtividade.DtSrcProducaoAtividade.DataSet := QryProducaoAtividade;
    FrmCadastroUnidadeAtividade.DtSrcProduto.DataSet := QryProduto;

    if (FrmCadastroUnidadeAtividade.ShowModal = mrOk) then
      begin
        QryProducaoAtividade.Post;
        QryProducaoAtividade.Refresh;
        AtualizarReplicacaoPendente;

        if Msg.Confirmacao(CADASTRO_CONFIRMAR_INCLUIR_COMERCIALIZACAO) then
          begin
            if BtnPrdIncluir.Enabled and BtnPrdIncluir.Visible then
              BtnPrdIncluir.Click;
          end;
      end
    else
      QryProducaoAtividade.Cancel;
  finally
    FrmCadastroUnidadeAtividade.Release;
    FrmCadastroUnidadeAtividade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroUnidade.BtnBemCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (QryProducaoBem.State in [dsEdit, dsInsert]) then
        begin
          QryProducaoBem.Cancel;
          AtualizarReplicacaoPendente;
        end;
      if (PgCntrlMain.ActivePage = TbShtBenfeitorias) then
        DbLkpCmbBxBenfeitoria.SetFocus
      else
        DbLkpCmbBxMaquina.SetFocus;
    end;
end;

procedure TFrmCadastroUnidade.BtnBemExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryProducaoBem);
      DtSrcProducaoBem.OnStateChange(QryProducaoBem);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroUnidade.BtnBemNovoClick(Sender: TObject);
begin
  QryProducaoBem.Insert;
  if (PgCntrlMain.ActivePage = TbShtBenfeitorias) then
    DbLkpCmbBxBenfeitoria.SetFocus
  else
    DbLkpCmbBxMaquina.SetFocus;
end;

procedure TFrmCadastroUnidade.BtnBemSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(QryProducaoBem) then
      begin
        QryProducaoBem.Post;
        QryProducaoBem.Refresh;
        ColorirCamposObrigatorios(clWindowText);
        AtualizarReplicacaoPendente;
        if (PgCntrlMain.ActivePage = TbShtBenfeitorias) then
          DbLkpCmbBxBenfeitoria.SetFocus
        else
          DbLkpCmbBxMaquina.SetFocus;
      end
    else
      ColorirCamposObrigatorios(clRed);
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCadastroUnidade.BtnBenExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryProducaoBeneficiario);
      DtSrcProducaoBeneficiario.OnStateChange(DtSrcProducaoBeneficiario);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroUnidade.BtnBenIncluirClick(Sender: TObject);
begin
  FrmCadastroBeneficiarioBusca := TFrmCadastroBeneficiarioBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmCadastroBeneficiarioBusca.ShowModal = mrOk) then
      try
        QryProducaoBeneficiario.Last;
        QryProducaoBeneficiario.Append;
        QryProducaoBeneficiarioPRO_ID.AsInteger := QryPrincipalPRO_ID.Value;
        QryProducaoBeneficiarioBEN_ID.AsLargeInt := FrmCadastroBeneficiarioBusca.QryConsultaBEN_ID.AsLargeInt;
        QryProducaoBeneficiarioBPR_DATA.Value := Date;

        DtmSistemaModulo.GravarAuditoriaInclusao(QryProducaoBeneficiario, 'TAB_CAD_BENEFICIARIO_PRODUCAO', 'BPR_ID');

        QryProducaoBeneficiario.Post;
        QryProducaoBeneficiario.Refresh;
        AtualizarReplicacaoPendente;
      except
        on E: Exception do
          if QryProducaoBeneficiario.State = dsInsert then
            QryProducaoBeneficiario.Cancel;
      end;
  finally
    FrmCadastroBeneficiarioBusca.Release;
    FrmCadastroBeneficiarioBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroUnidade.BtnBenVisualizarClick(Sender: TObject);
begin
  FrmCadastroBeneficiario := TFrmCadastroBeneficiario.Create(Self);
  Screen.Cursor := crHourGlass;
  try
    FrmCadastroBeneficiario.Visualizar(QryProducaoBeneficiarioBEN_ID.AsLargeInt);
  finally
    FrmCadastroBeneficiario.Release;
    FrmCadastroBeneficiario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroUnidade.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  AtualizarReplicacaoPendente;
end;

procedure TFrmCadastroUnidade.BtnComunidadeBuscarClick(Sender: TObject);
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

procedure TFrmCadastroUnidade.BtnExcluirClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := QryPrincipalPRO_ID.AsInteger;
  inherited;
  if (QryPrincipal.RecordCount = 0) then
    FrmSistemaPrincipal.RecenteRemover(FrmSistemaPrincipal.VwGlrCntrlUPF, ID);
end;

procedure TFrmCadastroUnidade.BtnPrdEditarClick(Sender: TObject);
begin
  FrmCadastroUnidadeComercio := TFrmCadastroUnidadeComercio.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    QryProducaoProduto.Edit;

    FrmCadastroUnidadeComercio.DtSrcProduto.DataSet := QryProduto;
    FrmCadastroUnidadeComercio.DtSrcDerivado.DataSet := QryDerivado;
    FrmCadastroUnidadeComercio.DtSrcDestino.DataSet := QryDestino;
    FrmCadastroUnidadeComercio.DtSrcProducaoAtividade.DataSet := QryProducaoAtividade;
    FrmCadastroUnidadeComercio.DtSrcProducaoProduto.DataSet := QryProducaoProduto;

    if (FrmCadastroUnidadeComercio.ShowModal = mrOk) then
      begin
        QryProducaoProduto.Post;
        QryProducaoProduto.Refresh;
      end
    else
      QryProducaoProduto.Cancel;
    AtualizarReplicacaoPendente;
  finally
    FrmCadastroUnidadeComercio.Release;
    FrmCadastroUnidadeComercio := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroUnidade.BtnPrdExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtmSistemaModulo.GravarAuditoriaExclusao(QryProducaoProduto);

      DtSrcProducaoProduto.OnStateChange(QryProducaoProduto);
      AtualizarReplicacaoPendente;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmCadastroUnidade.BtnPrdIncluirClick(Sender: TObject);
begin
  FrmCadastroUnidadeComercio := TFrmCadastroUnidadeComercio.Create(Self);
  try
    Screen.Cursor := crHourGlass;
    QryProducaoProduto.Last;
    QryProducaoProduto.Append;

    FrmCadastroUnidadeComercio.DtSrcProduto.DataSet := QryProduto;
    FrmCadastroUnidadeComercio.DtSrcDerivado.DataSet := QryDerivado;
    FrmCadastroUnidadeComercio.DtSrcDestino.DataSet := QryDestino;
    FrmCadastroUnidadeComercio.DtSrcProducaoAtividade.DataSet := QryProducaoAtividade;
    FrmCadastroUnidadeComercio.DtSrcProducaoProduto.DataSet := QryProducaoProduto;

    if (FrmCadastroUnidadeComercio.ShowModal = mrOk) then
      begin
        if (QryProducaoProduto.State in [dsInsert]) then
          begin
            // Salva o registro principal:
            QryProducaoProduto.Post;
            QryProducaoProduto.Refresh;
            AtualizarReplicacaoPendente;
          end;
      end
    else
      QryProducaoProduto.Cancel;
  finally
    FrmCadastroUnidadeComercio.Release;
    FrmCadastroUnidadeComercio := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadastroUnidade.BtnSalvarClick(Sender: TObject);
begin
  if (QryPrincipalPRO_AREA_LEGAL.Value <= 0) then
    begin
      Msg.Aviso(CADASTRO_AVISO_AREA_LEGAL);
      DbEdtAreaLegal.SetFocus;
      Exit;
    end;

  if (QryPrincipalPRO_AREA_REAL.Value <= 0) then
    begin
      Msg.Aviso(CADASTRO_AVISO_AREA_REAL);
      DbEdtAreaReal.SetFocus;
      Exit;
    end;

  if (QryPrincipalPRO_LATITUDE_GRAUS.Value > 60) or (QryPrincipalPRO_LATITUDE_MINUTOS.Value > 60) or
    (QryPrincipalPRO_LATITUDE_SEGUNDOS.Value > 60) or (QryPrincipalPRO_LONGITUDE_GRAUS.Value > 60) or
    (QryPrincipalPRO_LONGITUDE_MINUTOS.Value > 60) or (QryPrincipalPRO_LONGITUDE_SEGUNDOS.Value > 60) then
    begin
      Msg.Aviso(CADASTRO_AVISO_LATITUDE_LONGITUDE_INVALIDO);
      DbEdtLatGraus.SetFocus;
    end
  else
    begin
      inherited;
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroUnidade.BtnSemCancelarClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
    begin
      if (QryProducaoSemovente.State in [dsEdit, dsInsert]) then
        begin
          QryProducaoSemovente.Cancel;
          AtualizarReplicacaoPendente;
        end;
      DbLkpCmbBxSemovente.SetFocus;
    end;
end;

procedure TFrmCadastroUnidade.BtnSemExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryProducaoSemovente);
      DtSrcProducaoSemovente.OnStateChange(QryProducaoSemovente);
      AtualizarReplicacaoPendente;
    end;
end;

procedure TFrmCadastroUnidade.BtnSemNovoClick(Sender: TObject);
begin
  QryProducaoSemovente.Last;
  QryProducaoSemovente.Append;
  DbLkpCmbBxSemovente.SetFocus;
end;

procedure TFrmCadastroUnidade.BtnSemSalvarClick(Sender: TObject);
begin
  try
    if not DtmDialogoModulo.ExisteCamposPendentes(QryProducaoSemovente) then
      begin
        QryProducaoSemovente.Post;
        QryProducaoSemovente.Refresh;
        DbLkpCmbBxSemovente.SetFocus;
        AtualizarReplicacaoPendente;
      end;
  except on E: Exception do
    begin
      Msg.Erro(BASE_MSG_ERRO_SALVAR);
      Abort;
    end;
  end;
end;

procedure TFrmCadastroUnidade.TbShtMaquinasShow(Sender: TObject);
begin
  GrpBxBeneficiario.Parent := TbShtMaquinas;
  if not QryProducaoBeneficiario.Active then
    QryProducaoBeneficiario.Open;

  if not QryProducaoBem.Active then
    begin
      QryProducaoBem.Open;
      QryBem.Open;
    end;

  QryProducaoBem.Filtered := False;
  QryProducaoBem.Filter := 'cls_id in (100000002, 100000003)';
  QryProducaoBem.Filtered := True;

  QryBem.Filtered := False;
  QryBem.Filter := 'cls_id in (100000002, 100000003)';
  QryBem.Filtered := True;

  DtSrcProducaoBem.OnStateChange(Sender);
end;

procedure TFrmCadastroUnidade.TbShtSemoventesShow(Sender: TObject);
begin
  GrpBxBeneficiario.Parent := TbShtSemoventes;
  if not QryProducaoBeneficiario.Active then
    QryProducaoBeneficiario.Open;
  if not QryProducaoSemovente.Active then
    begin
      QryProducaoSemovente.Open;
      QrySemovente.Open;
    end;

  DtSrcProducaoSemovente.OnStateChange(Sender);
end;

procedure TFrmCadastroUnidade.DbChckBxAguaClick(Sender: TObject);
begin
  inherited;
  DbChckBxAguaConcessionaria.Enabled := DbChckBxAgua.Checked;
  DbChckBxAguaPocoArtesiano.Enabled := DbChckBxAgua.Checked;
  DbChckBxAguaPocoAmazonico.Enabled := DbChckBxAgua.Checked;
  DbChckBxAguaRio.Enabled := DbChckBxAgua.Checked;
  DbChckBxAguaOutras.Enabled := DbChckBxAgua.Checked;

  if (QryPrincipal.State in [dsEdit, dsInsert]) and (not DbChckBxAgua.Checked) then
    begin
      QryPrincipalPRO_AGUA_CONCESSIONARIA.Value := 0;
      QryPrincipalPRO_AGUA_POCO_ARTESIANO.Value := 0;
      QryPrincipalPRO_AGUA_POCO_AMAZONICO.Value := 0;
      QryPrincipalPRO_AGUA_RIO.Value := 0;
      QryPrincipalPRO_AGUA_OUTRAS.Value := 0;
    end;
end;

procedure TFrmCadastroUnidade.DbChckBxCARClick(Sender: TObject);
begin
  LblCARNumero.Enabled := DbChckBxCAR.Checked;
  DbEdtCARNumero.Enabled := DbChckBxCAR.Checked;
  LblCARData.Enabled := DbChckBxCAR.Checked;
  DbEdtCARData.Enabled := DbChckBxCAR.Checked;
end;

procedure TFrmCadastroUnidade.DbChckBxEnergiaClick(Sender: TObject);
begin
  inherited;
  DbChckBxEnergiaConcessioaria.Enabled := DbChckBxEnergia.Checked;
  DbChckBxEnergiaOutras.Enabled := DbChckBxEnergia.Checked;

  if (QryPrincipal.State in [dsEdit, dsInsert]) and (not DbChckBxEnergia.Checked) then
    begin
      QryPrincipalPRO_ENERGIA_CONCESSIONARIA.Value := 0;
      QryPrincipalPRO_ENERGIA_OUTRAS.Value := 0;
    end;
end;

procedure TFrmCadastroUnidade.DbEdtDenominacaoPropertiesChange(Sender: TObject);
begin
  inherited;
  LblTitulo.Caption := StringOfChar(' ', 6) + DbEdtDenominacao.Text;
end;

procedure TFrmCadastroUnidade.DtSrcProducaoBeneficiarioStateChange(Sender: TObject);
begin
  BtnBenIncluir.Enabled := (QryPrincipal.RecordCount > 0) and (QryProducaoBeneficiario.State = dsBrowse);
  BtnBenExcluir.Enabled := (QryPrincipal.RecordCount > 0) and (QryProducaoBeneficiario.RecordCount > 0);
  BtnBenVisualizar.Enabled := (QryPrincipal.RecordCount > 0) and (QryProducaoBeneficiario.RecordCount > 0);
end;

procedure TFrmCadastroUnidade.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;

  // Abas:
  TbShtBenfeitorias.TabVisible := (DtSrcPrincipal.State in [dsBrowse, dsEdit]) and (QryPrincipal.RecordCount > 0);
  TbShtMaquinas.TabVisible := TbShtBenfeitorias.TabVisible;
  TbShtSemoventes.TabVisible := TbShtBenfeitorias.TabVisible;
  TbShtAtividades.TabVisible := TbShtBenfeitorias.TabVisible;
  TbShtBeneficiarios.TabVisible := TbShtBenfeitorias.TabVisible;
end;

procedure TFrmCadastroUnidade.DtSrcProducaoAtividadeStateChange(Sender: TObject);
begin
  with QryProducaoAtividade do
    begin
      BtnAtvIncluir.Enabled := (State = dsBrowse);
      BtnAtvEditar.Enabled := (State = dsBrowse) and (RecordCount > 0);
      BtnAtvExcluir.Enabled := (State = dsBrowse) and (RecordCount > 0);
    end;
  DtSrcProducaoProduto.OnStateChange(QryProducaoProduto);
end;

procedure TFrmCadastroUnidade.DtSrcProducaoBemStateChange(Sender: TObject);
begin
  with QryProducaoBem do
    begin
      BtnBemNovo.Enabled := (State = dsBrowse);
      BtnBemExcluir.Enabled := (State = dsBrowse) and (RecordCount > 0);
      BtnBemCancelar.Enabled := (State in [dsEdit, dsInsert]);
      BtnBemSalvar.Enabled := (State in [dsEdit, dsInsert]);

      BtnMaqNovo.Enabled := (State = dsBrowse);
      BtnMaqExcluir.Enabled := (State = dsBrowse) and (RecordCount > 0);
      BtnMaqCancelar.Enabled := (State in [dsEdit, dsInsert]);
      BtnMaqSalvar.Enabled := (State in [dsEdit, dsInsert]);
    end;
end;

procedure TFrmCadastroUnidade.DtSrcProducaoProdutoStateChange(Sender: TObject);
begin
  with QryProducaoProduto do
    begin
      BtnPrdIncluir.Enabled := (State = dsBrowse) and (not (State = dsInactive)) and (QryProducaoAtividade.RecordCount > 0);
      BtnPrdEditar.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0) and (QryProducaoAtividade.RecordCount > 0);
      BtnPrdExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0) and (QryProducaoAtividade.RecordCount > 0);
    end;
end;

procedure TFrmCadastroUnidade.DtSrcProducaoSemoventeStateChange(Sender: TObject);
begin
  with QryProducaoSemovente do
    begin
      BtnSemNovo.Enabled := (State = dsBrowse);
      BtnSemExcluir.Enabled := (State = dsBrowse) and (RecordCount > 0);
      BtnSemCancelar.Enabled := (State in [dsEdit, dsInsert]);
      BtnSemSalvar.Enabled := (State in [dsEdit, dsInsert]);
    end;
end;

procedure TFrmCadastroUnidade.AplicarUltimaAlteracao;
begin
  if not (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Edit;
  QryPrincipalREG_MODIFICADO.Value := DateTimeToSQLTimeStamp(Now);
  QryPrincipalREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    QryPrincipal.Post;
end;

procedure TFrmCadastroUnidade.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalPRO_ENERGIA_SITUACAO.Value := 0;
  QryPrincipalPRO_ENERGIA_CONCESSIONARIA.Value := 0;
  QryPrincipalPRO_ENERGIA_OUTRAS.Value := 0;
  QryPrincipalPRO_AGUA_SITUACAO.Value := 0;
  QryPrincipalPRO_AGUA_CONCESSIONARIA.Value := 0;
  QryPrincipalPRO_AGUA_POCO_ARTESIANO.Value := 0;
  QryPrincipalPRO_AGUA_POCO_AMAZONICO.Value := 0;
  QryPrincipalPRO_AGUA_RIO.Value := 0;
  QryPrincipalPRO_AGUA_OUTRAS.Value := 0;
  QryPrincipalPRO_CAR.Value := 0;
  QryPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  QryPrincipalPRO_DATA.Value := Date;
  QryPrincipalCID_ID.Value := DtmConexaoModulo.MunicipioID;

  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    QryPrincipalFUN_ID.AsInteger := DtmConexaoModulo.FuncionarioID;
end;

procedure TFrmCadastroUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtDenominacao;
  CampoChave := 'PRO_ID';
  Tabela := 'TAB_CAD_PRODUCAO_FAMILIAR';

  DbLkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidade;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  DbLkpCmbBxComunidade.Properties.ListSource := DtmCadastroModulo.DtSrcComunidade;
  DbLkpCmbBxDocumento.Properties.ListSource := DtmCadastroModulo.DtSrcDocumentoTipo;
  DbLkpCmbBxOcupacao.Properties.ListSource := DtmCadastroModulo.DtSrcOcupacaoTipo;
  DbLkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  DbLkpCmbBxDatum.Properties.ListSource := DtmCadastroModulo.DtSrcDatum;
end;

procedure TFrmCadastroUnidade.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcPrincipal.OnStateChange(QryPrincipal);

  DbChckBxCAR.OnClick(DbChckBxCAR);
  DbChckBxEnergia.OnClick(DbChckBxEnergia);
  DbChckBxAgua.OnClick(DbChckBxAgua);

  AtualizarReplicacaoPendente;

  RecenteRegistrar;
end;

procedure TFrmCadastroUnidade.GrdBenTblDblClick(Sender: TObject);
begin
  if BtnBenVisualizar.Visible and BtnBenVisualizar.Enabled then
    BtnBenVisualizar.Click;
end;

procedure TFrmCadastroUnidade.GrdPrdAtvTblDblClick(Sender: TObject);
begin
  if BtnAtvEditar.Enabled and BtnAtvEditar.Visible then
    BtnAtvEditar.Click;
end;

procedure TFrmCadastroUnidade.GrdPrdTblDblClick(Sender: TObject);
begin
  if BtnPrdEditar.Enabled and BtnPrdEditar.Visible then
    BtnPrdEditar.Click;
end;

procedure TFrmCadastroUnidade.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  RecenteRegistrar;
end;

procedure TFrmCadastroUnidade.QryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DtSrcPrincipal.OnStateChange(DataSet);
end;

procedure TFrmCadastroUnidade.QryPrincipalCalcFields(DataSet: TDataSet);
begin
  inherited;

  if (QryPrincipalPRO_AREA_REAL.Value > 0) then
    begin
      QryPrincipalPRO_AREA_NUA_PERC.Value := RoundTo(QryPrincipalPRO_AREA_NUA.Value * 100 / QryPrincipalPRO_AREA_REAL.Value, -2);
      QryPrincipalPRO_AREA_PASTAGEM_PERC.Value := RoundTo(QryPrincipalPRO_AREA_PASTAGEM.Value * 100 / QryPrincipalPRO_AREA_REAL.Value, -2);
      QryPrincipalPRO_AREA_PERMANENTE_PERC.Value := RoundTo(QryPrincipalPRO_AREA_PERMANENTE.Value * 100 / QryPrincipalPRO_AREA_REAL.Value, -2);
      QryPrincipalPRO_AREA_TEMPORARIA_PERC.Value := RoundTo(QryPrincipalPRO_AREA_TEMPORARIA.Value * 100 / QryPrincipalPRO_AREA_REAL.Value, -2);
      QryPrincipalPRO_AREA_RESERVA_PERC.Value := RoundTo(QryPrincipalPRO_AREA_RESERVA.Value * 100 / QryPrincipalPRO_AREA_REAL.Value, -2);
      QryPrincipalPRO_AREA_OUTROS_PERC.Value := RoundTo(QryPrincipalPRO_AREA_OUTROS.Value * 100 / QryPrincipalPRO_AREA_REAL.Value, -2);

      QryPrincipalPRO_AREA_TOTAL_PERC.Value := RoundTo(QryPrincipalPRO_AREA_NUA_PERC.Value +
        QryPrincipalPRO_AREA_PASTAGEM_PERC.Value +
        QryPrincipalPRO_AREA_PERMANENTE_PERC.Value +
        QryPrincipalPRO_AREA_TEMPORARIA_PERC.Value +
        QryPrincipalPRO_AREA_RESERVA_PERC.Value +
        QryPrincipalPRO_AREA_OUTROS_PERC.Value, 0);

      QryPrincipalPRO_AREA_TOTAL_REAL.Value := QryPrincipalPRO_AREA_NUA.Value +
        QryPrincipalPRO_AREA_PASTAGEM.Value +
        QryPrincipalPRO_AREA_PERMANENTE.Value +
        QryPrincipalPRO_AREA_TEMPORARIA.Value +
        QryPrincipalPRO_AREA_RESERVA.Value +
        QryPrincipalPRO_AREA_OUTROS.Value;
    end
  else
    begin
      QryPrincipalPRO_AREA_NUA_PERC.Value := 0;
      QryPrincipalPRO_AREA_PASTAGEM_PERC.Value := 0;
      QryPrincipalPRO_AREA_PERMANENTE_PERC.Value := 0;
      QryPrincipalPRO_AREA_TEMPORARIA_PERC.Value := 0;
      QryPrincipalPRO_AREA_RESERVA_PERC.Value := 0;
      QryPrincipalPRO_AREA_OUTROS_PERC.Value := 0;

      QryPrincipalPRO_AREA_TOTAL_PERC.Value := 0;
      QryPrincipalPRO_AREA_TOTAL_REAL.Value := 0;
    end;
end;

procedure TFrmCadastroUnidade.QryProducaoAtividadeAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroUnidade.QryProducaoAtividadeAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DtSrcProducaoProduto.OnStateChange(DtSrcProducaoProduto);
end;

procedure TFrmCadastroUnidade.QryProducaoAtividadeATV_PERIODO_PLANTIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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

procedure TFrmCadastroUnidade.QryProducaoAtividadeATV_PERIODO_PLANTIOSetText(Sender: TField; const Text: string);
begin
  inherited;
  if (Trim(Text) <> '') then
    Sender.AsInteger := StrToInt(Copy(Text, 3, 4) + Copy(Text, 1 ,2));
end;

procedure TFrmCadastroUnidade.QryProducaoAtividadeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QryProducaoAtividade.State = dsInsert) then
    begin
      QryProducaoAtividadeATV_ID.AsLargeInt := DtmSistemaModulo.GerarIdentificador('TAB_CAD_PRODUCAO_ATIVIDADE', 'ATV_ID');
      QryProducaoAtividadeREG_EXCLUIDO.Value := 0;
    end;
  QryProducaoAtividadeREG_REPLICADO.Value := 0;
  QryProducaoAtividadeREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  QryProducaoAtividadeREG_MODIFICADO.Value := DateTimeToSQLTimeStamp(Now);
end;

procedure TFrmCadastroUnidade.QryProducaoAtividadeNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryProducaoAtividadeATV_AREA_PLANTADA.Value := 0;
  QryProducaoAtividadeATV_AREA_COLHIDA.Value := 0;
  QryProducaoAtividadeATV_DATA_VISITA.Value := Date;
  QryProducaoAtividadePRO_ID.Value := QryProducaoBeneficiarioPRO_ID.Value;
  QryProducaoAtividadeBEN_ID.Value := QryProducaoBeneficiarioBEN_ID.Value;
  QryProducaoAtividadeUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  QryProducaoAtividadeATV_ANO.AsInteger := YearOf(Date);

  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    QryProducaoAtividadeFUN_ID.AsInteger := DtmConexaoModulo.FuncionarioID;
end;

procedure TFrmCadastroUnidade.QryProducaoBemAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroUnidade.QryProducaoBemBeforePost(DataSet: TDataSet);
begin
  inherited;
  QryProducaoBemREG_REPLICADO.Value := 0;
  QryProducaoBemREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  QryProducaoBemREG_MODIFICADO.Value := DateTimeToSQLTimeStamp(Now);
end;

procedure TFrmCadastroUnidade.QryProducaoBemNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarIdentificador(QryProducaoBem, 'TAB_CAD_PRODUCAO_BEM', 'PBE_ID');
  QryProducaoBemBEN_ID.Value := QryProducaoBeneficiarioBEN_ID.Value;
  QryProducaoBemPRO_ID.Value := QryProducaoBeneficiarioPRO_ID.Value;
  QryProducaoBemBEM_QUANTIDADE.Value := 1;
  QryProducaoBemBEM_ESTADO.Value := 1;
  QryProducaoBemBEM_DATA.Value := Date;
  QryProducaoBemREG_EXCLUIDO.Value := 0;
end;

procedure TFrmCadastroUnidade.QryProducaoBeneficiarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroUnidade.QryProducaoBeneficiarioAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DtSrcProducaoAtividade.OnStateChange(DataSet);
  DtSrcProducaoBem.OnStateChange(DataSet);
  DtSrcProducaoSemovente.OnStateChange(DataSet);
end;

procedure TFrmCadastroUnidade.QryProducaoProdutoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroUnidade.QryProducaoProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (QryProducaoProduto.State = dsInsert) then
    begin
      QryProducaoProdutoPRP_ID.AsInteger := DtmSistemaModulo.GerarIdentificador('TAB_CAD_PRODUCAO_PRODUTO', 'PRP_ID');
      QryProducaoProdutoREG_EXCLUIDO.Value := 0;
    end;

  QryProducaoProdutoREG_REPLICADO.Value := 0;
  QryProducaoProdutoREG_MODIFICADO.Value := DateTimeToSQLTimeStamp(Now);
  QryProducaoProdutoREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
end;

procedure TFrmCadastroUnidade.QryProducaoProdutoCalcFields(DataSet: TDataSet);
begin
  inherited;
  QryProducaoProdutoPRP_VALOR_TOTAL.Value := (
    QryProducaoProdutoPRP_QTDE_COMERCIALIZADA.Value *
    QryProducaoProdutoPRP_VALOR.Value);
end;

procedure TFrmCadastroUnidade.QryProducaoProdutoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryProducaoProdutoATV_ID.AsLargeInt := QryProducaoAtividadeATV_ID.AsLargeInt;
  QryProducaoProdutoPRP_TIPO.Value := 2;
  QryProducaoProdutoPRP_QTDE_CONSUMIDA.Value := 0;
  QryProducaoProdutoPRP_QTDE_COMERCIALIZADA.Value := 0;
  QryProducaoProdutoPRP_VALOR.Value := 0;

  if (QryProducaoProduto.RecordCount = 0) then
    QryProducaoProdutoPRD_ID.Value := QryProducaoAtividadePRD_ID.Value;
end;

procedure TFrmCadastroUnidade.QryProducaoSemoventeAfterPost(DataSet: TDataSet);
begin
  inherited;
  AplicarUltimaAlteracao;
end;

procedure TFrmCadastroUnidade.QryProducaoSemoventeBeforePost(DataSet: TDataSet);
begin
  inherited;
  QryProducaoSemoventeREG_REPLICADO.Value := 0;
  QryProducaoSemoventeREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  QryProducaoSemoventeREG_MODIFICADO.Value := DateTimeToSQLTimeStamp(Now);
end;

procedure TFrmCadastroUnidade.QryProducaoSemoventeNewRecord(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarIdentificador(QryProducaoSemovente, 'TAB_CAD_PRODUCAO_SEMOVENTE', 'PSE_ID');
  QryProducaoSemoventePRO_ID.Value := QryProducaoBeneficiarioPRO_ID.Value;
  QryProducaoSemoventeBEN_ID.Value := QryProducaoBeneficiarioBEN_ID.Value;
  QryProducaoSemoventePRD_QUANTIDADE.Value := 1;
  QryProducaoSemoventeREG_EXCLUIDO.Value := 0;
end;

procedure TFrmCadastroUnidade.RecenteRegistrar;
begin
  if (not QryPrincipal.IsEmpty) and (QryPrincipalPRO_DENOMINACAO.AsString <> '') then
    FrmSistemaPrincipal.RecenteAdicionar(
      FrmSistemaPrincipal.VwGlrCntrlUPF,
      QryPrincipalPRO_ID.AsInteger,
      QryPrincipalPRO_DENOMINACAO.AsString,
      'Município: ' + DbLkpCmbBxMunicipio.Text + ' - Técnico responsável: ' + DbLkpCmbBxTecnico.Text,
      0,
      False);
end;

procedure TFrmCadastroUnidade.TbShtAtividadesShow(Sender: TObject);
begin
  GrpBxBeneficiario.Parent := TbShtAtividades;
  if not QryProducaoBeneficiario.Active then
    QryProducaoBeneficiario.Open;

  QryProducaoAtividade.Open;
  QryProduto.Open;
  QryDerivado.Open;
  QryProducaoProduto.Open;
  QryDestino.Open;

  DtSrcProducaoAtividade.OnStateChange(Sender);
end;

procedure TFrmCadastroUnidade.TbShtBeneficiariosShow(Sender: TObject);
begin
  if not QryProducaoBeneficiario.Active then
    QryProducaoBeneficiario.Open;
end;

procedure TFrmCadastroUnidade.TbShtBenfeitoriasShow(Sender: TObject);
begin
  GrpBxBeneficiario.Parent := TbShtBenfeitorias;
  if not QryProducaoBeneficiario.Active then
    QryProducaoBeneficiario.Open;

  if not QryProducaoBem.Active then
    begin
      QryProducaoBem.Open;
      QryBem.Open;
    end;

  QryProducaoBem.Filtered := False;
  QryProducaoBem.Filter := 'cls_id = 100000001';
  QryProducaoBem.Filtered := True;

  QryBem.Filtered := False;
  QryBem.Filter := 'cls_id = 100000001';
  QryBem.Filtered := True;

  DtSrcProducaoBem.OnStateChange(Sender);
end;

end.
