unit Emater.Base.Busca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, cxLookAndFeelPainters, cxGraphics, cxControls, cxLookAndFeels, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, Menus, cxTextEdit, dxBar, cxButtons,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxPC, IniFiles, cxPCdxBarPopupMenu, Emater.Base.Basico, dxSkinsCore, dxSkinOffice2013White,
  dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFrmBaseBusca = class(TFrmBaseBasico)
    PgCntrlPesquisa: TcxPageControl;
    TbShtParametros: TcxTabSheet;
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaLvl: TcxGridLevel;
    BtnSelecionar: TcxButton;
    BtnFechar: TcxButton;
    DtSrcConsulta: TDataSource;
    LblValor: TLabel;
    LblOpcao: TLabel;
    ImgCmbBxOpcao: TcxImageComboBox;
    dxBarManager: TdxBarManager;
    PopupMenuBusca: TdxBarPopupMenu;
    BtnLimparResultado: TdxBarButton;
    BtnAgrupamento: TdxBarButton;
    BtnResumo: TdxBarButton;
    BtnConsultar: TcxButton;
    BtnLimparParametros: TcxButton;
    EdtValor: TcxTextEdit;
    BtnNovo: TcxButton;
    BtnEditar: TcxButton;
    BrBtnNovo: TdxBarButton;
    BrBtnEditar: TdxBarButton;
    BtnVisualizar: TcxButton;
    QryConsulta: TFDQuery;
    UpdtConsulta: TFDUpdateSQL;
    procedure BtnSelecionarClick(Sender: TObject);
    procedure GrdConsultaTblKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdConsultaTblDblClick(Sender: TObject);
    procedure DtSrcConsultaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLimparResultadoClick(Sender: TObject);
    procedure BtnAgrupamentoClick(Sender: TObject);
    procedure BtnResumoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnLimparParametrosClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
  private
    FDefaultSQL: TStringList;
    FEditForm: TComponent;
    FEditFormClass: TComponentClass;
    procedure CarregarConfiguracoes;
    procedure SalvarConfiguracoes;
    procedure LimparConsulta;
  public
    property EditForm: TComponent read FEditForm write FEditForm;
    property EditFormClass: TComponentClass read FEditFormClass write FEditFormClass;
    property DefaultSQL: TStringList read FDefaultSQL;

    procedure LimparCampos; virtual; abstract;
  end;

var
  FrmBaseBusca: TFrmBaseBusca;

implementation

uses Emater.Recurso.Modulo, Emater.Base.Consts, Emater.Recurso.Consts, Emater.Classe.Arquivo, Emater.Base.Tabela,
  Emater.Conexao.Modulo, Emater.Classe.Log;

{$R *.dfm}

procedure TFrmBaseBusca.BtnEditarClick(Sender: TObject);
begin
  if QryConsulta.IsEmpty then
    Msg.Aviso(BASE_MSG_BUSCA_NADA_SELECIONADO)
  else
    begin
      Application.ProcessMessages;
      Screen.Cursor := crHourGlass;
      TComponent(FEditForm) := FEditFormClass.Create(Self);
      try
        Application.ProcessMessages;
        TFrmBaseTabela(FEditForm).Editar(QryConsulta.FieldByName(GrdConsultaTbl.DataController.KeyFieldNames).AsLargeInt);
        QryConsulta.Refresh;
      finally
        TForm(FEditForm).Release;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmBaseBusca.BtnLimparParametrosClick(Sender: TObject);
begin
  LimparConsulta;
end;

procedure TFrmBaseBusca.BtnLimparResultadoClick(Sender: TObject);
begin
  LimparConsulta;
end;

procedure TFrmBaseBusca.BtnNovoClick(Sender: TObject);
begin
  Application.ProcessMessages;
  Screen.Cursor := crHourGlass;
  TComponent(FEditForm) := FEditFormClass.Create(Self);
  try
    Application.ProcessMessages;
    TFrmBaseTabela(FEditForm).Novo;
  finally
    TFrmBaseTabela(FEditForm).Release;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmBaseBusca.EdtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmBaseBusca.BtnSelecionarClick(Sender: TObject);
begin
  if QryConsulta.IsEmpty then
    Msg.Aviso(BASE_MSG_BUSCA_NADA_SELECIONADO)
  else
    ModalResult := mrOk;
end;

procedure TFrmBaseBusca.BtnVisualizarClick(Sender: TObject);
begin
  if QryConsulta.IsEmpty then
    Msg.Aviso(BASE_MSG_BUSCA_NADA_SELECIONADO)
  else
    begin
      Application.ProcessMessages;
      Screen.Cursor := crHourGlass;
      TComponent(FEditForm) := FEditFormClass.Create(Self);
      try
        Application.ProcessMessages;
        TFrmBaseTabela(FEditForm).Visualizar(QryConsulta.FieldByName(GrdConsultaTbl.DataController.KeyFieldNames).AsLargeInt);
        QryConsulta.Refresh;
      finally
        TForm(FEditForm).Release;
        Screen.Cursor := crDefault;
      end;
    end;
