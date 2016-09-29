unit Emater.Cadastro.Beneficiario.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Busca, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxBar,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxPC, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCheckBox, cxCheckComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroBeneficiarioBusca = class(TFrmBaseBusca)
    GrdConsultaTblBEN_DATA: TcxGridDBColumn;
    GrdConsultaTblBEN_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblBEN_NOME: TcxGridDBColumn;
    GrdConsultaTblBEN_CPF: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblCOM_NOME: TcxGridDBColumn;
    GrdConsultaTblFUN_NOME: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdtCPF: TcxMaskEdit;
    EdtDataInicio: TcxDateEdit;
    EdtDataFim: TcxDateEdit;
    Label2: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    Label4: TLabel;
    LkpCmbBxComunidade: TcxLookupComboBox;
    Label5: TLabel;
    ChckCmbBxCategoria: TcxCheckComboBox;
    Label6: TLabel;
    ChckCmbBxAtividade: TcxCheckComboBox;
    Label7: TLabel;
    LkpCmbBxTecnico: TcxLookupComboBox;
    Label10: TLabel;
    EdtApelido: TcxTextEdit;
    DtSrcComunidade: TDataSource;
    QryComunidade: TFDQuery;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeCOM_NOME: TStringField;
    QryConsultaBEN_ID: TLargeintField;
    QryConsultaBEN_DATA: TDateField;
    QryConsultaBEN_SITUACAO: TStringField;
    QryConsultaBEN_NOME: TStringField;
    QryConsultaBEN_CPF: TStringField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaCOM_NOME: TStringField;
    QryConsultaFUN_NOME: TStringField;
    QryConsultaUND_NOME: TStringField;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtApelidoKeyPress(Sender: TObject; var Key: Char);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
  private
    procedure CarregarCategorias;
    procedure CarregarAtividades;
    procedure CarregarComunidadePorCidade(const Cidade: Integer);
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroBeneficiarioBusca: TFrmCadastroBeneficiarioBusca;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Cadastro.Beneficiario, Emater.Cadastro.Modulo, Emater.Dne.Modulo, Emater.Conexao.Modulo,
  Emater.Base.Consts, Emater.Sistema.Modulo, Emater.Pessoal.Modulo, Emater.Classe.Log, Emater.Sistema.Consts;

{ TFrmCadastroBeneficiarioBusca }

procedure TFrmCadastroBeneficiarioBusca.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
    end;
end;

procedure TFrmCadastroBeneficiarioBusca.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S, DataInicio, DataFim: string;
  I: Integer;
