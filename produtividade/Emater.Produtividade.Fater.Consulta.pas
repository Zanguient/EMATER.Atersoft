unit Emater.Produtividade.Fater.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses, FIBDataSet, pFIBDataSet,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils, cxDBLookupComboBox,
  cxLookupEdit, cxDBLookupEdit, cxCalendar, dxSkinSeven, dxSkinSevenClassic, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmProdutividadeFaterConsulta = class(TFrmBaseConsulta)
    Label8: TLabel;
    Label9: TLabel;
    EdtDataInicio: TcxDateEdit;
    EdtDataFim: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    LkpCmbBxMunicipio: TcxLookupComboBox;
    DtSrcMetodo: TDataSource;
    DtSrcFinalidade: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    LkpCmbBxTecnico: TcxLookupComboBox;
    LkpCmbBxMetodo: TcxLookupComboBox;
    LkpCmbBxFinalidade: TcxLookupComboBox;
    DtStConsultaFAT_ID: TFIBBCDField;
    DtStConsultaFAT_DATA_ACAO: TFIBDateField;
    DtStConsultaFAT_DATA_VISITA: TFIBDateField;
    DtStConsultaFAT_SITUACAO: TFIBStringField;
    DtStConsultaUND_NOME: TFIBStringField;
    DtStConsultaFIN_DESCRICAO: TFIBStringField;
    DtStConsultaMET_DESCRICAO: TFIBStringField;
    DtStConsultaCID_NOME: TFIBStringField;
    DtStConsultaUFE_ID: TFIBStringField;
    DtStConsultaFUN_NOME: TFIBStringField;
    GrdConsultaTblFAT_DATA_ACAO: TcxGridDBColumn;
    GrdConsultaTblFAT_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    GrdConsultaTblFIN_DESCRICAO: TcxGridDBColumn;
    GrdConsultaTblMET_DESCRICAO: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblUFE_ID: TcxGridDBColumn;
    GrdConsultaTblPRJ_NOME: TcxGridDBColumn;
    GrdConsultaTblFUN_NOME: TcxGridDBColumn;
    Label1: TLabel;
    EdtCPF: TcxMaskEdit;
    Label10: TLabel;
    ImgCmbBxSituacao: TcxImageComboBox;
    Label11: TLabel;
    LkpCmbBxComunidade: TcxLookupComboBox;
    Label12: TLabel;
    LkpCmbBxProjeto: TcxLookupComboBox;
    DtSrcProjeto: TDataSource;
    DtSrcMunicipio: TDataSource;
    DtStConsultaREG_EXCLUIDO: TFIBBooleanField;
    DtStConsultaREG_REPLICADO: TFIBBooleanField;
    DtStConsultaREG_USUARIO: TFIBStringField;
    DtStConsultaREG_MODIFICADO: TFIBDateTimeField;
    DtSrcComunidade: TDataSource;
    DtStConsultaPRJ_NOME: TFIBStringField;
    QryConsultaFAT_ID: TLargeintField;
    QryConsultaFAT_DATA_ACAO: TDateField;
    QryConsultaFAT_DATA_VISITA: TDateField;
    QryConsultaFAT_SITUACAO: TStringField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaREG_REPLICADO: TSmallintField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaUND_NOME: TStringField;
    QryConsultaFIN_DESCRICAO: TStringField;
    QryConsultaMET_DESCRICAO: TStringField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaUFE_ID: TStringField;
    QryConsultaPRJ_NOME: TStringField;
    QryConsultaFUN_NOME: TStringField;
    QryComunidade: TFDQuery;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeCOM_NOME: TStringField;
    QryMunicipio: TFDQuery;
    QryMunicipioCID_ID: TIntegerField;
    QryMunicipioCID_NOME: TStringField;
    QryProjeto: TFDQuery;
    QryProjetoPRJ_ID: TIntegerField;
    QryProjetoPRJ_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtDataInicioKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
    procedure LkpCmbBxMunicipioPropertiesEditValueChanged(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    procedure CarregarCidadePorUnidade(const Unidade: Integer);
    procedure CarregarComunidadePorCidade(const Cidade: Integer);
    procedure CarregarProjetoPorCidade(const Cidade: Integer);
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmProdutividadeFaterConsulta: TFrmProdutividadeFaterConsulta;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Dne.Modulo, Emater.Produtividade.Modulo, Emater.Sistema.Modulo,
  Emater.Produtividade.Fater, Emater.Pessoal.Modulo, Emater.Base.Consts, Emater.Cadastro.Modulo, Emater.Classe.Log,
  Emater.Sistema.Consts, Emater.Sistema.Principal;

{ TFrmProdutividadeFaterConsulta }

procedure TFrmProdutividadeFaterConsulta.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
      LkpCmbBxMunicipio.EditValue := DtmSistemaModulo.MunicipioLocalID;
    end;
end;

procedure TFrmProdutividadeFaterConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S, DataInicio, DataFim: string;
begin
  Screen.Cursor := crHourGlass;

  inherited;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Data de ação (período):
    if (EdtDataInicio.Text <> '') and (EdtDataFim.Text <> '') then
      begin
        DataInicio := FormatDateTime('dd.mm.yyyy', EdtDataInicio.Date);
        DataFim := FormatDateTime('dd.mm.yyyy', EdtDataFim.Date);
        QryConsulta.SQL.Add(Format('and (a.fat_data_acao between %s and %s)', [QuotedStr(DataInicio), QuotedStr(DataFim)]));
      end;

    // Técnico responsável:
    if (LkpCmbBxTecnico.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.fun_id = %s)', [IntToStr(LkpCmbBxTecnico.EditValue)]));

    // Situação da FATER:
    if (ImgCmbBxSituacao.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.fat_situacao = %s)', [IntToStr(ImgCmbBxSituacao.EditValue)]));

    // Unidade do cadastro:
    if (LkpCmbBxUnidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.und_id = %s)', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Município:
    if (LkpCmbBxMunicipio.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.cid_id = %s)', [IntToStr(LkpCmbBxMunicipio.EditValue)]));

    // Comunidade:
    if (LkpCmbBxComunidade.Text <> '') then
      begin
        QryConsulta.SQL.Add('and exists (select 1 from tab_prd_fater_comunidade h where');
        QryConsulta.SQL.Add(Format('(h.fat_id = a.fat_id and h.com_id = %s))', [IntToStr(LkpCmbBxComunidade.EditValue)]));
      end;

    // Projeto:
    if (LkpCmbBxProjeto.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.prj_id = %s)', [IntToStr(LkpCmbBxProjeto.EditValue)]));

    // Método inicial:
    if (LkpCmbBxMetodo.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.met_id_inicial = %s)', [IntToStr(LkpCmbBxMetodo.EditValue)]));

    // Finalidade:
    if (LkpCmbBxFinalidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.fin_id = %s)', [IntToStr(LkpCmbBxFinalidade.EditValue)]));

    // Temática:
    if (Trim(EdtValor.Text) <> '') then
      QryConsulta.SQL.Add(Format('and (a.fat_tematica like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));

    // CPF:
    S := Str.SomenteNumeros(EdtCPF.Text);
    if (S <> '') then
      begin
        QryConsulta.SQL.Add('and exists (');
        QryConsulta.SQL.Add('select 1 from tab_prd_fater_beneficiario h join tab_cad_beneficiario i on (h.ben_id = i.ben_id)');
        QryConsulta.SQL.Add(Format('where (h.fat_id = a.fat_id) and (i.ben_cpf = %s) and (i.ben_excluido = 0))', [QuotedStr(S)]));
      end;

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.fat_data_acao');
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
    Screen.Cursor := crDefault;
    CodeSite.ExitMethod(Self.Name + '.BtnConsultarClick().');
  end;
end;

procedure TFrmProdutividadeFaterConsulta.BtnExcluirClick(Sender: TObject);
var
  ID: Int64;
begin
  ID := DtStConsultaFAT_ID.AsInt64;
  inherited;
  if (DtStConsulta.RecordCount = 0) or (DtStConsultaFAT_ID.AsInt64 <> ID) then
    FrmSistemaPrincipal.RecenteRemover(FrmSistemaPrincipal.VwGlrCntrlFATER, ID);
end;

procedure TFrmProdutividadeFaterConsulta.CarregarCidadePorUnidade(const Unidade: Integer);
begin
  QryMunicipio.Close;
  QryMunicipio.ParamByName('unidade').AsInteger := Unidade;
  QryMunicipio.Open;
  QryMunicipio.FetchAll;
end;

procedure TFrmProdutividadeFaterConsulta.CarregarComunidadePorCidade(const Cidade: Integer);
begin
  QryComunidade.Close;
  QryComunidade.ParamByName('cidade').AsInteger := Cidade;
  QryComunidade.Open;
  QryComunidade.FetchAll;
end;

procedure TFrmProdutividadeFaterConsulta.CarregarProjetoPorCidade(const Cidade: Integer);
begin
  QryProjeto.Close;
  QryProjeto.ParamByName('cidade').AsInteger := Cidade;
  QryProjeto.Open;
  QryProjeto.FetchAll;
end;

procedure TFrmProdutividadeFaterConsulta.EdtDataInicioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmProdutividadeFaterConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmProdutividadeFater;
  EditFormClass := TFrmProdutividadeFater;

  DtSrcMetodo.DataSet := DtmProdutividadeModulo.DtStMetodo;
  DtSrcFinalidade.DataSet := DtmProdutividadeModulo.DtStFinalidade;

  LkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxMunicipio.Properties.ListSource := DtSrcMunicipio;
  LkpCmbBxComunidade.Properties.ListSource := DtSrcComunidade;

  LkpCmbBxProjeto.Properties.ListSource := DtSrcProjeto;

  LkpCmbBxMetodo.Properties.ListSource := DtSrcMetodo;
  LkpCmbBxFinalidade.Properties.ListSource := DtSrcFinalidade;

  DefinirFiltros;
end;

procedure TFrmProdutividadeFaterConsulta.FormShow(Sender: TObject);
begin
  inherited;
  QryProjeto.Close;
  QryProjeto.Open;
end;

procedure TFrmProdutividadeFaterConsulta.LimparCampos;
begin
  inherited;
  EdtDataInicio.Clear;
  EdtDataFim.Clear;
  EdtCPF.Clear;
  EdtValor.Clear;

  LkpCmbBxTecnico.Clear;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxMunicipio.Clear;
  LkpCmbBxComunidade.Clear;

  LkpCmbBxProjeto.Clear;

  LkpCmbBxMetodo.Clear;
  LkpCmbBxFinalidade.Clear;
  ImgCmbBxSituacao.Clear;

  EdtDataInicio.SetFocus;

  DefinirFiltros;
end;

procedure TFrmProdutividadeFaterConsulta.LkpCmbBxMunicipioPropertiesEditValueChanged(Sender: TObject);
var
  Cidade: Integer;
begin
  Cidade := 0;
  if (LkpCmbBxMunicipio.Text <> '') then Cidade := LkpCmbBxMunicipio.EditValue;
  CarregarComunidadePorCidade(Cidade);
  CarregarProjetoPorCidade(Cidade);
end;

procedure TFrmProdutividadeFaterConsulta.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
var
  Unidade: Integer;
begin
  Unidade := 0;
  if (LkpCmbBxUnidade.Text <> '') then Unidade := LkpCmbBxUnidade.EditValue;
  CarregarCidadePorUnidade(Unidade);
end;

end.
