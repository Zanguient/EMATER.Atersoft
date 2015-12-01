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
  RELATORIO_AVISO_INFORMAR_PERIODO = '� necess�rio informar um per�odo com data inicial e final antes de gerar o relat�rio.';
  RELATORIO_AVISO_INFORMAR_ANO = '� necess�rio informar um per�odo com ano inicial e final antes de gerar o relat�rio.';
  RELATORIO_AVISO_INFORMAR_UNIDADE = '� necess�rio informar um escrit�rio antes de gerar o relat�rio.';
  RELATORIO_AVISO_INFORMAR_BENEFICIARIO = '� necess�rio informar um benefici�rio antes de gerar o relat�rio.';
  RELATORIO_AVISO_INFORMAR_CPF_NAO_LOCALIZADO = 'O CPF informado n�o foi localizado na base de dados.';
  RELATORIO_AVISO_INFORMAR_CPF_INVALIDO = 'O CPF informado est� incorreto.';

  RELATORIO_INFO_PERIODO = 'Per�odo de %s at� %s';
  RELATORIO_INFO_SAFRA = 'Safra %s/%s';
  RELATORIO_INFO_UNIDADE = '%s';
  RELATORIO_INFO_METODOLOGIA = 'Metodologia: %s';
  RELATORIO_INFO_COMUNIDADE = '- Comunidade: %s';
  RELATORIO_INFO_FUNCIONARIO = '- T�cnico respons�vel: %s';
  RELATORIO_INFO_ANO_QUADRIMESTRE = 'Ano: %s Quadrimestre: %s';
  RELATORIO_INFO_ANO = 'Ano: %s';

implementation

end.