begin
  inherited;

  Screen.Cursor := crHourGlass;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');

  try
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Nome do beneficiário:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (a.ben_nome like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (a.ben_nome like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // Apelido do beneficiário:
    if (Trim(EdtApelido.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (a.ben_apelido like %s)', [QuotedStr(EdtApelido.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (a.ben_apelido like %s)', [QuotedStr('%' + EdtApelido.Text + '%')]));
      end;

    // CPF:
    S := Str.SomenteNumeros(EdtCPF.Text);
    if (S <> '') then
      QryConsulta.SQL.Add(Format('and (a.ben_cpf = %s)', [QuotedStr(S)]));

    // Data de cadastro (período):
    if (EdtDataInicio.Text <> '') and (EdtDataFim.Text <> '') then
      begin
        DataInicio := FormatDateTime('dd.mm.yyyy', EdtDataInicio.Date);
        DataFim := FormatDateTime('dd.mm.yyyy', EdtDataFim.Date);
        QryConsulta.SQL.Add(Format('and (a.ben_data between %s and %s)', [QuotedStr(DataInicio), QuotedStr(DataFim)]));
      end;

    // Unidade do cadastro:
    if (LkpCmbBxUnidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.und_id in (select und_id from stp_sis_unidade_subordinada(%s)))', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Comunidade:
    if (LkpCmbBxComunidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.com_id = %s)', [IntToStr(LkpCmbBxComunidade.EditValue)]));

    // Técnico responsável:
    if (LkpCmbBxTecnico.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.fun_id = %s)', [IntToStr(LkpCmbBxTecnico.EditValue)]));

    // Categorias:
    S := '';
    for I := 0 to ChckCmbBxCategoria.Properties.Items.Count do
      begin
        if (ChckCmbBxCategoria.States[I] = cbsChecked) then
          S := S + IntToStr(ChckCmbBxCategoria.Properties.Items[I].Tag) + ', ';
      end;
    S := Trim(S);
    if (S.Length > 0) then
      begin
        S := Copy(S, 1, S.Length - 1);
        QryConsulta.SQL.Add('and exists (select 1 from tab_cad_beneficiario_categoria x');
        QryConsulta.SQL.Add(Format('where (x.ben_id = a.ben_id) and (x.cat_id in (%s)))', [S]));
      end;

    // Atividades:
    S := '';
    for I := 0 to ChckCmbBxAtividade.Properties.Items.Count do
      begin
        if (ChckCmbBxAtividade.States[I] = cbsChecked) then
          S := S + IntToStr(ChckCmbBxAtividade.Properties.Items[I].Tag) + ', ';
      end;
    S := Trim(S);
    if (S.Length > 0) then
      begin
        S := Copy(S, 1, S.Length - 1);
        QryConsulta.SQL.Add('and exists (select 1 from tab_cad_beneficiario_divisao x');
        QryConsulta.SQL.Add(Format('where (x.ben_id = a.ben_id) and (x.div_id in (%s)))', [S]));
      end;

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.ben_nome');
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

procedure TFrmCadastroBeneficiarioBusca.CarregarAtividades;
var
  I: TcxCheckComboBoxItem;
begin

  DtmCadastroModulo.DtStDivisao.First;
  while not DtmCadastroModulo.DtStDivisao.Eof do
  begin
    I := ChckCmbBxAtividade.Properties.Items.Add;
    I.Tag := DtmCadastroModulo.DtStDivisao.FieldByName('div_id').AsInteger;
    I.Description := DtmCadastroModulo.DtStDivisao.FieldByName('div_descricao').AsString;
    DtmCadastroModulo.DtStDivisao.Next;
  end;
end;

procedure TFrmCadastroBeneficiarioBusca.CarregarCategorias;
var
  I: TcxCheckComboBoxItem;
begin

  DtmCadastroModulo.DtStCategoria.First;
  while not DtmCadastroModulo.DtStCategoria.Eof do
  begin
    I := ChckCmbBxCategoria.Properties.Items.Add;
    I.Tag := DtmCadastroModulo.DtStCategoria.FieldByName('cat_id').AsInteger;
    I.Description := DtmCadastroModulo.DtStCategoria.FieldByName('cat_descricao').AsString;
    DtmCadastroModulo.DtStCategoria.Next;
  end;
end;

procedure TFrmCadastroBeneficiarioBusca.CarregarComunidadePorCidade(const Cidade: Integer);
begin
  QryComunidade.Close;
  QryComunidade.ParamByName('cidade').AsInteger := Cidade;
  QryComunidade.Open;
  QryComunidade.FetchAll;
end;

procedure TFrmCadastroBeneficiarioBusca.EdtApelidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmCadastroBeneficiarioBusca.FormCreate(Sender: TObject);
begin
  inherited;
  EditForm := FrmCadastroBeneficiario;
  EditFormClass := TFrmCadastroBeneficiario;

  ChckCmbBxCategoria.Properties.EmptySelectionText := '';
  ChckCmbBxAtividade.Properties.EmptySelectionText := '';

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxComunidade.Properties.ListSource := DtSrcComunidade;
  LkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;

  CarregarCategorias;
  CarregarAtividades;
  DefinirFiltros;
end;

procedure TFrmCadastroBeneficiarioBusca.LimparCampos;
begin
  inherited;
  EdtCPF.Clear;
  EdtApelido.Clear;
  EdtDataInicio.Clear;
  EdtDataFim.Clear;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxComunidade.Clear;
  LkpCmbBxTecnico.Clear;
  ChckCmbBxCategoria.Clear;
  ChckCmbBxAtividade.Clear;
  DefinirFiltros;
end;

procedure TFrmCadastroBeneficiarioBusca.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
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
