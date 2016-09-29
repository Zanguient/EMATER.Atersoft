unit Emater.Proater.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  dxSkinsdxBarPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxBar, cxClasses, cxTextEdit, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxVGrid, cxDBVGrid, cxInplaceContainer, cxSplitter, cxTL, cxTLdxBarBuiltInMenu, cxDBTL, cxTLData;

type
  TFrmProaterConsulta = class(TFrmBaseConsulta)
    Label2: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    GrdConsultaTblPRO_DATA: TcxGridDBColumn;
    GrdConsultaTblPRO_PERIODO_INICIO: TcxGridDBColumn;
    GrdConsultaTblPRO_PERIODO_FIM: TcxGridDBColumn;
    GrdConsultaTblREG_USUARIO: TcxGridDBColumn;
    GrdConsultaTblREG_MODIFICADO: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    QryConsultaPRO_ID: TLargeintField;
    QryConsultaPRO_DATA: TDateField;
    QryConsultaPRO_PERIODO_INICIO: TIntegerField;
    QryConsultaPRO_PERIODO_FIM: TIntegerField;
    QryConsultaUND_ID: TIntegerField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaUND_NOME: TStringField;
    QryConsultaPRO_QTDE_COMUNIDADE: TIntegerField;
    QryConsultaPRO_QTDE_POTENCIAL: TIntegerField;
    QryConsultaPRO_QTDE_ACORDO: TIntegerField;
    QryConsultaPRO_QTDE_FUNCIONARIO: TIntegerField;
    QryConsultaPRO_QTDE_DEMANDA: TIntegerField;
    QryConsultaPRO_QTDE_MOBILIARIO: TIntegerField;
    QryConsultaPRO_QTDE_EQUIPAMENTO: TIntegerField;
    QryConsultaPRO_QTDE_VEICULO: TIntegerField;
    QryConsultaPRO_QTDE_CUSTO: TIntegerField;
    QryConsultaPRO_QTDE_QUALIFICACAO: TIntegerField;
    QryConsultaPRO_QTDE_SUBPROJETO: TIntegerField;
    PnlResumo: TPanel;
    GrdResumo: TcxDBVerticalGrid;
    GrdResumoPRO_QTDE_COMUNIDADE: TcxDBEditorRow;
    GrdResumoPRO_QTDE_POTENCIAL: TcxDBEditorRow;
    GrdResumoPRO_QTDE_ACORDO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_FUNCIONARIO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_DEMANDA: TcxDBEditorRow;
    GrdResumoPRO_QTDE_MOBILIARIO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_EQUIPAMENTO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_VEICULO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_CUSTO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_QUALIFICACAO: TcxDBEditorRow;
    GrdResumoPRO_QTDE_SUBPROJETO: TcxDBEditorRow;
    SplitterPrincipal: TSplitter;
    QrySubProjetos: TFDQuery;
    DtSrcSubProjetos: TDataSource;
    DbTrLstSubprojeto: TcxDBTreeList;
    QrySubProjetosID: TLargeintField;
    QrySubProjetosPARENT: TLargeintField;
    QrySubProjetosDESCRICAO: TStringField;
    QrySubProjetosQTDE: TIntegerField;
    QrySubProjetosIMAGE: TIntegerField;
    DbTrLstSubprojetoDESCRICAO: TcxDBTreeListColumn;
    DbTrLstSubprojetoQTDE: TcxDBTreeListColumn;
    SplitterTop: TSplitter;
    BtnImprimir: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure LkpCmbBxUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BtnLimparParametrosClick(Sender: TObject);
    procedure GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const [Ref] AValue: Variant;
      AData: TcxEditValidateInfo);
    procedure GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText(Sender: TcxCustomEditorRowProperties; ARecord: Integer; var AText: string);
    procedure QryConsultaPRO_PERIODO_INICIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QryConsultaPRO_PERIODO_INICIOSetText(Sender: TField; const Text: string);
    procedure DbVGrdSubprojetoSPR_NOMEPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const [Ref] AValue: Variant;
      AData: TcxEditValidateInfo);
    procedure QryConsultaAfterRefresh(DataSet: TDataSet);
    procedure QrySubProjetosMasterSetValues(DataSet: TFDDataSet);
    procedure BtnImprimirClick(Sender: TObject);
  private
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmProaterConsulta: TFrmProaterConsulta;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Consts, Emater.Sistema.Modulo, Emater.Recurso.Modulo, Emater.Classe.Log, Emater.Base.Consts,
  Emater.Proater.Principal, Emater.Relatorio.Proater;

