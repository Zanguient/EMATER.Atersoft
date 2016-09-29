unit Emater.Conexao.Modulo;

interface

uses
  Windows, SysUtils, Classes, DB, Forms, Controls, DBClient, Dialogs, StrUtils, Emater.Classe.Log, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.VCLUI.Error, FireDAC.Comp.UI,
  FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase;

type
  TDtmConexaoModulo = class(TDataModule)
    FDConnection: TFDConnection;
    FDReadTransaction: TFDTransaction;
    FDWriteTransaction: TFDTransaction;
    QryValidarUsuario: TFDQuery;
    QryValidarUsuarioUSR_ID: TIntegerField;
    QryValidarUsuarioUSR_EXPIRADA: TSmallintField;
    QryValidarUsuarioUSR_LOGIN: TStringField;
    QryValidarUsuarioUSR_ATIVO: TSmallintField;
    QryValidarUsuarioPER_ID: TIntegerField;
    QryValidarUsuarioPER_NOME: TStringField;
    QryValidarUsuarioPER_ATIVO: TSmallintField;
    QryValidarUsuarioFUN_ID: TIntegerField;
    QryValidarUsuarioFUN_NOME: TStringField;
    QryValidarUsuarioFUN_MATRICULA: TStringField;
    QryValidarUsuarioUND_ID: TIntegerField;
    QryValidarUsuarioCID_ID: TIntegerField;
    StrdPrcUsuarioSessaoDefinir: TFDStoredProc;
    CmdAlterarSenhaUsuario: TFDCommand;
    QryGenerator: TFDQuery;
    QryGetObjectDescription: TFDQuery;
    QryGetUniqueDescription: TFDQuery;
    FDGUIxErrorDialog: TFDGUIxErrorDialog;
    FDIBSecurity: TFDIBSecurity;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    procedure FDConnectionLost(Sender: TObject);
    procedure FDConnectionRestored(Sender: TObject);
    procedure FDConnectionError(ASender, AInitiator: TObject; var AException: Exception);
  private
    FServidor: string;
    FBase: string;
    FSenha: string;
    FUsuarioNome: string;
    FPerfilNome: string;
    FBloqueio: Boolean;
    FDataHoraConexao: TDateTime;
    FUsuarioID: Integer;
    FPerfilID: Integer;
    FMunicipioID: Integer;
    FFuncionarioID: Integer;
    FUsuarioLogin: string;
    function UsuarioSessaoDefinir(const AUsuario: string): Boolean;
    {$HINTS OFF}
    procedure AlterarSenhaAdministrador(const AServidor: string);
    {$HINTS ON}
  public
    { ============================================= }
    { Propriedades                                  }
    { ============================================= }
    property Servidor: string read FServidor write FServidor;
    property Base: string read FBase write FBase;
    property FuncionarioID: Integer read FFuncionarioID write FFuncionarioID;
    property UsuarioNome: string read FUsuarioNome write FUsuarioNome;
    property UsuarioLogin: string read FUsuarioLogin write FUsuarioLogin;
    property UsuarioID: Integer read FUsuarioID write FUsuarioID;
    property PerfilNome: string read FPerfilNome write FPerfilNome;
    property PerfilID: Integer read FPerfilID write FPerfilID;
    property MunicipioID: Integer read FMunicipioID write FMunicipioID;
    property Senha: string read FSenha write FSenha;
    property DataHoraConexao: TDateTime read FDataHoraConexao write FDataHoraConexao;
    property Bloqueado: Boolean read FBloqueio write FBloqueio;

    { ============================================= }
    { Funções                                       }
    { ============================================= }
    function GerarID(NomeGerador: string): Integer;
    function GerarIDTabela(ATabela, ACampo: string): Integer;
    function GerarIDTabelaDetalhe(ATabela, ACampo, AOnde: string): Integer;
    function Conectar(AServidor, ABase, AUsuario, ASenha: string): Boolean;
    function ValidarUsuario(const AUsuario, ASenha: string): Boolean;
    function AlterarSenha(const AUsuario, ASenha: string): Boolean;
    function AlterarSenhaExpirada(const AUsuario: string): Boolean;
  end;

var
  DtmConexaoModulo: TDtmConexaoModulo;

