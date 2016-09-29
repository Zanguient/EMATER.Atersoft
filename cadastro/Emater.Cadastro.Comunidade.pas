unit Emater.Cadastro.Comunidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxGroupBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinSeven, dxSkinSevenClassic, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroComunidade = class(TFrmBaseTabela)
    GrpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DbEdtNome: TcxDBTextEdit;
    Label3: TLabel;
    DbEdtLocalizacao: TcxDBTextEdit;
    DbLkpCmbBxMunicipio: TcxDBLookupComboBox;
    DtSrcCidade: TDataSource;
    GrdPrincipal: TcxGrid;
    GrdPrincipalTbl: TcxGridDBTableView;
    GrdPrincipalTblCOM_NOME: TcxGridDBColumn;
    GrdPrincipalTblCOM_LOCALIZACAO: TcxGridDBColumn;
    GrdPrincipalLvl: TcxGridLevel;
    Label4: TLabel;
    DbEdtUF: TcxDBTextEdit;
    GrdPrincipalTblCID_NOME: TcxGridDBColumn;
    GrdPrincipalTblUFE_ID: TcxGridDBColumn;
    QryPrincipalCOM_ID: TIntegerField;
    QryPrincipalCOM_NOME: TStringField;
    QryPrincipalCOM_LOCALIZACAO: TStringField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalCID_ID: TIntegerField;
    QryPrincipalCID_NOME: TStringField;
    QryPrincipalUFE_ID: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure DtStPrincipalNewRecord(DataSet: TDataSet);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroComunidade: TFrmCadastroComunidade;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Dne.Modulo, Emater.Recurso.Modulo, Emater.Cadastro.Modulo, Emater.Sistema.Consts,
  Emater.Sistema.Modulo;

procedure TFrmCadastroComunidade.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;
  GrdPrincipal.Enabled := (QryPrincipal.State in [dsBrowse]);
end;

procedure TFrmCadastroComunidade.DtStPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      QryPrincipalCID_ID.Value := DtmSistemaModulo.MunicipioLocalID;
    end;
end;

procedure TFrmCadastroComunidade.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbLkpCmbBxMunicipio;
  CampoChave := 'COM_ID';
  Tabela := 'TAB_CAD_COMUNIDADE';
end;

procedure TFrmCadastroComunidade.FormShow(Sender: TObject);
begin
  inherited;
  if not DtmDneModulo.DtStCidade.Active then
    begin
      DtmDneModulo.DtStCidade.Open;
      DtmDneModulo.DtStCidade.FetchAll;
    end;
end;

procedure TFrmCadastroComunidade.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmCadastroModulo.DtStComunidade.Close;
  DtmCadastroModulo.DtStComunidade.Open;
end;

end.
