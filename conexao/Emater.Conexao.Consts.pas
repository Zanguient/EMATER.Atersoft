unit Emater.Conexao.Consts;

interface

const
  // Mensagens:
  CONEXAO_MSG_ERRO_CHAVE_ESTRANGEIRA = 'Ocorreu uma viola��o da integridade referencial de "%s". A opera��o n�o foi conclu�da.';
  CONEXAO_MSG_ERRO_CHAVE_UNICA = 'Voc� tentou inserir uma informa��o repetida. Ocorreu uma viola��o de chave �nica no seguinte atributo: %s';
  CONEXAO_MSG_ERRO_CONEXAO = 'Ocorreu um erro de conex�o com o servidor. Verifique os par�metros e tente novamente.';
  CONEXAO_MSG_CONEXAO_RESTAURADA = 'Conex�o com o banco de dados restaurada com sucesso.';
  CONEXAO_MSG_USUARIO_INVALIDO = 'N�o foi poss�vel acessar o sistema com este nome de usu�rio e senha. Verifique se o usu�rio e a senha est�o corretos.';
  CONEXAO_MSG_USUARIO_INATIVO = 'Procure o administrador do sistema e informe que o seu usu�rio n�o est� ativo. Acesso n�o permitido.';
  CONEXAO_MSG_PERFIL_INATIVO = 'Procure o administrador do sistema e informe que o seu perfil n�o est� ativo. Acesso n�o permitido.';
  CONEXAO_MSG_ERRO_ALTERAR_SENHA = 'N�o foi poss�vel aplicar a nova senha no banco de dados.';
  CONEXAO_MSG_SENHA_EXPIRADA = 'A senha do usu�rio expirou. Para acessar o sistema � necess�rio alterar a senha antes.';
  CONEXAO_MSG_SENHA_EXPIRADA_ACESSO_NEGADO = 'A senha expirada n�o foi alterada. O acesso n�o ser� permitido.';
  CONEXAO_MSG_SENHA_SISTEMA_ERRO_1 = 'O seu nome de usu�rio e senha n�o est�o definidos. Pergunte ao seu administrador de banco de dados para criar um login Firebird.';
  CONEXAO_MSG_SENHA_SISTEMA_ERRO_2 = 'Execu��o mal-sucedida causada por um erro de sistema que impede a execu��o bem-sucedida de declara��es posteriores.';

  // Legendas:
  CONEXAO_LEGENDA_AVISO = 'Aviso';
  CONEXAO_LEGENDA_ERRO = 'Erro';
  CONEXAO_LEGENDA_INFORMACAO = 'Informa��oo';
  CONEXAO_LEGENDA_CONFIRMACAO = 'Confirma��o';

implementation

end.