procedure TFrmProaterConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmProaterPrincipal;
  EditFormClass := TFrmProaterPrincipal;

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  DefinirFiltros;
end;

procedure TFrmProaterConsulta.FormShow(Sender: TObject);
begin
  inherited;
  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  DefinirFiltros;
end;

procedure TFrmProaterConsulta.GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText(Sender: TcxCustomEditorRowProperties; ARecord: Integer; var AText: string);
begin
  inherited;
  AText := AText + StringOfChar(' ', 2);
end;

procedure TFrmProaterConsulta.GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  const [Ref] AValue: Variant; AData: TcxEditValidateInfo);
begin
  inherited;
  if VarIsNull(AValue) or (AValue = 0) then
    Sender.ImageIndex := 43
  else
    Sender.ImageIndex := 97;
end;

procedure TFrmProaterConsulta.LimparCampos;
begin
  inherited;
  LkpCmbBxUnidade.Clear;
  DefinirFiltros;
end;

procedure TFrmProaterConsulta.LkpCmbBxUnidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmProaterConsulta.QryConsultaAfterRefresh(DataSet: TDataSet);
begin
  QrySubProjetos.Close;
  QrySubProjetos.Open;
  DbTrLstSubprojeto.FullExpand;
end;

procedure TFrmProaterConsulta.QryConsultaPRO_PERIODO_INICIOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  Ano, Mes: string;
begin
  Ano := Copy(Sender.AsString, 1, 4);
  Mes := Copy(Sender.AsString, 5, 2);
  if (Ano <> '') and (Mes <> '') then
    Text :=  Mes + '/' + Ano
  else
    Text := '  /    ';
end;

procedure TFrmProaterConsulta.QryConsultaPRO_PERIODO_INICIOSetText(Sender: TField; const Text: string);
begin
  if (Trim(Text) <> '') then
    Sender.AsInteger := StrToInt(Copy(Text, 3, 4) + Copy(Text, 1 ,2));
end;

procedure TFrmProaterConsulta.QrySubProjetosMasterSetValues(DataSet: TFDDataSet);
begin
  DbTrLstSubprojeto.FullExpand;
end;

procedure TFrmProaterConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
begin
  inherited;

  Screen.Cursor := crHourGlass;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    QrySubProjetos.Close;
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Unidade do cadastro:
    if (LkpCmbBxUnidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.und_id in (select und_id from stp_sis_unidade_subordinada(%s)))', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.pro_periodo_inicio, a.pro_periodo_fim, b.und_nome');
        QryConsulta.Open;
        QrySubProjetos.Open;

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

procedure TFrmProaterConsulta.BtnImprimirClick(Sender: TObject);
var
  S: string;
begin
  Screen.Cursor := crHourGlass;
  FrmRelatorioProater := TFrmRelatorioProater.Create(Self);
  try
    S := QryConsultaPRO_PERIODO_INICIO.Text + ' a ' + QryConsultaPRO_PERIODO_FIM.Text + ' do município de ' + QryConsultaUND_NOME.AsString;
    FrmRelatorioProater.Preparar(QryConsultaPRO_ID.Value, S);
  finally
    FrmRelatorioProater.Release;
    FrmRelatorioProater := nil;
    Screen.Cursor := crDefault;
  end;

end;

procedure TFrmProaterConsulta.BtnLimparParametrosClick(Sender: TObject);
begin
  inherited;
  if LkpCmbBxUnidade.CanFocus then LkpCmbBxUnidade.SetFocus;
end;

procedure TFrmProaterConsulta.DbVGrdSubprojetoSPR_NOMEPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  const [Ref] AValue: Variant; AData: TcxEditValidateInfo);
begin
  if VarIsNull(AValue) or (AValue = 0) then
    Sender.ImageIndex := 43
  else
    Sender.ImageIndex := 97;
end;

procedure TFrmProaterConsulta.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
    end;
end;

end.
