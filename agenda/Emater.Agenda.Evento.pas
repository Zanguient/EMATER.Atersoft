unit Emater.Agenda.Evento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMemo, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxImageComboBox, Vcl.ExtCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxSchedulerUtils;

type
  TFrmAgendaEvento = class(TFrmBaseDialogo)
    DtSrcAgenda: TDataSource;
    TbShtDetalhes: TcxTabSheet;
    GrpBxCompromisso: TcxGroupBox;
    DbMemoDetalhes: TcxDBMemo;
    Label2: TLabel;
    DbEdtAssunto: TcxDBTextEdit;
    Label1: TLabel;
    Label5: TLabel;
    DbMemoLocal: TcxDBMemo;
    DbEdtTmFim: TcxDBTimeEdit;
    DbDtEdtFim: TcxDBDateEdit;
    Label4: TLabel;
    DbEdtTmInicio: TcxDBTimeEdit;
    Label3: TLabel;
    DbDtEdtInicio: TcxDBDateEdit;
    Bevel1: TBevel;
    DbLkpCmbBxEvento: TcxDBLookupComboBox;
    Label9: TLabel;
    Label8: TLabel;
    DbLkpCmbBxSituacao: TcxDBLookupComboBox;
    Label6: TLabel;
    DbImgCmbBxTipo: TcxDBImageComboBox;
    GrpBxRegistro: TcxGroupBox;
    Label37: TLabel;
    Label56: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    DbEdtModificadoData: TcxDBTextEdit;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    DbEdtCriacaoData: TcxDBTextEdit;
    QryAgenda: TFDQuery;
    QryAgendaAGN_DATA_HORA_INICIO: TSQLTimeStampField;
    QryAgendaAGN_DATA_HORA_FIM: TSQLTimeStampField;
    QryAgendaAGN_DATA_HORA_REGISTRO: TSQLTimeStampField;
    QryAgendaAGN_EVENTO_TIPO: TSmallintField;
    QryAgendaAGN_ASSUNTO: TStringField;
    QryAgendaAGN_DETALHE: TMemoField;
    QryAgendaAGN_LOCAL: TMemoField;
    QryAgendaAGN_PARTICIPANTE: TMemoField;
    QryAgendaUND_ID: TIntegerField;
    QryAgendaEVE_ID: TIntegerField;
    QryAgendaSIT_ID: TIntegerField;
    QryAgendaREG_EXCLUIDO: TSmallintField;
    QryAgendaREG_REPLICADO: TSmallintField;
    QryAgendaREG_USUARIO: TStringField;
    QryAgendaREG_MODIFICADO: TSQLTimeStampField;
    UpdtAgenda: TFDUpdateSQL;
    GrdFnc: TcxGrid;
    GrdFncTbl: TcxGridDBTableView;
    GrdFncLvl: TcxGridLevel;
    Label11: TLabel;
    Label7: TLabel;
    DbMemoParticipantes: TcxDBMemo;
    GrdCom: TcxGrid;
    GrdComTbl: TcxGridDBTableView;
    GrdComLvl: TcxGridLevel;
    Label12: TLabel;
    BtnFncIncluir: TcxButton;
    BtnFncRemover: TcxButton;
    BtnComRemover: TcxButton;
    BtnComIncluir: TcxButton;
    DtSrcTecnico: TDataSource;
    QryTecnico: TFDQuery;
    UpdtTecnico: TFDUpdateSQL;
    DtSrcComunidade: TDataSource;
    UpdtComunidade: TFDUpdateSQL;
    QryComunidade: TFDQuery;
    QrySituacao: TFDQuery;
    DtSrcSituacao: TDataSource;
    QryEvento: TFDQuery;
    DtSrcEvento: TDataSource;
    QryTecnicoREG_EXCLUIDO: TSmallintField;
    QryTecnicoREG_REPLICADO: TSmallintField;
    QryTecnicoREG_USUARIO: TStringField;
    QryTecnicoREG_MODIFICADO: TSQLTimeStampField;
    QryTecnicoFUN_MATRICULA: TStringField;
    QryTecnicoFUN_NOME: TStringField;
    QryTecnicoAGF_ID: TLargeintField;
    QryTecnicoFUN_ID: TIntegerField;
    GrdFncTblFUN_MATRICULA: TcxGridDBColumn;
    GrdFncTblFUN_NOME: TcxGridDBColumn;
    QryComunidadeAGC_ID: TLargeintField;
    QryComunidadeCOM_ID: TIntegerField;
    QryComunidadeREG_EXCLUIDO: TSmallintField;
    QryComunidadeREG_REPLICADO: TSmallintField;
    QryComunidadeREG_USUARIO: TStringField;
    QryComunidadeREG_MODIFICADO: TSQLTimeStampField;
    QryComunidadeCOM_NOME: TStringField;
    GrdComTblCOM_NOME: TcxGridDBColumn;
    QryAgendaAGN_MODIFICADO_USUARIO_NOME: TStringField;
    QryAgendaAGN_ACTUAL_FINISH: TIntegerField;
    QryAgendaAGN_ACTUAL_START: TIntegerField;
    QryAgendaAGN_TASK_COMPLETE_FIELD: TIntegerField;
    QryAgendaAGN_TASK_INDEX_FIELD: TIntegerField;
    QryAgendaAGN_TASK_STATUS_FIELD: TIntegerField;
    QryAgendaAGN_TASK_LINKS_FIELD: TBlobField;
    QryAgendaAGN_OPTIONS: TIntegerField;
    QryAgendaAGN_STATE: TIntegerField;
    QryAgendaAGN_EVENT_TYPE: TIntegerField;
    QryAgendaAGN_LABEL_COLOR: TIntegerField;
    QryAgendaAGN_RESOURCE_ID: TIntegerField;
    QryAgendaAGN_PARENT_ID: TIntegerField;
    QryAgendaAGN_ID: TIntegerField;
    QryTecnicoAGN_ID: TIntegerField;
    QryComunidadeAGN_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QryAgendaNewRecord(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnFncIncluirClick(Sender: TObject);
    procedure BtnFncRemoverClick(Sender: TObject);
    procedure DtSrcTecnicoStateChange(Sender: TObject);
    procedure BtnComIncluirClick(Sender: TObject);
    procedure BtnComRemoverClick(Sender: TObject);
    procedure DtSrcComunidadeStateChange(Sender: TObject);
  public
    function Novo(const DataInicio, DataFim: TDateTime; const DiaInteiro: Boolean = False): Boolean;
    function Editar(const ID: Integer): Boolean;
  end;

var
  FrmAgendaEvento: TFrmAgendaEvento;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Modulo, Emater.Pessoal.Funcionario.Busca, Emater.Base.Consts, Emater.Cadastro.Comunidade.Busca;

procedure TFrmAgendaEvento.BtnComIncluirClick(Sender: TObject);
begin
  FrmCadastroComunidadeBusca := TFrmCadastroComunidadeBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmCadastroComunidadeBusca.ShowModal = mrOk) then
      try
        QryComunidade.Last;
        QryComunidade.Append;
        QryComunidadeAGN_ID.AsInteger := QryAgendaAGN_ID.AsInteger;
        QryComunidadeCOM_ID.Value := FrmCadastroComunidadeBusca.QryConsultaCOM_ID.Value;
        QryComunidadeCOM_NOME.AsString := FrmCadastroComunidadeBusca.QryConsultaCOM_NOME.AsString;
        DtmSistemaModulo.GravarAuditoriaInclusao(QryComunidade, 'TAB_AGN_AGENDA_COMUNIDADE', 'AGC_ID');
        QryComunidade.Post;
      except
        on E: Exception do
          if QryComunidade.State = dsInsert then
            QryComunidade.Cancel;
      end;
  finally
    FrmCadastroComunidadeBusca.Release;
    FrmCadastroComunidadeBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmAgendaEvento.BtnComRemoverClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryComunidade, False);
      DtSrcComunidade.OnStateChange(DtSrcComunidade);
    end;
