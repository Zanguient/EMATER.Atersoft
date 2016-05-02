unit Emater.Log.Importar.Detalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  Vcl.Menus, cxButtons, dxSkinSeven, dxSkinSevenClassic, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmLogImportarDetalhe = class(TFrmBaseBasico)
    DtSrcConsulta: TDataSource;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaLvl: TcxGridLevel;
    GrdConsultaTblREP_TRANSACAO: TcxGridDBColumn;
    GrdConsultaTblREP_SQL: TcxGridDBColumn;
    GrdConsultaTblREP_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblREP_ERRO: TcxGridDBColumn;
    Label1: TLabel;
    MemoSQL: TcxDBMemo;
    BtnFechar: TcxButton;
    EdtEscritorio: TcxTextEdit;
    EdtTotal: TcxTextEdit;
    Label2: TLabel;
    Label4: TLabel;
    EdtSituacao: TcxTextEdit;
    DtStConsulta: TFDQuery;
    DtStConsultaREP_ID: TIntegerField;
    DtStConsultaTRN_ID: TIntegerField;
    DtStConsultaTRN_SQL: TMemoField;
    DtStConsultaTRN_SITUACAO: TSmallintField;
    DtStConsultaTRN_ERRO: TStringField;
  private
    { Private declarations }
  public
    procedure Visualizar(const ID: Int64; const Origem, Situacao: string; const Total: Integer);
  end;

var
  FrmLogImportarDetalhe: TFrmLogImportarDetalhe;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo;

{ TFrmLogImportarDetalhe }

procedure TFrmLogImportarDetalhe.Visualizar(const ID: Int64; const Origem, Situacao: string; const Total: Integer);
begin
  DtStConsulta.Close;
  DtStConsulta.ParamByName('id').AsLargeInt := ID;
  DtStConsulta.Open;

  EdtEscritorio.Text := Origem;
  EdtSituacao.Text := Situacao;
  EdtTotal.Text := Total.ToString();

  ActiveControl := GrdConsulta;
  ShowModal;
end;

end.
