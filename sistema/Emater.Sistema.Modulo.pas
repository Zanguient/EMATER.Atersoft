unit Emater.Sistema.Modulo;

interface

uses
  System.SysUtils, System.Classes, Emater.Classe.Mensagem, Forms, Data.DB, Variants, Emater.Classe.Log,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDtmSistemaModulo = class(TDataModule)
    DtSrcUnidade: TDataSource;
    DtSrcParametro: TDataSource;
    DtSrcPerfil: TDataSource;
    DtSrcUsuario: TDataSource;
    DtStUnidade: TFDQuery;
    UpdtUnidade: TFDUpdateSQL;
    StrdPrcGerarIdentificador: TFDStoredProc;
    StrdPrcAplicacaoRegistrar: TFDStoredProc;
    StrdPrcControleRegistrar: TFDStoredProc;
    StrdPrcRecenteRegistrar: TFDStoredProc;
    StrdPrcRecenteLimpar: TFDStoredProc;
    StrdPrcUsuarioCriar: TFDStoredProc;
    DtStParametro: TFDQuery;
    UpdtParametro: TFDUpdateSQL;
    UpdtPerfil: TFDUpdateSQL;
    DtStPerfil: TFDQuery;
    UpdtUsuario: TFDUpdateSQL;
    DtStUsuario: TFDQuery;
    DtStControleAtivo: TFDQuery;
    DtStRecenteCarregar: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FMsg: TMensagem;
  public
    function GerarIdentificador(const ATabela, ACampo: string): Int64;
    procedure GravarIdentificador(DataSet: TDataSet; TableName, KeyFieldName: string);
    procedure GravarAuditoriaExclusao(DataSet: TDataSet; DoRefresh: Boolean = True);
    procedure GravarAuditoriaInclusao(DataSet: TDataSet; TableName, KeyFieldName: string);
    procedure GravarAuditoriaAlteracao(DataSet: TDataSet);
    function UnidadeLocalID: Integer;
    function UnidadeLocalNome: string;
    function CidadeLocalID: Integer;
    function MunicipioLocalID: Integer;
    function BackupDiretorio: string;
    procedure BackupDiretorioSalvar(const ADir: string);
    function AplicacaoRegistrar(const AModulo: Integer; const ANome, ALegenda, ADescricao: string): Boolean;
    function ControleRegistrar(const AModulo: Integer; const AAplicacao, ANome, ALegenda, ADescricao: string): Boolean;
    procedure CarregarControleAtivo;
    function ControleAtivo(const AAplicacao, AControle: string): Boolean;
    function UsuarioCriar(const Login, Senha: string): Integer;
    procedure RecarregarDados;
    procedure RecenteRegistrar(Grupo: Integer; Identificador: Int64; Ordem: SmallInt; Legenda, Descricao: string; Pino: Boolean);
    procedure RecenteCarregar(Grupo: Integer);
    procedure RecenteLimpar;
  end;

var
  DtmSistemaModulo: TDtmSistemaModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo, Emater.Sistema.Consts;

{$R *.dfm}

{ TDtmSistemaModulo }

