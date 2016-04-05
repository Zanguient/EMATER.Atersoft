unit Emater.Indicador.Selecao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  FireDAC.Comp.Client, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, cxButtons, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrmIndicadorSelecao = class(TFrmBaseBasico)
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    QryIndicador: TFDQuery;
    DtSrcIndicador: TDataSource;
    QryIndicadorIND_ID: TIntegerField;
    QryIndicadorIND_DESCRICAO: TStringField;
    QryIndicadorIND_NOME: TStringField;
    QryIndicadorIND_ATIVO: TSmallintField;
    GrdInd: TcxGrid;
    GrdIndTbl: TcxGridDBTableView;
    GrdIndLvl: TcxGridLevel;
    GrdIndTblIND_DESCRICAO: TcxGridDBColumn;
    StrdPrcRegistrar: TFDStoredProc;
    Label1: TLabel;
    DtEdtRegistro: TcxDateEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure GrdIndTblDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIndicadorSelecao: TFrmIndicadorSelecao;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Indicador.Consts, Emater.Classe.Log;

procedure TFrmIndicadorSelecao.BtnOKClick(Sender: TObject);
begin
  inherited;

  if Msg.Confirmacao(Format(INDICADOR_CONFIRMAR_REGISTRO, [QryIndicadorIND_DESCRICAO.AsString])) then
    begin
      try
        if not DtmConexaoModulo.FDWriteTransaction.Active then
          DtmConexaoModulo.FDWriteTransaction.StartTransaction;

        if not DtmConexaoModulo.FDReadTransaction.Active then
          DtmConexaoModulo.FDReadTransaction.StartTransaction;

        StrdPrcRegistrar.ParamByName('INDICADOR').AsString := QryIndicadorIND_NOME.AsString;
        StrdPrcRegistrar.ParamByName('DATA').AsDate := DtEdtRegistro.Date;
        StrdPrcRegistrar.ParamByName('USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;
        StrdPrcRegistrar.ExecProc;

        if DtmConexaoModulo.FDWriteTransaction.Active then
          DtmConexaoModulo.FDWriteTransaction.CommitRetaining;

        if DtmConexaoModulo.FDReadTransaction.Active then
          DtmConexaoModulo.FDReadTransaction.CommitRetaining;

        ModalResult := mrOk;
      except
        on E: Exception do
          begin
            CodeSite.SendError(INDICADOR_REGISTRO_ERRO);
            CodeSite.SendError('Erro original: [' + E.Message + '].');
            Msg.Erro(INDICADOR_REGISTRO_ERRO);
            Abort;
          end;
      end;
    end;
end;

procedure TFrmIndicadorSelecao.FormShow(Sender: TObject);
begin
  inherited;

  DtEdtRegistro.Date := Date;
  QryIndicador.Open;
end;

procedure TFrmIndicadorSelecao.GrdIndTblDblClick(Sender: TObject);
begin
  if (QryIndicador.RecordCount > 0) then BtnOK.Click;
end;

end.
