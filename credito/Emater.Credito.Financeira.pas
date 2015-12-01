unit Emater.Credito.Financeira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, dxBarBuiltInMenu;

type
  TFrmCreditoFinanceira = class(TFrmBaseTabela)
    DtStPrincipalFIN_ID: TFIBIntegerField;
    DtStPrincipalFIN_DESCRICAO: TFIBStringField;
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrpBxInfo: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    GrdPrincipalTblFIN_DESCRICAO: TcxGridDBColumn;
    DtStPrincipalREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_REPLICADO: TFIBBooleanField;
    DtStPrincipalREG_USUARIO: TFIBStringField;
    DtStPrincipalREG_MODIFICADO: TFIBDateTimeField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCreditoFinanceira: TFrmCreditoFinanceira;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Credito.Modulo;

procedure TFrmCreditoFinanceira.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStFinanceira.Close;
  DtmCreditoModulo.DtStFinanceira.Open;
end;

procedure TFrmCreditoFinanceira.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStFinanceira.Close;
  DtmCreditoModulo.DtStFinanceira.Open;
end;

procedure TFrmCreditoFinanceira.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'FIN_ID';
  Tabela := 'TAB_CRD_FINANCEIRA';
end;

end.
