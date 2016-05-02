unit Emater.Log.Importar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Datasnap.DBClient, Vcl.Menus, cxButtons, dxSkinSeven, dxSkinSevenClassic,
  cxContainer, cxGroupBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmLogImportar = class(TFrmBaseBasico)
    LblTitulo: TLabel;
    Label1: TLabel;
    DtSrcConsulta: TDataSource;
    CdsArquivo: TClientDataSet;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaTblREP_ID: TcxGridDBColumn;
    GrdConsultaTblREP_DATA: TcxGridDBColumn;
    GrdConsultaTblREP_USUARIO: TcxGridDBColumn;
    GrdConsultaTblREP_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    GrdConsultaTblREP_QUANTIDADE: TcxGridDBColumn;
    GrdConsultaLvl: TcxGridLevel;
    BtnIniciarImportacao: TcxButton;
    BtnCarregarArquivo: TcxButton;
    BtnFechar: TcxButton;
    OpenDialog: TOpenDialog;
    LblQtde: TLabel;
    BtnVisualizarImportacao: TcxButton;
    GrpBxFiltros: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ImgCmbBxSituacao: TcxImageComboBox;
    LkpCmbBxUnidade: TcxLookupComboBox;
    BtnLimpar: TcxButton;
    DtSrcUnidade: TDataSource;
    DtStPendentes: TFDQuery;
    DtStPendentesTOTAL: TIntegerField;
    DtStConsulta: TFDQuery;
    DtStConsultaREP_ID: TIntegerField;
    DtStConsultaREP_DATA_HORA_REGISTRO: TSQLTimeStampField;
    DtStConsultaREP_TIPO: TStringField;
    DtStConsultaREP_SITUACAO: TSmallintField;
    DtStConsultaREP_TOTAL: TIntegerField;
    DtStConsultaUND_ID: TIntegerField;
    DtStConsultaUND_NOME: TStringField;
    DtStConsultaREP_SITUACAO_DESCRICAO: TStringField;
    DtStConsultaREP_USUARIO: TStringField;
    UpdtConsulta: TFDUpdateSQL;
    DtStConsultaREP_ARQUIVO: TBlobField;
    DtStConsultaREP_DATA_HORA_INICIO: TSQLTimeStampField;
    DtStConsultaREP_DATA_HORA_FIM: TSQLTimeStampField;
    DtStConsultaUSR_ID: TIntegerField;
    StrdPrcReplicacaoImportar: TFDStoredProc;
    QryInserirImportacao: TFDCommand;
    QryInserirTransacao: TFDCommand;
    procedure FormCreate(Sender: TObject);
    procedure BtnCarregarArquivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtStPendentesAfterOpen(DataSet: TDataSet);
    procedure BtnIniciarImportacaoClick(Sender: TObject);
    procedure BtnVisualizarImportacaoClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure ImgCmbBxSituacaoPropertiesEditValueChanged(Sender: TObject);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
    procedure DtStConsultaAfterScroll(DataSet: TDataSet);
  private
    procedure AtualizarFiltro;
  end;

var
  FrmLogImportar: TFrmLogImportar;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Recurso.Modulo, Emater.Log.Consts, Emater.Classe.Arquivo, Emater.Log.Importar.Detalhe,
  Emater.Classe.Log, Emater.Sistema.Modulo;

procedure TFrmLogImportar.AtualizarFiltro;
var
  Filtro, E: string;
begin
  if (ImgCmbBxSituacao.Text = '') and (LkpCmbBxUnidade.Text = '') then
    DtStConsulta.Filtered := False
  else
    begin
      Filtro := '';
      E := '';
      if (ImgCmbBxSituacao.Text <> '') then
        begin
          Filtro := '(rep_situacao = ' + IntToStr(ImgCmbBxSituacao.EditValue) + ')';
          E := ' and ';
        end;

      if (LkpCmbBxUnidade.Text <> '') then
        Filtro := Filtro + E + '(und_id = ' + IntToStr(LkpCmbBxUnidade.EditValue) + ')';

      DtStConsulta.Filter := Filtro;
      DtStConsulta.Filtered := True;
    end;
end;

procedure TFrmLogImportar.BtnCarregarArquivoClick(Sender: TObject);
var
  TempDir, TempZip: string;
  ID: Integer;
  Erro: Boolean;
