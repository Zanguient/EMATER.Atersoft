unit Emater.Log.Consts;

interface

const
  LOG_MSG_EXPORTACAO_PREPARAR = 'Deseja realmente iniciar o processo de preparação para exportação para replicação de dados?';
  LOG_MSG_EXPORTACAO_PREPARAR_SUCESSO = 'A preparação da exportação de dados ocorreu com sucesso.';
  LOG_MSG_EXPORTACAO_PREPARAR_ERRO = 'Ocorreu um erro durante o processo e a preparação para exportação não foi concluída com sucesso. Verifique o log para mais detalhes.';
  LOG_MSG_EXPORTACAO_GERAR = 'Deseja realmente gerar o arquivo da exportação atualmente selecionada?';
  LOG_MSG_EXPORTACAO_GERAR_SUCESSO = 'Arquivo gerado com sucesso.';
  LOG_MSG_EXPORTACAO_GERAR_ERRO = 'Ocorreu um erro durante o processo de geração do arquivo de exportação. Verifique o log para mais detalhes.';
  LOG_MSG_EXPORTACAO_COMPACTAR_ERRO = 'Ocorreu um erro no processo de compactação do arquivo de exportação.';

  LOF_MSG_IMPORTACAO_ERRO_PASTA = 'Não foi possível criar a pasta temporária. Verifique se a aplicação tem permissão de escrita na pasta onde está instalado.';
  LOG_MSG_IMPORTACAO_DESCOMPACTAR_ERRO = 'Ocorreu um erro no processo de descompactação do arquivo para importação.';
  LOG_MSG_IMPORTACAO_CARREGAR_SUCESSO = 'O arquivo de dados de importação da replicação foi carregado com sucesso.';
  LOG_MSG_IMPORTACAO_CARREGAR_CONFIRMAR = 'Deseja realmente carregar o arquivo de importação selecionado para a base de dados?';
  LOG_MSG_IMPORTACAO_CARREGAR_EXISTE = 'O arquivo de importação selecionado já foi carregado anteriormente.';
  LOG_MSG_IMPORTACAO_CONFIMAR = 'Deseja realmente iniciar o processo de importação do registro atualmente selecionado?';
  LOG_MSG_IMPORTACAO_ERRO = 'O processo de importação não foi realizado com sucesso, ocorreu algum erro na execução das transações. Nenhuma atualização foi aplicada. Entre em contato com a equipe de suporte técnico e informe este problema.';
  LOG_MSG_IMPORTACAO_SUCESSO_TOTAL = 'O processo de importação ocorreu com sucesso.';

  LOG_MSG_REPLICACAO_PENDENTE = 'Migração pendente';
  LOG_MSG_REPLICACAO_REALIZADA = 'Registro atualizado';
implementation

end.
