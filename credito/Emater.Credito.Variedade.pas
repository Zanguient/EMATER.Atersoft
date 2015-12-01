unit Emater.Credito.Variedade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, dxBarBuiltInMenu;

type
  TFrmCreditoVariedade = class(TFrmBaseTabela)
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrpBxInformacao: TcxGroupBox;
    LblDescricao: TLabel;
    DbEdtNome: TcxDBTextEdit;
    DtStPrincipalVAR_ID: TFIBIntegerField;
    DtStPrincipalVAR_DESCRICAO: TFIBStringField;
    GrdPrincipalTblVAR_DESCRICAO: TcxGridDBColumn;
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
  FrmCreditoVariedade: TFrmCreditoVariedade;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Credito.Modulo;

procedure TFrmCreditoVariedade.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStVariedade.Close;
  DtmCreditoModulo.DtStVariedade.Open;
end;

procedure TFrmCreditoVariedade.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStVariedade.Close;
  DtmCreditoModulo.DtStVariedade.Open;
end;

procedure TFrmCreditoVariedade.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'VAR_ID';
  Tabela := 'TAB_CRD_VARIEDADE';
end;

end.
