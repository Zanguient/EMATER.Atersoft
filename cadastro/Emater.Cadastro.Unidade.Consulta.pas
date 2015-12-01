unit Emater.Cadastro.Unidade.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses, FIBDataSet, pFIBDataSet,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinSeven,
  dxSkinSevenClassic, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroUnidadeConsulta = class(TFrmBaseConsulta)
    Label2: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    Label7: TLabel;
    LkpCmbBxTecnico: TcxLookupComboBox;
    DtStConsultaPRO_ID: TFIBIntegerField;
    DtStConsultaPRO_DENOMINACAO: TFIBStringField;
    DtStConsultaPRO_LATITUDE: TFIBStringField;
    DtStConsultaPRO_LONGITUDE: TFIBStringField;
    DtStConsultaPRO_AREA_LEGAL: TFIBFloatField;
    DtStConsultaPRO_AREA_REAL: TFIBFloatField;
    DtStConsultaUND_NOME: TFIBStringField;
    DtStConsultaCID_NOME: TFIBStringField;
    DtStConsultaFUN_NOME: TFIBStringField;
    DtStConsultaPRO_DOCUMENTO_DOMINIO: TFIBStringField;
    DtStConsultaPRO_CARACTERIZACAO_DOMINIO: TFIBStringField;
    PnlAtributos: TPanel;
    SplitterPrincipal: TSplitter;
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
    Label1: TLabel;
    EdtCPF: TcxMaskEdit;
    DtSrcBeneficiario: TDataSource;
    GrdBen: TcxGrid;
    GrdBenTbl: TcxGridDBTableView;
    GrdBenTblBEN_NOME: TcxGridDBColumn;
    GrdBenTblBEN_CPF: TcxGridDBColumn;
    GrdBenLvl: TcxGridLevel;
    Label4: TLabel;
    DtSrcProduto: TDataSource;
    LkpCmbBxComercio: TcxLookupComboBox;
    LkpCmbBxProduto: TcxLookupComboBox;
    Label5: TLabel;
    DtSrcDerivado: TDataSource;
    LkpCmbBxDerivado: TcxLookupComboBox;
    Label6: TLabel;
    Label8: TLabel;
    EdtOutros: TcxTextEdit;
    Label9: TLabel;
    LkpCmbBxComunidade: TcxLookupComboBox;
    DtSrcComunidade: TDataSource;
    Label10: TLabel;
    ImgCmbBxCAR: TcxImageComboBox;
    DtStConsultaREG_EXCLUIDO: TFIBBooleanField;
    DtStConsultaREG_REPLICADO: TFIBBooleanField;
    DtStConsultaREG_USUARIO: TFIBStringField;
    DtStConsultaREG_MODIFICADO: TFIBDateTimeField;
    QryConsultaPRO_ID: TIntegerField;
    QryConsultaPRO_DENOMINACAO: TStringField;
    QryConsultaPRO_LATITUDE: TStringField;
    QryConsultaPRO_LONGITUDE: TStringField;
    QryConsultaPRO_AREA_LEGAL: TCurrencyField;
    QryConsultaPRO_AREA_REAL: TCurrencyField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaREG_REPLICADO: TSmallintField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaUND_NOME: TStringField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaFUN_NOME: TStringField;
    QryConsultaPRO_DOCUMENTO_DOMINIO: TStringField;
    QryConsultaPRO_CARACTERIZACAO_DOMINIO: TStringField;
    QryComunidade: TFDQuery;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeCOM_NOME: TStringField;
    QryBeneficiario: TFDQuery;
    QryBeneficiarioBEN_ID: TLargeintField;
    QryBeneficiarioPRO_ID: TIntegerField;
    QryBeneficiarioBEN_NOME: TStringField;
    QryBeneficiarioBEN_CPF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EdtCPFKeyPress(Sender: TObject; var Key: Char);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    procedure CarregarComunidadePorCidade(const Cidade: Integer);
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroUnidadeConsulta: TFrmCadastroUnidadeConsulta;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Dne.Modulo, Emater.Pessoal.Modulo, Emater.Cadastro.Unidade, Emater.Base.Consts,
  Emater.Cadastro.Modulo, Emater.Classe.Log, Emater.Sistema.Consts, Emater.Conexao.Modulo, Emater.Sistema.Principal;

procedure TFrmCadastroUnidadeConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S: string;
begin
  inherited;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  Screen.Cursor := crHourGlass;

  try
    QryBeneficiario.Close;
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
        QryBeneficiario.Open;

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

procedure TFrmCadastroUnidadeConsulta.BtnExcluirClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := DtStConsultaPRO_ID.AsInteger;
  inherited;
  if (DtStConsulta.RecordCount = 0) or (DtStConsultaPRO_ID.AsInteger <> ID) then
    FrmSistemaPrincipal.RecenteRemover(FrmSistemaPrincipal.VwGlrCntrlUPF, ID);
end;

procedure TFrmCadastroUnidadeConsulta.CarregarComunidadePorCidade(const Cidade: Integer);
begin
  QryComunidade.Close;
  QryComunidade.ParamByName('cidade').AsInteger := Cidade;
  QryComunidade.Open;
  QryComunidade.FetchAll;
end;

procedure TFrmCadastroUnidadeConsulta.EdtCPFKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmCadastroUnidadeConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmCadastroUnidade;
  EditFormClass := TFrmCadastroUnidade;

  DtSrcProduto.DataSet := DtmCadastroModulo.DtStProduto;
  DtSrcDerivado.DataSet := DtmCadastroModulo.DtStDerivado;

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  LkpCmbBxComercio.Properties.ListSource := DtSrcProduto;
  LkpCmbBxProduto.Properties.ListSource := DtSrcProduto;
  LkpCmbBxDerivado.Properties.ListSource := DtSrcDerivado;
  LkpCmbBxComunidade.Properties.ListSource := DtSrcComunidade;

  ActiveControl := EdtCPF;
  EdtValor.Anchors := [akLeft, akTop];
  ImgCmbBxOpcao.Anchors := [akLeft, akTop];
  LblOpcao.Anchors := [akLeft, akTop];

  DefinirFiltros;
end;

procedure TFrmCadastroUnidadeConsulta.LimparCampos;
begin
  inherited;
  QryBeneficiario.Close;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxTecnico.Clear;
  LkpCmbBxProduto.Clear;
  LkpCmbBxComercio.Clear;
  LkpCmbBxDerivado.Clear;
  LkpCmbBxComunidade.Clear;
  ImgCmbBxCAR.Clear;
  EdtCPF.Clear;
  EdtOutros.Clear;

  EdtCPF.SetFocus;

  DefinirFiltros;
end;

procedure TFrmCadastroUnidadeConsulta.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
    end;
end;

procedure TFrmCadastroUnidadeConsulta.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
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
