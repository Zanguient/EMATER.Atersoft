unit Emater.Base.Consts;

interface

const
  // Valores para configura��o de pesquisa (FrmPesquisa/FrmPesquisaRapida):
  BASE_CONFIG_USAR_AGRUPAMENTO = 'Agrupamento';
  BASE_CONFIG_USAR_RODAPE = 'Rodape';
  BASE_CONFIG_CAMPOS_AGRUPAMENTO = 'Campos';
  BASE_CONFIG_PADRAO_UF = 'UF';
  BASE_CONFIG_PADRAO_CIDADE = 'Cidade';

resourcestring
  // Mensagens na pesquisa de dados:
  BASE_MSG_BUSCA_CARREGAR_TUDO = 'Deseja realmente carregar todos os registros? Este processo pode demorar alguns segundos.';
  BASE_MSG_BUSCA_NADA_ENCONTRADO = 'Nenhum registro foi encontrado com os par�metros informados nesta pesquisa.';
  BASE_MSG_BUSCA_NADA_SELECIONADO = 'N�o existe nenhum registro selecionado.';

  // Confirma��es:
  BASE_MSG_CONFIRMAR_EXCLUIR = 'Deseja realmente excluir o registro atualmente selecionado?';
  BASE_MSG_CONFIRMAR_EXCLUIR_TUDO = 'Deseja realmente excluir todos os registros?';
  BASE_MSG_CONFIRMAR_CANCELAMENTO = 'Deseja realmente cancelar as altera��es realizadas no registro?';
  BASE_MSG_CONFIRMAR_VALOR_PESQUISA_RAPIDA = 'O registro atual n�o est� sendo editado. Deseja alterar o valor do campo com a informa��o selecionada?';
  BASE_MSG_CONFIRMAR_LIMPAR_CONSULTA = 'Deseja realmente limpar o resultado atual e iniciar uma nova consulta?';

  // Erros:
  BASE_MSG_ERRO_EXCLUIR = 'N�o foi poss�vel realizar a exclus�o. O registro pode estar sendo utilizado.';
  BASE_MSG_ERRO_SALVAR = 'Ocorreu um erro ao tentar salvar o registro no banco de dados. Verifique se os dados est�o preenchidos corretamente.';
  BASE_MSG_ERRO_NENHUM_REGISTRO = 'Esta opera��o n�o pode ser realizada porque n�o existe nenhum registro dispon�vel.';

  // Avisos:
  BASE_MSG_AVISO_SALVAR_PRIMEIRO = 'N�o existe nenhum registro ou � necess�rio salvar as altera��es realizadas no registro atual antes de continuar.';
  BASE_MSG_AVISO_REGISTRO_DUPLICADO = 'O registro que voc� est� tentando inserir j� foi inserido anteriormente.';

  // Informa��es:
  BASE_MSG_INFORMACAO_SALVAR = 'O registro foi salvo com sucesso.';
  BASE_MSG_INFORMACAO_EXCLUIR = 'O registro foi exclu�do com sucesso.';

implementation

end.
