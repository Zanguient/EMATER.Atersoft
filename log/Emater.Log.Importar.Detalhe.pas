unit Emater.Log.Importar.Detalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, FIBDataSet, pFIBDataSet, Vcl.StdCtrls, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  Vcl.Menus, cxButtons, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmLogImportarDetalhe = class(TFrmBaseBasico)
    DtStConsulta: TpFIBDataSet;
    DtSrcConsulta: TDataSource;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaLvl: TcxGridLevel;
    DtStConsultaREP_ID: TFIBBCDField;
    DtStConsultaREP_TRANSACAO: TFIBBCDField;
    DtStConsultaREP_USUARIO: TFIBMemoField;
    DtStConsultaREP_SQL: TFIBMemoField;
    DtStConsultaREP_SITUACAO: TFIBSmallIntField;
    DtStConsultaREP_ERRO: TFIBStringField;
    GrdConsultaTblREP_TRANSACAO: TcxGridDBColumn;
    GrdConsultaTblREP_USUARIO: TcxGridDBColumn;
    GrdConsultaTblREP_SQL: TcxGridDBColumn;
    GrdConsultaTblREP_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblREP_ERRO: TcxGridDBColumn;
    Label1: TLabel;
    MemoUsuario: TcxDBMemo;
    MemoSQL: TcxDBMemo;
    BtnFechar: TcxButton;
    EdtEscritorio: TcxTextEdit;
    EdtVersao: TcxTextEdit;
    EdtTotal: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtSituacao: TcxTextEdit;
  private
    { Private declarations }
  public
    procedure Visualizar(const ID: Int64; const Origem, Versao, Situacao: string; const Total: Integer);
  end;

var
  FrmLogImportarDetalhe: TFrmLogImportarDetalhe;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo;

{ TFrmLogImportarDetalhe }

procedure TFrmLogImportarDetalhe.Visualizar(const ID: Int64; const Origem, Versao, Situacao: string; const Total: Integer);
begin
  DtStConsulta.Close;
  DtStConsulta.ParamByName('id').AsInt64 := ID;
  DtStConsulta.Open;

  EdtEscritorio.Text := Origem;
  EdtVersao.Text := Versao;
  EdtSituacao.Text := Situacao;
  EdtTotal.Text := Total.ToString();

  ActiveControl := GrdConsulta;
  ShowModal;
end;

end.
