unit Emater.Sistema.Consts;

interface

const
  SISTEMA_MODULO_ID = 1;

  SISTEMA_DB_ERRO_IDENTIFICADOR = 'Não foi possível gerar um identificador para este registro.';
  SISTEMA_DB_ERRO_SEM_UNIDADE_LOCAL = 'Não foi configurado um escritório regional ou local onde este sistema está executando.';
  SISTEMA_DB_ERRO_SEM_BACKUP_DIRETORIO = 'Não foi configurado um diretório local para os arquivos de backup do banco de dados.';
  SISTEMA_DB_ERRO_SALVAR_BACKUP_DIRETORIO = 'Não foi possível salvar o diretório local para os arquivos de backup do banco de dados.';
  SISTEMA_BD_BACKUP_SUCESSO = 'O processo de backup do banco de dados foi concluído com sucesso. O arquivo "%s" foi gerado na pasta "%s".';
  SISTEMA_BD_BACKUP_ERRO = 'Ocorreu um erro durante o processo de backup. Descrição do erro: %s';
  SISTEMA_BD_BACKUP_FECHAR = 'Não é permitido fechar a janela até que o processo de backup em andamento seja finalizado.';
  SISTEMA_BD_RESTORE_SUCESSO = 'O processo de restauração do banco de dados foi concluído com sucesso.';
  SISTEMA_BD_RESTORE_ERRO = 'Ocorreu um erro durante o processo de restauração. Descrição do erro: %s';
  SISTEMA_BD_RESTORE_FECHAR = 'Não é permitido fechar a janela até que o processo de restauração em andamento seja finalizado.';
  SISTEMA_BD_RESTORE_ARQUIVO = 'É necessário informar um arquivo de backup existente para que a restauração seja realizada.';
  SISTEMA_BD_RESTORE_CONFIRMAR = 'Atenção! A base de dados atual será substituída neste processo de restauração. Deseja realmente continuar?';

  SISTEMA_INI_SECAO = 'Dados';
  SISTEMA_INI_BD = 'Banco';
  SISTEMA_INI_SERVIDORES = 'Servidores';
  SISTEMA_INI_SERVIDOR = 'Servidor';
  SISTEMA_INI_USUARIO = 'Usuario';
  SISTEMA_INI_SENHA = 'Senha';
  SISTEMA_INI_PERFIL = 'Perfil';
  SISTEMA_INI_PERFIS = 'Perfis';
  SISTEMA_INI_BD_PADRAO = 'db';
  SISTEMA_INI_SERVIDOR_PADRAO = 'localhost';

  SISTEMA_CHAVE_INICIO = 146;
  SISTEMA_CHAVE_MULTIPLICADOR = 123;
  SISTEMA_CHAVE_ADICIONAR = 179;

  SISTEMA_CONST_TODOS = '(Todos)';
  SISTEMA_CONST_TODAS = '(Todas)';
  SISTEMA_CONST_OPERACAO_INCLUSAO = 'Inclusão';
  SISTEMA_CONST_OPERACAO_ALTERACAO = 'Alteração';
  SISTEMA_CONST_OPERACAO_EXCLUSAO = 'Exclusão';
  SISTEMA_CONST_VERSAO = 'Versão ';
  SISTEMA_CONST_BLOQUEADO = ' (bloqueado)';
  SISTEMA_CONST_USUARIO_ADMINISTRADOR = 'SYSDBA';
  SISTEMA_CONST_VALIDACAO = 'Validação de usuário administrador';
  SISTEMA_CONST_MAIS = '&Parâmetros';
  SISTEMA_CONST_MENOS = 'Voltar para &login';
  SISTEMA_CONST_MAIS_DICA = 'Configurar parâmetros da conexão com o banco de dados';
  SISTEMA_CONST_MENOS_DICA = 'Voltar para realizar o login do usuário';

  SISTEMA_PERFIL_ADMINISTRADOR = 100000001;
  SISTEMA_PERFIL_CHEFIA = 100000002;
  SISTEMA_PERFIL_TECNICO = 100000003;
  SISTEMA_PERFIL_USUARIO = 100000004;

resourcestring
  SISTEMA_MSG_USUARIO_SENHA_REQUERIDO = 'É necessário informar o nome de usuário e senha para acessar o sistema.';
  SISTEMA_MSG_USUARIO_INVALIDO = 'Não foi possível acessar o sistema com este nome de usuário e senha. Verifique as permissões de acesso.';
  SISTEMA_MSG_USUARIO_SENHA_PADRAO = 'A senha criada para o usuário deve ser alterada no próximo acesso (senha expirada).' + #13#13 + 'Senha: 123';
  SISTEMA_MSG_TERMINAR_APLICACAO = 'Deseja realmente finalizar o sistema?';

  SISTEMA_MSG_INSERIDA = 'Informação inserida:';
  SISTEMA_MSG_ATUALIZACAO_NOVA = 'Informação nova:';
  SISTEMA_MSG_ATUALIZACAO_ANTIGA = 'Informação anterior:';
  SISTEMA_MSG_EXCLUIDA = 'Informação excluída:';
  SISTEMA_MSG_SENHA_ATUAL = 'A senha atual não está correta.';
  SISTEMA_MSG_SENHA_NOVA = 'A nova senha informada não está correta. Verifique se você digitou uma senha válida e se é igual a senha de confirmação. É necessário que a nova senha seja diferente da anterior.';
  SISTEMA_MSG_SENHA_ALTERADA = 'A sua senha foi alterada com sucesso.';
  SISTEMA_MSG_SENHA_CONFIRMACAO = 'A senha informada não corresponde com a sua confirmação. Verifique também se a senha não está em branco e tente novamente.';

  SISTEMA_MSG_ERRO_CONCEDER = 'Você não possui privilégio de administração para conceder permissões no módulo selecionado.';
  SISTEMA_MSG_ERRO_REVOGAR = 'Você não possui privilégio de administração para revogar permissões no módulo selecionado ou as permissões do usuário não foram concedidas por você.';

  SISTEMA_MSG_CONCEDER_TUDO = 'Deseja realmente conceder todas as permissões de acesso para o perfil/usuário selecionado?';
  SISTEMA_MSG_REVOGAR_TUDO = 'Deseja revogar todas as permissões de acesso concedidas para o perfil/usuário selecionado?';
  SISTEMA_MSG_REVOGAR_HORIZONTAL = 'Deseja revogar as permissões concedidas às operações do módulo selecionado?';
  SISTEMA_MSG_REVOGAR_VERTICAL = 'Deseja revogar as permissões concedidas à operação selecionada de todos módulos?';

  SISTEMA_MSG_PERFIL_CRIAR = 'Ocorreu um erro interno e não foi possível criar o perfil. Verifique seus privilégios.';
  SISTEMA_MSG_PERFIL_REMOVER = 'Ocorreu um erro interno e não foi possível remover o perfil. Verifique seus privilégios.';

  SISTEMA_PRIVILEGIO_CONSULTA_BENEFICIARIO = 'Para visualizar este cadastro você deve ter privilégio na "Consulta de Beneficiário".';
  SISTEMA_PRIVILEGIO_CONSULTA_FATER = 'Para visualizar esta FATER você deve ter privilégio na "Consulta de FATER".';
  SISTEMA_PRIVILEGIO_CONSULTA_UPF = 'Para visualizar esta Unidade de Produção Familiar você deve ter privilégio na "Consulta de UPF".';

implementation

end.
