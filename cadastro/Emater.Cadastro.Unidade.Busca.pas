unit Emater.Cadastro.Unidade.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Busca, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxBar, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroUnidadeBusca = class(TFrmBaseBusca)
    GrdConsultaTblPRO_DENOMINACAO: TcxGridDBColumn;
    GrdConsultaTblPRO_LATITUDE: TcxGridDBColumn;
    GrdConsultaTblPRO_LONGITUDE: TcxGridDBColumn;
    GrdConsultaTblPRO_AREA_LEGAL: TcxGridDBColumn;
    GrdConsultaTblPRO_AREA_REAL: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblFUN_NOME: TcxGridDBColumn;
    GrdConsultaTblPRO_DOCUMENTO_DOMINIO: TcxGridDBColumn;
    GrdConsultaTblPRO_CARACTERIZACAO_DOMINIO: TcxGridDBColumn;
    Label2: TLabel;
    Label7: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    LkpCmbBxTecnico: TcxLookupComboBox;
    Label1: TLabel;
    EdtCPF: TcxMaskEdit;
    DtSrcProduto: TDataSource;
    Label4: TLabel;
    LkpCmbBxComercio: TcxLookupComboBox;
    LkpCmbBxProduto: TcxLookupComboBox;
    Label5: TLabel;
    LkpCmbBxDerivado: TcxLookupComboBox;
    Label6: TLabel;
    Label8: TLabel;
    EdtOutros: TcxTextEdit;
    Label9: TLabel;
    LkpCmbBxComunidade: TcxLookupComboBox;
    DtSrcComunidade: TDataSource;
    Label10: TLabel;
    ImgCmbBxCAR: TcxImageComboBox;
    QryConsultaPRO_ID: TIntegerField;
    QryConsultaPRO_DENOMINACAO: TStringField;
    QryConsultaPRO_LATITUDE: TStringField;
    QryConsultaPRO_LONGITUDE: TStringField;
    QryConsultaPRO_AREA_LEGAL: TCurrencyField;
    QryConsultaPRO_AREA_REAL: TCurrencyField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaUND_NOME: TStringField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaFUN_NOME: TStringField;
    QryConsultaPRO_DOCUMENTO_DOMINIO: TStringField;
    QryConsultaPRO_CARACTERIZACAO_DOMINIO: TStringField;
    QryComunidade: TFDQuery;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeCOM_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
  private
    procedure CarregarComunidadePorCidade(const Cidade: Integer);
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroUnidadeBusca: TFrmCadastroUnidadeBusca;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Modulo, Emater.Dne.Modulo, Emater.Pessoal.Modulo, Emater.Cadastro.Unidade,
  Emater.Base.Consts, Emater.Cadastro.Modulo, Emater.Classe.Log, Emater.Sistema.Consts;