end;

procedure TFrmAgendaEvento.BtnFncIncluirClick(Sender: TObject);
begin
  FrmPessoalFuncionarioBusca := TFrmPessoalFuncionarioBusca.Create(Self);
  try
    Screen.Cursor := crHourGlass;

    if (FrmPessoalFuncionarioBusca.ShowModal = mrOk) then
      try
        QryTecnico.Last;
        QryTecnico.Append;
        QryTecnicoAGN_ID.AsInteger := QryAgendaAGN_ID.AsInteger;
        QryTecnicoFUN_ID.AsInteger := FrmPessoalFuncionarioBusca.QryConsultaFUN_ID.Value;
        QryTecnicoFUN_MATRICULA.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_MATRICULA.AsString;
        QryTecnicoFUN_NOME.AsString := FrmPessoalFuncionarioBusca.QryConsultaFUN_NOME.AsString;
        DtmSistemaModulo.GravarAuditoriaInclusao(QryTecnico, 'TAB_AGN_AGENDA_FUNCIONARIO', 'AGF_ID');
        QryTecnico.Post;
      except
        on E: Exception do
          if QryTecnico.State = dsInsert then
            QryTecnico.Cancel;
      end;
  finally
    FrmPessoalFuncionarioBusca.Release;
    FrmPessoalFuncionarioBusca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmAgendaEvento.BtnFncRemoverClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    begin
      DtmSistemaModulo.GravarAuditoriaExclusao(QryTecnico, False);
      DtSrcTecnico.OnStateChange(DtSrcTecnico);
    end;
