unit Emater.Base.Consts;

interface

const
  // Valores para configuração de pesquisa (FrmPesquisa/FrmPesquisaRapida):
  BASE_CONFIG_USAR_AGRUPAMENTO = 'Agrupamento';
  BASE_CONFIG_USAR_RODAPE = 'Rodape';
  BASE_CONFIG_CAMPOS_AGRUPAMENTO = 'Campos';
  BASE_CONFIG_PADRAO_UF = 'UF';
  BASE_CONFIG_PADRAO_CIDADE = 'Cidade';

resourcestring
  // Mensagens na pesquisa de dados:
  BASE_MSG_BUSCA_CARREGAR_TUDO = 'Deseja realmente carregar todos os registros? Este processo pode demorar alguns segundos.';
  BASE_MSG_BUSCA_NADA_ENCONTRADO = 'Nenhum registro foi encontrado com os parâmetros informados nesta pesquisa.';
  BASE_MSG_BUSCA_NADA_SELECIONADO = 'Não existe nenhum registro selecionado.';

  // Confirmações:
  BASE_MSG_CONFIRMAR_EXCLUIR = 'Deseja realmente excluir o registro atualmente selecionado?';
  BASE_MSG_CONFIRMAR_EXCLUIR_TUDO = 'Deseja realmente excluir todos os registros?';
  BASE_MSG_CONFIRMAR_CANCELAMENTO = 'Deseja realmente cancelar as alterações realizadas no registro?';
  BASE_MSG_CONFIRMAR_VALOR_PESQUISA_RAPIDA = 'O registro atual não está sendo editado. Deseja alterar o valor do campo com a informação selecionada?';
  BASE_MSG_CONFIRMAR_LIMPAR_CONSULTA = 'Deseja realmente limpar o resultado atual e iniciar uma nova consulta?';

  // Erros:
  BASE_MSG_ERRO_EXCLUIR = 'Não foi possível realizar a exclusão. O registro pode estar sendo utilizado.';
  BASE_MSG_ERRO_SALVAR = 'Ocorreu um erro ao tentar salvar o registro no banco de dados. Verifique se os dados estão preenchidos corretamente.';
  BASE_MSG_ERRO_NENHUM_REGISTRO = 'Esta operação não pode ser realizada porque não existe nenhum registro disponível.';

  // Avisos:
  BASE_MSG_AVISO_SALVAR_PRIMEIRO = 'Não existe nenhum registro ou é necessário salvar as alterações realizadas no registro atual antes de continuar.';
  BASE_MSG_AVISO_REGISTRO_DUPLICADO = 'O registro que você está tentando inserir já foi inserido anteriormente.';

  // Informações:
  BASE_MSG_INFORMACAO_SALVAR = 'O registro foi salvo com sucesso.';
  BASE_MSG_INFORMACAO_EXCLUIR = 'O registro foi excluído com sucesso.';

implementation

end.
