unit Emater.Agenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Filha, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxStyles, cxEdit, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerTreeListBrowser, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic,
  dxSkinscxSchedulerPainter, Data.DB, FIBDataSet, pFIBDataSet, cxClasses, cxSchedulerDBStorage,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor;

type
  TFrmAgenda = class(TFrmBaseFilha)
    cxScheduler1: TcxScheduler;
    cxSchedulerDBStorage: TcxSchedulerDBStorage;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    DtStAgenda: TpFIBDataSet;
    DtSrcAgenda: TDataSource;
    DtStAgendaAGN_ID: TFIBBCDField;
    DtStAgendaAGN_DATA_HORA_INICIO: TFIBDateTimeField;
    DtStAgendaAGN_DATA_HORA_FIM: TFIBDateTimeField;
    DtStAgendaAGN_DATA_HORA_REGISTRO: TFIBDateTimeField;
    DtStAgendaAGN_EVENTO_TIPO: TFIBSmallIntField;
    DtStAgendaAGN_ASSUNTO: TFIBMemoField;
    DtStAgendaAGN_LOCAL: TFIBMemoField;
    DtStAgendaAGN_PARTICIPANTE: TFIBMemoField;
    DtStAgendaUND_ID: TFIBIntegerField;
    DtStAgendaUSR_ID: TFIBIntegerField;
    DtStAgendaEVE_ID: TFIBIntegerField;
    DtStAgendaSIT_ID: TFIBIntegerField;
    DtStAgendaREG_EXCLUIDO: TFIBBooleanField;
    DtStAgendaREG_REPLICADO: TFIBBooleanField;
    DtStAgendaREG_USUARIO: TFIBStringField;
    DtStAgendaREG_MODIFICADO: TFIBDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure DtStAgendaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo;

procedure TFrmAgenda.DtStAgendaBeforePost(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFrmAgenda.FormShow(Sender: TObject);
begin
  inherited;
  DtStAgenda.Open;
end;

end.