end;

procedure TFrmAgendaEvento.BtnOKClick(Sender: TObject);
begin
  inherited;

  try
    QryTecnico.MasterSource := nil;
    QryComunidade.MasterSource := nil;

    QryAgenda.Post;

    if QryTecnico.UpdatesPending then
      begin
        if (QryTecnico.ApplyUpdates = 0) then
          QryTecnico.CommitUpdates;
      end;

    if QryComunidade.UpdatesPending then
      begin
        if (QryComunidade.ApplyUpdates = 0) then
          QryComunidade.CommitUpdates;
      end;

    QryTecnico.MasterSource := DtSrcAgenda;
    QryComunidade.MasterSource := DtSrcAgenda;

    ModalResult := mrOk;
  except
    on E: Exception do
      begin
        ShowMessage(E.Message);
        ModalResult := mrNone;
      end;
  end;
end;

procedure TFrmAgendaEvento.DtSrcComunidadeStateChange(Sender: TObject);
begin
  inherited;
  BtnComIncluir.Enabled := (QryComunidade.State = dsBrowse);
  BtnComRemover.Enabled := (QryComunidade.RecordCount > 0);
end;

procedure TFrmAgendaEvento.DtSrcTecnicoStateChange(Sender: TObject);
begin
  BtnFncIncluir.Enabled := (QryTecnico.State = dsBrowse);
  BtnFncRemover.Enabled := (QryTecnico.RecordCount > 0);
end;

function TFrmAgendaEvento.Editar(const ID: Integer): Boolean;
begin
  QryAgenda.Close;
  QryAgenda.ParamByName('agn_id').AsInteger := ID;
  QryAgenda.Open;
  QryAgenda.Edit;

  QryTecnico.Open;
  QryComunidade.Open;

  Result := (ShowModal = mrOk);
end;

procedure TFrmAgendaEvento.FormCreate(Sender: TObject);
begin
  inherited;
  PgCntrlPrincipal.ActivePageIndex := 0;
  ActiveControl := DbEdtAssunto;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  QrySituacao.Open;
  QryEvento.Open;
end;

function TFrmAgendaEvento.Novo(const DataInicio, DataFim: TDateTime; const DiaInteiro: Boolean = False): Boolean;
begin
  QryAgenda.Close;
  QryAgenda.ParamByName('agn_id').AsInteger := 0;
  QryAgenda.Open;
  QryAgenda.Insert;

  if not DiaInteiro then
    begin
      QryAgendaAGN_DATA_HORA_INICIO.AsDateTime := DataInicio;
      QryAgendaAGN_DATA_HORA_FIM.AsDateTime := DataFim;
    end
  else
    begin
      QryAgendaAGN_DATA_HORA_INICIO.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', DataInicio)) + StrToTime('08:00:00');
      QryAgendaAGN_DATA_HORA_FIM.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy', DataInicio)) + StrToTime('17:00:00');
    end;

  QryTecnico.Open;
  QryComunidade.Open;

  Result := (ShowModal = mrOk);
end;

procedure TFrmAgendaEvento.QryAgendaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryAgendaAGN_ID.AsLargeInt := DtmSistemaModulo.GerarIdentificador('TAB_AGN_AGENDA', 'AGN_ID');
  QryAgendaAGN_DATA_HORA_REGISTRO.AsDateTime := Now;
  QryAgendaAGN_EVENTO_TIPO.Value := 1;
  QryAgendaUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  QryAgendaREG_EXCLUIDO.Value := 0;
  QryAgendaREG_REPLICADO.Value := 0;
  QryAgendaREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
  QryAgendaAGN_MODIFICADO_USUARIO_NOME.AsString := DtmConexaoModulo.UsuarioNome;
  QryAgendaREG_MODIFICADO.AsDateTime := Now;
  QryAgendaAGN_ACTUAL_START.Value := 0;
  QryAgendaAGN_ACTUAL_FINISH.Value := 0;
  QryAgendaAGN_TASK_COMPLETE_FIELD.Value := 0;
  QryAgendaAGN_TASK_INDEX_FIELD.Value := 0;
  QryAgendaAGN_TASK_STATUS_FIELD.Value := 0;
  QryAgendaAGN_OPTIONS.Value := 0;
  QryAgendaAGN_STATE.Value := 0;
  QryAgendaAGN_EVENT_TYPE.Value := 0;
  QryAgendaAGN_LABEL_COLOR.Value := clRed;
end;

end.
