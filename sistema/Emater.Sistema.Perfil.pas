unit Emater.Sistema.Perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet, pFIBDataSet, cxPC,
  Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer,
  cxCheckBox, cxDBEdit, cxTextEdit, cxGroupBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu;

type
  TFrmSistemaPerfil = class(TFrmBaseTabela)
    DtStPrincipalPER_ID: TFIBIntegerField;
    DtStPrincipalPER_NOME: TFIBStringField;
    DtStPrincipalPER_ATIVO: TFIBBooleanField;
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrdPrincipalTblPER_NOME: TcxGridDBColumn;
    GrdPrincipalTblPER_ATIVO: TcxGridDBColumn;
    GrpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    DbChckBxAtivo: TcxDBCheckBox;
    DtStPrincipalREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_REPLICADO: TFIBBooleanField;
    DtStPrincipalREG_USUARIO: TFIBStringField;
    DtStPrincipalREG_MODIFICADO: TFIBDateTimeField;
    procedure DtStPrincipalAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSistemaPerfil: TFrmSistemaPerfil;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Modulo, Emater.Recurso.Modulo;

procedure TFrmSistemaPerfil.DtStPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.DtStPerfil.Close;
  DtmSistemaModulo.DtStPerfil.Open;
end;

procedure TFrmSistemaPerfil.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'PER_ID';
  Tabela := 'TAB_SIS_PERFIL';
end;

end.