implementation

uses Emater.Conexao.Restaurar, Emater.Conexao.Aguardar, Emater.Conexao.Consts, Emater.Sistema.Modulo,
  Emater.Sistema.Senha.Alterar;

{$R *.dfm}

{ TDtmConnection }

function TDtmConexaoModulo.ValidarUsuario(const AUsuario, ASenha: string): Boolean;
begin
  QryValidarUsuario.Close;
  QryValidarUsuario.ParamByName('usr_login').AsString := AUsuario;
  QryValidarUsuario.ParamByName('usr_senha').AsString := ASenha;
  QryValidarUsuario.Open;

  if QryValidarUsuario.IsEmpty then
    begin
      MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_USUARIO_INVALIDO), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
      Result := False;
    end
  else
    if not (QryValidarUsuarioUSR_ATIVO.Value = 1) then
      begin
        MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_USUARIO_INATIVO), PWideChar(CONEXAO_LEGENDA_AVISO), MB_ICONWARNING);
        Result := False;
      end
    else
      if not (QryValidarUsuarioPER_ATIVO.Value = 1) then
        begin
          MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_PERFIL_INATIVO), PWideChar(CONEXAO_LEGENDA_AVISO), MB_ICONWARNING);
          Result := False;
        end
      else
        Result := True;
end;

function TDtmConexaoModulo.GerarID(NomeGerador: string): Integer;
begin
  with QryGenerator, SQL do
  begin
    Close;
    Clear;
    Add('SELECT NEXT VALUE FOR ' + NomeGerador + ' AS ID FROM RDB$DATABASE');
    Open;
    Result := FieldByName('ID').AsInteger;
  end;
end;

function TDtmConexaoModulo.GerarIDTabela(ATabela, ACampo: string): Integer;
begin
  with QryGenerator, SQL do
  begin
    Close;
    Clear;
    Add('SELECT MAX(' + ACampo + ') AS ID FROM ' + ATabela);
    Open;
    if FieldByName('ID').IsNull
      then Result := 1
      else Result := FieldByName('ID').AsInteger + 1;
  end;
end;

function TDtmConexaoModulo.GerarIDTabelaDetalhe(ATabela, ACampo, AOnde: string): Integer;
begin
  with QryGenerator do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(' + ACampo + ') FROM ' + ATabela);
    SQL.Add(AOnde);
    Open;
    Result := Fields[0].AsInteger + 1;
    Close;
  end;
end;

function TDtmConexaoModulo.AlterarSenha(const AUsuario, ASenha: string): Boolean;
begin
  CodeSite.EnterMethod('TDtmConexaoModulo.AlterarSenha().');
  try
    CmdAlterarSenhaUsuario.ParamByName('login').AsString := AUsuario;
    CmdAlterarSenhaUsuario.ParamByName('replicado').AsBoolean := False;
    CmdAlterarSenhaUsuario.ParamByName('modificado').AsDateTime := Now;
    CmdAlterarSenhaUsuario.ParamByName('usuario').AsString := AUsuario;
    CmdAlterarSenhaUsuario.ParamByName('senha').AsString := ASenha;
    try
      CodeSite.SendMsg('Alterando a senha do usuário: [' + AUsuario + '].');
      CmdAlterarSenhaUsuario.Execute;
      Result := True;
      CodeSite.SendMsg('Senha alterada com sucesso.');
    except
      on E: Exception do
        begin
          Result := False;
          MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_ERRO_ALTERAR_SENHA), PWideChar(CONEXAO_LEGENDA_AVISO), MB_ICONERROR);
          CodeSite.SendError('A senha não foi alterada.');
          CodeSite.SendError('Erro original: [' + E.Message + '].');
        end;
    end;
  finally
    CodeSite.ExitMethod('TDtmConexaoModulo.AlterarSenha().');
  end;
end;

procedure TDtmConexaoModulo.AlterarSenhaAdministrador(const AServidor: string);
begin
  try
    FDIBSecurity.UserName := 'SYSDBA';
    FDIBSecurity.Password := 'masterkey';
    FDIBSecurity.Host := AServidor;
    FDIBSecurity.AUserName := 'SYSDBA';
    FDIBSecurity.APassword := '3m@T3R_1';
    FDIBSecurity.ModifyUser;
    CodeSite.SendMsg('Senha do administrador alterada com sucesso.');
  except
    CodeSite.SendMsg('Senha do administrador já atualizada.');
  end;
