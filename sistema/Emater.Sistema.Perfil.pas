unit Emater.Sistema.Perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, cxPC,
  Vcl.StdCtrls, cxButtons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer,
  cxCheckBox, cxDBEdit, cxTextEdit, cxGroupBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxImageComboBox;

type
  TFrmSistemaPerfil = class(TFrmBaseTabela)
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalLvl: TcxGridLevel;
    GrdPrincipalTblPER_NOME: TcxGridDBColumn;
    GrdPrincipalTblPER_ATIVO: TcxGridDBColumn;
    GrpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    DbChckBxAtivo: TcxDBCheckBox;
    QryPrincipalPER_ID: TIntegerField;
    QryPrincipalPER_NOME: TStringField;
    QryPrincipalPER_ATIVO: TSmallintField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
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

procedure TFrmSistemaPerfil.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'PER_ID';
  Tabela := 'TAB_SIS_PERFIL';
end;

procedure TFrmSistemaPerfil.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.DtStPerfil.Close;
  DtmSistemaModulo.DtStPerfil.Open;
end;

procedure TFrmSistemaPerfil.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalPER_ATIVO.Value := 1;
end;

end.
