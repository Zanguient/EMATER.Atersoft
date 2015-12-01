unit Emater.Log.Exportar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxSkinsCore, dxSkinOffice2013White, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FIBDataSet, pFIBDataSet, cxImageComboBox, FIBQuery,
  pFIBQuery, pFIBStoredProc, Datasnap.Provider, Datasnap.DBClient, {$WARNINGS OFF} FileCtrl, dxSkinSeven, dxSkinSevenClassic {$WARNINGS ON};

type
  TFrmLogExportar = class(TFrmBaseBasico)
    LblTitulo: TLabel;
    DtSrcConsulta: TDataSource;
    DtStConsulta: TpFIBDataSet;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaLvl: TcxGridLevel;
    DtStPentendes: TpFIBDataSet;
    DtStPentendesTOTAL: TFIBIntegerField;
    DtStConsultaREP_ID: TFIBBCDField;
    DtStConsultaREP_DATA: TFIBDateField;
    DtStConsultaREP_HORA: TFIBTimeField;
    DtStConsultaREP_USUARIO: TFIBStringField;
    DtStConsultaREP_TIPO: TFIBSmallIntField;
    DtStConsultaREP_SITUACAO: TFIBSmallIntField;
    DtStConsultaREP_VERSAO: TFIBIntegerField;
    DtStConsultaREP_QUANTIDADE: TFIBIntegerField;
    DtStConsultaUND_ID: TFIBIntegerField;
    DtStConsultaUND_NOME: TFIBStringField;
    GrdConsultaTblREP_ID: TcxGridDBColumn;
    GrdConsultaTblREP_DATA: TcxGridDBColumn;
    GrdConsultaTblREP_HORA: TcxGridDBColumn;
    GrdConsultaTblREP_USUARIO: TcxGridDBColumn;
    GrdConsultaTblREP_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblREP_VERSAO: TcxGridDBColumn;
    GrdConsultaTblREP_QUANTIDADE: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    StrdPrcReplicacaoExportar: TpFIBStoredProc;
    DtStArquivo: TpFIBDataSet;
    DspArquivo: TDataSetProvider;
    CdsArquivo: TClientDataSet;
    LblQtde: TLabel;
    BtnFechar: TcxButton;
    BtnGerarArquivo: TcxButton;
    BtnPrepararExportacao: TcxButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtStConsultaAfterOpen(DataSet: TDataSet);
    procedure BtnPrepararExportacaoClick(Sender: TObject);
    procedure BtnGerarArquivoClick(Sender: TObject);
    procedure DtStPentendesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogExportar: TFrmLogExportar;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Conexao.Modulo, Emater.Log.Consts, Emater.Classe.Arquivo, Emater.Classe.Log;

procedure TFrmLogExportar.BtnGerarArquivoClick(Sender: TObject);
var
  FileName, FileNameCompressed, FilePath: string;
begin
  CodeSite.EnterMethod(Self.Name + '.BtnGerarArquivoClick().');
  Screen.Cursor := crHourGlass;
  try
    if SelectDirectory('Selecione um local para o arquivo de exportação:', '', FilePath) then
      begin
        if MSG.Confirmacao(LOG_MSG_EXPORTACAO_GERAR) then
          try
            FileName := FilePath + '\' + DtStConsultaREP_ID.AsString + '.emater.tmp';
            FileNameCompressed := FilePath + '\' + DtStConsultaREP_ID.AsString + '.emater';
            CdsArquivo.Close;
            DtStArquivo.Close;
            DtStArquivo.ParamByName('rep_id').AsInt64 := DtStConsultaREP_ID.AsInt64;
            CdsArquivo.Open;
            CdsArquivo.SaveToFile(FileName, dfBinary);
            CdsArquivo.Close;

            // Compactando o arquivo gerado:
            if TArquivo.Comprimir(FileNameCompressed, [FileName]) then
              begin
                DeleteFile(FileName);
                DtStConsulta.Edit;
                DtStConsultaREP_SITUACAO.Value := 2;
                DtStConsulta.Post;
                CodeSite.SendMsg(LOG_MSG_EXPORTACAO_GERAR_SUCESSO);
                MSG.Informacao(LOG_MSG_EXPORTACAO_GERAR_SUCESSO);
              end
            else
              begin
                CodeSite.SendError(LOG_MSG_EXPORTACAO_COMPACTAR_ERRO);
                MSG.Erro(LOG_MSG_EXPORTACAO_COMPACTAR_ERRO);
              end;
          except
            on E: Exception do
              begin
                CodeSite.SendError(LOG_MSG_EXPORTACAO_GERAR_ERRO);
                CodeSite.SendError('Erro original: [' + E.Message + '].');
                MSG.Erro(LOG_MSG_EXPORTACAO_GERAR_ERRO);
              end;
          end
        else
          begin
            CodeSite.SendMsg('Usuário escolheu não gerar nenhum arquivo.');
          end
      end
    else
      begin
        CodeSite.SendMsg('Usuário escolheu não gerar nenhum arquivo.');
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnGerarArquivoClick().');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmLogExportar.BtnPrepararExportacaoClick(Sender: TObject);
begin
  CodeSite.EnterMethod(Self.Name + '.BtnPrepararExportacaoClick().');
  Screen.Cursor := crHourGlass;
  try
    if MSG.Confirmacao(LOG_MSG_EXPORTACAO_PREPARAR) then
      try
        StrdPrcReplicacaoExportar.ExecProc;
        CodeSite.SendMsg(LOG_MSG_EXPORTACAO_PREPARAR_SUCESSO);
        MSG.Informacao(LOG_MSG_EXPORTACAO_PREPARAR_SUCESSO);
        DtStConsulta.CloseOpen(True);
        DtStPentendes.CloseOpen(True);
      except
        on E: Exception do
          begin
            CodeSite.SendError(LOG_MSG_EXPORTACAO_PREPARAR_ERRO);
            CodeSite.SendError('Erro original: [' + E.Message + '].');
            MSG.Erro(LOG_MSG_EXPORTACAO_PREPARAR_ERRO);
          end;
      end
    else
      CodeSite.SendMsg('Preparação da exportação não realizada por escolha do usuário.');
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnPrepararExportacaoClick().');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmLogExportar.DtStConsultaAfterOpen(DataSet: TDataSet);
begin
  BtnGerarArquivo.Enabled := (not DtStConsulta.IsEmpty);
end;

procedure TFrmLogExportar.DtStPentendesAfterOpen(DataSet: TDataSet);
begin
  LblQtde.Caption := DtStPentendesTOTAL.AsString;
  if (DtStPentendesTOTAL.Value = 0) then
    BtnPrepararExportacao.Enabled := False;
end;

procedure TFrmLogExportar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DtStPentendes.Close;
  DtStConsulta.Close;
end;

procedure TFrmLogExportar.FormCreate(Sender: TObject);
begin
  inherited;

  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  try
    RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
  end;
end;

procedure TFrmLogExportar.FormShow(Sender: TObject);
begin
  inherited;

  DtStPentendes.Open;
  DtStConsulta.Open;
end;

end.
