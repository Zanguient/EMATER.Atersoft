unit Emater.Sistema.Permissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Filha, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImageComboBox, cxPCdxBarPopupMenu, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, dxSkinsdxBarPainter, dxBar, cxCheckBox, cxContainer,
  cxTextEdit, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmSistemaPermissao = class(TFrmBaseFilha)
    LblTitulo: TLabel;
    Image: TImage;
    SplitterPrincipal: TSplitter;
    BarManager: TdxBarManager;
    BtnFechar: TdxBarButton;
    dxBrDckCntrlPermissoes: TdxBarDockControl;
    BrPrincipal: TdxBar;
    BvlPrincipal: TBevel;
    PgCntrlPermissoes: TcxPageControl;
    TbShtPermissoes: TcxTabSheet;
    PgCntrlPrincipal: TcxPageControl;
    TbShtPerfis: TcxTabSheet;
    GrdPrf: TcxGrid;
    GrdPrfTbl: TcxGridDBTableView;
    GrdPrfLvl: TcxGridLevel;
    TbShtUsuarios: TcxTabSheet;
    GrdUsr: TcxGrid;
    GrdUsrTbl: TcxGridDBTableView;
    GrdUsrLvl: TcxGridLevel;
    BtnPerfis: TdxBarButton;
    BtnUsuarios: TdxBarButton;
    BtnAcessoPermitir: TdxBarButton;
    BtnAcessoRevogar: TdxBarButton;
    BtnAcessoPermitirTodos: TdxBarButton;
    BtnAcessoRevogarTodos: TdxBarButton;
    DtSrcPerfil: TDataSource;
    DtSrcUsuario: TDataSource;
    GrdPrfTblPER_NOME: TcxGridDBColumn;
    GrdPrfTblPER_ATIVO: TcxGridDBColumn;
    GrdUsrTblUSR_LOGIN: TcxGridDBColumn;
    GrdUsrTblUSR_ATIVO: TcxGridDBColumn;
    DtSrcPermissao: TDataSource;
    GrdPrm: TcxGrid;
    GrdPrmTbl: TcxGridDBTableView;
    GrdPrmLvl: TcxGridLevel;
    GrdPrmTblAPL_LEGENDA: TcxGridDBColumn;
    GrdPrmTblCTR_ATIVO: TcxGridDBColumn;
    GrdPrmTblCTR_LEGENDA: TcxGridDBColumn;
    GrdPrmTblCTR_DESCRICAO: TcxGridDBColumn;
    EdtFiltro: TcxTextEdit;
    Bevel1: TBevel;
    BtnExpandir: TdxBarButton;
    BtnContrair: TdxBarButton;
    DtStPermissaoPerfil: TFDQuery;
    UpdtPermissaoPerfil: TFDUpdateSQL;
    UpdtPermissaoUsuario: TFDUpdateSQL;
    DtStPermissaoUsuario: TFDQuery;
    DtStPermissaoPerfilAPL_ID: TIntegerField;
    DtStPermissaoPerfilAPL_LEGENDA: TStringField;
    DtStPermissaoPerfilAPL_DESCRICAO: TStringField;
    DtStPermissaoPerfilAPL_NOME: TStringField;
    DtStPermissaoPerfilPER_ID: TIntegerField;
    DtStPermissaoPerfilCTR_ID: TIntegerField;
    DtStPermissaoPerfilCTR_ATIVO: TSmallintField;
    DtStPermissaoPerfilCTR_LEGENDA: TStringField;
    DtStPermissaoPerfilCTR_DESCRICAO: TStringField;
    DtStPermissaoPerfilCTR_NOME: TStringField;
    DtStPermissaoUsuarioAPL_ID: TIntegerField;
    DtStPermissaoUsuarioAPL_LEGENDA: TStringField;
    DtStPermissaoUsuarioAPL_DESCRICAO: TStringField;
    DtStPermissaoUsuarioUSR_ID: TIntegerField;
    DtStPermissaoUsuarioCTR_ID: TIntegerField;
    DtStPermissaoUsuarioCTR_ATIVO: TSmallintField;
    DtStPermissaoUsuarioCTR_LEGENDA: TStringField;
    DtStPermissaoUsuarioCTR_DESCRICAO: TStringField;
    DtStPermissaoUsuarioCTR_NOME: TStringField;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnPerfisClick(Sender: TObject);
    procedure BtnUsuariosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TbShtPerfisShow(Sender: TObject);
    procedure TbShtUsuariosShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnAcessoPermitirClick(Sender: TObject);
    procedure BtnAcessoRevogarClick(Sender: TObject);
    procedure BtnAcessoPermitirTodosClick(Sender: TObject);
    procedure BtnAcessoRevogarTodosClick(Sender: TObject);
    procedure GrdPrmTblCTR_ATIVOPropertiesEditValueChanged(Sender: TObject);
    procedure BtnExpandirClick(Sender: TObject);
    procedure BtnContrairClick(Sender: TObject);
    procedure EdtFiltroPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtFiltroEnter(Sender: TObject);
    procedure DtStPermissaoPerfilAfterScroll(DataSet: TDataSet);
  private
    procedure TodosAcessosPermitir(AConceder: Integer);
  end;