end;

procedure TFrmBaseBusca.LimparConsulta;
begin
  if MSG.Confirmacao(BASE_MSG_CONFIRMAR_LIMPAR_CONSULTA) then
    begin
      QryConsulta.Close;
      EdtValor.Clear;

      if EdtValor.Enabled and EdtValor.Visible and (EdtValor.TabOrder = 0) then
        EdtValor.SetFocus;

      LimparCampos;
    end;
end;

procedure TFrmBaseBusca.GrdConsultaTblKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not QryConsulta.IsEmpty) then
    begin
      if GrdConsultaTbl.Controller.FocusedRow.Expandable then
        begin
          if GrdConsultaTbl.Controller.FocusedRow.Expanded then
            GrdConsultaTbl.Controller.FocusedRow.Expand(True)
          else
            GrdConsultaTbl.Controller.FocusedRow.Collapse(True);
        end
      else
        if QryConsulta.Active and BtnSelecionar.Visible then
          BtnSelecionar.Click;
    end;
end;

procedure TFrmBaseBusca.GrdConsultaTblDblClick(Sender: TObject);
begin
  if (GrdConsultaTbl.DataController.DataSet.Active) and (not GrdConsultaTbl.DataController.DataSet.IsEmpty) then
    begin

      if GrdConsultaTbl.Controller.FocusedRow.Expandable then
        begin
          if GrdConsultaTbl.Controller.FocusedRow.Expanded then
            GrdConsultaTbl.Controller.FocusedRow.Expand(True)
          else
            GrdConsultaTbl.Controller.FocusedRow.Collapse(True);
        end
      else
        if QryConsulta.Active and BtnSelecionar.Visible then
          BtnSelecionar.Click;
    end;
end;

procedure TFrmBaseBusca.DtSrcConsultaStateChange(Sender: TObject);
begin
  BtnSelecionar.Enabled := (not QryConsulta.IsEmpty) and QryConsulta.Active;
  BtnEditar.Enabled := (not QryConsulta.IsEmpty) and QryConsulta.Active;
  BtnVisualizar.Enabled := (not QryConsulta.IsEmpty) and QryConsulta.Active;
  BrBtnEditar.Enabled := (not QryConsulta.IsEmpty) and QryConsulta.Active;
end;

procedure TFrmBaseBusca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SalvarConfiguracoes;
end;

procedure TFrmBaseBusca.FormCreate(Sender: TObject);
begin
  inherited;
  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  try
    // Controle de acesso:
    RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');

    // Salva a consulta SQL padrão na StringList:
    FDefaultSQL := TStringList.Create;
    FDefaultSQL.AddStrings(QryConsulta.SQL);

    // Carrega as imagens dos botões:
    BtnSelecionar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SELECIONAR);
    BtnFechar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
    BtnConsultar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_PESQUISAR);
    BtnLimparParametros.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_LIMPAR);
    BtnNovo.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_NOVO);
    BtnEditar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_EDITAR);

    dxBarManager.Style := bmsUseLookAndFeel;
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
  end;
end;

procedure TFrmBaseBusca.FormDestroy(Sender: TObject);
begin
  FDefaultSQL.Free; // Libera a memória alocada para a StringList.
  inherited;
end;

procedure TFrmBaseBusca.FormShow(Sender: TObject);
begin
  inherited;
  CarregarConfiguracoes;
end;

procedure TFrmBaseBusca.CarregarConfiguracoes;
begin
  GrdConsultaTbl.RestoreFromIniFile(TArquivo.GerarCfg(Application.ExeName));
  BtnAgrupamento.Down := GrdConsultaTbl.OptionsView.GroupByBox;
  BtnResumo.Down := GrdConsultaTbl.OptionsView.Footer;
end;

procedure TFrmBaseBusca.BtnAgrupamentoClick(Sender: TObject);
begin
  GrdConsultaTbl.OptionsView.GroupByBox := BtnAgrupamento.Down;
  GrdConsultaTbl.OptionsCustomize.ColumnGrouping := BtnAgrupamento.Down;
  GrdConsultaTbl.OptionsCustomize.ColumnMoving := BtnAgrupamento.Down;
end;

procedure TFrmBaseBusca.BtnResumoClick(Sender: TObject);
begin
  GrdConsultaTbl.OptionsView.Footer := BtnResumo.Down;
  if BtnResumo.Down then
    GrdConsultaTbl.OptionsView.GroupFooters := gfVisibleWhenExpanded
  else
    GrdConsultaTbl.OptionsView.GroupFooters := gfInvisible;
end;

procedure TFrmBaseBusca.SalvarConfiguracoes;
begin
  GrdConsultaTbl.StoreToIniFile(TArquivo.GerarCfg(Application.ExeName));
end;

end.