end;

function TDtmConexaoModulo.AlterarSenhaExpirada(const AUsuario: string): Boolean;
begin
  FrmSistemaSenhaAlterar := TFrmSistemaSenhaAlterar.Create(Self);
  try
    if (FrmSistemaSenhaAlterar.Execute(AUsuario) = mrOk) then
      Result := True
    else
      Result := False;
  finally
    FrmSistemaSenhaAlterar.Release;
    FrmSistemaSenhaAlterar := nil;
  end;
end;

function TDtmConexaoModulo.Conectar(AServidor, ABase, AUsuario, ASenha: string): Boolean;
begin
  CodeSite.EnterMethod(Self.Name + '.Conectar().');
  Result := False;
  try
    {$IFDEF RELEASE}
    FDConnection.OnError := nil;
    AlterarSenhaAdministrador(AServidor);
    FDConnection.OnError := FDConnectionError;
    {$ENDIF}

    with FDConnection do
      begin
        if Connected then
          Connected := False;

        Params.Clear;

        Params.Add('Database=' + ABase);
        Params.Add('User_Name=SYSDBA');

        {$IFDEF RELEASE}
        Params.Add('Password=3m@T3R_1');
        {$ELSE}
        Params.Add('Password=masterkey');
        {$ENDIF}

        Params.Add('Protocol=TCPIP');
        Params.Add('Server=' + AServidor);
        Params.Add('CharacterSet=WIN1252');
        Params.Add('DriverID=FB');
        Params.Add('PageSize=8192');

        try
          OnLost := nil;
          FDConnection.OnError := nil;
          Connected := True;
          CodeSite.SendNote('Conexão com o banco de dados estabelecida com sucesso.');
          OnLost := FDConnectionLost;
          FDConnection.OnError := FDConnectionError;

          if ValidarUsuario(AUsuario, ASenha) then
            begin

              if (QryValidarUsuarioUSR_EXPIRADA.Value = 1) then
                begin
                  MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_SENHA_EXPIRADA), PWideChar(CONEXAO_LEGENDA_AVISO), MB_ICONEXCLAMATION);
                  CodeSite.SendMsg('Senha expirada. O usuário deve alterar a senha.');
                  Result := AlterarSenhaExpirada(AUsuario);
                  if Result then
                    CodeSite.SendMsg('Senha alterada com sucesso.')
                  else
                    begin
                      MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_SENHA_EXPIRADA_ACESSO_NEGADO), PWideChar(CONEXAO_LEGENDA_AVISO), MB_ICONEXCLAMATION);
                      CodeSite.SendMsg('A senha não foi alterada. O acesso ao sistema não será possível.');
                    end;
                end
              else
                Result := True;

              if Result then
                begin
                  CodeSite.SendNote('Usuário validado com sucesso: [' + AUsuario + '].');

                  if UsuarioSessaoDefinir(AUsuario) then
                    CodeSite.SendNote('Contexto criado com sucesso para o usuário: [' + AUsuario + '].')
                  else
                    Result := False;

                  if Result then
                    begin
                      FServidor := AServidor;
                      FBase := ABase;
                      if (QryValidarUsuarioFUN_NOME.AsString <> '') then
                        FUsuarioNome := '(' + AUsuario + ') ' + QryValidarUsuarioFUN_NOME.AsString
                      else
                        FUsuarioNome := '(' + AUsuario + ')';
                      FUsuarioLogin := AUsuario;
                      FUsuarioID := QryValidarUsuarioUSR_ID.Value;
                      FSenha := ASenha;
                      FPerfilNome := QryValidarUsuarioPER_NOME.AsString;
                      FPerfilID := QryValidarUsuarioPER_ID.Value;
                      FMunicipioID := QryValidarUsuarioCID_ID.Value;
                      FFuncionarioID := QryValidarUsuarioFUN_ID.Value;
                      FDataHoraConexao := Now;
                    end;
                end;
            end
          else
            CodeSite.SendError('Usuário não foi validado com sucesso. Acesso não permitido: [' + AUsuario + '].');
        except
          on E: EIBNativeException do
            begin
              CodeSite.SendError('Usuário não foi validado com sucesso. Acesso não permitido: [' + AUsuario + '].');
              CodeSite.SendError('Erro original: [' + E.Message + '].');
              if (E.ErrorCode = 335544472) then
                MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_USUARIO_INVALIDO), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
              if (E.ErrorCode = 335544721) then
                MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_ERRO_CONEXAO), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
            end;
        end;
      end;
  finally
    CodeSite.ExitMethod(Self.Name + '.Conectar().');
  end;
