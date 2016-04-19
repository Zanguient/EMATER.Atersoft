unit Emater.Base.Consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, cxLookAndFeelPainters, cxButtons,
  cxTextEdit, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDropDownEdit, cxCheckBox, cxMemo, cxImageComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxMaskEdit, cxRadioGroup, FIBDataSet, pFIBDataSet, cxDBLookupComboBox,
  Menus, cxButtonEdit, ExtCtrls, dxBar, IniFiles, cxLookAndFeels, Emater.Base.Filha,
  dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic,
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmBaseConsulta = class(TFrmBaseFilha)
    GrdConsulta: TcxGrid;
    GrdConsultaTbl: TcxGridDBTableView;
    GrdConsultaLvl: TcxGridLevel;
    DtSrcConsulta: TDataSource;
    DtStConsulta: TpFIBDataSet;
    LblTitulo: TLabel;
    PnlMain: TPanel;
    LblValor: TLabel;
    LblOpcao: TLabel;
    ImgCmbBxOpcao: TcxImageComboBox;
    BarManager: TdxBarManager;
    PopupMenuConsulta: TdxBarPopupMenu;
    BtnEditar: TdxBarButton;
    BtnNovo: TdxBarButton;
    BtnExcluir: TdxBarButton;
    BtnLimparResultado: TdxBarButton;
    BtnAgrupamento: TdxBarButton;
    BtnResumo: TdxBarButton;
    BtnConsultar: TcxButton;
    BtnLimparParametros: TcxButton;
    EdtValor: TcxTextEdit;
    BarDockControl: TdxBarDockControl;
    BrFerramentas: TdxBar;
    BtnFechar: TdxBarButton;
    Image: TImage;
    BtnVisualizar: TdxBarButton;
    QryConsulta: TFDQuery;
    UpdtConsulta: TFDUpdateSQL;
    procedure GrdConsultaTblKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GrdConsultaTblDblClick(Sender: TObject);
    procedure DtSrcConsultaStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnLimparResultadoClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnAgrupamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnResumoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure BtnLimparParametrosClick(Sender: TObject);
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
  FrmBaseConsulta: TFrmBaseConsulta;

implementation

uses Emater.Recurso.Modulo, Emater.Recurso.Consts, Emater.Base.Consts,
  Emater.Base.Tabela, Emater.Classe.Arquivo, Emater.Conexao.Modulo;

{$R *.dfm}

procedure TFrmBaseConsulta.BtnLimparParametrosClick(Sender: TObject);
begin
  LimparConsulta;
end;

procedure TFrmBaseConsulta.BtnLimparResultadoClick(Sender: TObject);
begin
  LimparConsulta;
end;

procedure TFrmBaseConsulta.BtnAgrupamentoClick(Sender: TObject);
begin
  GrdConsultaTbl.OptionsView.GroupByBox := BtnAgrupamento.Down;
  GrdConsultaTbl.OptionsCustomize.ColumnGrouping := BtnAgrupamento.Down;
  GrdConsultaTbl.OptionsCustomize.ColumnMoving := BtnAgrupamento.Down;
end;

procedure TFrmBaseConsulta.BtnResumoClick(Sender: TObject);
begin
  GrdConsultaTbl.OptionsView.Footer := BtnResumo.Down;
  if BtnResumo.Down then
    GrdConsultaTbl.OptionsView.GroupFooters := gfVisibleWhenExpanded
  else
    GrdConsultaTbl.OptionsView.GroupFooters := gfInvisible;
end;

procedure TFrmBaseConsulta.BtnVisualizarClick(Sender: TObject);
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

procedure TFrmBaseConsulta.LimparConsulta;
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

procedure TFrmBaseConsulta.GrdConsultaTblKeyDown(Sender: TObject;
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
        if (BtnEditar.Visible = ivAlways) then
          BtnEditar.Click;
    end;
end;

procedure TFrmBaseConsulta.EdtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      if BtnConsultar.Visible then
        BtnConsultar.Click;
    end;
end;

procedure TFrmBaseConsulta.GrdConsultaTblDblClick(Sender: TObject);
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
        if QryConsulta.Active and (BtnEditar.Visible = ivAlways) then
          BtnEditar.Click;
    end;
end;

procedure TFrmBaseConsulta.DtSrcConsultaStateChange(Sender: TObject);
begin
  with QryConsulta do
  begin
    BtnEditar.Enabled := (not IsEmpty) and Active;
    BtnVisualizar.Enabled := (not IsEmpty) and Active;
    BtnExcluir.Enabled := (not IsEmpty) and Active;
  end;
end;

procedure TFrmBaseConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SalvarConfiguracoes;
end;

procedure TFrmBaseConsulta.FormCreate(Sender: TObject);
begin
  inherited;

  // Salva a consulta SQL padrão na StringList.
  FDefaultSQL := TStringList.Create;
  FDefaultSQL.AddStrings(QryConsulta.SQL);

  // Carrega as imagens dos botões.
  BtnConsultar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_PESQUISAR);
  BtnLimparParametros.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_LIMPAR);

  BarManager.ImageOptions.Images := DtmRecursoModulo.ImgLstPequenas;
  BarManager.IniFileName := TArquivo.GerarCfg(Application.ExeName);
  BarManager.StoreInIniFile := True;
  BarManager.LoadFromIniFile(BarManager.IniFileName);
end;

procedure TFrmBaseConsulta.FormDestroy(Sender: TObject);
begin
  FDefaultSQL.Free; // Libera a memória alocada para a StringList.
  inherited;
end;

procedure TFrmBaseConsulta.FormShow(Sender: TObject);
begin
  inherited;
  CarregarConfiguracoes;
end;

procedure TFrmBaseConsulta.SalvarConfiguracoes;
begin
  GrdConsultaTbl.StoreToIniFile(TArquivo.GerarCfg(Application.ExeName));
end;

procedure TFrmBaseConsulta.CarregarConfiguracoes;
begin
  GrdConsultaTbl.RestoreFromIniFile(TArquivo.GerarCfg(Application.ExeName));
  BtnAgrupamento.Down := GrdConsultaTbl.OptionsView.GroupByBox;
  BtnResumo.Down := GrdConsultaTbl.OptionsView.Footer;
end;

procedure TFrmBaseConsulta.BtnEditarClick(Sender: TObject);
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

procedure TFrmBaseConsulta.BtnNovoClick(Sender: TObject);
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

procedure TFrmBaseConsulta.BtnExcluirClick(Sender: TObject);
begin
  if Msg.Confirmacao(BASE_MSG_CONFIRMAR_EXCLUIR) then
    try
      DtSrcConsulta.DataSet.Edit;
      DtSrcConsulta.DataSet.FieldByName('REG_EXCLUIDO').AsBoolean := True;
      DtSrcConsulta.DataSet.FieldByName('REG_REPLICADO').Value := 0;
      DtSrcConsulta.DataSet.FieldByName('REG_USUARIO').AsString := DtmConexaoModulo.UsuarioLogin;
      DtSrcConsulta.DataSet.FieldByName('REG_MODIFICADO').Value := Now;
      DtSrcConsulta.DataSet.Post;
      DtSrcConsulta.DataSet.Close;
      DtSrcConsulta.DataSet.Open;
    except
      Msg.Erro(BASE_MSG_ERRO_EXCLUIR);
    end;
end;

procedure TFrmBaseConsulta.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
