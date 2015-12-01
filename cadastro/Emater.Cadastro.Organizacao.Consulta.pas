unit Emater.Cadastro.Organizacao.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses, FIBDataSet, pFIBDataSet,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinSeven, dxSkinSevenClassic, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroOrganizacaoConsulta = class(TFrmBaseConsulta)
    Label1: TLabel;
    EdtCNPJ: TcxMaskEdit;
    Label2: TLabel;
    LkpCmbBxOrganizacaoTipo: TcxLookupComboBox;
    Label3: TLabel;
    LkpCmbBxMunicipio: TcxLookupComboBox;
    EdtResponsavel: TcxTextEdit;
    Label4: TLabel;
    GrdConsultaTblORG_DATA: TcxGridDBColumn;
    GrdConsultaTblORG_NOME: TcxGridDBColumn;
    GrdConsultaTblORG_SIGLA: TcxGridDBColumn;
    GrdConsultaTblORG_CNPJ: TcxGridDBColumn;
    GrdConsultaTblORG_EMAIL: TcxGridDBColumn;
    GrdConsultaTblORG_RESPONSAVEL: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblOTP_DESCRICAO: TcxGridDBColumn;
    DtSrcFiliacao: TDataSource;
    PnlAtributos: TPanel;
    GrdFiliacao: TcxGrid;
    GrdFiliacaoTbl: TcxGridDBTableView;
    GrdFiliacaoTbPUB_MARCADO: TcxGridDBColumn;
    GrdFiliacaoTblPUB_DESCRICAO: TcxGridDBColumn;
    GrdFiliacaoLvl: TcxGridLevel;
    SplitterPrincipal: TSplitter;
    QryConsultaORG_ID: TIntegerField;
    QryConsultaORG_DATA: TDateField;
    QryConsultaORG_NOME: TStringField;
    QryConsultaORG_SIGLA: TStringField;
    QryConsultaORG_CNPJ: TStringField;
    QryConsultaORG_EMAIL: TStringField;
    QryConsultaORG_RESPONSAVEL: TStringField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaREG_REPLICADO: TSmallintField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaOTP_DESCRICAO: TStringField;
    QryFiliacao: TFDQuery;
    QryFiliacaoOFI_ID: TLargeintField;
    QryFiliacaoORG_ID: TIntegerField;
    QryFiliacaoPUB_ID: TIntegerField;
    QryFiliacaoREG_EXCLUIDO: TSmallintField;
    QryFiliacaoREG_REPLICADO: TSmallintField;
    QryFiliacaoREG_USUARIO: TStringField;
    QryFiliacaoREG_MODIFICADO: TSQLTimeStampField;
    QryFiliacaoPUB_DESCRICAO: TStringField;
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroOrganizacaoConsulta: TFrmCadastroOrganizacaoConsulta;

implementation

{$R *.dfm}

uses Emater.Cadastro.Modulo, Emater.Dne.Modulo, Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Base.Consts,
  Emater.Cadastro.Organizacao, Emater.Classe.Log, Emater.Sistema.Consts, Emater.Sistema.Modulo;

{ TFrmCadastroOrganizacaoConsulta }

procedure TFrmCadastroOrganizacaoConsulta.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxMunicipio.EditValue := DtmSistemaModulo.MunicipioLocalID;
    end;
end;

procedure TFrmCadastroOrganizacaoConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S: string;
begin
  inherited;

  Screen.Cursor := crHourGlass;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');

  try
    QryFiliacao.Close;
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Nome da organização social:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (a.org_nome like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (a.org_nome like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // CNPJ:
    S := Str.SomenteNumeros(EdtCNPJ.Text);
    if (S <> '') then
      QryConsulta.SQL.Add(Format('and (a.org_cnpj = %s)', [QuotedStr(S)]));

    // Tipo de organização:
    if (LkpCmbBxOrganizacaoTipo.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.otp_id = %s)', [IntToStr(LkpCmbBxOrganizacaoTipo.EditValue)]));

    // Município da organização:
    if (LkpCmbBxMunicipio.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.cid_id = %s)', [IntToStr(LkpCmbBxMunicipio.EditValue)]));

    // Técnico responsável:
    if (Trim(EdtResponsavel.Text) <> '') then
      QryConsulta.SQL.Add(Format('and (a.org_responsavel = %s)', [QuotedStr(Trim(EdtResponsavel.Text))]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.org_nome');
        QryConsulta.Open;
        QryFiliacao.Open;

        if QryConsulta.IsEmpty then
          begin
            CodeSite.SendMsg('Consulta realizada. Nenhum registro encontrado.');
            Msg.Informacao(BASE_MSG_BUSCA_NADA_ENCONTRADO);
          end
        else
          begin
            CodeSite.SendMsg('Consulta realizada. Total de registros encontrados: ' + IntToStr(QryConsulta.RecordCount) + '.');
            GrdConsulta.SetFocus;
          end;
      end;
  finally
    Screen.Cursor := crDefault;
    CodeSite.ExitMethod(Self.Name + '.BtnConsultarClick().');
  end;
end;

procedure TFrmCadastroOrganizacaoConsulta.BtnEditarClick(Sender: TObject);
begin
  inherited;
  QryFiliacao.Close;
  QryFiliacao.Open;
end;

procedure TFrmCadastroOrganizacaoConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmCadastroOrganizacao;
  EditFormClass := TFrmCadastroOrganizacao;

  LkpCmbBxOrganizacaoTipo.Properties.ListSource := DtmCadastroModulo.DtSrcOrganizacaoTipo;
  LkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidade;

  DefinirFiltros;
end;

procedure TFrmCadastroOrganizacaoConsulta.LimparCampos;
begin
  inherited;
  QryFiliacao.Close;
  LkpCmbBxOrganizacaoTipo.Clear;
  LkpCmbBxMunicipio.Clear;
  EdtResponsavel.Clear;
  EdtCNPJ.Clear;

  DefinirFiltros;
end;

end.
