unit Emater.Credito.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Consulta, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus, dxSkinsdxBarPainter, dxBar, cxClasses, FIBDataSet, pFIBDataSet,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar;

type
  TFrmCreditoConsulta = class(TFrmBaseConsulta)
    LkpCmbBxSituacao: TcxLookupComboBox;
    Label2: TLabel;
    Label1: TLabel;
    LkpCmbBxAgente: TcxLookupComboBox;
    LkpCmbBxLinha: TcxLookupComboBox;
    Label3: TLabel;
    LkpCmbBxTipo: TcxLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    LkpCmbBxPublico: TcxLookupComboBox;
    Label6: TLabel;
    LkpCmbBxEscritorio: TcxLookupComboBox;
    Label8: TLabel;
    EdtElaboracaoDataInicio: TcxDateEdit;
    Label9: TLabel;
    EdtElaboracaoDataFim: TcxDateEdit;
    Label7: TLabel;
    EdtContratacaoDataFim: TcxDateEdit;
    EdtContratacaoDataInicio: TcxDateEdit;
    Label10: TLabel;
    DtStConsultaCRD_ID: TFIBBCDField;
    DtStConsultaCRD_TITULO: TFIBStringField;
    DtStConsultaCRD_SITUACAO: TFIBStringField;
    DtStConsultaCRD_AGENTE_FINANCEIRO: TFIBStringField;
    DtStConsultaCRD_LINHA_CREDITO: TFIBStringField;
    DtStConsultaCRD_TIPO_CREDITO: TFIBStringField;
    DtStConsultaCRD_PUBLICO_BENEFICIARIO: TFIBStringField;
    DtStConsultaCRD_ESCRITORIO: TFIBStringField;
    DtStConsultaCRD_DATA_ELABORACAO: TFIBDateField;
    DtStConsultaCRD_DATA_CONTRATACAO: TFIBDateField;
    GrdConsultaTblCRD_TITULO: TcxGridDBColumn;
    GrdConsultaTblCRD_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblCRD_AGENTE_FINANCEIRO: TcxGridDBColumn;
    GrdConsultaTblCRD_LINHA_CREDITO: TcxGridDBColumn;
    GrdConsultaTblCRD_TIPO_CREDITO: TcxGridDBColumn;
    GrdConsultaTblCRD_PUBLICO_BENEFICIARIO: TcxGridDBColumn;
    GrdConsultaTblCRD_ESCRITORIO: TcxGridDBColumn;
    GrdConsultaTblCRD_DATA_ELABORACAO: TcxGridDBColumn;
    GrdConsultaTblCRD_DATA_CONTRATACAO: TcxGridDBColumn;
    DtStConsultaREG_EXCLUIDO: TFIBBooleanField;
    DtStConsultaREG_REPLICADO: TFIBBooleanField;
    DtStConsultaREG_USUARIO: TFIBStringField;
    DtStConsultaREG_MODIFICADO: TFIBDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
  public
    procedure LimparCampos; override;
  end;

var
  FrmCreditoConsulta: TFrmCreditoConsulta;

implementation

{$R *.dfm}

uses Emater.Credito.Modulo, Emater.Conexao.Modulo, Emater.Credito, Emater.Sistema.Modulo, Emater.Classe.Log, Emater.Base.Consts;

procedure TFrmCreditoConsulta.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
  DataInicio, DataFim: string;
