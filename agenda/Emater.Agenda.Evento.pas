unit Emater.Agenda.Evento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxTextEdit, cxDBEdit, cxMemo, cxSpinEdit,
  cxTimeEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxImageComboBox, Vcl.ExtCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmAgendaEvento = class(TFrmBaseDialogo)
    DtSrcAgenda: TDataSource;
    TbShtDetalhes: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label5: TLabel;
    cxDBMemo2: TcxDBMemo;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTimeEdit1: TcxDBTimeEdit;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Bevel1: TBevel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label9: TLabel;
    Label8: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label6: TLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Label7: TLabel;
    cxDBMemo3: TcxDBMemo;
    GrpBxRegistro: TcxGroupBox;
    Label37: TLabel;
    Label56: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    DbEdtModificadoUsuario: TcxDBTextEdit;
    DbEdtModificadoData: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    DbEdtCriacaoData: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAgendaEvento: TFrmAgendaEvento;

implementation

{$R *.dfm}

uses Emater.Agenda;

end.
