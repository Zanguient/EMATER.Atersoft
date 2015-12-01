unit Emater.Credito.Classificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, dxBarBuiltInMenu;

type
  TFrmCreditoClassificacao = class(TFrmBaseTabela)
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrpBxInformacao: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    DtStPrincipalCLS_ID: TFIBIntegerField;
    DtStPrincipalCLS_DESCRICAO: TFIBStringField;
    GrdPrincipalTblCLS_DESCRICAO: TcxGridDBColumn;
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
  FrmCreditoClassificacao: TFrmCreditoClassificacao;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Credito.Modulo;

procedure TFrmCreditoClassificacao.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStClassificacao.Close;
  DtmCreditoModulo.DtStClassificacao.Open;
end;

procedure TFrmCreditoClassificacao.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStClassificacao.Close;
  DtmCreditoModulo.DtStClassificacao.Open;
end;

procedure TFrmCreditoClassificacao.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'CLS_ID';
  Tabela := 'TAB_CRD_CLASSIFICACAO';
end;

end.
