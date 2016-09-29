unit Emater.Cadastro.Beneficiario.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCheckComboBox, dxSkinSeven, dxSkinSevenClassic, cxSplitter, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter, dxPSCore,
  dxPScxCommon, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroBeneficiarioConsulta = class(TFrmBaseConsulta)
    EdtCPF: TcxMaskEdit;
    Label1: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    Label2: TLabel;
    Label4: TLabel;
    LkpCmbBxComunidade: TcxLookupComboBox;
    ChckCmbBxCategoria: TcxCheckComboBox;
    Label5: TLabel;
    ChckCmbBxAtividade: TcxCheckComboBox;
    Label6: TLabel;
    Label7: TLabel;
    LkpCmbBxTecnico: TcxLookupComboBox;
    EdtDataInicio: TcxDateEdit;
    Label8: TLabel;
    EdtDataFim: TcxDateEdit;
    Label9: TLabel;
    GrdConsultaTblBEN_DATA: TcxGridDBColumn;
    GrdConsultaTblBEN_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblBEN_NOME: TcxGridDBColumn;
    GrdConsultaTblBEN_CPF: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblCOM_NOME: TcxGridDBColumn;
    GrdConsultaTblFUN_NOME: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    PnlAtributos: TPanel;
    DtSrcCategoria: TDataSource;
    DtSrcDivisao: TDataSource;
    GrdCat: TcxGrid;
    GrdCatTbl: TcxGridDBTableView;
    GrdCatTblCAT_DESCRICAO: TcxGridDBColumn;
    GrdCatLvl: TcxGridLevel;
    GrdDiv: TcxGrid;
    GrdDivTbl: TcxGridDBTableView;
    GrdDivTblDIV_DESCRICAO: TcxGridDBColumn;
    GrdDivLvl: TcxGridLevel;
    GrdCatTblCAT_MARCADO: TcxGridDBColumn;
    GrdDivTblDIV_MARCADO: TcxGridDBColumn;
    SplitterPrincipal: TSplitter;
    SplitterAtributos: TSplitter;
    dxComponentPrinter: TdxComponentPrinter;
    dxPSEngineController: TdxPSEngineController;
    dxComponentPrinterLink: TdxGridReportLink;
    BtnImprimir: TdxBarButton;
    BtnImprimirFicha: TdxBarButton;
    GrdConsultaTblBEN_SEXO: TcxGridDBColumn;
    GrdConsultaTblBEN_IDADE: TcxGridDBColumn;
    GrdConsultaTblBEN_ESCOLARIDADE: TcxGridDBColumn;
    GrdConsultaTblBEN_ORGANIZACAO: TcxGridDBColumn;
    GrdConsultaTblBEN_CASADO: TcxGridDBColumn;
    GrdConsultaTblBEN_CATEGORIA: TcxGridDBColumn;
    GrdConsultaTblBEN_ATIVIDADE: TcxGridDBColumn;
    GrdConsultaTblBEN_UPF_CADASTRADA: TcxGridDBColumn;
    GrdConsultaTblBEN_DAP: TcxGridDBColumn;
    Label10: TLabel;
    EdtApelido: TcxTextEdit;
    DtSrcComunidade: TDataSource;
    QryConsultaBEN_ID: TLargeintField;
    QryConsultaBEN_DATA: TDateField;
    QryConsultaBEN_SITUACAO: TStringField;
    QryConsultaBEN_NOME: TStringField;
    QryConsultaBEN_SEXO: TStringField;
    QryConsultaBEN_CPF: TStringField;
    QryConsultaBEN_IDADE: TSmallintField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaREG_REPLICADO: TSmallintField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaCOM_NOME: TStringField;
    QryConsultaFUN_NOME: TStringField;
    QryConsultaUND_NOME: TStringField;
    QryConsultaBEN_ESCOLARIDADE: TStringField;
    QryConsultaBEN_ORGANIZACAO: TStringField;
    QryConsultaBEN_CASADO: TStringField;
    QryConsultaBEN_CATEGORIA: TStringField;
    QryConsultaBEN_ATIVIDADE: TStringField;
    QryConsultaBEN_UPF_CADASTRADA: TStringField;
    QryConsultaBEN_DAP: TStringField;
    QryCategoria: TFDQuery;
    QryDivisao: TFDQuery;
    QryComunidade: TFDQuery;
    QryCategoriaBEN_ID: TLargeintField;
    QryCategoriaCAT_ID: TIntegerField;
    QryCategoriaCAT_DESCRICAO: TStringField;
    QryCategoriaCAT_MARCADO: TIntegerField;
    QryDivisaoBEN_ID: TLargeintField;
    QryDivisaoDIV_ID: TIntegerField;
    QryDivisaoDIV_DESCRICAO: TStringField;
    QryDivisaoDIV_TIPO: TStringField;
    QryDivisaoDIV_MARCADO: TIntegerField;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeCOM_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnImprimirFichaClick(Sender: TObject);
    procedure EdtApelidoKeyPress(Sender: TObject; var Key: Char);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    procedure CarregarCategorias;
    procedure CarregarAtividades;
    procedure CarregarComunidadePorCidade(const Cidade: Integer);
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroBeneficiarioConsulta: TFrmCadastroBeneficiarioConsulta;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Cadastro.Beneficiario, Emater.Cadastro.Modulo, Emater.Dne.Modulo, Emater.Conexao.Modulo,
  Emater.Base.Consts, Emater.Sistema.Modulo, Emater.Pessoal.Modulo, Emater.Relatorio.Beneficiario.Cadastro,
  Emater.Cadastro.Consts, Emater.Classe.Log, Emater.Sistema.Consts, Emater.Sistema.Principal;

procedure TFrmCadastroBeneficiarioConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  S, DataInicio, DataFim: string;
  I: Integer;
begin
  inherited;

  Screen.Cursor := crHourGlass;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    QryDivisao.Close;
    QryCategoria.Close;
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
        QryCategoria.Open;
        QryDivisao.Open;

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

procedure TFrmCadastroBeneficiarioConsulta.BtnEditarClick(Sender: TObject);
begin
  inherited;
  QryCategoria.Close;
  QryCategoria.Open;
  QryDivisao.Close;
  QryDivisao.Open;
end;

procedure TFrmCadastroBeneficiarioConsulta.BtnExcluirClick(Sender: TObject);
var
  ID: Int64;
begin
  ID := QryConsultaBEN_ID.AsLargeInt;
  inherited;
  if (QryConsulta.RecordCount = 0) or (QryConsultaBEN_ID.AsLargeInt <> ID) then
    FrmSistemaPrincipal.RecenteRemover(FrmSistemaPrincipal.VwGlrCntrlBeneficiarios, ID);
end;

procedure TFrmCadastroBeneficiarioConsulta.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter.Preview(True, nil);
end;

procedure TFrmCadastroBeneficiarioConsulta.BtnImprimirFichaClick(Sender: TObject);
begin
  if (QryConsulta.IsEmpty) or (QryConsulta.RecordCount = 0) then
    Msg.Aviso(CADASTRO_AVISO_IMPRIMIR_FICHA)
  else
    begin
      Screen.Cursor := crHourGlass;
      FrmRelatorioBeneficiarioCadastro := TFrmRelatorioBeneficiarioCadastro.Create(Self);
      try
        FrmRelatorioBeneficiarioCadastro.VisualizarImpressao(QryConsultaBEN_ID.AsLargeInt, QryConsultaBEN_CPF.AsString);
      finally
        FrmRelatorioBeneficiarioCadastro.Release;
        FrmRelatorioBeneficiarioCadastro := nil;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmCadastroBeneficiarioConsulta.CarregarAtividades;
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

procedure TFrmCadastroBeneficiarioConsulta.CarregarCategorias;
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

procedure TFrmCadastroBeneficiarioConsulta.CarregarComunidadePorCidade(const Cidade: Integer);
begin
  QryComunidade.Close;
  QryComunidade.ParamByName('cidade').AsInteger := Cidade;
  QryComunidade.Open;
  QryComunidade.FetchAll;
end;

procedure TFrmCadastroBeneficiarioConsulta.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
    end;
end;

procedure TFrmCadastroBeneficiarioConsulta.EdtApelidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmCadastroBeneficiarioConsulta.FormCreate(Sender: TObject);
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

procedure TFrmCadastroBeneficiarioConsulta.LimparCampos;
begin
  inherited;
  QryDivisao.Close;
  QryCategoria.Close;
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

procedure TFrmCadastroBeneficiarioConsulta.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
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