begin
  CodeSite.EnterMethod(Self.Name + '.BtnCarregarArquivoClick().');
  Screen.Cursor := crHourGlass;
  try
    // Selecionando o arquivo que será importado:
    if OpenDialog.Execute then
      begin

        if Msg.Confirmacao(LOG_MSG_IMPORTACAO_CARREGAR_CONFIRMAR) then
          begin

            TempDir := ExtractFilePath(Application.ExeName) + 'Imports\';
            TempZip := TempDir + ExtractFileName(OpenDialog.FileName);
            if ForceDirectories(TempDir) then
              begin

                // Descompactando o arquivo:
                if TArquivo.Descomprimir(OpenDialog.FileName, TempZip) then
                  begin

                    // Carrega o arquivo para o ClientDataSet:
                    CdsArquivo.Close;
                    CdsArquivo.LoadFromFile(TempZip);
                    CdsArquivo.Open;

                    Screen.Cursor := crHourGlass;
                    Erro := False;
                    ID := 0;

                    // Inicia a transação:
                    if not DtmConexaoModulo.FDConnection.InTransaction then
                      DtmConexaoModulo.FDConnection.StartTransaction;

                    if not DtmConexaoModulo.FDWriteTransaction.Active then
                      DtmConexaoModulo.FDWriteTransaction.StartTransaction;

                    // Cria o registro de importação:
                    try
                      ID := DtmSistemaModulo.GerarIdentificador('TAB_SIS_REPLICACAO', 'REP_ID');
                      QryInserirImportacao.ParamByName('rep_id').AsInteger := ID;
                      QryInserirImportacao.ParamByName('rep_total').AsInteger := CdsArquivo.RecordCount;
                      QryInserirImportacao.ParamByName('rep_arquivo').LoadFromFile(OpenDialog.FileName, ftBlob);
                      QryInserirImportacao.ParamByName('usr_id').AsInteger := DtmConexaoModulo.UsuarioID;
                      QryInserirImportacao.ParamByName('und_id').AsInteger := CdsArquivo.FieldByName('unidade').AsInteger;
                      QryInserirImportacao.Execute;
                    except
                      on E: Exception do
                        begin
                          CodeSite.SendError(E.Message);
                          Erro := True;
                          if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                            DtmConexaoModulo.FDConnection.Rollback;
                        end;
                    end;

                    // Carrega as transações para a base de dados:
                    if not Erro then
                      try
                        if not QryInserirTransacao.Prepared then QryInserirTransacao.Prepare;

                        while not CdsArquivo.Eof do
                          begin
                            QryInserirTransacao.ParamByName('rep_id').AsInteger := ID;
                            QryInserirTransacao.ParamByName('trn_id').AsInteger := CdsArquivo.FieldByName('transacao_id').AsInteger;
                            QryInserirTransacao.ParamByName('trn_sql').AsMemo := CdsArquivo.FieldByName('transacao_sql').AsAnsiString;
                            QryInserirTransacao.Execute;
                            CdsArquivo.Next;
                          end;

                        // Finalizando a transação:
                        if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                           DtmConexaoModulo.FDConnection.Commit;
                      except
                        on E: Exception do
                          begin
                            // Desfaz as alterações realizadas na transação:
                            if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                              DtmConexaoModulo.FDConnection.Rollback;
                            Msg.Erro(E.Message);
                            CodeSite.SendError(E.Message);
                            CodeSite.SendError('[transacao_id] : [' + CdsArquivo.FieldByName('transacao_id').AsString + '].');
                            CodeSite.SendError('[transacao_usuario] : [' + CdsArquivo.FieldByName('usuario').AsString + '].');
                            CodeSite.SendError('[transacao_sql] : [' + CdsArquivo.FieldByName('transacao_sql').AsString + '].');
                            Erro := True;
                          end;
                      end;

                    DtStConsulta.Close;
                    DtStConsulta.Open;
                    DtStPendentes.Close;
                    DtStPendentes.Open;

                    if not Erro then
                      begin
                        CodeSite.SendNote(LOG_MSG_IMPORTACAO_CARREGAR_SUCESSO);
                        Msg.Informacao(LOG_MSG_IMPORTACAO_CARREGAR_SUCESSO);
                      end;

                    // Fecha o arquivo carregado:
                    CdsArquivo.Close;

                    // Exclui o arquivo temporário:
                    DeleteFile(TempZip);
                  end
                else
                  begin
                    CodeSite.SendError(LOG_MSG_IMPORTACAO_DESCOMPACTAR_ERRO);
                    MSG.Erro(LOG_MSG_IMPORTACAO_DESCOMPACTAR_ERRO);
                  end;

                // Exclui a pasta temporária:
                RemoveDir(TempDir);
              end
            else
              begin
                Msg.Erro(LOF_MSG_IMPORTACAO_ERRO_PASTA);
                CodeSite.SendError(LOF_MSG_IMPORTACAO_ERRO_PASTA);
              end;
          end
        else
          begin
            CodeSite.SendMsg('Usuário escolheu não carregar nenhum arquivo.');
          end;
      end
    else
      begin
        CodeSite.SendMsg('Usuário escolheu não carregar nenhum arquivo.');
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnCarregarArquivoClick().');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmLogImportar.BtnIniciarImportacaoClick(Sender: TObject);
begin
  CodeSite.EnterMethod(Self.Name + '.BtnIniciarImportacaoClick()');
  Screen.Cursor := crHourGlass;
  try
    if MSG.Confirmacao(LOG_MSG_IMPORTACAO_CONFIMAR) then
      begin
        // Inicia a transação:
        if not DtmConexaoModulo.FDConnection.InTransaction then
          DtmConexaoModulo.FDConnection.StartTransaction;

        if not DtmConexaoModulo.FDWriteTransaction.Active then
          DtmConexaoModulo.FDWriteTransaction.StartTransaction;

        if not StrdPrcReplicacaoImportar.Prepared then
          StrdPrcReplicacaoImportar.Prepare;

        CodeSite.SendMsg('Iniciando o processo de importação.');
        StrdPrcReplicacaoImportar.ParamByName('id').AsLargeInt := DtStConsultaREP_ID.AsLargeInt;
        try
          // Executa o procedimento:
          StrdPrcReplicacaoImportar.ExecProc;

          // Valida o retorno da execução da importação:
          if StrdPrcReplicacaoImportar.ParamByName('erro').AsBoolean then
            begin
              // Desfazendo a transação:
              if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                 DtmConexaoModulo.FDConnection.Rollback;
            end
          else
            begin
              // Finalizando a transação:
              if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                 DtmConexaoModulo.FDConnection.Commit;
            end;

          DtStConsulta.Refresh;

          if (DtStConsultaREP_SITUACAO.Value = 4) then
            begin
              Msg.Informacao(LOG_MSG_IMPORTACAO_SUCESSO_TOTAL);
              CodeSite.SendNote(LOG_MSG_IMPORTACAO_SUCESSO_TOTAL);
            end
          else
            begin
              Msg.Aviso(LOG_MSG_IMPORTACAO_ERRO);
              CodeSite.SendNote(LOG_MSG_IMPORTACAO_ERRO);
            end;
        except
          on E: Exception do
            begin
              // Desfazendo a transação:
              if DtmConexaoModulo.FDConnection.InTransaction and DtmConexaoModulo.FDWriteTransaction.Active then
                DtmConexaoModulo.FDConnection.Rollback;

              CodeSite.SendError('Erro na importação dos dados do registro [' + DtStConsultaREP_ID.AsString + '].');
              CodeSite.SendError('Erro original: [' + E.Message + '].');
              Msg.Erro(LOG_MSG_IMPORTACAO_ERRO);
            end;
        end;
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnIniciarImportacaoClick()');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmLogImportar.BtnLimparClick(Sender: TObject);
begin
  ImgCmbBxSituacao.Properties.OnEditValueChanged := nil;
  LkpCmbBxUnidade.Properties.OnEditValueChanged := nil;
  try
    ImgCmbBxSituacao.Clear;
    LkpCmbBxUnidade.Clear;
    AtualizarFiltro;
  finally
    ImgCmbBxSituacao.Properties.OnEditValueChanged := ImgCmbBxSituacaoPropertiesEditValueChanged;
    LkpCmbBxUnidade.Properties.OnEditValueChanged := LkpCmbBxUnidadePropertiesEditValueChanged;
  end;
