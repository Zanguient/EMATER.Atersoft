unit Emater.Base.Tabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxPC, cxControls, cxLookAndFeelPainters, StdCtrls,
  cxButtons, DB, FIBDataSet, pFIBDataSet, Menus, FIB, cxGraphics, cxLookAndFeels, dxSkinsCore, cxPCdxBarPopupMenu, Emater.Base.Basico,
  dxSkinscxPCPainter, Datasnap.DBClient, MidasLib, Emater.Classe.Log, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic;

type
  TFrmBaseTabela = class(TFrmBaseBasico)
    PgCntrlMain: TcxPageControl;
    TbShtPrincipal: TcxTabSheet;
    BtnNovo: TcxButton;
    BtnSalvar: TcxButton;
    BtnCancelar: TcxButton;
    BtnExcluir: TcxButton;
    BtnFechar: TcxButton;
    DtStPrincipal: TpFIBDataSet;
    DtSrcPrincipal: TDataSource;
    BtnSelecionar: TcxButton;
    BtnRelatorio: TcxButton;
    QryPrincipal: TFDQuery;
    UpdtPrincipal: TFDUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSelecionarClick(Sender: TObject);
    procedure PrepareInterfaceForSelect;
    procedure QryPrincipalBeforePost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
  private
    FControleAtivo: TWinControl;
    FCampoExcluido: string;
    FCampoChave: string;
    FTabela: string;
  published
    property ControleAtivo: TWinControl read FControleAtivo write FControleAtivo;
    property CampoChave: string read FCampoChave write FCampoChave;
    property Tabela: string read FTabela write FTabela;
  public
    procedure Novo;
    procedure Editar(const ID: Largeint);
    procedure Visualizar(const ID: Largeint);
    function Selecionar: Largeint;
    function SelecionarNumero(const ACampoNome: string): Largeint;
    function SelecionarTexto(const ACampoNome: string): string;
    procedure DesabilitarControles;
  end;

var
  FrmBaseTabela: TFrmBaseTabela;

implementation

uses Emater.Recurso.Consts, Emater.Base.Consts, Emater.Dialogo.Modulo, Emater.Sistema.Modulo,
  Emater.Conexao.Modulo, Emater.Sistema.Consts;

{$R *.dfm}

procedure TFrmBaseTabela.FormCreate(Sender: TObject);
begin
  inherited;
  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  Screen.Cursor := crHourGlass;
  try
    // Controle de acesso:
    if (DtmConexaoModulo.PerfilID = SISTEMA_PERFIL_ADMINISTRADOR) or (DtmConexaoModulo.PerfilID =  SISTEMA_PERFIL_CHEFIA) then
      RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');

    // Inicializa atributos:
    FControleAtivo := nil;
    FCampoExcluido := 'REG_EXCLUIDO';
    FCampoChave := '';
    FTabela := '';

    // Carrega as imagens dos botões:
    BtnNovo.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_NOVO);
    BtnSalvar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SALVAR);
    BtnCancelar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_CANCELAR);
    BtnExcluir.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_EXCLUIR);
    BtnRelatorio.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_IMPRIMIR);
    BtnSelecionar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SELECIONAR);
    BtnFechar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
    CodeSite.SendMsg('Imagens dos botões carregadas com sucesso.');

    // A página principal do PageControl deve ser a primeira
    // a ser exibida.
    PgCntrlMain.ActivePage := TbShtPrincipal;

    SublinharCamposObrigatorios;
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmBaseTabela.BtnNovoClick(Sender: TObject);
begin
  // Adiciona um registro em branco no final do DataSet.
  CodeSite.EnterMethod(Self.Name + '.BtnNovoClick().');
  try
    if Assigned(DtSrcPrincipal.DataSet) then
      begin
        DtSrcPrincipal.DataSet.Append;
        CodeSite.SendMsg('Novo registro criado.');
      end;
    PgCntrlMain.ActivePage := TbShtPrincipal;
    if Assigned(FControleAtivo) then
      if FControleAtivo.CanFocus then
        FControleAtivo.SetFocus;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnNovoClick().');
  end;
end;

