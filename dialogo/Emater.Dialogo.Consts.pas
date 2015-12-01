unit Emater.Dialogo.Consts;

interface

const

  // ====================================================
  // Valores para configuração (FrmGraficoConfiguracao):
  // ====================================================
  DIALOGO_CONFIG_GRAFICO_CABECALHO = 'GraficoTitulo';
  DIALOGO_CONFIG_GRAFICO_RODAPE = 'GraficoRodape';
  DIALOGO_CONFIG_GRAFICO_MARCAS = 'GraficoMarcas';
  DIALOGO_CONFIG_GRAFICO_COR = 'GraficoCor';
  DIALOGO_CONFIG_GRAFICO_LEGENDA = 'GraficoLegenda';

  // ====================================================
  // Constantes de máscaras:
  // ====================================================
  DIALOGO_MASCARA_CPF = '!999.999.999\-99;0; ';
  DIALOGO_MASCARA_CNPJ = '!99.999.999/9999\-99;0; ';
  DIALOGO_MASCARA_CEP = '!99.999-999;0; ';
  DIALOGO_MASCARA_DATA_HORA = 'dd/mm/yyyy hh:nn:ss';
  DIALOGO_MASCARA_EXTENSAO = ';1; ';

  // ====================================================
  //Constantes de arquivo:
  // ====================================================
  DIALOGO_FILTRO_JPG = 'Imagens JPEG (*.jpg;*.jpeg)|*.jpg;*.jpeg';

  // ====================================================
  // Valores para configuração (FrmImprimirConfiguracao):
  // ====================================================
  DIALOGO_CONFIG_IMPRESSAO_CABECALHO = 'ImprimirCabecalho';
  DIALOGO_CONFIG_IMPRESSAO_LOGO = 'ImprimirLogotipo';
  DIALOGO_CONFIG_IMPRESSAO_EMPRESA = 'ImprimirEmpresa';
  DIALOGO_CONFIG_IMPRESSAO_BORDA = 'ImprimirBorda';
  DIALOGO_CONFIG_IMPRESSAO_RODAPE = 'ImprimirRodape';
  DIALOGO_CONFIG_IMPRESSAO_ZEBRA = 'ImprimirZebra';
  DIALOGO_CONFIG_IMPRESSAO_TAMANHO = 'ImprimirTamanho';
  DIALOGO_CONFIG_IMPRESSAO_COR_FONTE = 'ImprimirCorLetra';
  DIALOGO_CONFIG_IMPRESSAO_COR_FUNDO = 'ImprimirCorFundo';

  // ====================================================
  // Constantes de nome de variáveis do relatório:
  // ====================================================
  DIALOGO_VAR_ZEBRA = 'Zebra';
  DIALOGO_VAR_RELATORIO_NOME = 'ReportName';

  // ====================================================
  // Valores de atributos do papel de parede:
  // ====================================================
  DIALOGO_PAPEL_PAREDE_POSICAO_CENTRO = 0;
  DIALOGO_PAPEL_PAREDE_POSICAO_PREENCHER = 1;
  DIALOGO_PAPEL_PAREDE_ARQUIVO = 'background.jpg';

  // ====================================================
  // Valores para configuração de ambiente:
  // ====================================================
  DIALOGO_CONFIG_IMAGEM_PAPEL_PAREDE = 'ImagemPapelParede';
  DIALOGO_CONFIG_USAR_PAPEL_PAREDE = 'UsarPapelParede';
  DIALOGO_CONFIG_POSICAO_PAPEL_PAREDE = 'PosicaoPapelParede';
  DIALOGO_CONFIG_USAR_BLOQUEIO_AUTOMATICO = 'UsarBloqueioAutomatico';
  DIALOGO_CONFIG_MINUTOS_BLOQUEIO_AUTOMATICO = 'MinutosBloqueioAutomatico';
  DIALOGO_CONFIG_USAR_COR_FUNDO = 'UsarCorFundo';
  DIALOGO_CONFIG_COR_FUNDO = 'CorFundo';

resourcestring
  // ====================================================
  // Mensagens:
  // ====================================================
  DIALOGO_MSG_NENHUMA_IMAGEM = 'Não existe nenhuma imagem para ser limpa.';
  DIALOGO_MSG_CONFIRMAR_LIMPAR_IMAGEM = 'Deseja realmente limpar a imagem selecionada?';
  DIALOGO_MSG_NADA_PARA_IMPRIMIR = 'Nenhum dado para imprimir ou o registro está sendo editado. A impressão não pode ser realizada.';

implementation

end.
