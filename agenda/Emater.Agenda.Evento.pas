unit Emater.Agenda.Evento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMemo, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxImageComboBox, Vcl.ExtCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

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
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    DbEdtCriacaoData: TcxDBTextEdit;
    QryAgenda: TFDQuery;
    QryAgendaAGN_ID: TLargeintField;
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
    QryTecnicoAGN_ID: TLargeintField;
    QryTecnicoFUN_ID: TIntegerField;
    GrdFncTblFUN_MATRICULA: TcxGridDBColumn;
    GrdFncTblFUN_NOME: TcxGridDBColumn;
    QryComunidadeAGC_ID: TLargeintField;
    QryComunidadeAGN_ID: TLargeintField;
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
    procedure FormCreate(Sender: TObject);
    procedure QryAgendaNewRecord(DataSet: TDataSet);
    procedure BtnOKClick(Sender: TObject);
  public
    function Novo(const DataInicio, DataFim: TDateTime): Boolean;
    function Editar(const ID: LargeInt): Boolean;
  end;

var
  FrmAgendaEvento: TFrmAgendaEvento;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Modulo;

procedure TFrmAgendaEvento.BtnOKClick(Sender: TObject);
begin
  inherited;

  try
    QryAgenda.Post;
    ModalResult := mrOk;
  except
    on E: Exception do
      begin
        ShowMessage(E.Message);
        ModalResult := mrNone;
      end;
  end;
end;

function TFrmAgendaEvento.Editar(const ID: LargeInt): Boolean;
begin
  QryAgenda.Close;
  QryAgenda.ParamByName('agn_id').AsLargeInt := ID;
  QryAgenda.Open;
  QryAgenda.Edit;

  QryTecnico.Open;
  QryComunidade.Open;

  Result := (ShowModal = mrOk);
end;

procedure TFrmAgendaEvento.FormCreate(Sender: TObject);
begin
  inherited;

  QrySituacao.Open;
  QryEvento.Open;
end;

function TFrmAgendaEvento.Novo(const DataInicio, DataFim: TDateTime): Boolean;
begin
  QryAgenda.Close;
  QryAgenda.ParamByName('agn_id').AsLargeInt := 0;
  QryAgenda.Open;
  QryAgenda.Insert;

  QryAgendaAGN_DATA_HORA_INICIO.AsDateTime := DataInicio;
  QryAgendaAGN_DATA_HORA_FIM.AsDateTime := DataFim;

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
  QryAgendaREG_EXCLUIDO.Value := 0;
  QryAgendaREG_REPLICADO.Value := 0;
  QryAgendaREG_USUARIO.Value := DtmConexaoModulo.UsuarioLogin;
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
