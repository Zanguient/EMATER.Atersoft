unit Emater.Cadastro.Consts;

interface

const
  CADASTRO_REPLICACAO_TABELAS_BENEFICIARIO = 'TAB_CAD_BENEFICIARIO|TAB_CAD_BENEFICIARIO_CATEGORIA|TAB_CAD_BENEFICIARIO_DIVISAO|TAB_CAD_BENEFICIARIO_DAP|TAB_CAD_FAMILIA|TAB_CAD_BENEFICIARIO_PRODUCAO|TAB_CAD_BENEFICIARIO_PROGRAMA';
  CADASTRO_REPLICACAO_TABELAS_UNIDADE = 'TAB_CAD_PRODUCAO_FAMILIAR|TAB_CAD_PRODUCAO_BEM|TAB_CAD_PRODUCAO_SEMOVENTE|TAB_CAD_PRODUCAO_ATIVIDADE|TAB_CAD_BENEFICIARIO_PRODUCAO';

resourcestring
  // Avisos:
  CADASTRO_AVISO_CNPJ_INVALIDO = 'O CNPJ informado est� incorreto.';
  CADASTRO_AVISO_CPF_INVALIDO = 'O CPF informado est� incorreto.';
  CADASTRO_AVISO_CPF_FAMILIA_EXISTENTE = 'O CPF informado j� foi atribu�do a um membro desta fam�lia.';
  CADASTRO_AVISO_CPF_PARTICIPANTE_EXISTENTE = 'O CPF informado para este participante j� foi atribu�do a outro participante nesta FATER.';
  CADASTRO_AVISO_CPF_BENEFICIARIO_EXISTENTE = 'CPF existente no cadastro, retorne � consulta para localizar o cadastro do Benefici�rio de ATER.' + #13 + #13 + 'Nome do benefici�rio: %s' + #13 + 'Escrit�rio: %s' + #13 + 'Cadastro exclu�do: %s';
  CADASTRO_AVISO_UNIDADE_AREA_INCORRETA = 'O total do percentual das terras n�o corresponde com a �rea real informada. N�o � poss�vel salvar.';
  CADASTRO_AVISO_TOTAL_COMERCIALIZADO_MAIOR = 'A soma das quantidades consumida e comercializada n�o pode ser maior que o total produzido. Total produzido: %s. Total consumido e comercializado: %s.';
  CADASTRO_AVISO_UMA_CATEGORIA = 'O benefici�rio deve possuir apenas 1 categoria. Antes de escolher uma nova categoria, remova a categoria atual.';
  CADASTRO_AVISO_NOME_INCOMPLETO = '� necess�rio informar um nome para o benefici�rio com no m�nimo 6 letras.';
  CADASTRO_AVISO_INFORMAR_CATEGORIA_ATIVIDADE = 'O cadastro principal j� foi salvo mas ainda � necess�rio informar a CATEGORIA e ATIVIDADE PRODUTIVA do benefici�rio.';
  CADASTRO_CONFIRMAR_INCLUIR_COMERCIALIZACAO = 'Deseja incluir a comercializa��o desta produ��o?';
  CADASTRO_AVISO_IMPRIMIR_FICHA = 'N�o existe nenhum cadastro de benefici�rio selecionado parar visualizar e imprimir a ficha.';
  CADASTRO_AVISO_LATITUDE_LONGITUDE_INVALIDO = 'O valor informado em cada campos de latitude e longitude n�o pode ser maior que 60.';
  CADASTRO_AVISO_AREA_LEGAL = '� necess�rio informar um valor v�lido para a �rea legal.';
  CADASTRO_AVISO_AREA_REAL = '� necess�rio informar um valor v�lido para a �rea real.';
  CADASTRO_MATRICULA_FUNCIONARIO_EXISTENTE = 'J� existe um funcion�rio cadastrado com esta matr�cula. O mesmo est� lotado em %s. O registro ser� automaticamente carregado para atualiza��o das informa��es. ';
  CADASTRO_CPF_FUNCIONARIO_EXISTENTE = 'J� existe um funcion�rio cadastrado com este CPF. O mesmo est� lotado em %s. O registro ser� automaticamente carregado para atualiza��o das informa��es.';
  CADASTRO_FUNCIOINARIO_TRANSFERIR = 'A lota��o do funcion�rio %s ser� alterada de %s para %s. Confirma essa altera��o?';


implementation

end.