procedure TDtmSistemaModulo.GravarAuditoriaAlteracao(DataSet: TDataSet);
begin
  if (DataSet.State in [dsEdit, dsInsert]) then
    begin
      DataSet.FieldByName('REG_REPLICADO').Value := 0;
      DataSet.FieldByName('REG_USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;
      DataSet.FieldByName('REG_MODIFICADO').Value := Now;
    end;
end;

procedure TDtmSistemaModulo.GravarAuditoriaExclusao(DataSet: TDataSet; DoRefresh: Boolean = True);
begin
  DataSet.Edit;
  DataSet.FieldByName('REG_EXCLUIDO').Value := 1;
  DataSet.FieldByName('REG_REPLICADO').Value := 0;
  DataSet.FieldByName('REG_USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;
  DataSet.FieldByName('REG_MODIFICADO').Value := Now;
  DataSet.Post;

  if DoRefresh then
    begin
      DataSet.Close;
      DataSet.Open;
    end;
end;

procedure TDtmSistemaModulo.GravarAuditoriaInclusao(DataSet: TDataSet; TableName, KeyFieldName: string);
begin
  if (DataSet.State = dsInsert) then
    begin
      if DataSet.FieldByName(KeyFieldName).IsNull then
        DataSet.FieldByName(KeyFieldName).AsLargeInt := GerarIdentificador(TableName, KeyFieldName);
      DataSet.FieldByName('REG_EXCLUIDO').Value := 0;
      DataSet.FieldByName('REG_REPLICADO').Value := 0;
      DataSet.FieldByName('REG_USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;
      DataSet.FieldByName('REG_MODIFICADO').Value := Now;
    end;
end;

procedure TDtmSistemaModulo.GravarIdentificador(DataSet: TDataSet; TableName, KeyFieldName: string);
begin
  if (DataSet.State = dsInsert) then
   DataSet.FieldByName(KeyFieldName).AsLargeInt := GerarIdentificador(TableName, KeyFieldName);
end;

procedure TDtmSistemaModulo.DataModuleCreate(Sender: TObject);
begin
  FMsg := TMensagem.Create(Application.Handle);

  RecarregarDados;
end;

procedure TDtmSistemaModulo.DataModuleDestroy(Sender: TObject);
begin
  FMsg.Free;
end;

function TDtmSistemaModulo.GerarIdentificador(const ATabela, ACampo: string): Int64;
begin
  try
    StrdPrcGerarIdentificador.ParamByName('tabela').AsString := ATabela;
    StrdPrcGerarIdentificador.ParamByName('campo').AsString := ACampo;
    StrdPrcGerarIdentificador.ExecProc;
    Result := StrdPrcGerarIdentificador.ParamByName('id').AsLargeInt;
  except
    on E: Exception do
      begin
        FMsg.Erro(SISTEMA_DB_ERRO_IDENTIFICADOR);
        raise;
      end;
  end;
end;

function TDtmSistemaModulo.MunicipioLocalID: Integer;
begin
  if DtStUnidade.Locate('UND_ID', UnidadeLocalID, []) then
    Result := DtStUnidade.FieldByName('cid_id').AsInteger
  else
    Result := 100;
end;

procedure TDtmSistemaModulo.RecarregarDados;
begin
  DtStUnidade.Close;
  DtStUnidade.Open;

  DtStParametro.Close;
  DtStParametro.Open;

  DtStPerfil.Close;
  DtStPerfil.Open;

  DtStUsuario.Close;
  DtStUsuario.Open;
end;

procedure TDtmSistemaModulo.RecenteCarregar(Grupo: Integer);
begin
  DtStRecenteCarregar.Close;
  DtStRecenteCarregar.ParamByName('grupo').AsInteger := Grupo;
  DtStRecenteCarregar.Open;
end;

procedure TDtmSistemaModulo.RecenteLimpar;
begin
  StrdPrcRecenteLimpar.ExecProc;
end;

procedure TDtmSistemaModulo.RecenteRegistrar(Grupo: Integer; Identificador: Int64; Ordem: SmallInt; Legenda, Descricao: string; Pino: Boolean);
begin
  StrdPrcRecenteRegistrar.ParamByName('grupo').AsInteger := Grupo;
  StrdPrcRecenteRegistrar.ParamByName('identificador').AsLargeInt := Identificador;
  StrdPrcRecenteRegistrar.ParamByName('ordem').AsSmallInt := Ordem;
  StrdPrcRecenteRegistrar.ParamByName('legenda').AsString := Legenda;
  StrdPrcRecenteRegistrar.ParamByName('descricao').AsString := Descricao;

  if Pino then
    StrdPrcRecenteRegistrar.ParamByName('pino').Value := Pino
  else
    StrdPrcRecenteRegistrar.ParamByName('pino').Value := Pino;

  StrdPrcRecenteRegistrar.ExecProc;
end;

function TDtmSistemaModulo.AplicacaoRegistrar(const AModulo: Integer; const ANome, ALegenda, ADescricao: string): Boolean;
begin
  if not StrdPrcAplicacaoRegistrar.Prepared then
    StrdPrcAplicacaoRegistrar.Prepare;

  StrdPrcAplicacaoRegistrar.ParamByName('modulo').AsInteger := AModulo;
  StrdPrcAplicacaoRegistrar.ParamByName('nome').AsString := ANome;
  StrdPrcAplicacaoRegistrar.ParamByName('legenda').AsString := ALegenda;
  StrdPrcAplicacaoRegistrar.ParamByName('descricao').AsString := ADescricao;

  try
    StrdPrcAplicacaoRegistrar.ExecProc;
    Result := True;
  except
    on E: Exception do
      Result := False;
  end;
end;

function TDtmSistemaModulo.BackupDiretorio: string;
begin
  Result := '';
  if DtStParametro.Locate('PAR_NOME', 'BACKUP_DIRETORIO', []) then
    try
      Result := DtStParametro.FieldByName('PAR_VALOR').AsString;
    except
      FMsg.Aviso(SISTEMA_DB_ERRO_SEM_BACKUP_DIRETORIO);
    end;

  if (Result = '') then
    FMsg.Aviso(SISTEMA_DB_ERRO_SEM_BACKUP_DIRETORIO);
end;

procedure TDtmSistemaModulo.BackupDiretorioSalvar(const ADir: string);
begin
  if DtStParametro.Locate('PAR_NOME', 'BACKUP_DIRETORIO', []) then
    try
      DtStParametro.Edit;
      DtStParametro.FieldByName('PAR_VALOR').AsString := ADir;
      DtStParametro.Post;
    except
      FMsg.Erro(SISTEMA_DB_ERRO_SALVAR_BACKUP_DIRETORIO);
    end;
end;

procedure TDtmSistemaModulo.CarregarControleAtivo;
begin
  DtStControleAtivo.Close;
  DtStControleAtivo.ParamByName('modulo').AsInteger := SISTEMA_MODULO_ID;
  DtStControleAtivo.ParamByName('perfil').AsInteger := DtmConexaoModulo.PerfilID;
  DtStControleAtivo.ParamByName('usuario').AsInteger := DtmConexaoModulo.UsuarioID;
  DtStControleAtivo.Open;
end;

function TDtmSistemaModulo.CidadeLocalID: Integer;
begin
  if DtStUnidade.Locate('UND_ID', UnidadeLocalID, []) then
    Result := DtStUnidade.FieldByName('cid_id').AsInteger
  else
    Result := 0;
end;

function TDtmSistemaModulo.ControleAtivo(const AAplicacao, AControle: string): Boolean;
begin
  if DtStControleAtivo.Active then
    begin
      DtStControleAtivo.First;
      Result := DtStControleAtivo.Locate('aplicacao;controle', VarArrayOf([AAplicacao, AControle]), [loCaseInsensitive])
    end
  else
    Result := False;
end;

function TDtmSistemaModulo.ControleRegistrar(const AModulo: Integer; const AAplicacao, ANome, ALegenda, ADescricao: string): Boolean;
begin
  if not StrdPrcControleRegistrar.Prepared then
    StrdPrcControleRegistrar.Prepare;

  StrdPrcControleRegistrar.ParamByName('modulo').AsInteger := AModulo;
  StrdPrcControleRegistrar.ParamByName('aplicacao').AsString := AAplicacao;
  StrdPrcControleRegistrar.ParamByName('nome').AsString := ANome;
  StrdPrcControleRegistrar.ParamByName('legenda').AsString := ALegenda;
  StrdPrcControleRegistrar.ParamByName('descricao').AsString := ADescricao;

  try
    StrdPrcControleRegistrar.ExecProc;
    Result := True;
  except
    on E: Exception do
      begin
        CodeSite.SendError('Controle não registrado: [' + ANome + '].');
        CodeSite.SendError('Erro original: [' + E.Message + '].');
        Result := False;
      end;
  end;
end;

function TDtmSistemaModulo.UnidadeLocalID: Integer;
begin
  Result := 0;
  if DtStParametro.Locate('PAR_NOME', 'UNIDADE_LOCAL', []) then
    try
      Result := DtStParametro.FieldByName('PAR_VALOR').AsInteger;
    except
      FMsg.Aviso(SISTEMA_DB_ERRO_SEM_UNIDADE_LOCAL);
    end;
end;

function TDtmSistemaModulo.UnidadeLocalNome: string;
begin
  if DtStUnidade.Locate('UND_ID', UnidadeLocalID, []) then
    Result := DtStUnidade.FieldByName('und_nome_descricao').AsString
  else
    Result := '(Não identificado)';
end;

function TDtmSistemaModulo.UsuarioCriar(const Login, Senha: string): Integer;
begin
  StrdPrcUsuarioCriar.ParamByName('login').AsString := Login;
  StrdPrcUsuarioCriar.ParamByName('senha').AsString := Senha;
  StrdPrcUsuarioCriar.ExecProc;
  Result := StrdPrcUsuarioCriar.ParamByName('id').AsInteger;

  DtStUsuario.Close;
  DtStUsuario.Open;
end;

end.