end;

procedure TDtmConexaoModulo.FDConnectionError(ASender, AInitiator: TObject; var AException: Exception);
type
  TKindMessage = (mkNone, mkException, mkTable, mkProcedure);
var
  //Objeto, S: string;
  Mensagem: string;

  function GetKindMessage: TKindMessage;
  begin
    Result := mkNone;
    if (Pos('EXCEPTION', Mensagem) > 0) then
      Result := mkException
    else
      if (Pos('TABLE', Mensagem) > 0) then
        Result := mkTable
      else
        if (Pos('PROCEDURE', Mensagem) > 0) then
          Result := mkProcedure;
  end;

  function GetMessage(ObjectName: string): string;
  begin
    Result := 'Você não possui privilégio para ';
    if (Pos('INSERT/WRITE', Mensagem) > 0) then
      Result := Result + 'INSERIR informações no seguinte módulo: '
    else
      if (Pos('DELETE/WRITE', Mensagem) > 0) then
        Result := Result + 'EXCLUIR as informações do seguinte módulo: '
      else
        if (Pos('UPDATE/WRITE', Mensagem) > 0) then
          Result := Result + 'ATUALIZAR as informações do seguinte módulo: '
        else
          if (Pos('READ/SELECT', Mensagem) > 0) then
            Result := Result + 'VISUALIZAR as informações do seguinte módulo: '
          else
            if (Pos('EXECUTE', Mensagem) > 0) then
              Result := Result + 'EXECUTAR o seguinte procedimento: ';
    Result := Result + AnsiUpperCase(ObjectName) + '.';
  end;

  function GetObjectDescription(ObjectName: string): string;
  begin
    with QryGetObjectDescription do
    begin
      Close;
      ParamByName('obj_nome').AsString := ObjectName;
      Execute;
      Result := Fields[1].AsString;
      if (Result = '') then
        Result := ObjectName;

      if (Result[Length(Result)] = '.') then
        Result := Copy(Result, 1, Length(Result) - 1);
    end;
  end;

  function GetUniqueDescription(UniqueName: string): string;
  begin
    QryGetUniqueDescription.Close;
    QryGetUniqueDescription.ParamByName('chave').AsString := UniqueName;
    QryGetUniqueDescription.Execute;
    Result := QryGetUniqueDescription.Fields[0].AsString;
    if (Result = '') then
      Result := UniqueName + '.';
  end;

