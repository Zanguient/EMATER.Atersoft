unit Emater.Log.Exportar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxSkinsCore, dxSkinOffice2013White, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox,
  Datasnap.Provider, Datasnap.DBClient, {$WARNINGS OFF} FileCtrl, dxSkinSeven, dxSkinSevenClassic, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client {$WARNINGS ON};

type
  TFrmLogExportar = class(TFrmBaseBasico)
    LblTitulo: TLabel;
    DtSrcConsulta: TDataSource;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaLvl: TcxGridLevel;
    GrdConsultaTblREP_ID: TcxGridDBColumn;
    GrdConsultaTblREP_DATA_HORA_INICIO: TcxGridDBColumn;
    GrdConsultaTblREP_DATA_HORA_FIM: TcxGridDBColumn;
    GrdConsultaTblUSR_LOGIN: TcxGridDBColumn;
    GrdConsultaTblREP_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblREP_TOTAL: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    DspArquivo: TDataSetProvider;
    CdsArquivo: TClientDataSet;
    LblQtde: TLabel;
    BtnFechar: TcxButton;
    BtnGerarArquivo: TcxButton;
    BtnPrepararExportacao: TcxButton;
    Label1: TLabel;
    DtStConsulta: TFDQuery;
    DtStConsultaREP_ID: TIntegerField;
    DtStConsultaREP_DATA_HORA_INICIO: TSQLTimeStampField;
    DtStConsultaREP_DATA_HORA_FIM: TSQLTimeStampField;
    DtStConsultaUSR_LOGIN: TStringField;
    DtStConsultaREP_TIPO: TStringField;
    DtStConsultaREP_SITUACAO: TSmallintField;
    DtStConsultaREP_TOTAL: TIntegerField;
    DtStConsultaREP_ARQUIVO: TBlobField;
    DtStConsultaUND_ID: TIntegerField;
    DtStConsultaUND_NOME: TStringField;
    StrdPrcReplicacaoExportar: TFDStoredProc;
    DtStPendentes: TFDQuery;
    DtStPendentesTOTAL: TIntegerField;
    DtStArquivo: TFDQuery;
    UpdtConsulta: TFDUpdateSQL;
    DtStConsultaUSR_ID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnPrepararExportacaoClick(Sender: TObject);
    procedure BtnGerarArquivoClick(Sender: TObject);
    procedure DtStConsultaAfterOpen(DataSet: TDataSet);
    procedure DtStPendentesAfterOpen(DataSet: TDataSet);
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

            if not DtmConexaoModulo.FDConnection.InTransaction then
              DtmConexaoModulo.FDConnection.StartTransaction;

            if not DtmConexaoModulo.FDWriteTransaction.Active then
              DtmConexaoModulo.FDWriteTransaction.StartTransaction;

            if (DtStConsultaREP_ARQUIVO.IsNull) then
              begin
                // Carregando as linhas que serão geradas para o arquivo:
                CdsArquivo.Close;
                DtStArquivo.Close;
                DtStArquivo.ParamByName('rep_id').AsLArgeInt := DtStConsultaREP_ID.AsLargeInt;
                CdsArquivo.Open;
                CdsArquivo.SaveToFile(FileName, dfBinary);
                CdsArquivo.Close;

                // Compactando o arquivo gerado:
                if TArquivo.Comprimir(FileNameCompressed, [FileName]) then
                  begin
                    DeleteFile(FileName);
                    DtStConsulta.Edit;
                    DtStConsultaREP_SITUACAO.Value := 2;
                    DtStConsultaREP_ARQUIVO.LoadFromFile(FileNameCompressed);
                    DtStConsulta.Post;
                    CodeSite.SendMsg(LOG_MSG_EXPORTACAO_GERAR_SUCESSO);
                    MSG.Informacao(LOG_MSG_EXPORTACAO_GERAR_SUCESSO);
                  end
                else
                  begin
                    CodeSite.SendError(LOG_MSG_EXPORTACAO_COMPACTAR_ERRO);
                    MSG.Erro(LOG_MSG_EXPORTACAO_COMPACTAR_ERRO);
                  end;
              end
            else
              DtStConsultaREP_ARQUIVO.SaveToFile(FileName);

            if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
              DtmConexaoModulo.FDConnection.Commit;
          except
            on E: Exception do
              begin
                if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                  DtmConexaoModulo.FDConnection.Rollback;

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
        if not DtmConexaoModulo.FDConnection.InTransaction then
          DtmConexaoModulo.FDConnection.StartTransaction;

        if not DtmConexaoModulo.FDWriteTransaction.Active then
          DtmConexaoModulo.FDWriteTransaction.StartTransaction;

        StrdPrcReplicacaoExportar.ParamByName('usuario').AsInteger := DtmConexaoModulo.UsuarioID;
        StrdPrcReplicacaoExportar.ExecProc;

        CodeSite.SendMsg(LOG_MSG_EXPORTACAO_PREPARAR_SUCESSO);
        MSG.Informacao(LOG_MSG_EXPORTACAO_PREPARAR_SUCESSO);
        DtStConsulta.Close;
        DtStConsulta.Open;

        DtStPendentes.Close;
        DtStPendentes.Open;

        if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
          DtmConexaoModulo.FDConnection.Commit;
      except
        on E: Exception do
          begin
            if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
              DtmConexaoModulo.FDConnection.Rollback;

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

procedure TFrmLogExportar.DtStPendentesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if (DtStPendentesTOTAL.AsLargeInt = 0) then
    LblQtde.Caption := '0'
  else
    LblQtde.Caption := FormatFloat(',##0', DtStPendentesTOTAL.AsLargeInt + 1);
  if (DtStPendentesTOTAL.Value = 0) then
    BtnPrepararExportacao.Enabled := False;
end;

procedure TFrmLogExportar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DtStPendentes.Close;
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

  DtStPendentes.Open;
  DtStConsulta.Open;
end;

end.