procedure TFrmCadastroUnidadeBusca.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S: string;
begin
  inherited;

  Screen.Cursor := crHourGlass;
  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Denominação da unidade de produção:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (a.pro_denominacao like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (a.pro_denominacao like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // CPF:
    S := Str.SomenteNumeros(EdtCPF.Text);
    if (S <> '') then
      begin
        QryConsulta.SQL.Add('and exists (select 1 from tab_cad_beneficiario x join tab_cad_beneficiario_producao y on (x.ben_id = y.ben_id and y.pro_id = a.pro_id)');
        QryConsulta.SQL.Add(Format('where (x.ben_cpf = %s))', [QuotedStr(S)]));
      end;

    // Comunidade:
    if (LkpCmbBxComunidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.com_id = %s)', [IntToStr(LkpCmbBxComunidade.EditValue)]));

    // Escritório da unidade de produção:
    if (LkpCmbBxUnidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.und_id = %s)', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Possui CAR:
    if (ImgCmbBxCAR.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.pro_car = %s)', [IntToStr(ImgCmbBxCAR.EditValue)]));

    // Técnico responsável:
    if (LkpCmbBxTecnico.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.fun_id = %s)', [IntToStr(LkpCmbBxTecnico.EditValue)]));

    // Cultura/criação/serviço:
    if (LkpCmbBxProduto.Text <> '') then
      QryConsulta.SQL.Add(Format('and exists (select 1 from tab_cad_producao_atividade h where (h.pro_id = a.pro_id and h.prd_id = %s))', [IntToStr(LkpCmbBxProduto.EditValue)]));

    // Produto comercializado:
    if (LkpCmbBxComercio.Text <> '') then
      QryConsulta.SQL.Add(Format('and exists (select 1 from tab_cad_producao_atividade i join tab_cad_producao_produto j on (i.pro_id = a.pro_id and i.atv_id = j.atv_id) where (j.prd_id = %s))', [IntToStr(LkpCmbBxComercio.EditValue)]));

    // Produto derivado:
    if (LkpCmbBxDerivado.Text <> '') then
      QryConsulta.SQL.Add(Format('and exists (select 1 from tab_cad_producao_atividade i join tab_cad_producao_produto j on (i.pro_id = a.pro_id and i.atv_id = j.atv_id) where (j.dev_id = %s))', [IntToStr(LkpCmbBxDerivado.EditValue)]));

    // Outros produtos:
    if (EdtOutros.Text <> '') then
      begin
        S := 'and exists (select 1 from tab_cad_producao_atividade i join tab_cad_producao_produto j on (i.pro_id = a.pro_id and i.atv_id = j.atv_id) where (j.prp_descricao like ''' + EdtOutros.Text + '%''))';
        QryConsulta.SQL.Add(S);
      end;

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.pro_denominacao');
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

procedure TFrmCadastroUnidadeBusca.CarregarComunidadePorCidade(const Cidade: Integer);
begin
  QryComunidade.Close;
  QryComunidade.ParamByName('cidade').AsInteger := Cidade;
  QryComunidade.Open;
  QryComunidade.FetchAll;
end;

procedure TFrmCadastroUnidadeBusca.EdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmCadastroUnidadeBusca.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
    end;
end;

procedure TFrmCadastroUnidadeBusca.FormCreate(Sender: TObject);
begin
  inherited;
  EditForm := FrmCadastroUnidade;
  EditFormClass := TFrmCadastroUnidade;

  DtSrcProduto.DataSet := DtmCadastroModulo.DtStProduto;

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  LkpCmbBxComercio.Properties.ListSource := DtSrcProduto;
  LkpCmbBxProduto.Properties.ListSource := DtSrcProduto;
  LkpCmbBxComunidade.Properties.ListSource := DtSrcComunidade;

  ActiveControl := EdtCPF;

  DefinirFiltros;
end;

procedure TFrmCadastroUnidadeBusca.LimparCampos;
begin
  inherited;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxTecnico.Clear;
  LkpCmbBxProduto.Clear;
  LkpCmbBxComercio.Clear;
  LkpCmbBxDerivado.Clear;
  LkpCmbBxComunidade.Clear;
  ImgCmbBxCAR.Clear;
  EdtOutros.Clear;
  EdtCPF.Clear;

  EdtCPF.SetFocus;

  DefinirFiltros;
end;

procedure TFrmCadastroUnidadeBusca.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
var
  Unidade: Integer;
  Cidade: Integer;
begin
  Cidade := 0;
  Unidade := 0;
  if (LkpCmbBxUnidade.Text <> '') then
    begin
      if (LkpCmbBxUnidade.Text <> '') then
        Unidade := LkpCmbBxUnidade.EditValue;
      if DtmSistemaModulo.DtStUnidade.Locate('UND_ID', Unidade, []) then
        begin
          Cidade := DtmSistemaModulo.DtStUnidade.FieldByName('CID_ID').AsInteger;
        end;
    end;
  CarregarComunidadePorCidade(Cidade);
end;

end.