procedure TFrmBaseTabela.BtnSalvarClick(Sender: TObject);
begin
  // Salva as alterações realizadas no registro.
  CodeSite.EnterMethod(Self.Name + '.BtnSalvarClick().');
  try
    try
      if Assigned(DtSrcPrincipal.DataSet) then
        begin
          if not DtmDialogoModulo.ExisteCamposPendentes(DtSrcPrincipal.DataSet) then
            begin
              if (DtSrcPrincipal.DataSet.State in [dsInsert, dsEdit]) then
                begin

                  // Gravando as informações de auditoria e replicação:
                  if (DtSrcPrincipal.DataSet.FindField('REG_MODIFICADO') <> nil) then
                    DtSrcPrincipal.DataSet.FieldByName('REG_MODIFICADO').AsDateTime := Now;

                  if (DtSrcPrincipal.DataSet.FindField('REG_USUARIO') <> nil) then
                    DtSrcPrincipal.DataSet.FieldByName('REG_USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;

                  if (DtSrcPrincipal.DataSet.FindField('REG_REPLICADO') <> nil) then
                    DtSrcPrincipal.DataSet.FieldByName('REG_REPLICADO').AsInteger := 0;

                  if (DtSrcPrincipal.DataSet.FindField('REG_EXCLUIDO') <> nil) and (DtSrcPrincipal.DataSet.State in [dsInsert]) then
                    DtSrcPrincipal.DataSet.FieldByName('REG_EXCLUIDO').AsInteger := 0;

                  CodeSite.SendMsg('Preparando para gravar as alterações do registro.');
                  DtSrcPrincipal.DataSet.Post;
                  Msg.Informacao(BASE_MSG_INFORMACAO_SALVAR);
                  ColorirCamposObrigatorios(clWindowText);
                  CodeSite.SendMsg('Alterações no registro gravadas com sucesso.');
                  if (DtSrcPrincipal.DataSet is TClientDataSet) then
                    begin
                      if TClientDataSet(DtSrcPrincipal.DataSet).ApplyUpdates(-1) = 0 then
                        TClientDataSet(DtSrcPrincipal.DataSet).Refresh
                      else
                        TClientDataSet(DtSrcPrincipal.DataSet).UndoLastChange(True);
                    end;
                  if Assigned(FControleAtivo) then
                    if FControleAtivo.CanFocus then
                      FControleAtivo.SetFocus;
                end
            end
          else
            ColorirCamposObrigatorios(clRed);
        end;
    except
      on E: Exception do
        begin
          CodeSite.SendError(BASE_MSG_ERRO_SALVAR);
          CodeSite.SendError('Erro original: [' + E.Message + '].');
          Msg.Erro(BASE_MSG_ERRO_SALVAR);
          Abort;
        end;
    end;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnSalvarClick().');
  end;
end;

procedure TFrmBaseTabela.BtnSelecionarClick(Sender: TObject);
begin
  // Fecha a janela indicando que o registro atual está selecionado:
  CodeSite.EnterMethod(Self.Name + '.BtnSelecionarClick().');
  try
    CodeSite.SendMsg('Retorno modal: mrOk.');
    ModalResult := mrOk;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnSelecionarClick().');
  end;
end;

procedure TFrmBaseTabela.BtnCancelarClick(Sender: TObject);
begin
  // Pergunta-se ao usuário se este tem certeza que realmente
  // deseja cancelar as alterações realizadas no registro.
  CodeSite.EnterMethod(Self.Name + '.BtnCancelarClick().');
  try
    if Assigned(DtSrcPrincipal.DataSet) then
      begin
        CodeSite.SendMsg('Confirmar cancelamento das alterações.');
        if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
          begin
            if (DtSrcPrincipal.DataSet.State in [dsEdit, dsInsert]) then
              begin
                DtSrcPrincipal.DataSet.Cancel;
                CodeSite.SendMsg('Alterações no registro canceladas.');
              end;
            if Assigned(FControleAtivo) then
              if FControleAtivo.CanFocus then
                FControleAtivo.SetFocus;
          end
        else
          begin
            CodeSite.SendMsg('O usuário decidiu não cancelar as alterações realizadas.');
            Abort;
          end;
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnCancelarClick().');
  end;
end;

procedure TFrmBaseTabela.BtnExcluirClick(Sender: TObject);
begin
  // Excluindo o registro.
  // Antes da exclusão é perguntado se se o usuário tem certeza
  // que deseja realizar esta operação.
  CodeSite.EnterMethod(Self.Name + '.BtnExcluirClick().');
  try
    CodeSite.SendMsg('Confirmar exclusão de registro.');
    if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
      try
        PgCntrlMain.ActivePage := TbShtPrincipal;
        if Assigned(DtSrcPrincipal.DataSet) then
          begin
            CodeSite.SendMsg('Preparando para excluir o registro.');
            if (DtSrcPrincipal.DataSet.FindField('REG_EXCLUIDO') <> nil) then
              begin
                DtSrcPrincipal.DataSet.Edit;
                DtSrcPrincipal.DataSet.FieldByName(FCampoExcluido).AsInteger := 1;

                // Gravando as informações de auditoria e replicação:
                if (DtSrcPrincipal.DataSet.FindField('REG_MODIFICADO') <> nil) then
                  DtSrcPrincipal.DataSet.FieldByName('REG_MODIFICADO').AsDateTime := Now;

                if (DtSrcPrincipal.DataSet.FindField('REG_USUARIO') <> nil) then
                  DtSrcPrincipal.DataSet.FieldByName('REG_USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;

                if (DtSrcPrincipal.DataSet.FindField('REG_REPLICADO') <> nil) then
                  DtSrcPrincipal.DataSet.FieldByName('REG_REPLICADO').AsInteger := 0;

                if (DtSrcPrincipal.DataSet.FindField('REG_EXCLUIDO') <> nil) then
                  DtSrcPrincipal.DataSet.FieldByName('REG_EXCLUIDO').AsInteger := 1;

                DtSrcPrincipal.DataSet.Post;
                DtSrcPrincipal.DataSet.Close;
                DtSrcPrincipal.DataSet.Open;
                CodeSite.SendMsg('Registro excluído logicamente com sucesso.');
              end
            else
              begin
                DtSrcPrincipal.DataSet.Delete;
                CodeSite.SendMsg('Registro excluído fisicamente com sucesso.');
                if (DtSrcPrincipal.DataSet is TClientDataSet) then
                  begin
                    if TClientDataSet(DtSrcPrincipal.DataSet).ApplyUpdates(-1) = 0 then
                      TClientDataSet(DtSrcPrincipal.DataSet).Refresh
                    else
                      TClientDataSet(DtSrcPrincipal.DataSet).UndoLastChange(True);
                    if Assigned(FControleAtivo) then
                      if FControleAtivo.CanFocus then
                        FControleAtivo.SetFocus;
                  end;
              end;
            Msg.Informacao(BASE_MSG_INFORMACAO_EXCLUIR);
          end;
        if Assigned(DtSrcPrincipal.OnStateChange) then
          DtSrcPrincipal.OnStateChange(Sender);
      except
        on E: Exception do
          begin
            CodeSite.SendError(BASE_MSG_ERRO_EXCLUIR);
            CodeSite.SendError('Erro original: [' + E.Message + '].');
            Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
          end;
      end
    else
      CodeSite.SendMsg('O usuário não confirmou a exclusão do registro.');
  finally
    CodeSite.ExitMethod(Self.Name + '.BtnExcluirClick().');
  end;
end;

procedure TFrmBaseTabela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Verificando se o registro está sendo editado.
  // Caso esteja sendo editado, é feito uma pergunta se o usuário
  // deseja cancelar ou não as alterações realizadas no registro.
  inherited;
  CodeSite.EnterMethod(Self.Name + '.FormClose().');
  try
    if Assigned(DtSrcPrincipal.DataSet) then
      if (DtSrcPrincipal.DataSet.State in [dsEdit, dsInsert]) then
        begin
          CodeSite.SendMsg('Há alterações pendentes. Confirmar cancelamento das alterações.');
          if Msg.Confirmacao(BASE_MSG_CONFIRMAR_CANCELAMENTO) then
            begin
              CodeSite.SendMsg('O usuário confirmou o cancelamento das alterações.');
              DtSrcPrincipal.DataSet.Cancel;
              CodeSite.SendMsg('Alterações canceladas com sucesso. A janela será fechada.');
            end
          else
            begin
              CodeSite.SendMsg('O usuário não confirmou o cancelamento. A janela não será fechada.');
              Action := caNone;
              CodeSite.ExitMethod(Self.Name + '.FormClose().');
              Exit;
            end;
        end
      else
        CodeSite.SendMsg('O DataSet não está em edição.');
  finally
    CodeSite.ExitMethod(Self.Name + '.FormClose().');
  end;
end;

procedure TFrmBaseTabela.DesabilitarControles;
var
  I: Integer;
begin
  CodeSite.EnterMethod(Self.Name + '.DesabilitarControles().');
  try
    CodeSite.SendMsg('Desabilitando todos os controles.');
    for I := 0 to ComponentCount - 1 do
      begin
        if (Components[I] is TWinControl) and (not (Components[I] is TForm)) then
          if (TWinControl(Components[I]).Tag in [0, 1]) then
            TWinControl(Components[I]).Enabled := False;
      end;
    CodeSite.SendMsg('Controles desabilitados com sucesso.');
  finally
    CodeSite.ExitMethod(Self.Name + '.DesabilitarControles().');
  end;
end;

procedure TFrmBaseTabela.DtSrcPrincipalStateChange(Sender: TObject);
begin
  // Atualizando os botões de acordo com o status do DataSet:
  inherited;
  if Assigned(DtSrcPrincipal.DataSet) then
    begin
      with DtSrcPrincipal.DataSet do
        begin
          BtnNovo.Enabled := (State = dsBrowse) and (not (State = dsInactive));
          BtnExcluir.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
          BtnCancelar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
          BtnSalvar.Enabled := (State in [dsEdit, dsInsert]) and (not (State = dsInactive));
          BtnRelatorio.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
        end;
    end;
end;

procedure TFrmBaseTabela.Novo;
begin
  CodeSite.EnterMethod(Self.Name + '.Novo().');
  try
    if Assigned(DtSrcPrincipal.DataSet) then
      begin
        if (TFDQuery(DtSrcPrincipal.DataSet).ParamCount > 0) then
          with TFDQuery(DtSrcPrincipal.DataSet) do
            begin
              Close;
              Params[0].AsInteger := 0;
              Open;
              Insert;
            end
        else
          with TFDQuery(DtSrcPrincipal.DataSet) do
            begin
              Open;
              Last;
              Insert;
            end;
        CodeSite.SendMsg('Um registro em branco foi criado para inclusão dos dados.');
      end;
    ShowModal;
  finally
    CodeSite.ExitMethod(Self.Name + '.Novo().');
  end;
end;

procedure TFrmBaseTabela.PrepareInterfaceForSelect;
begin
  DtSrcPrincipal.AutoEdit := False;
  BtnNovo.Visible := False;
  BtnExcluir.Visible := False;
  BtnCancelar.Visible := False;
  BtnSalvar.Visible := False;
  BtnSelecionar.Visible := True;
  BtnSelecionar.Default := True;
  BtnSelecionar.Left := BtnSelecionar.Left - 8;
  BtnSelecionar.Width := BtnSelecionar.Width + 8;
end;

procedure TFrmBaseTabela.QryPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
 CodeSite.EnterMethod(Self.Name + '.QryPrincipalBeforePost().' );
  try
    if Assigned(DtSrcPrincipal.DataSet)  then
      begin
        CodeSite.SendMsg('Verificando se há campo-chave definido para geração do identificador.');
        if (DtSrcPrincipal.DataSet.State = dsInsert) and (FCampoChave <> '') then
          begin
            DtSrcPrincipal.DataSet.FieldByName(FCampoChave).AsLargeInt := DtmSistemaModulo.GerarIdentificador(FTabela, FCampoChave);
            CodeSite.SendMsg('Identificador gerado para ' + FCampoChave + ': ' + DtSrcPrincipal.DataSet.FieldByName(FCampoChave).AsString + '.');
          end
        else
          CodeSite.SendMsg('Não é necessário gerar identificador. Não há campo-chave definido ou não é uma operação de inclusão.');
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.QryPrincipalBeforePost().' );
  end;
end;

procedure TFrmBaseTabela.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  if Assigned(DtSrcPrincipal.DataSet) and (FCampoExcluido <> '') then
    DtSrcPrincipal.DataSet.FieldByName(FCampoExcluido).AsInteger := 0;
end;

function TFrmBaseTabela.Selecionar: Largeint;
begin
  PrepareInterfaceForSelect;
  if ShowModal = mrOk then
    begin
      if (DtSrcPrincipal.DataSet.Fields.Count > 0) then
        Result := DtSrcPrincipal.DataSet.Fields[0].AsLargeint
      else
        Result := 0;
    end
  else
    Result := 0;
end;

function TFrmBaseTabela.SelecionarNumero(const ACampoNome: string): Largeint;
begin
  PrepareInterfaceForSelect;
  if ShowModal = mrOk then
    begin
      if (DtSrcPrincipal.DataSet.Fields.Count > 0) then
        Result := DtSrcPrincipal.DataSet.FieldByName(ACampoNome).AsLargeint
      else
        Result := 0;
    end
  else
    Result := 0;
end;

function TFrmBaseTabela.SelecionarTexto(const ACampoNome: string): string;
begin
  PrepareInterfaceForSelect;
  if ShowModal = mrOk then
    begin
      if (DtSrcPrincipal.DataSet.Fields.Count > 0) then
        Result := DtSrcPrincipal.DataSet.FieldByName(ACampoNome).AsString
      else
        Result := '';
    end
  else
    Result := '';
end;

procedure TFrmBaseTabela.Visualizar(const ID: Largeint);
var
  I: Integer;
begin
  CodeSite.EnterMethod(Self.Name + '.Visualizar().');
  try
    if Assigned(DtSrcPrincipal.DataSet) then
      with TFDQuery(DtSrcPrincipal.DataSet) do
      begin
        Close;
        if (ParamCount > 0) then
          Params[0].AsLargeInt := ID;
        Open;
        CodeSite.SendMsg('Abriu o DataSet.');
      end;

    for I := 0 to ComponentCount - 1 do
      begin
        if ((Components[I] is TcxButton) and (TcxButton(Components[I]).Tag = 1)) then
          TcxButton(Components[I]).Visible := False
        else
          if Components[I] is TDataSource then
            TDataSource(Components[I]).AutoEdit := False;
      end;
    CodeSite.SendMsg('Desabilitou os botões de operação.');
    CodeSite.SendMsg('Os dados foram programados para somente-leitura.');

    ShowModal;
  finally
    CodeSite.ExitMethod(Self.Name + '.Visualizar().');
  end;
end;

procedure TFrmBaseTabela.Editar(const ID: Largeint);
begin
  if Assigned(DtSrcPrincipal.DataSet) then
    with TFDQuery(DtSrcPrincipal.DataSet) do
    begin
      Close;
      Params[0].AsLargeInt := ID;
      Open;
    end;
  ShowModal;
end;

procedure TFrmBaseTabela.FormShow(Sender: TObject);
begin
  inherited;
  CodeSite.EnterMethod(Self.Name + '.FormShow().');
  Screen.Cursor := crHourGlass;
  try
    // Abrindo a tabela principal:
    try
      if Assigned(DtSrcPrincipal.DataSet) then
        begin
          if (DtSrcPrincipal.DataSet.State = dsInactive) then
            begin
              CodeSite.SendMsg('Carregando os dados.');
              DtSrcPrincipal.DataSet.Open;
              if DtSrcPrincipal.DataSet is TFDQuery then
                (DtSrcPrincipal.DataSet as TFDQuery).FetchAll;
              DtSrcPrincipal.DataSet.First;
              CodeSite.SendMsg('Dados carregados com sucesso.');
            end;
          if Assigned(FControleAtivo) then
            if FControleAtivo.CanFocus then
              FControleAtivo.SetFocus;
        end;
    except
      DesabilitarControles;
    end;
  finally
    CodeSite.ExitMethod(Self.Name + '.FormShow().');
    Screen.Cursor := crDefault;
  end;
end;

end.
