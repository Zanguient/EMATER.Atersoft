unit Emater.Proater.SubProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxDBEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxMemo, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmProaterSubprojeto = class(TFrmBaseDialogo)
    DtSrcSubprojeto: TDataSource;
    Label12: TLabel;
    LblPeriodoPlantio: TLabel;
    LblPeriodoColheita: TLabel;
    DbDtEdtSubProjeto: TcxDBDateEdit;
    DbEdtAnoMesInicio: TcxDBMaskEdit;
    DbEdtAnoMesFim: TcxDBMaskEdit;
    DbEdtSubProjeto: TcxDBTextEdit;
    Label1: TLabel;
    DbLkpCmbBxProjeto: TcxDBLookupComboBox;
    Label2: TLabel;
    DbLkpCmbBxResponsavel: TcxDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DbLkpCmbBxSubstituto: TcxDBLookupComboBox;
    PgCntrlSecundario: TcxPageControl;
    TbShtJustificativa: TcxTabSheet;
    TbShtGeral: TcxTabSheet;
    TbShtEspecifico: TcxTabSheet;
    BtnJustificativa: TcxButton;
    cxDbMemoJustificativa: TcxDBMemo;
    BtnGeral: TcxButton;
    cxDbMemoGeral: TcxDBMemo;
    BtnEspecifico: TcxButton;
    cxDbMemoEspecifico: TcxDBMemo;
    DtStProjeto: TFDQuery;
    DtStProjetoPRJ_ID: TIntegerField;
    DtStProjetoPRJ_NOME: TStringField;
    DtSrcProjeto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure BtnJustificativaClick(Sender: TObject);
    procedure BtnGeralClick(Sender: TObject);
    procedure BtnEspecificoClick(Sender: TObject);
  private
    procedure VisualizarTexto(const FieldName: string);
  public
    { Public declarations }
  end;

var
  FrmProaterSubprojeto: TFrmProaterSubprojeto;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Pessoal.Modulo, Emater.Produtividade.Fater.Editor;

procedure TFrmProaterSubprojeto.BtnEspecificoClick(Sender: TObject);
begin
  VisualizarTexto('SPR_OBJETIVO_ESPECIFICO');
end;

procedure TFrmProaterSubprojeto.BtnGeralClick(Sender: TObject);
begin
  VisualizarTexto('SPR_OBJETIVO_GERAL');
end;

procedure TFrmProaterSubprojeto.BtnJustificativaClick(Sender: TObject);
begin
  VisualizarTexto('SPR_JUSTIFICATIVA');
end;

procedure TFrmProaterSubprojeto.VisualizarTexto(const FieldName: string);
begin
  FrmProdutividadeFaterEditor := TFrmProdutividadeFaterEditor.Create(Self);
  Screen.Cursor := crHourGlass;
  try
    FrmProdutividadeFaterEditor.Width := Width;
    FrmProdutividadeFaterEditor.Height := Height;
    FrmProdutividadeFaterEditor.Top := Top;
    FrmProdutividadeFaterEditor.Left := Left;
    FrmProdutividadeFaterEditor.VisualizarTexto(DtSrcSubprojeto.DataSet, FieldName);
  finally
    FrmProdutividadeFaterEditor.Release;
    FrmProdutividadeFaterEditor := nil;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmProaterSubprojeto.FormCreate(Sender: TObject);
begin
  inherited;
  DtSrcSubprojeto.DataSet := FrmProaterPrincipal.QrySubProjeto;
  DbLkpCmbBxResponsavel.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  DbLkpCmbBxSubstituto.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
end;

end.
