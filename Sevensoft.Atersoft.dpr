program Sevensoft.Atersoft;

uses
  Vcl.Forms,
  Vcl.Controls,
  System.SysUtils,
  Emater.Sistema.Principal in 'sistema\Emater.Sistema.Principal.pas' {FrmSistemaPrincipal},
  Emater.Classe.Mensagem in 'classe\Emater.Classe.Mensagem.pas',
  Emater.Classe.Cadeia in 'classe\Emater.Classe.Cadeia.pas',
  Emater.Classe.Consts in 'classe\Emater.Classe.Consts.pas',
  Emater.Base.Basico in 'base\Emater.Base.Basico.pas' {FrmBaseBasico},
  Emater.Base.Filha in 'base\Emater.Base.Filha.pas' {FrmBaseFilha},
  Emater.Base.Tabela in 'base\Emater.Base.Tabela.pas' {FrmBaseTabela},
  Emater.Base.Consulta in 'base\Emater.Base.Consulta.pas' {FrmBaseConsulta},
  Emater.Base.Busca in 'base\Emater.Base.Busca.pas' {FrmBaseBusca},
  Emater.Base.Dialogo in 'base\Emater.Base.Dialogo.pas' {FrmBaseDialogo},
  Emater.Recurso.Consts in 'recurso\Emater.Recurso.Consts.pas',
  Emater.Base.Consts in 'base\Emater.Base.Consts.pas',
  Emater.Dialogo.Modulo in 'dialogo\Emater.Dialogo.Modulo.pas' {DtmDialogoModulo: TDataModule},
  Emater.Dialogo.Pendencia in 'dialogo\Emater.Dialogo.Pendencia.pas' {FrmDialogoPendencia},
  Emater.Recurso.Modulo in 'recurso\Emater.Recurso.Modulo.pas' {DtmRecursoModulo: TDataModule},
  Emater.Classe.Arquivo in 'classe\Emater.Classe.Arquivo.pas',
  Emater.Dialogo.Consts in 'dialogo\Emater.Dialogo.Consts.pas',
  Emater.Cadastro.Beneficiario in 'cadastro\Emater.Cadastro.Beneficiario.pas' {FrmCadastroBeneficiario},
  Emater.Conexao.Consts in 'conexao\Emater.Conexao.Consts.pas',
  Emater.Conexao.Restaurar in 'conexao\Emater.Conexao.Restaurar.pas' {FrmConexaoRestaurar},
  Emater.Conexao.Aguardar in 'conexao\Emater.Conexao.Aguardar.pas' {FrmConexaoAguardar},
  Emater.Conexao.Modulo in 'conexao\Emater.Conexao.Modulo.pas' {DtmConexaoModulo: TDataModule},
  Emater.Cadastro.Modulo in 'cadastro\Emater.Cadastro.Modulo.pas' {DtmCadastroModulo: TDataModule},
  Emater.Cadastro.Comunidade in 'cadastro\Emater.Cadastro.Comunidade.pas' {FrmCadastroComunidade},
  Emater.Dne.Modulo in 'dne\Emater.Dne.Modulo.pas' {DtmDneModulo: TDataModule},
  Emater.Sistema.Modulo in 'sistema\Emater.Sistema.Modulo.pas' {DtmSistemaModulo: TDataModule},
  Emater.Sistema.Consts in 'sistema\Emater.Sistema.Consts.pas',
  Emater.Cadastro.Organizacao in 'cadastro\Emater.Cadastro.Organizacao.pas' {FrmCadastroOrganizacao},
  Emater.Produtividade.Fater in 'produtividade\Emater.Produtividade.Fater.pas' {FrmProdutividadeFater},
  Emater.Cadastro.Consts in 'cadastro\Emater.Cadastro.Consts.pas',
  Emater.Cadastro.Beneficiario.Consulta in 'cadastro\Emater.Cadastro.Beneficiario.Consulta.pas' {FrmCadastroBeneficiarioConsulta},
  Emater.Cadastro.Unidade in 'cadastro\Emater.Cadastro.Unidade.pas' {FrmCadastroUnidade},
  Emater.Pessoal.Modulo in 'pessoal\Emater.Pessoal.Modulo.pas' {DtmPessoalModulo: TDataModule},
  Emater.Cadastro.Unidade.Consulta in 'cadastro\Emater.Cadastro.Unidade.Consulta.pas' {FrmCadastroUnidadeConsulta},
  Emater.Cadastro.Unidade.Busca in 'cadastro\Emater.Cadastro.Unidade.Busca.pas' {FrmCadastroUnidadeBusca},
  Emater.Cadastro.Organizacao.Consulta in 'cadastro\Emater.Cadastro.Organizacao.Consulta.pas' {FrmCadastroOrganizacaoConsulta},
  Emater.Cadastro.Unidade.Atividade in 'cadastro\Emater.Cadastro.Unidade.Atividade.pas' {FrmCadastroUnidadeAtividade},
  Emater.Sistema.Login in 'sistema\Emater.Sistema.Login.pas' {FrmSistemaLogin},
  Emater.Sistema.Abertura in 'sistema\Emater.Sistema.Abertura.pas' {FrmSistemaAbertura},
  Emater.Cadastro.Unidade.Comercio in 'cadastro\Emater.Cadastro.Unidade.Comercio.pas' {FrmCadastroUnidadeComercio},
  Emater.Cadastro.Beneficiario.Busca in 'cadastro\Emater.Cadastro.Beneficiario.Busca.pas' {FrmCadastroBeneficiarioBusca},
  Emater.Produtividade.Modulo in 'produtividade\Emater.Produtividade.Modulo.pas' {DtmProdutividadeModulo: TDataModule},
  Emater.Produtividade.Fater.Participante in 'produtividade\Emater.Produtividade.Fater.Participante.pas' {FrmProdutividadeFaterParticipante},
  Emater.Cadastro.Comunidade.Busca in 'cadastro\Emater.Cadastro.Comunidade.Busca.pas' {FrmCadastroComunidadeBusca},
  Emater.Cadastro.Organizacao.Busca in 'cadastro\Emater.Cadastro.Organizacao.Busca.pas' {FrmCadastroOrganizacaoBusca},
  Emater.Produtividade.Fater.Consulta in 'produtividade\Emater.Produtividade.Fater.Consulta.pas' {FrmProdutividadeFaterConsulta},
  Emater.Pessoal.Funcionario in 'pessoal\Emater.Pessoal.Funcionario.pas' {FrmPessoalFuncionario},
  Emater.Pessoal.Funcionario.Consulta in 'pessoal\Emater.Pessoal.Funcionario.Consulta.pas' {FrmPessoalFuncionarioConsulta},
  Emater.Pessoal.Funcionario.Busca in 'pessoal\Emater.Pessoal.Funcionario.Busca.pas' {FrmPessoalFuncionarioBusca},
  Emater.Sistema.Usuario in 'sistema\Emater.Sistema.Usuario.pas' {FrmSistemaUsuario},
  Emater.Sistema.Perfil in 'sistema\Emater.Sistema.Perfil.pas' {FrmSistemaPerfil},
  Emater.Sistema.Permissao in 'sistema\Emater.Sistema.Permissao.pas' {FrmSistemaPermissao},
  Emater.Sistema.Senha.Alterar in 'sistema\Emater.Sistema.Senha.Alterar.pas' {FrmSistemaSenhaAlterar},
  Emater.Log.Exportar in 'log\Emater.Log.Exportar.pas' {FrmLogExportar},
  Emater.Log.Consts in 'log\Emater.Log.Consts.pas',
  Emater.Log.Importar in 'log\Emater.Log.Importar.pas' {FrmLogImportar},
  Emater.Log.Importar.Detalhe in 'log\Emater.Log.Importar.Detalhe.pas' {FrmLogImportarDetalhe},
  Emater.Produtividade.Fater.Editor in 'produtividade\Emater.Produtividade.Fater.Editor.pas' {FrmProdutividadeFaterEditor},
  Emater.Sistema.Ambiente in 'sistema\Emater.Sistema.Ambiente.pas' {FrmSistemaAmbiente},
  Emater.Sistema.Restauracao in 'sistema\Emater.Sistema.Restauracao.pas' {FrmSistemaRestauracao},
  Emater.Sistema.Backup in 'sistema\Emater.Sistema.Backup.pas' {FrmSistemaBackup},
  Emater.Base.Relatorio in 'base\Emater.Base.Relatorio.pas' {FrmBaseRelatorio},
  Emater.Relatorio.Metodologia.Unidade in 'relatorio\Emater.Relatorio.Metodologia.Unidade.pas' {FrmRelatorioMetodologiaUnidade},
  Emater.Log.Modulo in 'log\Emater.Log.Modulo.pas' {DtmLogModulo: TDataModule},
  Emater.Produtividade.Consts in 'produtividade\Emater.Produtividade.Consts.pas',
  Emater.Relatorio.Modulo in 'relatorio\Emater.Relatorio.Modulo.pas' {DtmRelatorioModulo: TDataModule},
  Emater.Relatorio.Filtro.UnidadePeriodo in 'relatorio\Emater.Relatorio.Filtro.UnidadePeriodo.pas' {FrmRelatorioFiltroUnidadePeriodo: TFrame},
  Emater.Relatorio.Consts in 'relatorio\Emater.Relatorio.Consts.pas',
  Emater.Produtividade.Fater.Produto in 'produtividade\Emater.Produtividade.Fater.Produto.pas' {FrmProdutividadeFaterProduto},
  Emater.Relatorio.Beneficiario.Categoria in 'relatorio\Emater.Relatorio.Beneficiario.Categoria.pas' {FrmRelatorioBeneficiarioCategoria},
  Emater.Relatorio.Producao.Beneficiario in 'relatorio\Emater.Relatorio.Producao.Beneficiario.pas' {FrmRelatorioProducaoBeneficiario},
  Emater.Relatorio.Beneficiario.Cadastro in 'relatorio\Emater.Relatorio.Beneficiario.Cadastro.pas' {FrmRelatorioBeneficiarioCadastro},
  Emater.Relatorio.Filtro.Comunidade in 'relatorio\Emater.Relatorio.Filtro.Comunidade.pas' {FrmRelatorioFiltroComunidade: TFrame},
  Emater.Relatorio.Fater.Categoria in 'relatorio\Emater.Relatorio.Fater.Categoria.pas' {FrmRelatorioFaterCategoria},
  Emater.Relatorio.Metodologia.Funcionario in 'relatorio\Emater.Relatorio.Metodologia.Funcionario.pas' {FrmRelatorioMetodologiaFuncionario},
  Emater.Relatorio.Beneficiario.Atividade in 'relatorio\Emater.Relatorio.Beneficiario.Atividade.pas' {FrmRelatorioBeneficiarioAtividade},
  Emater.Relatorio.Geral.Projeto in 'relatorio\Emater.Relatorio.Geral.Projeto.pas' {FrmRelatorioGeralProjeto},
  Emater.Relatorio.Filtro.Producao in 'relatorio\Emater.Relatorio.Filtro.Producao.pas' {FrmRelatorioFiltroProducao: TFrame},
  Emater.Relatorio.Fater.Comunidade in 'relatorio\Emater.Relatorio.Fater.Comunidade.pas' {FrmRelatorioFaterComunidade},
  Emater.Relatorio.Filtro.Projeto in 'relatorio\Emater.Relatorio.Filtro.Projeto.pas' {FrmRelatorioFiltroProjeto: TFrame},
  Emater.Relatorio.Geral.Escritorio in 'relatorio\Emater.Relatorio.Geral.Escritorio.pas' {FrmRelatorioGeralEscritorio},
  Emater.Relatorio.Geral.Funcionario in 'relatorio\Emater.Relatorio.Geral.Funcionario.pas' {FrmRelatorioGeralFuncionario},
  Emater.Relatorio.Filtro.UnidadeFuncionario in 'relatorio\Emater.Relatorio.Filtro.UnidadeFuncionario.pas' {FrmRelatorioFiltroUnidadeFuncionario: TFrame},
  Emater.Dne.Cidade.Pesquisa in 'dne\Emater.Dne.Cidade.Pesquisa.pas' {FrmDneCidadePesquisa},
  Emater.Classe.Log in 'classe\Emater.Classe.Log.pas',
  Emater.Sistema.Ajuda in 'sistema\Emater.Sistema.Ajuda.pas' {FrmSistemaAjuda},
  Emater.Relatorio.Fater.Quadrimestre in 'relatorio\Emater.Relatorio.Fater.Quadrimestre.pas' {FrmRelatorioFaterQuadrimestre},
  Emater.Relatorio.Filtro.Metodologia in 'relatorio\Emater.Relatorio.Filtro.Metodologia.pas' {FrmRelatorioFiltroMetodologia: TFrame},
  Emater.Sistema.Sobre in 'sistema\Emater.Sistema.Sobre.pas' {FrmSistemaSobre},
  Emater.Credito in 'credito\Emater.Credito.pas' {FrmCredito},
  Emater.Credito.Modulo in 'credito\Emater.Credito.Modulo.pas' {DtmCreditoModulo: TDataModule},
  Emater.Credito.Raca in 'credito\Emater.Credito.Raca.pas' {FrmCreditoRaca},
  Emater.Credito.Financeira in 'credito\Emater.Credito.Financeira.pas' {FrmCreditoFinanceira},
  Emater.Credito.Linha in 'credito\Emater.Credito.Linha.pas' {FrmCreditoLinha},
  Emater.Credito.Situacao in 'credito\Emater.Credito.Situacao.pas' {FrmCreditoSituacao},
  Emater.Credito.Classificacao in 'credito\Emater.Credito.Classificacao.pas' {FrmCreditoClassificacao},
  Emater.Credito.Consts in 'credito\Emater.Credito.Consts.pas',
  Emater.Credito.Tipo in 'credito\Emater.Credito.Tipo.pas' {FrmCreditoTipo},
  Emater.Credito.Consulta in 'credito\Emater.Credito.Consulta.pas' {FrmCreditoConsulta},
  Emater.Credito.Publico in 'credito\Emater.Credito.Publico.pas' {FrmCreditoPublico},
  Emater.Credito.Variedade in 'credito\Emater.Credito.Variedade.pas' {FrmCreditoVariedade},
  Emater.Agenda in 'agenda\Emater.Agenda.pas' {FrmBaseFilha1},
  Emater.Agenda.Evento in 'agenda\Emater.Agenda.Evento.pas' {FrmAgendaEvento},
  Emater.Proater.Principal in 'proater\Emater.Proater.Principal.pas' {FrmProaterPrincipal},
  Emater.Proater.Comunidade in 'proater\Emater.Proater.Comunidade.pas' {FrmProaterComunidade},
  Emater.Proater.Consulta in 'proater\Emater.Proater.Consulta.pas' {FrmProaterConsulta},
  Emater.Proater.Potencial in 'proater\Emater.Proater.Potencial.pas' {FrmProaterPotencial},
  Emater.Proater.Modulo in 'proater\Emater.Proater.Modulo.pas' {DtmProaterModulo: TDataModule},
  Emater.Proater.Acordo in 'proater\Emater.Proater.Acordo.pas' {FrmProaterAcordo},
  Emater.Proater.Orcamento in 'proater\Emater.Proater.Orcamento.pas' {FrmProaterOrcamento},
  Emater.Proater.Custo in 'proater\Emater.Proater.Custo.pas' {FrmProaterCusto},
  Emater.Proater.Mobiliario in 'proater\Emater.Proater.Mobiliario.pas' {FrmProaterMobiliario},
  Emater.Proater.Equipamento in 'proater\Emater.Proater.Equipamento.pas' {FrmProaterEquipamento},
  Emater.Proater.Qualificacao in 'proater\Emater.Proater.Qualificacao.pas' {FrmProaterQualificacao},
  Emater.Proater.Veiculo in 'proater\Emater.Proater.Veiculo.pas' {FrmProaterVeiculo},
  Emater.Proater.SubProjeto in 'proater\Emater.Proater.SubProjeto.pas' {FrmProaterSubprojeto},
  Emater.Proater.Beneficiario in 'proater\Emater.Proater.Beneficiario.pas' {FrmProaterBeneficiario},
  Emater.Proater.Demanda in 'proater\Emater.Proater.Demanda.pas' {FrmProaterDemanda},
  Emater.Proater.Metodo in 'proater\Emater.Proater.Metodo.pas' {FrmProaterMetodo},
  Emater.Proater.Meta in 'proater\Emater.Proater.Meta.pas' {FrmProaterMeta},
  Emater.Indicador.Editor in 'indicador\Emater.Indicador.Editor.pas' {FrmIndicadorEditor},
  Emater.Indicador.Selecao in 'indicador\Emater.Indicador.Selecao.pas' {FrmIndicadorSelecao},
  Emater.Indicador.Consts in 'indicador\Emater.Indicador.Consts.pas',
  Emater.Indicador.Consulta in 'indicador\Emater.Indicador.Consulta.pas' {FrmIndicadorConsulta},
  Emater.Relatorio.Proater in 'relatorio\Emater.Relatorio.Proater.pas' {FrmRelatorioProater},
  Emater.Proater.Consts in 'proater\Emater.Proater.Consts.pas',
  Emater.Relatorio.Producao.Comercio in 'relatorio\Emater.Relatorio.Producao.Comercio.pas' {FrmRelatorioProducaoComercio},
  Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo in 'relatorio\Emater.Relatorio.Filtro.UnidadeFuncionarioPeriodo.pas' {FrmRelatorioFiltroUnidadeFuncionarioPeriodo: TFrame},
  Emater.Relatorio.Beneficiario.EstadoCivil in 'relatorio\Emater.Relatorio.Beneficiario.EstadoCivil.pas' {FrmRelatorioBeneficiarioEstadoCivil},
  Emater.Relatorio.Beneficiario.Faixa in 'relatorio\Emater.Relatorio.Beneficiario.Faixa.pas' {FrmRelatorioBeneficiarioFaixa},
  Emater.Relatorio.Beneficiario.Escolaridade in 'relatorio\Emater.Relatorio.Beneficiario.Escolaridade.pas' {FrmRelatorioBeneficiarioEscolaridade},
  Emater.Relatorio.Beneficiario.Ribeirinho in 'relatorio\Emater.Relatorio.Beneficiario.Ribeirinho.pas' {FrmRelatorioBeneficiarioRibeirinho},
  Emater.Relatorio.Beneficiario.Genero in 'relatorio\Emater.Relatorio.Beneficiario.Genero.pas' {FrmRelatorioBeneficiarioGenero},
  Emater.Relatorio.Producao.Cultura in 'relatorio\Emater.Relatorio.Producao.Cultura.pas' {FrmRelatorioProducaoCultura},
  Emater.Relatorio.Producao.Criacao in 'relatorio\Emater.Relatorio.Producao.Criacao.pas' {FrmRelatorioProducaoCriacao},
  Emater.Relatorio.Fater.Atividade in 'relatorio\Emater.Relatorio.Fater.Atividade.pas' {FrmRelatorioFaterAtividade},
  Emater.Relatorio.Producao.Servico in 'relatorio\Emater.Relatorio.Producao.Servico.pas' {FrmRelatorioProducaoServico},
  Emater.Relatorio.Metodologia.Categoria in 'relatorio\Emater.Relatorio.Metodologia.Categoria.pas' {FrmRelatorioMetodologiaCategoria},
  Emater.Relatorio.Metodologia.Administrativa in 'relatorio\Emater.Relatorio.Metodologia.Administrativa.pas' {FrmRelatorioMetodologiaAdministrativa},
  Emater.Relatorio.Metodologia.Finalidade in 'relatorio\Emater.Relatorio.Metodologia.Finalidade.pas' {FrmRelatorioMetodologiaFinalidade};

