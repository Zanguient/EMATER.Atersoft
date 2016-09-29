unit Emater.Cadastro.Organizacao.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Busca, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxBar,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroOrganizacaoBusca = class(TFrmBaseBusca)
    GrdConsultaTblORG_DATA: TcxGridDBColumn;
    GrdConsultaTblORG_NOME: TcxGridDBColumn;
    GrdConsultaTblORG_SIGLA: TcxGridDBColumn;
    GrdConsultaTblORG_CNPJ: TcxGridDBColumn;
    GrdConsultaTblORG_RESPONSAVEL: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblOTP_DESCRICAO: TcxGridDBColumn;
    Label1: TLabel;
    EdtCNPJ: TcxMaskEdit;
    Label4: TLabel;
    EdtResponsavel: TcxTextEdit;
    Label3: TLabel;
    LkpCmbBxMunicipio: TcxLookupComboBox;
    Label2: TLabel;
    LkpCmbBxOrganizacaoTipo: TcxLookupComboBox;
    QryConsultaORG_ID: TIntegerField;
    QryConsultaORG_DATA: TDateField;
    QryConsultaORG_NOME: TStringField;
    QryConsultaORG_SIGLA: TStringField;
    QryConsultaORG_CNPJ: TStringField;
    QryConsultaORG_EMAIL: TStringField;
    QryConsultaORG_RESPONSAVEL: TStringField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaOTP_DESCRICAO: TStringField;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroOrganizacaoBusca: TFrmCadastroOrganizacaoBusca;

implementation

{$R *.dfm}

uses Emater.Cadastro.Modulo, Emater.Dne.Modulo, Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Base.Consts,
  Emater.Cadastro.Organizacao, Emater.Classe.Log, Emater.Sistema.Consts, Emater.Sistema.Modulo;

{ TFrmCadastroOrganizacaoBusca }

procedure TFrmCadastroOrganizacaoBusca.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S: string;
begin
  inherited;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');

  try
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
    CodeSite.ExitMethod(Self.Name + '.BtnConsultarClick().');
  end;
end;

procedure TFrmCadastroOrganizacaoBusca.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxMunicipio.EditValue := DtmSistemaModulo.MunicipioLocalID;
    end;
end;

procedure TFrmCadastroOrganizacaoBusca.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmCadastroOrganizacao;
  EditFormClass := TFrmCadastroOrganizacao;

  LkpCmbBxOrganizacaoTipo.Properties.ListSource := DtmCadastroModulo.DtSrcOrganizacaoTipo;
  LkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidade;

  DefinirFiltros;
end;

procedure TFrmCadastroOrganizacaoBusca.LimparCampos;
begin
  inherited;
  LkpCmbBxOrganizacaoTipo.Clear;
  LkpCmbBxMunicipio.Clear;
  EdtResponsavel.Clear;
  EdtCNPJ.Clear;

  DefinirFiltros;
end;

end.
