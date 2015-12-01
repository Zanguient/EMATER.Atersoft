unit Emater.Conexao.Consts;

interface

const
  // Mensagens:
  CONEXAO_MSG_ERRO_CHAVE_ESTRANGEIRA = 'Ocorreu uma violação da integridade referencial de "%s". A operação não foi concluída.';
  CONEXAO_MSG_ERRO_CHAVE_UNICA = 'Você tentou inserir uma informação repetida. Ocorreu uma violação de chave única no seguinte atributo: %s';
  CONEXAO_MSG_ERRO_CONEXAO = 'Ocorreu um erro de conexão com o servidor. Verifique os parâmetros e tente novamente.';
  CONEXAO_MSG_CONEXAO_RESTAURADA = 'Conexão com o banco de dados restaurada com sucesso.';
  CONEXAO_MSG_USUARIO_INVALIDO = 'Não foi possível acessar o sistema com este nome de usuário e senha. Verifique se o usuário e a senha estão corretos.';
  CONEXAO_MSG_USUARIO_INATIVO = 'Procure o administrador do sistema e informe que o seu usuário não está ativo. Acesso não permitido.';
  CONEXAO_MSG_PERFIL_INATIVO = 'Procure o administrador do sistema e informe que o seu perfil não está ativo. Acesso não permitido.';
  CONEXAO_MSG_ERRO_ALTERAR_SENHA = 'Não foi possível aplicar a nova senha no banco de dados.';
  CONEXAO_MSG_SENHA_EXPIRADA = 'A senha do usuário expirou. Para acessar o sistema é necessário alterar a senha antes.';
  CONEXAO_MSG_SENHA_EXPIRADA_ACESSO_NEGADO = 'A senha expirada não foi alterada. O acesso não será permitido.';
  CONEXAO_MSG_SENHA_SISTEMA_ERRO_1 = 'O seu nome de usuário e senha não estão definidos. Pergunte ao seu administrador de banco de dados para criar um login Firebird.';
  CONEXAO_MSG_SENHA_SISTEMA_ERRO_2 = 'Execução mal-sucedida causada por um erro de sistema que impede a execução bem-sucedida de declarações posteriores.';

  // Legendas:
  CONEXAO_LEGENDA_AVISO = 'Aviso';
  CONEXAO_LEGENDA_ERRO = 'Erro';
  CONEXAO_LEGENDA_INFORMACAO = 'Informaçãoo';
  CONEXAO_LEGENDA_CONFIRMACAO = 'Confirmação';

implementation

end.
