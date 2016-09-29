unit Emater.Indicador.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  dxSkinsdxBarPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxBar, cxClasses, cxTextEdit, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmIndicadorConsulta = class(TFrmBaseConsulta)
    Label8: TLabel;
    Label9: TLabel;
    EdtDataInicio: TcxDateEdit;
    EdtDataFim: TcxDateEdit;
    Label2: TLabel;
    LkpCmbBxUnidade: TcxLookupComboBox;
    Label1: TLabel;
    LkpCmbBxIndicador: TcxLookupComboBox;
    QryConsultaREG_ID: TLargeintField;
    QryConsultaREG_DATA: TDateField;
    QryConsultaIND_ID: TIntegerField;
    QryConsultaUND_ID: TIntegerField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaREG_REPLICADO: TSmallintField;
    QryConsultaREG_USUARIO: TStringField;
    QryConsultaREG_MODIFICADO: TSQLTimeStampField;
    QryConsultaUND_NOME: TStringField;
    QryConsultaIND_DESCRICAO: TStringField;
    QryConsultaIND_CHAVE: TStringField;
    GrdConsultaTblREG_DATA: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    GrdConsultaTblIND_DESCRICAO: TcxGridDBColumn;
    GrdConsultaTblIND_CHAVE: TcxGridDBColumn;
    QryIndicador: TFDQuery;
    DtSrcIndicador: TDataSource;
    QryIndicadorIND_ID: TIntegerField;
    QryIndicadorIND_DESCRICAO: TStringField;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure DefinirFiltros;
  public
    procedure LimparCampos; override;
  end;

var
  FrmIndicadorConsulta: TFrmIndicadorConsulta;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Classe.Log, Emater.Base.Consts, Emater.Sistema.Consts, Emater.Sistema.Modulo, Emater.Indicador.Editor;

procedure TFrmIndicadorConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  DataInicio, DataFim: string;
begin
  inherited;

  Screen.Cursor := crHourGlass;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Palavra-chave do indicador:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (c.ind_chave like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (c.ind_chave like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // Data de cadastro (período):
    if (EdtDataInicio.Text <> '') and (EdtDataFim.Text <> '') then
      begin
        DataInicio := FormatDateTime('dd.mm.yyyy', EdtDataInicio.Date);
        DataFim := FormatDateTime('dd.mm.yyyy', EdtDataFim.Date);
        QryConsulta.SQL.Add(Format('and (a.reg_data between %s and %s)', [QuotedStr(DataInicio), QuotedStr(DataFim)]));
      end;

    // Unidade do cadastro:
    if (LkpCmbBxUnidade.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.und_id in (select und_id from stp_sis_unidade_subordinada(%s)))', [IntToStr(LkpCmbBxUnidade.EditValue)]));

    // Indicador:
    if (LkpCmbBxIndicador.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.ind_i = %s)', [IntToStr(LkpCmbBxIndicador.EditValue)]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.reg_data');
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

procedure TFrmIndicadorConsulta.BtnEditarClick(Sender: TObject);
begin
  if QryConsulta.IsEmpty then
    Msg.Aviso(BASE_MSG_BUSCA_NADA_SELECIONADO)
  else
    begin
      Application.ProcessMessages;
      Screen.Cursor := crHourGlass;
      FrmIndicadorEditor := TFrmIndicadorEditor.Create(Self);
      try
        Application.ProcessMessages;
        FrmIndicadorEditor.Editar(QryConsulta.FieldByName(GrdConsultaTbl.DataController.KeyFieldNames).AsLargeInt);
        QryConsulta.Refresh;
      finally
        FrmIndicadorEditor.Release;
        FrmIndicadorEditor := nil;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmIndicadorConsulta.BtnNovoClick(Sender: TObject);
begin
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;
  FrmIndicadorEditor := TFrmIndicadorEditor.Create(Self);
  try
    Application.ProcessMessages;
    FrmIndicadorEditor.Novo;
  finally
    FrmIndicadorEditor.Release;
    FrmIndicadorEditor := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmIndicadorConsulta.BtnVisualizarClick(Sender: TObject);
begin
  if QryConsulta.IsEmpty then
    Msg.Aviso(BASE_MSG_BUSCA_NADA_SELECIONADO)
  else
    begin
      Application.ProcessMessages;
      Screen.Cursor := crHourGlass;
      FrmIndicadorEditor := TFrmIndicadorEditor.Create(Self);
      try
        Application.ProcessMessages;
        FrmIndicadorEditor.Visualizar(QryConsulta.FieldByName(GrdConsultaTbl.DataController.KeyFieldNames).AsLargeInt);
        QryConsulta.Refresh;
      finally
        FrmIndicadorEditor.Release;
        FrmIndicadorEditor := nil;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmIndicadorConsulta.DefinirFiltros;
begin
  if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_CHEFIA) or (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_TECNICO) then
    begin
      LkpCmbBxUnidade.EditValue := DtmSistemaModulo.UnidadeLocalID;
    end;
end;

procedure TFrmIndicadorConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmIndicadorEditor;
  EditFormClass := TFrmIndicadorEditor;

  LkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  LkpCmbBxIndicador.Properties.ListSource := DtSrcIndicador;

  DefinirFiltros;
end;

procedure TFrmIndicadorConsulta.FormShow(Sender: TObject);
begin
  inherited;
  QryIndicador.Open;
end;

procedure TFrmIndicadorConsulta.LimparCampos;
begin
  inherited;
  EdtDataInicio.Clear;
  EdtDataFim.Clear;
  LkpCmbBxUnidade.Clear;
  LkpCmbBxIndicador.Clear;

  DefinirFiltros;
end;

end.
