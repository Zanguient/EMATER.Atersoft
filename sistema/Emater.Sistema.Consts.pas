unit Emater.Sistema.Consts;

interface

const
  SISTEMA_MODULO_ID = 1;

  SISTEMA_DB_ERRO_IDENTIFICADOR = 'N�o foi poss�vel gerar um identificador para este registro.';
  SISTEMA_DB_ERRO_SEM_UNIDADE_LOCAL = 'N�o foi configurado um escrit�rio regional ou local onde este sistema est� executando.';
  SISTEMA_DB_ERRO_SEM_BACKUP_DIRETORIO = 'N�o foi configurado um diret�rio local para os arquivos de backup do banco de dados.';
  SISTEMA_DB_ERRO_SALVAR_BACKUP_DIRETORIO = 'N�o foi poss�vel salvar o diret�rio local para os arquivos de backup do banco de dados.';
  SISTEMA_BD_BACKUP_SUCESSO = 'O processo de backup do banco de dados foi conclu�do com sucesso. O arquivo "%s" foi gerado na pasta "%s".';
  SISTEMA_BD_BACKUP_ERRO = 'Ocorreu um erro durante o processo de backup. Descri��o do erro: %s';
  SISTEMA_BD_BACKUP_FECHAR = 'N�o � permitido fechar a janela at� que o processo de backup em andamento seja finalizado.';
  SISTEMA_BD_RESTORE_SUCESSO = 'O processo de restaura��o do banco de dados foi conclu�do com sucesso.';
  SISTEMA_BD_RESTORE_ERRO = 'Ocorreu um erro durante o processo de restaura��o. Descri��o do erro: %s';
  SISTEMA_BD_RESTORE_FECHAR = 'N�o � permitido fechar a janela at� que o processo de restaura��o em andamento seja finalizado.';
  SISTEMA_BD_RESTORE_ARQUIVO = '� necess�rio informar um arquivo de backup existente para que a restaura��o seja realizada.';
  SISTEMA_BD_RESTORE_CONFIRMAR = 'Aten��o! A base de dados atual ser� substitu�da neste processo de restaura��o. Deseja realmente continuar?';

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
  SISTEMA_CONST_OPERACAO_INCLUSAO = 'Inclus�o';
  SISTEMA_CONST_OPERACAO_ALTERACAO = 'Altera��o';
  SISTEMA_CONST_OPERACAO_EXCLUSAO = 'Exclus�o';
  SISTEMA_CONST_VERSAO = 'Vers�o ';
  SISTEMA_CONST_BLOQUEADO = ' (bloqueado)';
  SISTEMA_CONST_USUARIO_ADMINISTRADOR = 'SYSDBA';
  SISTEMA_CONST_VALIDACAO = 'Valida��o de usu�rio administrador';
  SISTEMA_CONST_MAIS = '&Par�metros';
  SISTEMA_CONST_MENOS = 'Voltar para &login';
  SISTEMA_CONST_MAIS_DICA = 'Configurar par�metros da conex�o com o banco de dados';
  SISTEMA_CONST_MENOS_DICA = 'Voltar para realizar o login do usu�rio';

  SISTEMA_PERFIL_ADMINISTRADOR = 100000001;
  SISTEMA_PERFIL_CHEFIA = 100000002;
  SISTEMA_PERFIL_TECNICO = 100000003;
  SISTEMA_PERFIL_USUARIO = 100000004;

resourcestring
  SISTEMA_MSG_USUARIO_SENHA_REQUERIDO = '� necess�rio informar o nome de usu�rio e senha para acessar o sistema.';
  SISTEMA_MSG_USUARIO_INVALIDO = 'N�o foi poss�vel acessar o sistema com este nome de usu�rio e senha. Verifique as permiss�es de acesso.';
  SISTEMA_MSG_USUARIO_SENHA_PADRAO = 'A senha criada para o usu�rio deve ser alterada no pr�ximo acesso (senha expirada).' + #13#13 + 'Senha: 123';
  SISTEMA_MSG_TERMINAR_APLICACAO = 'Deseja realmente finalizar o sistema?';

  SISTEMA_MSG_INSERIDA = 'Informa��o inserida:';
  SISTEMA_MSG_ATUALIZACAO_NOVA = 'Informa��o nova:';
  SISTEMA_MSG_ATUALIZACAO_ANTIGA = 'Informa��o anterior:';
  SISTEMA_MSG_EXCLUIDA = 'Informa��o exclu�da:';
  SISTEMA_MSG_SENHA_ATUAL = 'A senha atual n�o est� correta.';
  SISTEMA_MSG_SENHA_NOVA = 'A nova senha informada n�o est� correta. Verifique se voc� digitou uma senha v�lida e se � igual a senha de confirma��o. � necess�rio que a nova senha seja diferente da anterior.';
  SISTEMA_MSG_SENHA_ALTERADA = 'A sua senha foi alterada com sucesso.';
  SISTEMA_MSG_SENHA_CONFIRMACAO = 'A senha informada n�o corresponde com a sua confirma��o. Verifique tamb�m se a senha n�o est� em branco e tente novamente.';

  SISTEMA_MSG_ERRO_CONCEDER = 'Voc� n�o possui privil�gio de administra��o para conceder permiss�es no m�dulo selecionado.';
  SISTEMA_MSG_ERRO_REVOGAR = 'Voc� n�o possui privil�gio de administra��o para revogar permiss�es no m�dulo selecionado ou as permiss�es do usu�rio n�o foram concedidas por voc�.';

  SISTEMA_MSG_CONCEDER_TUDO = 'Deseja realmente conceder todas as permiss�es de acesso para o perfil/usu�rio selecionado?';
  SISTEMA_MSG_REVOGAR_TUDO = 'Deseja revogar todas as permiss�es de acesso concedidas para o perfil/usu�rio selecionado?';
  SISTEMA_MSG_REVOGAR_HORIZONTAL = 'Deseja revogar as permiss�es concedidas �s opera��es do m�dulo selecionado?';
  SISTEMA_MSG_REVOGAR_VERTICAL = 'Deseja revogar as permiss�es concedidas � opera��o selecionada de todos m�dulos?';

  SISTEMA_MSG_PERFIL_CRIAR = 'Ocorreu um erro interno e n�o foi poss�vel criar o perfil. Verifique seus privil�gios.';
  SISTEMA_MSG_PERFIL_REMOVER = 'Ocorreu um erro interno e n�o foi poss�vel remover o perfil. Verifique seus privil�gios.';

  SISTEMA_PRIVILEGIO_CONSULTA_BENEFICIARIO = 'Para visualizar este cadastro voc� deve ter privil�gio na "Consulta de Benefici�rio".';
  SISTEMA_PRIVILEGIO_CONSULTA_FATER = 'Para visualizar esta FATER voc� deve ter privil�gio na "Consulta de FATER".';
  SISTEMA_PRIVILEGIO_CONSULTA_UPF = 'Para visualizar esta Unidade de Produ��o Familiar voc� deve ter privil�gio na "Consulta de UPF".';

implementation

end.
