unit Emater.Cadastro.Organizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet,
  pFIBDataSet, cxPC, Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxGroupBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxImageComboBox, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroOrganizacao = class(TFrmBaseTabela)
    DtStPrincipalORG_ID: TFIBIntegerField;
    DtStPrincipalORG_DATA: TFIBDateField;
    DtStPrincipalORG_NOME: TFIBStringField;
    DtStPrincipalORG_SIGLA: TFIBStringField;
    DtStPrincipalORG_CNPJ: TFIBStringField;
    DtStPrincipalORG_ENDERECO: TFIBStringField;
    DtStPrincipalORG_NUMERO: TFIBStringField;
    DtStPrincipalORG_COMPLEMENTO: TFIBStringField;
    DtStPrincipalORG_BAIRRO: TFIBStringField;
    DtStPrincipalORG_CEP: TFIBStringField;
    DtStPrincipalORG_TELEFONE_1: TFIBStringField;
    DtStPrincipalORG_TELEFONE_2: TFIBStringField;
    DtStPrincipalORG_EMAIL: TFIBStringField;
    DtStPrincipalORG_RESPONSAVEL: TFIBStringField;
    DtStPrincipalCID_ID: TFIBIntegerField;
    DtStPrincipalOTP_ID: TFIBIntegerField;
    DtStPrincipalOTP_DESCRICAO: TFIBStringField;
    DtStPrincipalCID_NOME: TFIBStringField;
    DtStPrincipalUFE_ID: TFIBStringField;
    GrpBxPrincipal: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DbEdtNome: TcxDBTextEdit;
    Label5: TLabel;
    DbEdtSigla: TcxDBTextEdit;
    GrpBxEndereco: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DbEdtEndereco: TcxDBTextEdit;
    Label8: TLabel;
    DbEdtNumero: TcxDBTextEdit;
    Label9: TLabel;
    DbEdtComplemento: TcxDBTextEdit;
    Label10: TLabel;
    DbEdtBairro: TcxDBTextEdit;
    Label1: TLabel;
    DbLkpCmbBxMunicipio: TcxDBLookupComboBox;
    Label4: TLabel;
    DbEdtUF: TcxDBTextEdit;
    Label11: TLabel;
    DbLkpCmbBxTipo: TcxDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DbEdtEmail: TcxDBTextEdit;
    Label15: TLabel;
    DbEdtResponsavel: TcxDBTextEdit;
    LblPublicoDisponivel: TLabel;
    LblPublico: TLabel;
    GrdDisponivel: TcxGrid;
    GrdDisponivelTbl: TcxGridDBTableView;
    GrdDisponivelLvl: TcxGridLevel;
    GrdFiliacao: TcxGrid;
    GrdFiliacaoTbl: TcxGridDBTableView;
    GrdFiliacaoLvl: TcxGridLevel;
    BtnFiliacaoRemover: TcxButton;
    BtnFiliacaoAdicionar: TcxButton;
    DtSrcFiliacaoDisponivel: TDataSource;
    DtSrcFiliacao: TDataSource;
    GrdFiliacaoTblPUB_DESCRICAO: TcxGridDBColumn;
    GrdDisponivelTblPUB_DESCRICAO: TcxGridDBColumn;
    DbEdtCNPJ: TcxDBMaskEdit;
    DbEdtCEP: TcxDBMaskEdit;
    GrdFiliacaoTblPUB_MARCADO: TcxGridDBColumn;
    GrdDisponivelTblPUB_DESMARCADO: TcxGridDBColumn;
    DtStPrincipalORG_FILIADOS: TFIBIntegerField;
    Label16: TLabel;
    DbEdtFiliados: TcxDBTextEdit;
    DbEdtTelefone1: TcxDBMaskEdit;
    DbEdtTelefone2: TcxDBMaskEdit;
    DtStPrincipalREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_REPLICADO: TFIBBooleanField;
    DtStPrincipalREG_USUARIO: TFIBStringField;
    DtStPrincipalREG_MODIFICADO: TFIBDateTimeField;
    QryPrincipalORG_ID: TIntegerField;
    QryPrincipalORG_DATA: TDateField;
    QryPrincipalORG_NOME: TStringField;
    QryPrincipalORG_SIGLA: TStringField;
    QryPrincipalORG_CNPJ: TStringField;
    QryPrincipalORG_ENDERECO: TStringField;
    QryPrincipalORG_NUMERO: TStringField;
    QryPrincipalORG_COMPLEMENTO: TStringField;
    QryPrincipalORG_BAIRRO: TStringField;
    QryPrincipalORG_CEP: TStringField;
    QryPrincipalORG_TELEFONE_1: TStringField;
    QryPrincipalORG_TELEFONE_2: TStringField;
    QryPrincipalORG_EMAIL: TStringField;
    QryPrincipalORG_RESPONSAVEL: TStringField;
    QryPrincipalORG_FILIADOS: TIntegerField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalCID_ID: TIntegerField;
    QryPrincipalOTP_ID: TIntegerField;
    QryPrincipalOTP_DESCRICAO: TStringField;
    QryPrincipalCID_NOME: TStringField;
    QryPrincipalUFE_ID: TStringField;
    QryFiliacao: TFDQuery;
    UpdtFiliacao: TFDUpdateSQL;
    QryFiliacaoOFI_ID: TLargeintField;
    QryFiliacaoORG_ID: TIntegerField;
    QryFiliacaoPUB_ID: TIntegerField;
    QryFiliacaoREG_EXCLUIDO: TSmallintField;
    QryFiliacaoREG_REPLICADO: TSmallintField;
    QryFiliacaoREG_USUARIO: TStringField;
    QryFiliacaoREG_MODIFICADO: TSQLTimeStampField;
    QryFiliacaoPUB_DESCRICAO: TStringField;
    QryFiliacaoDisponivel: TFDQuery;
    QryFiliacaoDisponivelPUB_ID: TIntegerField;
    QryFiliacaoDisponivelPUB_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure BtnFiliacaoRemoverClick(Sender: TObject);
    procedure BtnFiliacaoAdicionarClick(Sender: TObject);
    procedure GrdDisponivelTblDblClick(Sender: TObject);
    procedure GrdFiliacaoTblDblClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
    procedure QryPrincipalAfterScroll(DataSet: TDataSet);
    procedure QryFiliacaoNewRecord(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroOrganizacao: TFrmCadastroOrganizacao;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Dne.Modulo, Emater.Cadastro.Modulo, Emater.Recurso.Modulo, Emater.Cadastro.Consts, Emater.Sistema.Modulo;

procedure TFrmCadastroOrganizacao.BtnFiliacaoAdicionarClick(Sender: TObject);
begin
  QryFiliacao.Last;
  QryFiliacao.Append;
  QryFiliacaoPUB_ID.Value := QryFiliacaoDisponivelPUB_ID.Value;
  QryFiliacaoPUB_DESCRICAO.Value := QryFiliacaoDisponivelPUB_DESCRICAO.Value;
  DtmSistemaModulo.GravarAuditoriaInclusao(QryFiliacao, 'TAB_CAD_ORGANIZACAO_FILIACAO', 'OFI_ID');
  QryFiliacao.Post;
  QryFiliacaoDisponivel.Close;
  QryFiliacaoDisponivel.Open;
  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmCadastroOrganizacao.BtnFiliacaoRemoverClick(Sender: TObject);
begin
  DtmSistemaModulo.GravarAuditoriaExclusao(QryFiliacao);
  QryFiliacaoDisponivel.Close;
  QryFiliacaoDisponivel.Open;
  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmCadastroOrganizacao.BtnSalvarClick(Sender: TObject);
begin
  if (Trim(QryPrincipalORG_CNPJ.AsString) <> '') then
    if not Str.ValidarCNPJ(QryPrincipalORG_CNPJ.AsString) then
      begin
        Msg.Aviso(CADASTRO_AVISO_CNPJ_INVALIDO);
        DbEdtCNPJ.SetFocus;
        Exit;
      end;

  inherited;
end;

procedure TFrmCadastroOrganizacao.DtSrcPrincipalStateChange(Sender: TObject);
var
  PermiteFiliacao: Boolean;
begin
  inherited;

  PermiteFiliacao := False;
  if DtmCadastroModulo.DtStOrganizacaoTipo.Locate('otp_id', QryPrincipalOTP_ID.Value, []) then
    begin
      PermiteFiliacao := (DtmCadastroModulo.DtStOrganizacaoTipo.FieldByName('otp_grupo').AsInteger = 1);
    end;

  GrdFiliacao.Visible := ((DtSrcPrincipal.State = dsBrowse) or (DtSrcPrincipal.State = dsEdit)) and (QryPrincipal.RecordCount > 0) and PermiteFiliacao;
  GrdDisponivel.Visible := GrdFiliacao.Visible;
  LblPublicoDisponivel.Visible := GrdFiliacao.Visible;
  LblPublico.Visible := GrdFiliacao.Visible;
  BtnFiliacaoRemover.Visible := GrdFiliacao.Visible;
  BtnFiliacaoAdicionar.Visible := GrdFiliacao.Visible;
  BtnFiliacaoRemover.Enabled := GrdFiliacao.Visible and (QryFiliacao.RecordCount > 0);
  BtnFiliacaoAdicionar.Enabled := GrdFiliacao.Visible and (QryFiliacaoDisponivel.RecordCount > 0);
end;

procedure TFrmCadastroOrganizacao.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtNome;
  CampoChave := 'ORG_ID';
  Tabela := 'TAB_CAD_ORGANIZACAO';
  DbLkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidade;
end;

procedure TFrmCadastroOrganizacao.FormShow(Sender: TObject);
begin
  inherited;
  QryFiliacao.Open;
  QryFiliacaoDisponivel.Open;
  DtSrcPrincipalStateChange(Sender);
end;

procedure TFrmCadastroOrganizacao.GrdDisponivelTblDblClick(Sender: TObject);
begin
  if BtnFiliacaoAdicionar.Enabled and BtnFiliacaoAdicionar.Visible then
    BtnFiliacaoAdicionar.Click;
end;

procedure TFrmCadastroOrganizacao.GrdFiliacaoTblDblClick(Sender: TObject);
begin
  if BtnFiliacaoRemover.Enabled and BtnFiliacaoRemover.Visible then
    BtnFiliacaoRemover.Click;
end;

procedure TFrmCadastroOrganizacao.QryFiliacaoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryFiliacaoORG_ID.Value := QryPrincipalORG_ID.Value;
end;

procedure TFrmCadastroOrganizacao.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmCadastroModulo.DtStOrganizacao.Close;
  DtmCadastroModulo.DtStOrganizacao.Open;
end;

procedure TFrmCadastroOrganizacao.QryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DtSrcPrincipal.OnStateChange(DtSrcPrincipal);
end;

procedure TFrmCadastroOrganizacao.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalORG_DATA.Value := Date;
  if (DtmSistemaModulo.CidadeLocalID <> 0) then
    QryPrincipalCID_ID.Value := DtmSistemaModulo.CidadeLocalID;
end;

end.
