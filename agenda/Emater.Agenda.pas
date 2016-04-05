unit Emater.Agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Filha, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxEdit, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerTreeListBrowser, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic,
  dxSkinscxSchedulerPainter, Data.DB, FIBDataSet, pFIBDataSet, cxClasses, cxSchedulerDBStorage,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxSchedulercxGridConnection, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxContainer, cxDropDownEdit, cxCalendar, cxDBEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxTextEdit, cxMemo, cxImageComboBox, dxSkinsdxBarPainter,
  dxBar, DateUtils;

type
  TFrmAgenda = class(TFrmBaseFilha)
    cxScheduler: TcxScheduler;
    cxSchedulerDBStorage: TcxSchedulerDBStorage;
    cxSchedulerHolidays: TcxSchedulerHolidays;
    DtSrcAgenda: TDataSource;
    QryAgenda: TFDQuery;
    UpdtAgenda: TFDUpdateSQL;
    QryAgendaAGN_DATA_HORA_INICIO: TSQLTimeStampField;
    QryAgendaAGN_DATA_HORA_FIM: TSQLTimeStampField;
    QryAgendaAGN_DATA_HORA_REGISTRO: TSQLTimeStampField;
    QryAgendaAGN_EVENTO_TIPO: TSmallintField;
    QryAgendaAGN_LOCAL: TMemoField;
    QryAgendaAGN_PARTICIPANTE: TMemoField;
    QryAgendaUND_ID: TIntegerField;
    QryAgendaEVE_ID: TIntegerField;
    QryAgendaSIT_ID: TIntegerField;
    QryAgendaREG_EXCLUIDO: TSmallintField;
    QryAgendaREG_REPLICADO: TSmallintField;
    QryAgendaREG_USUARIO: TStringField;
    QryAgendaREG_MODIFICADO: TSQLTimeStampField;
    QryAgendaAGN_ASSUNTO: TStringField;
    QryAgendaAGN_DETALHE: TMemoField;
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
    Image: TImage;
    LblTitulo: TLabel;
    QryAgendaAGN_ID: TIntegerField;
    QryAgendaAGN_ACTUAL_FINISH: TIntegerField;
    QryAgendaAGN_ACTUAL_START: TIntegerField;
    PnlResumo: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    DbEdtAssunto: TcxDBTextEdit;
    DbEdtTmFim: TcxDBTimeEdit;
    DbDtEdtFim: TcxDBDateEdit;
    DbEdtTmInicio: TcxDBTimeEdit;
    DbDtEdtInicio: TcxDBDateEdit;
    Label2: TLabel;
    DbMemoDetalhes: TcxDBMemo;
    Label5: TLabel;
    DbMemoLocal: TcxDBMemo;
    Label6: TLabel;
    QryAgendaEVE_DESCRICAO: TStringField;
    QryAgendaSIT_DESCRICAO: TStringField;
    Label7: TLabel;
    DbEdtsituacao: TcxDBTextEdit;
    Label8: TLabel;
    DbEdtEvento: TcxDBTextEdit;
    DbImgCmbBxTipo: TcxDBImageComboBox;
    Label9: TLabel;
    BarManager: TdxBarManager;
    BrFerramentas: TdxBar;
    BtnNovo: TdxBarButton;
    BtnEditar: TdxBarButton;
    BtnExcluir: TdxBarButton;
    BtnImprimirDia: TdxBarButton;
    BtnImprimirMes: TdxBarButton;
    BtnFechar: TdxBarButton;
    BarDockControl: TdxBarDockControl;
    DtSrcAgendaPainel: TDataSource;
    QryAgendaPainel: TFDQuery;
    QryAgendaPainelAGN_ID: TIntegerField;
    QryAgendaPainelAGN_DATA_HORA_INICIO: TSQLTimeStampField;
    QryAgendaPainelAGN_DATA_HORA_FIM: TSQLTimeStampField;
    QryAgendaPainelAGN_EVENTO_TIPO: TSmallintField;
    QryAgendaPainelAGN_ASSUNTO: TStringField;
    QryAgendaPainelAGN_DETALHE: TMemoField;
    QryAgendaPainelAGN_LOCAL: TMemoField;
    QryAgendaPainelEVE_DESCRICAO: TStringField;
    QryAgendaPainelSIT_DESCRICAO: TStringField;
    UpdtAgendaPainel: TFDUpdateSQL;
    BtnDia: TdxBarButton;
    BtnSemana: TdxBarButton;
    BtnSemanaTrabalho: TdxBarButton;
    BtnMes: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure cxSchedulerBeforeEditing(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxSchedulerEventSelectionChanged(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure cxSchedulerBeforeDeleting(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; var Allow: Boolean);
    procedure QryAgendaAfterOpen(DataSet: TDataSet);
    procedure BtnDiaClick(Sender: TObject);
    procedure BtnSemanaClick(Sender: TObject);
    procedure BtnSemanaTrabalhoClick(Sender: TObject);
    procedure BtnMesClick(Sender: TObject);
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Agenda.Evento, Emater.Classe.Log, Emater.Recurso.Modulo;

procedure TFrmAgenda.BtnDiaClick(Sender: TObject);
begin
  cxScheduler.ViewWeek.SelectedDays.Clear;
  cxScheduler.ViewDay.SelectedDays.Clear;
  cxScheduler.ViewDay.Active := True;
  cxScheduler.GoToDate(Date);
end;

procedure TFrmAgenda.BtnEditarClick(Sender: TObject);
begin
  if (cxScheduler.SelectedEventCount > 0) then
    cxScheduler.EditEventUsingInplaceEdit(cxScheduler.SelectedEvents[0]);
end;

procedure TFrmAgenda.BtnExcluirClick(Sender: TObject);
begin
  if (cxScheduler.SelectedEventCount > 0) then
    cxScheduler.DeleteEvent(cxScheduler.SelectedEvents[0]);
end;

procedure TFrmAgenda.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAgenda.BtnMesClick(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(Date, Year, Month, Day);
  cxScheduler.ViewWeeks.Active := True;
  cxScheduler.SelectDays(EncodeDate(Year, Month, 1), EndOfAMonth(Year, Month));
end;

procedure TFrmAgenda.BtnNovoClick(Sender: TObject);
begin
  cxScheduler.CreateEventUsingInplaceEdit;
end;

procedure TFrmAgenda.BtnSemanaClick(Sender: TObject);
var
  Inicio, Fim: TDate;
begin
  cxScheduler.ViewWeek.SelectedDays.Clear;
  cxScheduler.ViewWeek.Active := False;
  cxScheduler.ViewDay.SelectedDays.Clear;
  Inicio := StartOfTheWeek(Date) - 1;
  Fim := EndOfTheWeek(Date) - 1;
  cxScheduler.SelectDays(Inicio, Fim);
  cxScheduler.ViewDay.Active := True;
end;

procedure TFrmAgenda.BtnSemanaTrabalhoClick(Sender: TObject);
begin
  cxScheduler.ViewWeek.Active := True;
  cxScheduler.SelectWorkDays(Date);
end;

procedure TFrmAgenda.cxSchedulerBeforeDeleting(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; var Allow: Boolean);
begin
  Allow := False;
  if QryAgenda.Locate('AGN_ID', AEvent.ID, []) then
    begin
      QryAgenda.Edit;
      QryAgendaREG_EXCLUIDO.Value := 1;
      QryAgendaREG_REPLICADO.Value := 0;
      QryAgendaREG_USUARIO.AsString := DtmConexaoModulo.UsuarioLogin;
      QryAgendaREG_MODIFICADO.AsDateTime := Now;
      QryAgenda.Post;
      QryAgenda.Close;
      QryAgenda.Open;
    end;
end;

procedure TFrmAgenda.cxSchedulerBeforeEditing(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
begin
  Screen.Cursor := crHourGlass;
  FrmAgendaEvento := TFrmAgendaEvento.Create(Self);
  try
    if not VarIsNull(AEvent.ID) then
      begin
        if FrmAgendaEvento.Editar(AEvent.ID) then
          begin
            QryAgenda.Refresh;
            QryAgendaPainel.Refresh;
          end;
      end
    else
      begin
        if FrmAgendaEvento.Novo(AEvent.Start, AEvent.Finish, AEvent.AllDayEvent) then
          begin
            QryAgenda.Refresh;
            QryAgendaPainel.Refresh;
          end;
      end;
  finally
    FrmAgendaEvento.Release;
    FrmAgendaEvento := nil;
    Screen.Cursor := crDefault;
  end;
  Allow := False;
end;

procedure TFrmAgenda.cxSchedulerEventSelectionChanged(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
begin
  if (AEvent <> nil) then
    begin
      if QryAgendaPainel.Locate('AGN_ID', AEvent.ID, []) then
        begin
          DtSrcAgendaPainel.Enabled := True;
          BtnEditar.Enabled := True;
          BtnExcluir.Enabled := True;
        end
      else
        begin
          DtSrcAgendaPainel.Enabled := False;
          BtnEditar.Enabled := False;
          BtnExcluir.Enabled := False;
        end;
    end
  else
    begin
      DtSrcAgendaPainel.Enabled := False;
      BtnEditar.Enabled := False;
      BtnExcluir.Enabled := False;
    end;
end;

procedure TFrmAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  try
    // Controle de acesso:
    RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
  end;
  WindowState := wsMaximized;
end;

procedure TFrmAgenda.FormShow(Sender: TObject);
begin
  inherited;
  QryAgenda.Open;
  BtnSemana.Click;
  cxSchedulerEventSelectionChanged(nil, nil);
end;

procedure TFrmAgenda.QryAgendaAfterOpen(DataSet: TDataSet);
begin
  QryAgendaPainel.Close;
  QryAgendaPainel.Open;
end;

end.
