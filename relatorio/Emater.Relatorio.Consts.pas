unit Emater.Relatorio.Consts;

interface

const
  RELATORIO_CONST_FILTRO_PERIODO = 'filtro_periodo';
  RELATORIO_CONST_FILTRO_UNIDADE = 'filtro_unidade';
  RELATORIO_CONST_FILTRO_FUNCIONARIO = 'filtro_funcionario';
  RELATORIO_CONST_FILTRO_ANO_QUADRIMESTRE = 'filtro_ano_quadrimestre';
  RELATORIO_CONST_FILTRO_ANO = 'filtro_ano';
  RELATORIO_CONST_FILTRO_METODOLOGIA = 'filtro_metodologia';
  RELATORIO_CONST_FILTRO_COMUNIDADE = 'filtro_comunidade';
  RELATORIO_CONST_FILTRO_ATRIBUTOS = 'filtro_atributos';

resourcestring
  RELATORIO_AVISO_INFORMAR_PERIODO = 'É necessário informar um período com data inicial e final antes de gerar o relatório.';
  RELATORIO_AVISO_INFORMAR_ANO = 'É necessário informar um período com ano inicial e final antes de gerar o relatório.';
  RELATORIO_AVISO_INFORMAR_UNIDADE = 'É necessário informar um escritório antes de gerar o relatório.';
  RELATORIO_AVISO_INFORMAR_BENEFICIARIO = 'É necessário informar um beneficiário antes de gerar o relatório.';
  RELATORIO_AVISO_INFORMAR_CPF_NAO_LOCALIZADO = 'O CPF informado não foi localizado na base de dados.';
  RELATORIO_AVISO_INFORMAR_CPF_INVALIDO = 'O CPF informado está incorreto.';

  RELATORIO_INFO_PERIODO = 'Período de %s até %s';
  RELATORIO_INFO_SAFRA = 'Safra %s/%s';
  RELATORIO_INFO_UNIDADE = '%s';
  RELATORIO_INFO_METODOLOGIA = 'Metodologia: %s';
  RELATORIO_INFO_COMUNIDADE = '- Comunidade: %s';
  RELATORIO_INFO_FUNCIONARIO = '- Técnico responsável: %s';
  RELATORIO_INFO_ANO_QUADRIMESTRE = 'Ano: %s Quadrimestre: %s';
  RELATORIO_INFO_ANO = 'Ano: %s';

implementation

end.