begin
//  Mensagem := AnsiUpperCase(ErrorValue.IBMessage);
//  if (KindIBError = keLostConnect) or (KindIBError = keException) then
//    begin
//      if (GetKindMessage <> mkException) then
//        begin
//          DoRaise := False;
//          if (ErrorValue.IBErrorCode = 335544721) then
//            MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_ERRO_CONEXAO),
//              PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
//          Abort;
//        end
//      else
//        if (Pos('[', ErrorValue.IBMessage) > 0) then
//          begin
//            S := ErrorValue.IBMessage;
//            S := Copy(S, Pos('[', S) + 1, Pos(']', S) - (Pos('[', S) + 1));
//            MessageBox(Application.Handle, PWideChar(S), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
//          end;
//    end
//  else
//    if (KindIBError = keSecurity) then
//      begin
//        case GetKindMessage of
//          mkTable:
//            Objeto := Trim(Copy(Mensagem, Pos('TABLE', Mensagem) + 5, Length(Mensagem)));
//          mkProcedure:
//            Objeto := Trim(Copy(Mensagem, Pos('PROCEDURE', Mensagem) + 9, Length(Mensagem)));
//        end;
//        Objeto := Copy(Objeto, 1, Pos('.', Objeto) - 1);
//        Objeto := GetObjectDescription(Objeto);
//
//        S := GetMessage(Objeto);
//        MessageBox(Application.Handle, PWideChar(S), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
//        DoRaise := False;
//        Abort;
//      end
//    else
//      if (KindIBError = keForeignKey) then
//        begin
//          DoRaise := False;
//
//          Mensagem := Trim(Copy(Mensagem, Pos('ON TABLE', Mensagem) + 9, Length(Mensagem)));
//          if (Mensagem[1] = '"') then
//            Delete(Mensagem, 1, 1);
//          Objeto := GetObjectDescription(Copy(Mensagem, 1, Pos('"', Mensagem) - 1));
//
//          S := Format(CONEXAO_MSG_ERRO_CHAVE_ESTRANGEIRA, [AnsiUpperCase(Objeto)]);
//          MessageBox(Application.Handle, PWideChar(S), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
//          Abort;
//        end
//      else
//        if (KindIBError = keUniqueViolation) then
//          begin
//            DoRaise := False;
//
//            Mensagem := Trim(Copy(Mensagem, Pos('UNIQUE KEY', Mensagem) + 21, Length(Mensagem)));
//            if (Mensagem[1] = '"') then
//              Delete(Mensagem, 1, 1);
//            S := Copy(Mensagem, 1, Pos('"', Mensagem) - 1);
//            S := GetUniqueDescription(S);
//
//            S := Format(CONEXAO_MSG_ERRO_CHAVE_UNICA, [S]);
//            MessageBox(Application.Handle, PWideChar(S), PWideChar(CONEXAO_LEGENDA_ERRO), MB_ICONERROR);
//            Abort;
//          end
//        else
//          begin
//            CodeSite.SendError(ErrorValue.RaiserName);
//            CodeSite.SendError(ReplaceStr(ErrorValue.IBMessage, '#13', ''));
//            CodeSite.SendError(ReplaceStr(ErrorValue.SQLMessage, '#13', ''));
//          end;
end;

procedure TDtmConexaoModulo.FDConnectionLost(Sender: TObject);
begin
  FrmConexaoRestaurar := TFrmConexaoRestaurar.Create(Self);
  try
    if (FrmConexaoRestaurar.ShowModal = mrOk) then
      begin
        FrmConexaoRestaurar.Hide;
        Application.ProcessMessages;
        FrmConexaoAguardar := TFrmConexaoAguardar.Create(Self);
        FrmConexaoAguardar.Show;
      end
    else
      Application.Terminate;
  finally
    FrmConexaoRestaurar.Release;
    FrmConexaoRestaurar := nil;
  end;
end;

procedure TDtmConexaoModulo.FDConnectionRestored(Sender: TObject);
begin
  if Assigned(FrmConexaoAguardar) then
    begin
      FrmConexaoAguardar.Hide;
      FrmConexaoAguardar.Close;
      FrmConexaoAguardar.Free;
      FrmConexaoAguardar := nil;
    end;
  if Assigned(FrmConexaoRestaurar) then
    begin
      FrmConexaoRestaurar.Free;
      FrmConexaoRestaurar := nil;
    end;
  Application.ProcessMessages;
  MessageBox(Application.Handle, PWideChar(CONEXAO_MSG_CONEXAO_RESTAURADA),
    PWideChar(CONEXAO_LEGENDA_INFORMACAO), MB_ICONINFORMATION);
end;

function TDtmConexaoModulo.UsuarioSessaoDefinir(const AUsuario: string): Boolean;
begin
  try
    StrdPrcUsuarioSessaoDefinir.ParamByName('usuario').AsString := AUsuario;
    StrdPrcUsuarioSessaoDefinir.ExecProc;
    Result := True;
  except
    on E: Exception do
      begin
        Result := False;
        CodeSite.SendError('Contexto não pôde ser criado para o usuário: [' + AUsuario + '].');
        CodeSite.SendError('O acesso ao sistema não pode ser permitido sem um contexto.');
        CodeSite.SendError('Erro original: [' + E.Message + '].');
      end;
  end;
end;

end.