var
  FrmSistemaPermissao: TFrmSistemaPermissao;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Sistema.Modulo, Emater.Sistema.Perfil, Emater.Sistema.Usuario, Emater.Sistema.Consts, Emater.Conexao.Modulo;

procedure TFrmSistemaPermissao.BtnAcessoPermitirClick(Sender: TObject);
begin
  inherited;
  if (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 0) then
    begin
      DtSrcPermissao.DataSet.Edit;
      DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger := 1;
      DtSrcPermissao.DataSet.Post;
    end;
end;

procedure TFrmSistemaPermissao.BtnAcessoPermitirTodosClick(Sender: TObject);
begin
  if MSG.Confirmacao(SISTEMA_MSG_CONCEDER_TUDO) then
    TodosAcessosPermitir(1);
end;

procedure TFrmSistemaPermissao.BtnAcessoRevogarClick(Sender: TObject);
begin
  inherited;
  if (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1) then
    begin
      DtSrcPermissao.DataSet.Edit;
      DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger := 0;
      DtSrcPermissao.DataSet.Post;
    end;
end;

procedure TFrmSistemaPermissao.BtnAcessoRevogarTodosClick(Sender: TObject);
begin
  if MSG.Confirmacao(SISTEMA_MSG_REVOGAR_TUDO) then
    TodosAcessosPermitir(0);
end;

procedure TFrmSistemaPermissao.BtnContrairClick(Sender: TObject);
begin
  GrdPrmTbl.ViewData.Collapse(True);
end;

procedure TFrmSistemaPermissao.BtnExpandirClick(Sender: TObject);
begin
  GrdPrmTbl.ViewData.Expand(True);
end;

procedure TFrmSistemaPermissao.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSistemaPermissao.BtnPerfisClick(Sender: TObject);
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

procedure TFrmSistemaPermissao.BtnUsuariosClick(Sender: TObject);
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

procedure TFrmSistemaPermissao.EdtFiltroEnter(Sender: TObject);
begin
  EdtFiltro.SelectAll;
end;

