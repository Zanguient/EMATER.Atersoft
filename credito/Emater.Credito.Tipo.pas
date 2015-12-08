unit Emater.Credito.Tipo;

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
  TFrmCreditoTipo = class(TFrmBaseTabela)
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrpBxInformacao: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    GrdPrincipalTblTIP_DESCRICAO: TcxGridDBColumn;
    QryPrincipalTIP_ID: TIntegerField;
    QryPrincipalTIP_DESCRICAO: TStringField;
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
  FrmCreditoTipo: TFrmCreditoTipo;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Credito.Modulo;

procedure TFrmCreditoTipo.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStTipo.Close;
  DtmCreditoModulo.DtStTipo.Open;
end;

procedure TFrmCreditoTipo.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  DtmCreditoModulo.DtStTipo.Close;
  DtmCreditoModulo.DtStTipo.Open;
end;

procedure TFrmCreditoTipo.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'TIP_ID';
  Tabela := 'TAB_CRD_TIPO';
end;

end.