{$R *.res}

  function Login: Boolean;
  begin
    Result := False;
    FrmSistemaLogin := TFrmSistemaLogin.Create(Application);
    try
      if (FrmSistemaLogin.ShowModal = mrOk) then
        Result := True;
    finally
      FreeAndNil(FrmSistemaLogin);
    end;
  end;

begin
  //
  // Inicialização.
  //
  Application.Initialize;
  //
  // Abertura.
  //
  CodeSite.AddResetSeparator;
  CodeSite.SendNote('Inicializando Sevensoft Atersoft [ATER Pará].');
  FrmSistemaAbertura := TFrmSistemaAbertura.Create(Application);
  FrmSistemaAbertura.Show;
  FrmSistemaAbertura.Refresh;
  //
  // Atributos iniciais da aplicação.
  //
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sevensoft ATER Pará';
  //
  // Criação do módulo de conexão.
  //
  CodeSite.SendMsg('Criando o módulo de conexão com o banco de dados.');
  Application.CreateForm(TDtmConexaoModulo, DtmConexaoModulo);
  CodeSite.SendMsg('Módulo de conexão com o banco de dados criado com sucesso.');
  //
  // Inibindo a abertura.
  //
  FrmSistemaAbertura.Hide;
  //
  // Login.
  //
  CodeSite.SendMsg('Efetuando o login do usuário...');
  if Login then
    begin
      CodeSite.SendMsg('Login do usuário realizado com sucesso.');

      // Exibe a tela de login novamente.
      FrmSistemaAbertura.Show;
      FrmSistemaAbertura.Refresh;

      // Criação da janela principal.
      CodeSite.SendMsg('Criando módulos de dados.');
      Application.CreateForm(TDtmSistemaModulo, DtmSistemaModulo);
      Application.CreateForm(TDtmDialogoModulo, DtmDialogoModulo);
      Application.CreateForm(TDtmRecursoModulo, DtmRecursoModulo);
      Application.CreateForm(TDtmCadastroModulo, DtmCadastroModulo);
      Application.CreateForm(TDtmPessoalModulo, DtmPessoalModulo);
      Application.CreateForm(TDtmDneModulo, DtmDneModulo);
      Application.CreateForm(TDtmProdutividadeModulo, DtmProdutividadeModulo);
      Application.CreateForm(TDtmLogModulo, DtmLogModulo);
      Application.CreateForm(TDtmRelatorioModulo, DtmRelatorioModulo);
      Application.CreateForm(TDtmCreditoModulo, DtmCreditoModulo);
      Application.CreateForm(TDtmProaterModulo, DtmProaterModulo);
      CodeSite.SendMsg('Módulos de dados criados com sucesso.');

      CodeSite.SendMsg('Inicialização completa. Criando a janela principal.');
      Application.CreateForm(TFrmSistemaPrincipal, FrmSistemaPrincipal);

      // Inibindo a abertura.
      FrmSistemaAbertura.Hide;
      FrmSistemaAbertura.Free;
      FrmSistemaAbertura := nil;

      Application.Run;
    end
  else
    begin
      CodeSite.SendMsg('O login do usuário não ocorreu com sucesso. A aplicação será finalizada.');
      FrmSistemaAbertura.Free;
      FrmSistemaAbertura := nil;
      Application.Terminate;
    end;
end.