end;

procedure TFrmLogImportar.BtnVisualizarImportacaoClick(Sender: TObject);
begin
  FrmLogImportarDetalhe := TFrmLogImportarDetalhe.Create(Self);
  try
    FrmLogImportarDetalhe.Visualizar(
      DtStConsultaREP_ID.AsLargeInt,
      DtStConsultaUND_NOME.AsString,
      DtStConsultaREP_SITUACAO_DESCRICAO.AsString,
      DtStConsultaREP_TOTAL.AsInteger);
  finally
    FrmLogImportarDetalhe.Release;
    FrmLogImportarDetalhe := nil;
  end;

end;

procedure TFrmLogImportar.DtStConsultaAfterScroll(DataSet: TDataSet);
begin
  BtnIniciarImportacao.Enabled := (DtStConsultaREP_SITUACAO.Value = 3);
  BtnVisualizarImportacao.Enabled := (DtStConsultaREP_SITUACAO.Value in [3,4,5,6]);
end;

procedure TFrmLogImportar.DtStPendentesAfterOpen(DataSet: TDataSet);
begin
  LblQtde.Caption := DtStPendentesTOTAL.AsString;
  if (DtStPendentesTOTAL.Value = 0) then
    BtnIniciarImportacao.Enabled := False;
end;

procedure TFrmLogImportar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  DtStPendentes.Close;
  DtStConsulta.Close;
end;

procedure TFrmLogImportar.FormCreate(Sender: TObject);
begin
  inherited;
  DtSrcUnidade.DataSet := DtmSistemaModulo.DtStUnidade;
  LkpCmbBxUnidade.Properties.ListSource := DtSrcUnidade;
  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  try
    RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
  end;
end;

procedure TFrmLogImportar.FormShow(Sender: TObject);
begin
  inherited;

  DtStPendentes.Open;
  DtStConsulta.Open;
end;

procedure TFrmLogImportar.ImgCmbBxSituacaoPropertiesEditValueChanged(Sender: TObject);
begin
  AtualizarFiltro;
end;

procedure TFrmLogImportar.LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
begin
  AtualizarFiltro;
end;

end.
