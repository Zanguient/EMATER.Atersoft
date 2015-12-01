unit Emater.Cadastro.Consts;

interface

const
  CADASTRO_REPLICACAO_TABELAS_BENEFICIARIO = 'TAB_CAD_BENEFICIARIO|TAB_CAD_BENEFICIARIO_CATEGORIA|TAB_CAD_BENEFICIARIO_DIVISAO|TAB_CAD_BENEFICIARIO_DAP|TAB_CAD_FAMILIA|TAB_CAD_BENEFICIARIO_PRODUCAO|TAB_CAD_BENEFICIARIO_PROGRAMA';
  CADASTRO_REPLICACAO_TABELAS_UNIDADE = 'TAB_CAD_PRODUCAO_FAMILIAR|TAB_CAD_PRODUCAO_BEM|TAB_CAD_PRODUCAO_SEMOVENTE|TAB_CAD_PRODUCAO_ATIVIDADE|TAB_CAD_BENEFICIARIO_PRODUCAO';

resourcestring
  // Avisos:
  CADASTRO_AVISO_CNPJ_INVALIDO = 'O CNPJ informado está incorreto.';
  CADASTRO_AVISO_CPF_INVALIDO = 'O CPF informado está incorreto.';
  CADASTRO_AVISO_CPF_FAMILIA_EXISTENTE = 'O CPF informado já foi atribuído a um membro desta família.';
  CADASTRO_AVISO_CPF_PARTICIPANTE_EXISTENTE = 'O CPF informado para este participante já foi atribuído a outro participante nesta FATER.';
  CADASTRO_AVISO_CPF_BENEFICIARIO_EXISTENTE = 'CPF existente no cadastro, retorne à consulta para localizar o cadastro do Beneficiário de ATER.' + #13 + #13 + 'Nome do beneficiário: %s' + #13 + 'Escritório: %s' + #13 + 'Cadastro excluído: %s';
  CADASTRO_AVISO_UNIDADE_AREA_INCORRETA = 'O total do percentual das terras não corresponde com a área real informada. Não é possível salvar.';
  CADASTRO_AVISO_TOTAL_COMERCIALIZADO_MAIOR = 'A soma das quantidades consumida e comercializada não pode ser maior que o total produzido. Total produzido: %s. Total consumido e comercializado: %s.';
  CADASTRO_AVISO_UMA_CATEGORIA = 'O beneficiário deve possuir apenas 1 categoria. Antes de escolher uma nova categoria, remova a categoria atual.';
  CADASTRO_AVISO_NOME_INCOMPLETO = 'É necessário informar um nome para o beneficiário com no mínimo 6 letras.';
  CADASTRO_AVISO_INFORMAR_CATEGORIA_ATIVIDADE = 'O cadastro principal já foi salvo mas ainda é necessário informar a CATEGORIA e ATIVIDADE PRODUTIVA do beneficiário.';
  CADASTRO_CONFIRMAR_INCLUIR_COMERCIALIZACAO = 'Deseja incluir a comercialização desta produção?';
  CADASTRO_AVISO_IMPRIMIR_FICHA = 'Não existe nenhum cadastro de beneficiário selecionado parar visualizar e imprimir a ficha.';
  CADASTRO_AVISO_LATITUDE_LONGITUDE_INVALIDO = 'O valor informado em cada campos de latitude e longitude não pode ser maior que 60.';
  CADASTRO_AVISO_AREA_LEGAL = 'É necessário informar um valor válido para a área legal.';
  CADASTRO_AVISO_AREA_REAL = 'É necessário informar um valor válido para a área real.';
  CADASTRO_MATRICULA_FUNCIONARIO_EXISTENTE = 'Já existe um funcionário cadastrado com esta matrícula. O mesmo está lotado em %s. O registro será automaticamente carregado para atualização das informações. ';
  CADASTRO_CPF_FUNCIONARIO_EXISTENTE = 'Já existe um funcionário cadastrado com este CPF. O mesmo está lotado em %s. O registro será automaticamente carregado para atualização das informações.';
  CADASTRO_FUNCIOINARIO_TRANSFERIR = 'A lotação do funcionário %s será alterada de %s para %s. Confirma essa alteração?';


implementation

end.
