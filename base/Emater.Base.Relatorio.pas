unit Emater.Base.Relatorio;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, Messages,
  Buttons, ExtCtrls, Mask, DB, ComCtrls, DateUtils, DBClient, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxLookAndFeelPainters, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Menus, cxGraphics, IniFiles, cxLookAndFeels, frxClass, frxChart, frxDBSet, VclTee.TeCanvas,
  VclTee.TeEngine, VclTee.TeeProcs, Emater.Base.Basico, dxSkinsCore, dxSkinOffice2013White, Vcl.Imaging.jpeg, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxPC, dxSkinSeven, dxSkinSevenClassic, cxDBLookupComboBox, dxBarBuiltInMenu;

type
  TGraficoSeriesVisiveis = array of Integer;

  TFrmBaseRelatorio = class(TFrmBaseBasico)
    BtnImprimir: TcxButton;
    BtnCancelar: TcxButton;
    FrxPrincipal: TfrxReport;
    PgCntrlRelatorio: TcxPageControl;
    TbShtFiltros: TcxTabSheet;
    GrpBxFiltro: TcxGroupBox;
    GrpBxOpcoes: TcxGroupBox;
    LblModo: TLabel;
    LblCampo: TLabel;
    CmbBxModo: TcxComboBox;
    CmbBxCampo: TcxComboBox;
    ImgMain: TImage;
    LblTitulo: TLabel;
    ShpTitulo: TShape;
    BtnLimpar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FrxPrincipalGetValue(const VarName: string; var Value: Variant);
    procedure BtnImprimirClick(Sender: TObject);
  private
    FSQLDetalhe: TStringList;
    FSQLMestre: TStringList;
    FBloqueado: Boolean;
  public
    procedure BloquearControles;
    procedure DesbloquearControles;
    property SQLMestre: TStringList read FSQLMestre write FSQLMestre;
    property SQLDetalhe: TStringList read FSQLDetalhe write FSQLDetalhe;
  end;

var
  FrmBaseRelatorio: TFrmBaseRelatorio;

implementation

uses Emater.Dialogo.Consts, Emater.Recurso.Consts, Emater.Sistema.Modulo, Emater.Conexao.Modulo;

{$R *.dfm}

procedure TFrmBaseRelatorio.FormShow(Sender: TObject);
begin
  inherited;
  if (CmbBxCampo.Properties.Items.Count > 0) and (CmbBxCampo.ItemIndex = -1)
    then CmbBxCampo.ItemIndex := 0;
  if (CmbBxModo.Properties.Items.Count > 0)
    then CmbBxModo.ItemIndex := 0;
end;
 
procedure TFrmBaseRelatorio.FrxPrincipalGetValue(const VarName: string; var Value: Variant);
begin
  if (VarName = 'unidade') then
    Value := DtmSistemaModulo.UnidadeLocalNome;

  if (VarName = 'usuario') then
    Value := DtmConexaoModulo.UsuarioNome;

  if (VarName = 'titulo') then
    Value := LblTitulo.Caption;
end;

procedure TFrmBaseRelatorio.BloquearControles;
begin
  BtnImprimir.Enabled := False;
  BtnCancelar.Enabled := False;

  FBloqueado := True;
end;

procedure TFrmBaseRelatorio.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  FrxPrincipal.ReportOptions.Name := LblTitulo.Caption;
end;

procedure TFrmBaseRelatorio.DesbloquearControles;
begin
  BtnImprimir.Enabled := True;
  BtnCancelar.Enabled := True;
  FBloqueado := False;
end;

procedure TFrmBaseRelatorio.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := not FBloqueado;
end;

procedure TFrmBaseRelatorio.FormCreate(Sender: TObject);
begin
  inherited;

  BtnImprimir.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_SELECIONAR);
  BtnCancelar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_FECHAR);
  BtnLimpar.Glyph.Handle := LoadBitmap(HInstance, RECURSO_BMP_LIMPAR);

  FSQLMestre := TStringList.Create;
  FSQLDetalhe := TStringList.Create;
  FBloqueado := False;

  ActiveControl := CmbBxCampo;
end;

procedure TFrmBaseRelatorio.FormDestroy(Sender: TObject);
begin
  FSQLMestre.Free;
  FSQLDetalhe.Free;
  inherited;
end;

end.
