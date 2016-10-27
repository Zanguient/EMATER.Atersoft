unit Emater.Credito.Variedade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB,
  cxPC, Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxDBEdit, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCreditoVariedade = class(TFrmBaseTabela)
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrpBxInformacao: TcxGroupBox;
    LblDescricao: TLabel;
    DbEdtNome: TcxDBTextEdit;
    GrdPrincipalTblVAR_DESCRICAO: TcxGridDBColumn;
    QryPrincipalVAR_ID: TIntegerField;
    QryPrincipalVAR_DESCRICAO: TStringField;
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
  Legenda := 'Variedades';
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'VAR_ID';
  Tabela := 'TAB_CRD_VARIEDADE';
end;

end.
