unit Emater.Log.Consts;

interface

const
  LOG_MSG_EXPORTACAO_PREPARAR = 'Deseja realmente iniciar o processo de prepara��o para exporta��o para replica��o de dados?';
  LOG_MSG_EXPORTACAO_PREPARAR_SUCESSO = 'A prepara��o da exporta��o de dados ocorreu com sucesso.';
  LOG_MSG_EXPORTACAO_PREPARAR_ERRO = 'Ocorreu um erro durante o processo e a prepara��o para exporta��o n�o foi conclu�da com sucesso. Verifique o log para mais detalhes.';
  LOG_MSG_EXPORTACAO_GERAR = 'Deseja realmente gerar o arquivo da exporta��o atualmente selecionada?';
  LOG_MSG_EXPORTACAO_GERAR_SUCESSO = 'Arquivo gerado com sucesso.';
  LOG_MSG_EXPORTACAO_GERAR_ERRO = 'Ocorreu um erro durante o processo de gera��o do arquivo de exporta��o. Verifique o log para mais detalhes.';
  LOG_MSG_EXPORTACAO_COMPACTAR_ERRO = 'Ocorreu um erro no processo de compacta��o do arquivo de exporta��o.';

  LOF_MSG_IMPORTACAO_ERRO_PASTA = 'N�o foi poss�vel criar a pasta tempor�ria. Verifique se a aplica��o tem permiss�o de escrita na pasta onde est� instalado.';
  LOG_MSG_IMPORTACAO_DESCOMPACTAR_ERRO = 'Ocorreu um erro no processo de descompacta��o do arquivo para importa��o.';
  LOG_MSG_IMPORTACAO_CARREGAR_SUCESSO = 'O arquivo de dados de importa��o da replica��o foi carregado com sucesso.';
  LOG_MSG_IMPORTACAO_CARREGAR_CONFIRMAR = 'Deseja realmente carregar o arquivo de importa��o selecionado para a base de dados?';
  LOG_MSG_IMPORTACAO_CARREGAR_EXISTE = 'O arquivo de importa��o selecionado j� foi carregado anteriormente.';
  LOG_MSG_IMPORTACAO_CONFIMAR = 'Deseja realmente iniciar o processo de importa��o do registro atualmente selecionado?';
  LOG_MSG_IMPORTACAO_ERRO = 'O processo de importa��o n�o foi realizado com sucesso, ocorreu algum erro na execu��o das transa��es. Nenhuma atualiza��o foi aplicada. Entre em contato com a equipe de suporte t�cnico e informe este problema.';
  LOG_MSG_IMPORTACAO_SUCESSO_TOTAL = 'O processo de importa��o ocorreu com sucesso.';

  LOG_MSG_REPLICACAO_PENDENTE = 'Migra��o pendente';
  LOG_MSG_REPLICACAO_REALIZADA = 'Registro atualizado';
implementation

end.
