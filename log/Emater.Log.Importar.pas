unit Emater.Log.Importar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Datasnap.DBClient, FIBQuery, pFIBQuery, pFIBStoredProc, FIBDataSet,
  pFIBDataSet, Vcl.Menus, cxButtons, dxSkinSeven, dxSkinSevenClassic, cxContainer, cxGroupBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TFrmLogImportar = class(TFrmBaseBasico)
    LblTitulo: TLabel;
    Label1: TLabel;
    DtStConsulta: TpFIBDataSet;
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
    DtSrcConsulta: TDataSource;
    StrdPrcReplicacaoEntrada: TpFIBStoredProc;
    CdsArquivo: TClientDataSet;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaTblREP_ID: TcxGridDBColumn;
    GrdConsultaTblREP_DATA: TcxGridDBColumn;
    GrdConsultaTblREP_HORA: TcxGridDBColumn;
    GrdConsultaTblREP_USUARIO: TcxGridDBColumn;
    GrdConsultaTblREP_SITUACAO: TcxGridDBColumn;
    GrdConsultaTblUND_NOME: TcxGridDBColumn;
    GrdConsultaTblREP_VERSAO: TcxGridDBColumn;
    GrdConsultaTblREP_QUANTIDADE: TcxGridDBColumn;
    GrdConsultaLvl: TcxGridLevel;
    BtnIniciarImportacao: TcxButton;
    BtnCarregarArquivo: TcxButton;
    BtnFechar: TcxButton;
    OpenDialog: TOpenDialog;
    StrdPrcReplicacaoCarregar: TpFIBStoredProc;
    DtStPentendes: TpFIBDataSet;
    DtStPentendesTOTAL: TFIBIntegerField;
    LblQtde: TLabel;
    BtnVisualizarImportacao: TcxButton;
    StrdPrcReplicacaoImportar: TpFIBStoredProc;
    DtStConsultaREP_SITUACAO_DESCRICAO: TFIBStringField;
    QryReplicacaoTotal: TpFIBQuery;
    GrpBxFiltros: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ImgCmbBxSituacao: TcxImageComboBox;
    LkpCmbBxUnidade: TcxLookupComboBox;
    BtnLimpar: TcxButton;
    DtSrcUnidade: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure BtnCarregarArquivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtStPentendesAfterOpen(DataSet: TDataSet);
    procedure DtStConsultaAfterScroll(DataSet: TDataSet);
    procedure BtnIniciarImportacaoClick(Sender: TObject);
    procedure BtnVisualizarImportacaoClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure ImgCmbBxSituacaoPropertiesEditValueChanged(Sender: TObject);
    procedure LkpCmbBxUnidadePropertiesEditValueChanged(Sender: TObject);
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
  ID: Int64;
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

                    // Cria o registro de importação:
                    try
                      StrdPrcReplicacaoEntrada.ParamByName('usuario').AsString := DtmConexaoModulo.UsuarioNome;
                      StrdPrcReplicacaoEntrada.ParamByName('unidade').AsInteger := CdsArquivo.FieldByName('unidade').AsInteger;
                      StrdPrcReplicacaoEntrada.ParamByName('versao').AsInteger := CdsArquivo.FieldByName('versao').AsInteger;
                      StrdPrcReplicacaoEntrada.ExecProc;
                      ID := StrdPrcReplicacaoEntrada.ParamByName('id').AsInt64;
                    except
                      on E: Exception do
                        begin
                          CodeSite.SendError(E.Message);
                          Erro := True;
                        end;
                    end;

                    // Carrega as transações para a base de dados:
                    if not Erro then
                      try
                        if not StrdPrcReplicacaoCarregar.Prepared then StrdPrcReplicacaoCarregar.Prepare;

                        while not CdsArquivo.Eof do
                          begin
                            StrdPrcReplicacaoCarregar.ParamByName('id').AsInt64 := ID;
                            StrdPrcReplicacaoCarregar.ParamByName('transacao_id').AsInt64 := CdsArquivo.FieldByName('transacao_id').AsLargeInt;
                            StrdPrcReplicacaoCarregar.ParamByName('transacao_usuario').AsString := CdsArquivo.FieldByName('transacao_usuario').AsString;
                            StrdPrcReplicacaoCarregar.ParamByName('transacao_sql').AsString := CdsArquivo.FieldByName('transacao_sql').AsString;
                            StrdPrcReplicacaoCarregar.ExecProc;
                            CdsArquivo.Next;
                          end;

                        // Atualiza total de registros:
                        QryReplicacaoTotal.ParamByName('ID').AsInt64 := ID;
                        QryReplicacaoTotal.ExecQuery;

                        // Commit:
                        if StrdPrcReplicacaoCarregar.Transaction.InTransaction then
                          StrdPrcReplicacaoCarregar.Transaction.CommitRetaining;
                      except
                        on E: Exception do
                          begin
                            if StrdPrcReplicacaoCarregar.Transaction.InTransaction then
                              StrdPrcReplicacaoCarregar.Transaction.RollbackRetaining;
                            Msg.Erro(E.Message);
                            CodeSite.SendError(E.Message);
                            CodeSite.SendError('[transacao_id] : [' + CdsArquivo.FieldByName('transacao_id').AsString + '].');
                            CodeSite.SendError('[transacao_usuario] : [' + CdsArquivo.FieldByName('transacao_usuario').AsString + '].');
                            CodeSite.SendError('[transacao_sql] : [' + CdsArquivo.FieldByName('transacao_sql').AsString + '].');
                            Erro := True;
                          end;
                      end;

                    DtStConsulta.CloseOpen(True);
                    DtStPentendes.CloseOpen(True);

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
        if not StrdPrcReplicacaoImportar.Prepared then
          StrdPrcReplicacaoImportar.Prepare;

        CodeSite.SendMsg('Iniciando o processo de importação.');
        StrdPrcReplicacaoImportar.ParamByName('id').AsInt64 := DtStConsultaREP_ID.AsInt64;
        try
          StrdPrcReplicacaoImportar.ExecProc;
          if StrdPrcReplicacaoImportar.ParamByName('erro').AsBoolean then
            begin
              if StrdPrcReplicacaoImportar.Transaction.InTransaction then
                StrdPrcReplicacaoImportar.Transaction.RollbackRetaining;
            end
          else
            begin
              if StrdPrcReplicacaoImportar.Transaction.InTransaction then
                StrdPrcReplicacaoImportar.Transaction.CommitRetaining;
            end;

          DtStConsulta.Refresh;

          if (DtStConsultaREP_SITUACAO.Value = 5) then
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
              if StrdPrcReplicacaoImportar.Transaction.InTransaction then
                StrdPrcReplicacaoImportar.Transaction.RollbackRetaining;
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
      DtStConsultaREP_ID.AsInt64,
      DtStConsultaUND_NOME.AsString,
      DtStConsultaREP_VERSAO.AsString,
      DtStConsultaREP_SITUACAO_DESCRICAO.AsString,
      DtStConsultaREP_QUANTIDADE.AsInteger);
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

procedure TFrmLogImportar.DtStPentendesAfterOpen(DataSet: TDataSet);
begin
  LblQtde.Caption := DtStPentendesTOTAL.AsString;
  if (DtStPentendesTOTAL.Value = 0) then
    BtnIniciarImportacao.Enabled := False;
end;

procedure TFrmLogImportar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  DtStPentendes.Close;
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

  DtStPentendes.Open;
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