begin
  inherited;
  Screen.Cursor := crHourGlass;

  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');
  try
    DtStConsulta.Close;
    DtStConsulta.SelectSQL.Clear;
    DtStConsulta.SelectSQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Título do projeto:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: DtStConsulta.SelectSQL.Add(Format('and (a.crd_titulo like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: DtStConsulta.SelectSQL.Add(Format('and (a.crd_titulo like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // Situação do projeto:
    if (LkpCmbBxSituacao.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.sit_id = %s)', [IntToStr(LkpCmbBxSituacao.EditValue)]));

    // Agente financeiro:
    if (LkpCmbBxAgente.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.fin_id = %s)', [IntToStr(LkpCmbBxAgente.EditValue)]));

    // Linha de crédito:
    if (LkpCmbBxLinha.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.lin_id = %s)', [IntToStr(LkpCmbBxLinha.EditValue)]));

    // Tipo de crédito:
    if (LkpCmbBxTipo.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.tip_id = %s)', [IntToStr(LkpCmbBxTipo.EditValue)]));

    // Público beneficiário:
    if (LkpCmbBxPublico.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.pub_id = %s)', [IntToStr(LkpCmbBxPublico.EditValue)]));

    // Data de elaboração (período):
    if (EdtElaboracaoDataInicio.Text <> '') and (EdtElaboracaoDataFim.Text <> '') then
      begin
        DataInicio := FormatDateTime('dd.mm.yyyy', EdtElaboracaoDataInicio.Date);
        DataFim := FormatDateTime('dd.mm.yyyy', EdtElaboracaoDataFim.Date);
        DtStConsulta.SelectSQL.Add(Format('and (a.crd_data_elaboracao between %s and %s)', [QuotedStr(DataInicio), QuotedStr(DataFim)]));
      end;

    // Data de contratação (período):
    if (EdtContratacaoDataInicio.Text <> '') and (EdtContratacaoDataFim.Text <> '') then
      begin
        DataInicio := FormatDateTime('dd.mm.yyyy', EdtContratacaoDataInicio.Date);
        DataFim := FormatDateTime('dd.mm.yyyy', EdtContratacaoDataFim.Date);
        DtStConsulta.SelectSQL.Add(Format('and (a.crd_data_contratacao between %s and %s)', [QuotedStr(DataInicio), QuotedStr(DataFim)]));
      end;

    // Unidade do cadastro:
    if (LkpCmbBxEscritorio.Text <> '') then
      DtStConsulta.SelectSQL.Add(Format('and (a.und_id in (select und_id from stp_sis_unidade_subordinada(%s)))', [IntToStr(LkpCmbBxEscritorio.EditValue)]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = DtStConsulta.SelectSQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        DtStConsulta.SelectSQL.Add('order by a.crd_titulo');
        DtStConsulta.Open;

        if DtStConsulta.IsEmpty then
          begin
            CodeSite.SendMsg('Consulta realizada. Nenhum registro encontrado.');
            Msg.Informacao(BASE_MSG_BUSCA_NADA_ENCONTRADO);
          end
        else
          begin
            CodeSite.SendMsg('Consulta realizada. Total de registros encontrados: ' + IntToStr(DtStConsulta.RecordCount) + '.');
            GrdConsulta.SetFocus;
          end;
      end;
  finally
    Screen.Cursor := crDefault;
    CodeSite.ExitMethod(Self.Name + '.BtnConsultarClick().');
  end;
end;

procedure TFrmCreditoConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmCredito;
  EditFormClass := TFrmCredito;

  LkpCmbBxSituacao.Properties.ListSource := DtmCreditoModulo.DtSrcSituacao;
  LkpCmbBxAgente.Properties.ListSource := DtmCreditoModulo.DtSrcFinanceira;
  LkpCmbBxLinha.Properties.ListSource := DtmCreditoModulo.DtSrcLinha;
  LkpCmbBxTipo.Properties.ListSource := DtmCreditoModulo.DtSrcTipo;
  LkpCmbBxPublico.Properties.ListSource := DtmCreditoModulo.DtSrcPublico;
  LkpCmbBxEscritorio.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
end;

procedure TFrmCreditoConsulta.LimparCampos;
begin
  inherited;

  LkpCmbBxSituacao.Clear;
  LkpCmbBxAgente.Clear;
  LkpCmbBxLinha.Clear;
  LkpCmbBxTipo.Clear;
  LkpCmbBxPublico.Clear;
  LkpCmbBxEscritorio.Clear;
  EdtElaboracaoDataInicio.Clear;
  EdtElaboracaoDataFim.Clear;
  EdtContratacaoDataInicio.Clear;
  EdtContratacaoDataFim.Clear;
end;

end.
