unit Emater.Credito.Linha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCreditoLinha = class(TFrmBaseTabela)
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrpBxInformacao: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    GrdPrincipalTblLIN_DESCRICAO: TcxGridDBColumn;
    QryPrincipalLIN_ID: TIntegerField;
    QryPrincipalLIN_DESCRICAO: TStringField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCreditoLinha: TFrmCreditoLinha;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Credito.Modulo;

procedure TFrmCreditoLinha.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStLinha.Close;
  DtmCreditoModulo.DtStLinha.Open;
end;

procedure TFrmCreditoLinha.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStLinha.Close;
  DtmCreditoModulo.DtStLinha.Open;
end;

procedure TFrmCreditoLinha.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'LIN_ID';
  Tabela := 'TAB_CRD_LINHA';
end;

end.
