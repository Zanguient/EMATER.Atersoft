unit Emater.Sistema.Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, cxContainer, cxEdit, dxSkinsForm, dxStatusBar, dxRibbonStatusBar,
  cxLabel, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinsDefaultPainters, dxSkinVS2010,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, Emater.Base.Basico, Vcl.Imaging.jpeg, Vcl.ExtCtrls, IniFiles, dxGDIPlusClasses,
  dxRibbonCustomizationForm;

type
  TFrmSistemaPrincipal = class(TFrmBaseBasico)
    dxBarManager: TdxBarManager;
    BrAcessoRapido: TdxBar;
    dxRibbon: TdxRibbon;
    RbnTbCadastros: TdxRibbonTab;
    dxRibbonBackstageView: TdxRibbonBackstageView;
    TbShtBeneficiarios: TdxRibbonBackstageViewTabSheet;
    dxRibbonStatusBar: TdxRibbonStatusBar;
    VwGlrCntrlBeneficiarios: TdxRibbonBackstageViewGalleryControl;
    cxLabel: TcxLabel;
    VwGlrCntrlBeneficiariosGrupo: TdxRibbonBackstageViewGalleryGroup;
    dxSkinController: TdxSkinController;
    BrComunidade: TdxBar;
    RbnTbRelatorios: TdxRibbonTab;
    RbnTbSistema: TdxRibbonTab;
    BtnBeneficiarioNovo: TdxBarLargeButton;
    BrUsuarios: TdxBar;
    BtnUsuarios: TdxBarLargeButton;
    BtnFater: TdxBarLargeButton;
    BtnPerfil: TdxBarLargeButton;
    BtnFuncionarios: TdxBarLargeButton;
    BtnComunidades: TdxBarLargeButton;
    BtnOrganizacoes: TdxBarLargeButton;
    BtnBeneficiarioConsulta: TdxBarLargeButton;
    BtnFATERConsultar: TdxBarLargeButton;
    BrFATER: TdxBar;
    BrFuncionarios: TdxBar;
    BtnFuncionarioConsultar: TdxBarLargeButton;
    BtnOrganizacaoConsultar: TdxBarLargeButton;
    BtnUnidadeAdicionar: TdxBarLargeButton;
    BtnUnidadeConsultar: TdxBarLargeButton;
    ImgBackground: TImage;
    TbShtUPF: TdxRibbonBackstageViewTabSheet;
    TbShtFATER: TdxRibbonBackstageViewTabSheet;
    BtnSair: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    VwGlrCntrlUPF: TdxRibbonBackstageViewGalleryControl;
    VwGlrCntrlUPFGrupo: TdxRibbonBackstageViewGalleryGroup;
    cxLabel2: TcxLabel;
    VwGlrCntrlFATER: TdxRibbonBackstageViewGalleryControl;
    VwGlrCntrlFATERGrupo: TdxRibbonBackstageViewGalleryGroup;
    BtnPermissoes: TdxBarLargeButton;
    BrBanco: TdxBar;
    BtnExportacao: TdxBarLargeButton;
    BtnImportacao: TdxBarLargeButton;
    TimerDataHora: TTimer;
    BtnConfiguracoes: TdxBarLargeButton;
    BrConfiguracoes: TdxBar;
    BtnBackup: TdxBarLargeButton;
    BtnRestauracao: TdxBarLargeButton;
    BrRelatorios: TdxBar;
    BtnBeneficiarioCategoria: TdxBarLargeButton;
    BtnBeneficiarioRelatorios: TdxBarSubItem;
    BtnFaterRelatorio: TdxBarSubItem;
    BtnFaterAtividade: TdxBarLargeButton;
    BtnBeneficiarioAtividade: TdxBarLargeButton;
    BtnBeneficiarioIndividual: TdxBarLargeButton;
    BtnMetodologiaFuncionario: TdxBarLargeButton;
    BtnMetodologiaUnidade: TdxBarLargeButton;
    BtnGeralFuncionario: TdxBarLargeButton;
    BtnUPFRelatorio: TdxBarSubItem;
    BtnGeralUnidade: TdxBarLargeButton;
    BtnGeralProjeto: TdxBarLargeButton;
    BtnProducaoBeneficiario: TdxBarLargeButton;
    BtnFaterQuadrimestre: TdxBarLargeButton;
    BtnSobre: TdxBarLargeButton;
    BrBeneficiarios: TdxBar;
    BrUnidade: TdxBar;
    BrOrganizacao: TdxBar;
    BtnFaterComunidade: TdxBarLargeButton;
    BtnAjuda: TdxBarLargeButton;
    BtnSenhaAlterar: TdxBarLargeButton;
    BtnDocumentos: TdxBarSubItem;
    BtnDocumentoIN: TdxBarLargeButton;
    BtnDocumentoManual: TdxBarLargeButton;
    BtnDocumentoGlossario: TdxBarLargeButton;
    BtnSubItem: TdxBarSubItem;
    BtnImpressoBeneficiario: TdxBarLargeButton;
    BtnImpressoUPF: TdxBarLargeButton;
    BtnImpressoFATER: TdxBarLargeButton;
    RbnTbCredito: TdxRibbonTab;
    BtnCreditoNovo: TdxBarLargeButton;
    BrCreditoRural: TdxBar;
    BtnCreditoConsulta: TdxBarLargeButton;
    BtnTabelasCreditoRural: TdxBarSubItem;
    BtnCreditoAgenteFinanceiro: TdxBarLargeButton;
    BtnCreditoLinhaCredito: TdxBarLargeButton;
    BtnCreditoTipoCredito: TdxBarLargeButton;
    BtnCreditoPublico: TdxBarLargeButton;
    BtnCreditoSituacao: TdxBarLargeButton;
    BtnCreditoClassificacao: TdxBarLargeButton;
    BtnCreditoVariedades: TdxBarLargeButton;
    BtnCreditoRaca: TdxBarLargeButton;
    RbnTbPROATER: TdxRibbonTab;
    RbnTbAgenda: TdxRibbonTab;
    BtnAgenda: TdxBarLargeButton;
    BrAgenda: TdxBar;
    BrPROATER: TdxBar;
    BtnPROATER: TdxBarLargeButton;
    RbnTbIndicador: TdxRibbonTab;
    BrIndicador: TdxBar;
    BtnIndicadorConsulta: TdxBarLargeButton;
    BtnIndicadorAdicionar: TdxBarLargeButton;
    BtnEstadoCivilBeneficiario: TdxBarLargeButton;
    BtnEscolaridadeBeneficiario: TdxBarLargeButton;
    BtnRelatorioRibeirinho: TdxBarLargeButton;
    BtnRelatorioFaixaEtaria: TdxBarLargeButton;
    BtnBeneficiarioGenero: TdxBarLargeButton;
    BtnRelatorioProducaoCultura: TdxBarLargeButton;
    BtnRelatorioProducaoCriacao: TdxBarLargeButton;
    BtnRelatorioProducaoServico: TdxBarLargeButton;
    BtnRelatorioFaterCategoria: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnBeneficiarioNovoClick(Sender: TObject);
    procedure BtnComunidadesClick(Sender: TObject);
    procedure BtnOrganizacoesClick(Sender: TObject);
    procedure BtnFaterClick(Sender: TObject);
    procedure BtnBeneficiarioConsultaClick(Sender: TObject);
    procedure BtnUnidadeAdicionarClick(Sender: TObject);
    procedure BtnUnidadeConsultarClick(Sender: TObject);
    procedure BtnOrganizacaoConsultarClick(Sender: TObject);
    procedure BtnFATERConsultarClick(Sender: TObject);
    procedure BtnFuncionariosClick(Sender: TObject);
    procedure BtnFuncionarioConsultarClick(Sender: TObject);
    procedure BtnUsuariosClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnPerfilClick(Sender: TObject);
    procedure BtnPermissoesClick(Sender: TObject);
    procedure BtnExportacaoClick(Sender: TObject);
    procedure BtnImportacaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerDataHoraTimer(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure BtnBackupClick(Sender: TObject);
    procedure BtnRestauracaoClick(Sender: TObject);
    procedure BtnBeneficiarioCategoriaClick(Sender: TObject);
    procedure BtnFaterAtividadeClick(Sender: TObject);
    procedure BtnBeneficiarioAtividadeClick(Sender: TObject);
    procedure BtnBeneficiarioIndividualClick(Sender: TObject);
    procedure BtnMetodologiaFuncionarioClick(Sender: TObject);
    procedure BtnMetodologiaUnidadeClick(Sender: TObject);
    procedure BtnGeralFuncionarioClick(Sender: TObject);
    procedure BtnProducaoBeneficiarioClick(Sender: TObject);
    procedure BtnGeralUnidadeClick(Sender: TObject);
    procedure BtnGeralProjetoClick(Sender: TObject);
    procedure BtnFaterQuadrimestreClick(Sender: TObject);
    procedure dxRibbonStatusBarPanels1Click(Sender: TObject);
    procedure BtnSobreClick(Sender: TObject);
    procedure BtnFaterComunidadeClick(Sender: TObject);
    procedure VwGlrCntrlBeneficiariosItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VwGlrCntrlUPFItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure VwGlrCntrlFATERItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAjudaClick(Sender: TObject);
    procedure BtnSenhaAlterarClick(Sender: TObject);
    procedure BtnDocumentoINClick(Sender: TObject);
    procedure BtnDocumentoManualClick(Sender: TObject);
    procedure BtnDocumentoGlossarioClick(Sender: TObject);
    procedure BtnImpressoBeneficiarioClick(Sender: TObject);
    procedure BtnImpressoUPFClick(Sender: TObject);
    procedure BtnImpressoFATERClick(Sender: TObject);
    procedure BtnCreditoConsultaClick(Sender: TObject);
    procedure BtnCreditoNovoClick(Sender: TObject);
    procedure BtnCreditoAgenteFinanceiroClick(Sender: TObject);
    procedure BtnCreditoLinhaCreditoClick(Sender: TObject);
    procedure BtnCreditoTipoCreditoClick(Sender: TObject);
    procedure BtnCreditoPublicoClick(Sender: TObject);
    procedure BtnCreditoSituacaoClick(Sender: TObject);
    procedure BtnCreditoClassificacaoClick(Sender: TObject);
    procedure BtnCreditoVariedadesClick(Sender: TObject);
    procedure BtnCreditoRacaClick(Sender: TObject);
    procedure BtnAgendaClick(Sender: TObject);
    procedure BtnPROATERClick(Sender: TObject);
    procedure BtnIndicadorConsultaClick(Sender: TObject);
    procedure BtnIndicadorAdicionarClick(Sender: TObject);
    procedure BtnEstadoCivilBeneficiarioClick(Sender: TObject);
    procedure BtnEscolaridadeBeneficiarioClick(Sender: TObject);
    procedure BtnRelatorioRibeirinhoClick(Sender: TObject);
    procedure BtnRelatorioFaixaEtariaClick(Sender: TObject);
    procedure BtnBeneficiarioGeneroClick(Sender: TObject);
    procedure BtnRelatorioProducaoCulturaClick(Sender: TObject);
    procedure BtnRelatorioProducaoCriacaoClick(Sender: TObject);
    procedure BtnRelatorioProducaoServicoClick(Sender: TObject);
    procedure BtnRelatorioFaterCategoriaClick(Sender: TObject);
  public
    procedure AtualizarBarraStatus(const BD, Usuario, Local: string);
    procedure RecenteRemover(const Controle: TdxRibbonBackstageViewGalleryControl; const ID: Int64);
    procedure RecenteAdicionar(const Controle: TdxRibbonBackstageViewGalleryControl; const ID: Int64; const Nome,
      Descricao: string; Indice: Smallint; Pino: Boolean);
    procedure RecenteLimpar;
    procedure RecenteSalvar(const Controle: TdxRibbonBackstageViewGalleryControl);
    procedure RecenteCarregar(const Controle: TdxRibbonBackstageViewGalleryControl);
  end;

var
  FrmSistemaPrincipal: TFrmSistemaPrincipal;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Cadastro.Beneficiario, Emater.Cadastro.Comunidade, Emater.Cadastro.Organizacao,
  Emater.Produtividade.Fater, Emater.Cadastro.Beneficiario.Consulta, Emater.Cadastro.Unidade, Emater.Cadastro.Unidade.Consulta,
  Emater.Cadastro.Organizacao.Consulta, Emater.Produtividade.Fater.Consulta, Emater.Pessoal.Funcionario,
  Emater.Pessoal.Funcionario.Consulta, Emater.Sistema.Usuario, Emater.Classe.Arquivo, Emater.Sistema.Perfil,
  Emater.Sistema.Permissao, Emater.Log.Exportar, Emater.Log.Importar, Emater.Conexao.Modulo, Emater.Sistema.Modulo,
  Emater.Sistema.Ambiente, Emater.Sistema.Backup, Emater.Sistema.Restauracao, Emater.Relatorio.Beneficiario.Categoria,
  Emater.Relatorio.Fater.Atividade, Emater.Relatorio.Beneficiario.Atividade, Emater.Relatorio.Beneficiario.Cadastro,
  Emater.Relatorio.Metodologia.Funcionario, Emater.Relatorio.Metodologia.Unidade, Emater.Relatorio.Geral.Funcionario,
  Emater.Relatorio.Producao.Beneficiario, Emater.Relatorio.Geral.Escritorio, Emater.Relatorio.Geral.Projeto,
  Emater.Relatorio.Fater.Quadrimestre, Emater.Classe.Log, Emater.Sistema.Sobre, Emater.Relatorio.Fater.Comunidade,
  Emater.Cadastro.Beneficiario.Busca, Emater.Sistema.Consts, Emater.Sistema.Ajuda, Emater.Credito.Consulta, Emater.Credito,
  Emater.Credito.Financeira, Emater.Credito.Linha, Emater.Credito.Tipo, Emater.Credito.Publico, Emater.Credito.Situacao,
  Emater.Credito.Classificacao, Emater.Credito.Raca, Emater.Credito.Variedade, Emater.Agenda, Emater.Proater.Principal, Emater.Proater.Consulta,
  Emater.Indicador.Editor, Emater.Indicador.Selecao, Emater.Indicador.Consulta, Emater.Relatorio.Beneficiario.EstadoCivil,
  Emater.Relatorio.Beneficiario.Escolaridade, Emater.Relatorio.Beneficiario.Ribeirinho, Emater.Relatorio.Beneficiario.Faixa,
  Emater.Relatorio.Beneficiario.Genero, Emater.Relatorio.Producao.Cultura, Emater.Relatorio.Consts, Emater.Relatorio.Producao.Criacao,
  Emater.Relatorio.Producao.Servico, Emater.Relatorio.Fater.Categoria;

{ TForm1 }

procedure TFrmSistemaPrincipal.AtualizarBarraStatus(const BD, Usuario, Local: string);
begin
  dxRibbonStatusBar.Panels[0].Text := BD;
  dxRibbonStatusBar.Panels[1].Text := Usuario;
  dxRibbonStatusBar.Panels[2].Text := Local;
  dxRibbonStatusBar.Panels[6].Text := TArquivo.Versao(Application.ExeName);
end;

procedure TFrmSistemaPrincipal.BtnAgendaClick(Sender: TObject);
begin
  if FindFormByName('FrmAgenda') then
    GetFormByName('FrmAgenda').BringToFront
  else
    FrmAgenda := TFrmAgenda.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnAjudaClick(Sender: TObject);
begin
  FrmSistemaAjuda := TFrmSistemaAjuda.Create(Self);
  try
    FrmSistemaAjuda.ShowModal;
  finally
    FrmSistemaAjuda.Release;
    FrmSistemaAjuda := nil;
  end;
end;

procedure TFrmSistemaPrincipal.BtnBackupClick(Sender: TObject);
begin
  FrmSistemaBackup := TFrmSistemaBackup.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmSistemaBackup.ShowModal;
  finally
    FrmSistemaBackup.Release;
    FrmSistemaBackup := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnBeneficiarioConsultaClick(Sender: TObject);
begin
  if FindFormByName('FrmCadastroBeneficiarioConsulta') then
    GetFormByName('FrmCadastroBeneficiarioConsulta').BringToFront
  else
    FrmCadastroBeneficiarioConsulta := TFrmCadastroBeneficiarioConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnBeneficiarioGeneroClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioGenero := TFrmRelatorioBeneficiarioGenero.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioGenero.ShowModal;
  finally
    FrmRelatorioBeneficiarioGenero.Release;
    FrmRelatorioBeneficiarioGenero := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnBeneficiarioIndividualClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioCadastro := TFrmRelatorioBeneficiarioCadastro.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioCadastro.ShowModal;
  finally
    FrmRelatorioBeneficiarioCadastro.Release;
    FrmRelatorioBeneficiarioCadastro := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnBeneficiarioAtividadeClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioAtividade := TFrmRelatorioBeneficiarioAtividade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioAtividade.ShowModal;
  finally
    FrmRelatorioBeneficiarioAtividade.Release;
    FrmRelatorioBeneficiarioAtividade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnBeneficiarioCategoriaClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioCategoria := TFrmRelatorioBeneficiarioCategoria.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioCategoria.ShowModal;
  finally
    FrmRelatorioBeneficiarioCategoria.Release;
    FrmRelatorioBeneficiarioCategoria := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnBeneficiarioNovoClick(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FrmCadastroBeneficiario := TFrmCadastroBeneficiario.Create(Self);
  try
    FrmCadastroBeneficiario.Novo;
  finally
    FrmCadastroBeneficiario.Release;
    FrmCadastroBeneficiario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnComunidadesClick(Sender: TObject);
begin
  FrmCadastroComunidade := TFrmCadastroComunidade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCadastroComunidade.ShowModal;
  finally
    FrmCadastroComunidade.Release;
    FrmCadastroComunidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnConfiguracoesClick(Sender: TObject);
begin
  FrmSistemaAmbiente := TFrmSistemaAmbiente.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmSistemaAmbiente.ShowModal;
  finally
    FrmSistemaAmbiente.Release;
    FrmSistemaAmbiente := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoAgenteFinanceiroClick(Sender: TObject);
begin
  FrmCreditoFinanceira := TFrmCreditoFinanceira.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoFinanceira.ShowModal;
  finally
    FrmCreditoFinanceira.Release;
    FrmCreditoFinanceira := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoClassificacaoClick(Sender: TObject);
begin
 FrmCreditoClassificacao := TFrmCreditoClassificacao.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoClassificacao.ShowModal;
  finally
    FrmCreditoClassificacao.Release;
    FrmCreditoClassificacao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoConsultaClick(Sender: TObject);
begin
  if FindFormByName('FrmCreditoConsulta') then
    GetFormByName('FrmCreditoConsulta').BringToFront
  else
    FrmCreditoConsulta := TFrmCreditoConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnCreditoLinhaCreditoClick(Sender: TObject);
begin
  FrmCreditoLinha := TFrmCreditoLinha.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoLinha.ShowModal;
  finally
    FrmCreditoLinha.Release;
    FrmCreditoLinha := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoNovoClick(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  FrmCredito := TFrmCredito.Create(Self);
  try
    FrmCredito.Novo;
  finally
    FrmCredito.Release;
    FrmCredito := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoPublicoClick(Sender: TObject);
begin
  FrmCreditoPublico := TFrmCreditoPublico.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoPublico.ShowModal;
  finally
    FrmCreditoPublico.Release;
    FrmCreditoPublico := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoRacaClick(Sender: TObject);
begin
 FrmCreditoRaca := TFrmCreditoRaca.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoRaca.ShowModal;
  finally
    FrmCreditoRaca.Release;
    FrmCreditoRaca := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoSituacaoClick(Sender: TObject);
begin
  FrmCreditoSituacao := TFrmCreditoSituacao.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoSituacao.ShowModal;
  finally
    FrmCreditoSituacao.Release;
    FrmCreditoSituacao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoTipoCreditoClick(Sender: TObject);
begin
  FrmCreditoTipo := TFrmCreditoTipo.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoTipo.ShowModal;
  finally
    FrmCreditoTipo.Release;
    FrmCreditoTipo := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnCreditoVariedadesClick(Sender: TObject);
begin
 FrmCreditoVariedade := TFrmCreditoVariedade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCreditoVariedade.ShowModal;
  finally
    FrmCreditoVariedade.Release;
    FrmCreditoVariedade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnDocumentoGlossarioClick(Sender: TObject);
begin
  TArquivo.Abrir(ExtractFilePath(Application.ExeName) + 'glossario.pdf');
end;

procedure TFrmSistemaPrincipal.BtnDocumentoINClick(Sender: TObject);
begin
  TArquivo.Abrir(ExtractFilePath(Application.ExeName) + 'in.pdf');
end;

procedure TFrmSistemaPrincipal.BtnDocumentoManualClick(Sender: TObject);
begin
  TArquivo.Abrir(ExtractFilePath(Application.ExeName) + 'manual.pdf');
end;

procedure TFrmSistemaPrincipal.BtnEscolaridadeBeneficiarioClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioEscolaridade := TFrmRelatorioBeneficiarioEscolaridade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioEscolaridade.ShowModal;
  finally
    FrmRelatorioBeneficiarioEscolaridade.Release;
    FrmRelatorioBeneficiarioEscolaridade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnEstadoCivilBeneficiarioClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioEstadoCivil := TFrmRelatorioBeneficiarioEstadoCivil.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioEstadoCivil.ShowModal;
  finally
    FrmRelatorioBeneficiarioEstadoCivil.Release;
    FrmRelatorioBeneficiarioEstadoCivil := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnExportacaoClick(Sender: TObject);
begin
  FrmLogExportar := TFrmLogExportar.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmLogExportar.ShowModal;
  finally
    FrmLogExportar.Release;
    FrmLogExportar := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnFaterAtividadeClick(Sender: TObject);
begin
  FrmRelatorioFaterAtividade := TFrmRelatorioFaterAtividade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioFaterAtividade.ShowModal;
  finally
    FrmRelatorioFaterAtividade.Release;
    FrmRelatorioFaterAtividade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnFaterClick(Sender: TObject);
begin
  FrmProdutividadeFater := TFrmProdutividadeFater.Create(Self);
    try
      Screen.Cursor := crHourglass;
      FrmProdutividadeFater.Novo;
    finally
      FrmProdutividadeFater.Release;
      FrmProdutividadeFater := nil;
      Screen.Cursor := crDefault;
    end;
end;

procedure TFrmSistemaPrincipal.BtnFaterComunidadeClick(Sender: TObject);
begin
  FrmRelatorioFaterComunidade := TFrmRelatorioFaterComunidade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioFaterComunidade.ShowModal;
  finally
    FrmRelatorioFaterComunidade.Release;
    FrmRelatorioFaterComunidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnFATERConsultarClick(Sender: TObject);
begin
  if FindFormByName('FrmProdutividadeFaterConsulta') then
    GetFormByName('FrmProdutividadeFaterConsulta').BringToFront
  else
    FrmProdutividadeFaterConsulta := TFrmProdutividadeFaterConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnFaterQuadrimestreClick(Sender: TObject);
begin
  FrmRelatorioFaterQuadrimestre := TFrmRelatorioFaterQuadrimestre.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioFaterQuadrimestre.ShowModal;
  finally
    FrmRelatorioFaterQuadrimestre.Release;
    FrmRelatorioFaterQuadrimestre := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnFuncionarioConsultarClick(Sender: TObject);
begin
  if FindFormByName('FrmPessoalFuncionarioConsulta') then
    GetFormByName('FrmPessoalFuncionarioConsulta').BringToFront
  else
    FrmPessoalFuncionarioConsulta := TFrmPessoalFuncionarioConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnFuncionariosClick(Sender: TObject);
begin
  FrmPessoalFuncionario := TFrmPessoalFuncionario.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmPessoalFuncionario.Novo;
  finally
    FrmPessoalFuncionario.Release;
    FrmPessoalFuncionario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnGeralFuncionarioClick(Sender: TObject);
begin
  FrmRelatorioGeralFuncionario := TFrmRelatorioGeralFuncionario.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioGeralFuncionario.ShowModal;
  finally
    FrmRelatorioGeralFuncionario.Release;
    FrmRelatorioGeralFuncionario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnGeralProjetoClick(Sender: TObject);
begin
  FrmRelatorioGeralProjeto := TFrmRelatorioGeralProjeto.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioGeralProjeto.ShowModal;
  finally
    FrmRelatorioGeralProjeto.Release;
    FrmRelatorioGeralProjeto := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnGeralUnidadeClick(Sender: TObject);
begin
  FrmRelatorioGeralEscritorio := TFrmRelatorioGeralEscritorio.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioGeralEscritorio.ShowModal;
  finally
    FrmRelatorioGeralEscritorio.Release;
    FrmRelatorioGeralEscritorio := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnImportacaoClick(Sender: TObject);
begin
  FrmLogImportar := TFrmLogImportar.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmLogImportar.ShowModal;
  finally
    FrmLogImportar.Release;
    FrmLogImportar := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnImpressoBeneficiarioClick(Sender: TObject);
begin
  TArquivo.Abrir(ExtractFilePath(Application.ExeName) + 'beneficiario.pdf');
end;

procedure TFrmSistemaPrincipal.BtnImpressoFATERClick(Sender: TObject);
begin
  TArquivo.Abrir(ExtractFilePath(Application.ExeName) + 'fater.pdf');
end;

procedure TFrmSistemaPrincipal.BtnImpressoUPFClick(Sender: TObject);
begin
  TArquivo.Abrir(ExtractFilePath(Application.ExeName) + 'upf.pdf');
end;

procedure TFrmSistemaPrincipal.BtnIndicadorAdicionarClick(Sender: TObject);
begin
  FrmIndicadorEditor := TFrmIndicadorEditor.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmIndicadorEditor.Novo;
  finally
    FrmIndicadorEditor.Release;
    FrmIndicadorEditor := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnIndicadorConsultaClick(Sender: TObject);
begin
  if FindFormByName('FrmIndicadorConsulta') then
    GetFormByName('FrmIndicadorConsulta').BringToFront
  else
    FrmIndicadorConsulta := TFrmIndicadorConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnMetodologiaFuncionarioClick(Sender: TObject);
begin
  FrmRelatorioMetodologiaFuncionario := TFrmRelatorioMetodologiaFuncionario.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioMetodologiaFuncionario.ShowModal;
  finally
    FrmRelatorioMetodologiaFuncionario.Release;
    FrmRelatorioMetodologiaFuncionario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnMetodologiaUnidadeClick(Sender: TObject);
begin
  FrmRelatorioMetodologiaUnidade := TFrmRelatorioMetodologiaUnidade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioMetodologiaUnidade.ShowModal;
  finally
    FrmRelatorioMetodologiaUnidade.Release;
    FrmRelatorioMetodologiaUnidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnOrganizacaoConsultarClick(Sender: TObject);
begin
  if FindFormByName('FrmCadastroOrganizacaoConsulta') then
    GetFormByName('FrmCadastroOrganizacaoConsulta').BringToFront
  else
    FrmCadastroOrganizacaoConsulta := TFrmCadastroOrganizacaoConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnOrganizacoesClick(Sender: TObject);
begin
  FrmCadastroOrganizacao := TFrmCadastroOrganizacao.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCadastroOrganizacao.Novo;
  finally
    FrmCadastroOrganizacao.Release;
    FrmCadastroOrganizacao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnPerfilClick(Sender: TObject);
begin
  FrmSistemaPerfil := TFrmSistemaPerfil.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmSistemaPerfil.ShowModal;
  finally
    FrmSistemaPerfil.Release;
    FrmSistemaPerfil := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnPermissoesClick(Sender: TObject);
begin
  if FindFormByName('FrmSistemaPermissao') then
    GetFormByName('FrmSistemaPermissao').BringToFront
  else
    FrmSistemaPermissao := TFrmSistemaPermissao.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnPROATERClick(Sender: TObject);
begin
  inherited;

  if FindFormByName('FrmProaterConsulta') then
    GetFormByName('FrmProaterConsulta').BringToFront
  else
    FrmProaterConsulta := TFrmProaterConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnProducaoBeneficiarioClick(Sender: TObject);
begin
  FrmRelatorioProducaoBeneficiario := TFrmRelatorioProducaoBeneficiario.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioProducaoBeneficiario.ShowModal;
  finally
    FrmRelatorioProducaoBeneficiario.Release;
    FrmRelatorioProducaoBeneficiario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRelatorioFaixaEtariaClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioFaixa := TFrmRelatorioBeneficiarioFaixa.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioFaixa.ShowModal;
  finally
    FrmRelatorioBeneficiarioFaixa.Release;
    FrmRelatorioBeneficiarioFaixa := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRelatorioFaterCategoriaClick(Sender: TObject);
begin
  FrmRelatorioFaterCategoria := TFrmRelatorioFaterCategoria.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioFaterCategoria.ShowModal;
  finally
    FrmRelatorioFaterCategoria.Release;
    FrmRelatorioFaterCategoria := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRelatorioProducaoCriacaoClick(Sender: TObject);
begin
  FrmRelatorioProducaoCriacao := TFrmRelatorioProducaoCriacao.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioProducaoCriacao.ShowModal;
  finally
    FrmRelatorioProducaoCriacao.Release;
    FrmRelatorioProducaoCriacao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRelatorioProducaoCulturaClick(Sender: TObject);
begin
  FrmRelatorioProducaoCultura := TFrmRelatorioProducaoCultura.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioProducaoCultura.ShowModal;
  finally
    FrmRelatorioProducaoCultura.Release;
    FrmRelatorioProducaoCultura := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRelatorioProducaoServicoClick(Sender: TObject);
begin
  FrmRelatorioProducaoServico := TFrmRelatorioProducaoServico.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioProducaoServico.ShowModal;
  finally
    FrmRelatorioProducaoServico.Release;
    FrmRelatorioProducaoServico := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRelatorioRibeirinhoClick(Sender: TObject);
begin
  FrmRelatorioBeneficiarioRibeirinho := TFrmRelatorioBeneficiarioRibeirinho.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmRelatorioBeneficiarioRibeirinho.ShowModal;
  finally
    FrmRelatorioBeneficiarioRibeirinho.Release;
    FrmRelatorioBeneficiarioRibeirinho := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnRestauracaoClick(Sender: TObject);
begin
  FrmSistemaRestauracao := TFrmSistemaRestauracao.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmSistemaRestauracao.ShowModal;
  finally
    FrmSistemaRestauracao.Release;
    FrmSistemaRestauracao := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSistemaPrincipal.BtnSenhaAlterarClick(Sender: TObject);
begin
  if DtmConexaoModulo.AlterarSenhaExpirada(DtmConexaoModulo.UsuarioLogin) then
    CodeSite.SendMsg('Senha alterada com sucesso.')
end;

procedure TFrmSistemaPrincipal.BtnSobreClick(Sender: TObject);
begin
  FrmSistemaSobre := TFrmSistemaSobre.Create(Self);
  try
    FrmSistemaSobre.ShowModal;
  finally
    FrmSistemaSobre.Release;
    FrmSistemaSobre := nil;
  end;
end;

procedure TFrmSistemaPrincipal.BtnUnidadeAdicionarClick(Sender: TObject);
begin
  FrmCadastroUnidade := TFrmCadastroUnidade.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmCadastroUnidade.Novo;
  finally
    FrmCadastroUnidade.Release;
    FrmCadastroUnidade := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.BtnUnidadeConsultarClick(Sender: TObject);
begin
  if FindFormByName('FrmCadastroUnidadeConsulta') then
    GetFormByName('FrmCadastroUnidadeConsulta').BringToFront
  else
    FrmCadastroUnidadeConsulta := TFrmCadastroUnidadeConsulta.Create(Self);
end;

procedure TFrmSistemaPrincipal.BtnUsuariosClick(Sender: TObject);
begin
  FrmSistemaUsuario := TFrmSistemaUsuario.Create(Self);
  try
    Screen.Cursor := crHourglass;
    FrmSistemaUsuario.ShowModal;
  finally
    FrmSistemaUsuario.Release;
    FrmSistemaUsuario := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmSistemaPrincipal.dxRibbonStatusBarPanels1Click(Sender: TObject);
begin
  Msg.Informacao('Usuário: ' + dxRibbonStatusBar.Panels[1].Text + #13 + 'Perfil: ' + DtmConexaoModulo.PerfilNome);
end;

procedure TFrmSistemaPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  RecenteLimpar;
  RecenteSalvar(VwGlrCntrlBeneficiarios);
  RecenteSalvar(VwGlrCntrlUPF);
  RecenteSalvar(VwGlrCntrlFATER);
end;

procedure TFrmSistemaPrincipal.FormCreate(Sender: TObject);
begin
  inherited;

  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  try
    // Controle de acesso:
    RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');

    DisableAero := True;
    WindowState := wsMaximized;
    dxBarManager.IniFileName := TArquivo.GerarCfg(Application.ExeName);
    dxBarManager.StoreInIniFile := True;
    dxBarManager.LoadFromIniFile(dxBarManager.IniFileName);

    dxRibbonStatusBar.Panels[3].Text := FormatDateTime('dd/mm/yyyy', Date);
    dxRibbonStatusBar.Panels[4].Text := FormatDateTime('hh:nn:ss', Time);

    RbnTbCadastros.Active := True;
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
  end;
end;

procedure TFrmSistemaPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #27) then
    dxRibbonBackstageView.Hide;
end;

procedure TFrmSistemaPrincipal.FormShow(Sender: TObject);
begin
  inherited;
  AtualizarBarraStatus(
    DtmConexaoModulo.Servidor + ':' + DtmConexaoModulo.Base,
    DtmConexaoModulo.UsuarioNome,
    DtmSistemaModulo.UnidadeLocalNome);

  RecenteCarregar(VwGlrCntrlBeneficiarios);
  RecenteCarregar(VwGlrCntrlUPF);
  RecenteCarregar(VwGlrCntrlFATER);
  Hint := '';
end;

procedure TFrmSistemaPrincipal.RecenteAdicionar(const Controle: TdxRibbonBackstageViewGalleryControl; const ID: Int64; const Nome,
  Descricao: string; Indice: Smallint; Pino: Boolean);
var
  Item: TdxRibbonBackstageViewGalleryItem;
  I: Integer;
  Existe: Boolean;
begin
  Existe := False;
  for I := 0 to Controle.Gallery.Groups[0].ItemCount - 1 do
    begin
      Item := Controle.Gallery.Groups[0].Items[I];
      if (Item.Hint = IntToStr(ID)) then
        begin
          Existe := True;
          Break;
        end;
    end;

  if not Existe then
    begin
      Item := Controle.Gallery.Groups[0].Items.Add;
      Item.Index := Indice;
      Item.Caption := Nome;
      Item.Description := Descricao;
      Item.Hint := IntToStr(ID);
      Item.Pinned := Pino;
    end
  else
    if (Controle.Gallery.Groups[0].ItemCount > 0) then
      begin
        Item := Controle.Gallery.Groups[0].Items[I];
        Item.Index := 0;
      end;

  if (Controle.Gallery.Groups[0].ItemCount > 15) then
    for I := Controle.Gallery.Groups[0].ItemCount - 1 downto 0 do
      begin
        Item := Controle.Gallery.Groups[0].Items[I];
        if not Item.Pinned then
          begin
            Controle.Gallery.Groups[0].Items.Delete(I);
            Break;
          end;
      end;
end;

procedure TFrmSistemaPrincipal.RecenteCarregar(const Controle: TdxRibbonBackstageViewGalleryControl);
begin
  DtmSistemaModulo.RecenteCarregar(Controle.Gallery.Groups[0].Tag);
  while not DtmSistemaModulo.DtStRecenteCarregar.Eof do
  begin

    RecenteAdicionar(Controle,
      DtmSistemaModulo.DtStRecenteCarregar.FieldByName('rec_identificador').AsLargeInt,
      DtmSistemaModulo.DtStRecenteCarregar.FieldByName('rec_legenda').AsString,
      DtmSistemaModulo.DtStRecenteCarregar.FieldByName('rec_descricao').AsString,
      DtmSistemaModulo.DtStRecenteCarregar.FieldByName('rec_ordem').AsInteger,
      (DtmSistemaModulo.DtStRecenteCarregar.FieldByName('rec_pino').AsSingle = 1));

    DtmSistemaModulo.DtStRecenteCarregar.Next;
  end;
end;

procedure TFrmSistemaPrincipal.RecenteLimpar;
begin
  DtmSistemaModulo.RecenteLimpar;
end;

procedure TFrmSistemaPrincipal.RecenteRemover(const Controle: TdxRibbonBackstageViewGalleryControl; const ID: Int64);
var
  Item: TdxRibbonBackstageViewGalleryItem;
  I: Integer;
begin
  for I := 0 to Controle.Gallery.Groups[0].ItemCount - 1 do
    begin
      Item := Controle.Gallery.Groups[0].Items[I];
      if (Item.Hint = IntToStr(ID)) then
        begin
          Controle.Gallery.Groups[0].Items.Delete(Item.Index);
          Break;
        end;
    end;
end;

procedure TFrmSistemaPrincipal.RecenteSalvar(const Controle: TdxRibbonBackstageViewGalleryControl);
var
  Item: TdxRibbonBackstageViewGalleryItem;
  I: Integer;
begin
  for I := 0 to Controle.Gallery.Groups[0].ItemCount - 1 do
    begin
      Item := Controle.Gallery.Groups[0].Items[I];
      DtmSistemaModulo.RecenteRegistrar(
        Controle.Gallery.Groups[0].Tag,
        StrToInt64(Item.Hint),
        Item.Index,
        Item.Caption,
        Item.Description,
        Item.Pinned);
    end;
end;

procedure TFrmSistemaPrincipal.TimerDataHoraTimer(Sender: TObject);
begin
  dxRibbonStatusBar.Panels[3].Text := FormatDateTime('dd/mm/yyyy', Date);
  dxRibbonStatusBar.Panels[4].Text := FormatDateTime('hh:nn:ss', Time);
end;

procedure TFrmSistemaPrincipal.VwGlrCntrlBeneficiariosItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  dxRibbonBackstageView.Hide;
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;
  if (BtnBeneficiarioConsulta.Visible = ivAlways) then
    begin
      FrmCadastroBeneficiario := TFrmCadastroBeneficiario.Create(Self);
      try
        Application.ProcessMessages;
        FrmCadastroBeneficiario.Editar(StrToInt64(AItem.Hint));
      finally
        FrmCadastroBeneficiario.Release;
        FrmCadastroBeneficiario := nil;
        Screen.Cursor := crDefault;
      end;
    end
  else
    begin
      Msg.Aviso(SISTEMA_PRIVILEGIO_CONSULTA_BENEFICIARIO);
    end;
end;

procedure TFrmSistemaPrincipal.VwGlrCntrlFATERItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  dxRibbonBackstageView.Hide;
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  if (BtnFATERConsultar.Visible = ivAlways) then
    begin
      FrmProdutividadeFater := TFrmProdutividadeFater.Create(Self);
      try
        Application.ProcessMessages;
        FrmProdutividadeFater.Editar(StrToInt64(AItem.Hint));
      finally
        FrmProdutividadeFater.Release;
        FrmProdutividadeFater := nil;
        Screen.Cursor := crDefault;
      end;
    end
  else
    begin
      Msg.Aviso(SISTEMA_PRIVILEGIO_CONSULTA_FATER);
    end;
end;

procedure TFrmSistemaPrincipal.VwGlrCntrlUPFItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  dxRibbonBackstageView.Hide;
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;

  if (BtnUnidadeConsultar.Visible = ivAlways) then
    begin
      FrmCadastroUnidade := TFrmCadastroUnidade.Create(Self);
      try
        Application.ProcessMessages;
        FrmCadastroUnidade.Editar(StrToInt64(AItem.Hint));
      finally
        FrmCadastroUnidade.Release;
        FrmCadastroUnidade := nil;
        Screen.Cursor := crDefault;
      end;
    end
  else
    begin
      Msg.Aviso(SISTEMA_PRIVILEGIO_CONSULTA_UPF);
    end;
end;

end.