procedure TFrmSistemaPermissao.EdtFiltroPropertiesChange(Sender: TObject);
begin
  GrdPrmTbl.DataController.Filter.BeginUpdate;
  try
    GrdPrmTbl.DataController.Filter.Root.Clear ;
    if (Trim(EdtFiltro.Text) <> '') then
      begin
        GrdPrmTbl.DataController.Filter.Options := GrdPrmTbl.DataController.Filter.Options + [fcoCaseInsensitive];
        GrdPrmTbl.DataController.Filter.Root.AddItem(GrdPrmTblCTR_LEGENDA, foLike, '%' + EdtFiltro.Text + '%', EdtFiltro.Text);
        GrdPrmTbl.DataController.Filter.Active := True;
        GrdPrmTbl.ViewData.Expand(True);
      end
    else
      begin
        GrdPrmTbl.ViewData.Collapse(True);
      end;
  finally
    GrdPrmTbl.DataController.Filter.EndUpdate;
  end;
end;

procedure TFrmSistemaPermissao.DtStPermissaoPerfilAfterScroll(DataSet: TDataSet);
begin
  inherited;
  BtnAcessoPermitir.Enabled := (not (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1));
  BtnAcessoRevogar.Enabled := (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1);

  if (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1) then
    GrdPrmTblCTR_ATIVO.Properties.ReadOnly := (not (BtnAcessoRevogar.Visible = ivAlways)) and (not (BtnAcessoRevogarTodos.Visible = ivAlways))
  else
    if not (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1) then
      GrdPrmTblCTR_ATIVO.Properties.ReadOnly := (not (BtnAcessoPermitir.Visible = ivAlways)) and (not (BtnAcessoPermitirTodos.Visible = ivAlways))
    else
      GrdPrmTblCTR_ATIVO.Properties.ReadOnly := False;
end;

procedure TFrmSistemaPermissao.FormCreate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TFrmSistemaPermissao.FormDestroy(Sender: TObject);
begin
  inherited;
  if (DtStPermissaoPerfil.State in [dsEdit, dsInsert]) then
    DtStPermissaoPerfil.Post;

  if (DtStPermissaoUsuario.State in [dsEdit, dsInsert]) then
    DtStPermissaoUsuario.Post;
end;

procedure TFrmSistemaPermissao.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcPerfil.DataSet := DtmSistemaModulo.DtStPerfil;
  DtmSistemaModulo.DtStPerfil.First;

  DtSrcUsuario.DataSet := DtmSistemaModulo.DtStUsuario;
  DtmSistemaModulo.DtStUsuario.Open;

  DtStPermissaoPerfil.Open;
  DtStPermissaoUsuario.Open;
end;

procedure TFrmSistemaPermissao.GrdPrmTblCTR_ATIVOPropertiesEditValueChanged(Sender: TObject);
begin
  if (DtSrcPermissao.DataSet.State in [dsEdit, dsInsert]) then
    DtSrcPermissao.DataSet.Post;
end;

procedure TFrmSistemaPermissao.TbShtPerfisShow(Sender: TObject);
begin
  DtSrcPermissao.DataSet := DtStPermissaoPerfil;
end;

procedure TFrmSistemaPermissao.TbShtUsuariosShow(Sender: TObject);
begin
  DtSrcPermissao.DataSet := DtStPermissaoUsuario;
end;

procedure TFrmSistemaPermissao.TodosAcessosPermitir(AConceder: Integer);
var
  B: TBookmark;
begin
  DtSrcPermissao.DataSet.DisableControls;
  try
    B := DtSrcPermissao.DataSet.GetBookmark;
    DtSrcPermissao.DataSet.First;
    while not DtSrcPermissao.DataSet.Eof do
    begin
      if ((DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1) and (not (AConceder = 1))) or
        ((not (DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger = 1)) and (AConceder = 1)) then
        begin
          DtSrcPermissao.DataSet.Edit;
          DtSrcPermissao.DataSet.FieldByName('ctr_ativo').AsInteger := AConceder;
          DtSrcPermissao.DataSet.Post;
        end;
      DtSrcPermissao.DataSet.Next;
    end;
    DtSrcPermissao.DataSet.GotoBookmark(B);
    DtSrcPermissao.DataSet.FreeBookmark(B);
  finally
    DtSrcPermissao.DataSet.EnableControls;
  end;
end;

end.
