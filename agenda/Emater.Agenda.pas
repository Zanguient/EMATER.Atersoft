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
  Vcl.ExtCtrls;

type
  TFrmAgenda = class(TFrmBaseFilha)
    cxScheduler: TcxScheduler;
    cxSchedulerDBStorage: TcxSchedulerDBStorage;
    cxSchedulerHolidays: TcxSchedulerHolidays;
    DtSrcAgenda: TDataSource;
    QryAgenda: TFDQuery;
    UpdtAgenda: TFDUpdateSQL;
    QryAgendaAGN_ID: TLargeintField;
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
    Image: TImage;
    LblTitulo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cxSchedulerBeforeEditing(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
    procedure FormCreate(Sender: TObject);
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Agenda.Evento;

procedure TFrmAgenda.cxSchedulerBeforeEditing(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; AInplace: Boolean; var Allow: Boolean);
begin
  Screen.Cursor := crHourGlass;
  FrmAgendaEvento := TFrmAgendaEvento.Create(Self);
  try
    if AInplace then
      begin
        if FrmAgendaEvento.Editar(AEvent.ID) then
          begin
            QryAgenda.Close;
            QryAgenda.Open;
          end;
      end
    else
      begin
        if FrmAgendaEvento.Novo(AEvent.Start, AEvent.Finish) then
          begin
            QryAgenda.Close;
            QryAgenda.Open;
          end;
      end;
  finally
    FrmAgendaEvento.Release;
    FrmAgendaEvento := nil;
    Screen.Cursor := crDefault;
  end;
  Allow := False;
end;

procedure TFrmAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TFrmAgenda.FormShow(Sender: TObject);
begin
  inherited;
  QryAgenda.Open;
end;

end.
