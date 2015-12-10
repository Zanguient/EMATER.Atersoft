unit Emater.Proater.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, FIBDataSet, pFIBDataSet, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxGroupBox, cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

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
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Label30: TLabel;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    Label12: TLabel;
    DbDtEdtElaboracao: TcxDBDateEdit;
    Label37: TLabel;
    DbEdtModificadoData: TcxDBTextEdit;
    Label56: TLabel;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    BtnTematica: TcxButton;
    cxButton2: TcxButton;
    cxTabSheet4: TcxTabSheet;
    FDQuery1: TFDQuery;
    FDUpdateSQL1: TFDUpdateSQL;
    DataSource1: TDataSource;
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
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    GrdCom: TcxGrid;
    GrdComTbl: TcxGridDBTableView;
    GrdComTblCOM_NOME: TcxGridDBColumn;
    GrdComTblPRC_LOCALIZACAO: TcxGridDBColumn;
    GrdComTblPRC_QTDE_BENEFICIARIO: TcxGridDBColumn;
    GrdComTblPRC_QTDE_UPF: TcxGridDBColumn;
    GrdComLvl: TcxGridLevel;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxButton1: TcxButton;
    cxDBMemo2: TcxDBMemo;
    cxPageControl3: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxTabSheet14: TcxTabSheet;
    cxTabSheet15: TcxTabSheet;
    cxPageControl4: TcxPageControl;
    cxTabSheet16: TcxTabSheet;
    cxTabSheet17: TcxTabSheet;
    cxTabSheet18: TcxTabSheet;
    cxTabSheet19: TcxTabSheet;
    cxTabSheet20: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterPrincipal: TFrmProaterPrincipal;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Conexao.Modulo;

procedure TFrmProaterPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
end;

end.
