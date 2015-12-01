unit Emater.Produtividade.Fater.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.DB;

type
  TFrmProdutividadeFaterProduto = class(TFrmBaseBasico)
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    DtSrcProduto: TDataSource;
    Label4: TLabel;
    LkpCmbBxProduto: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  public
    function SelecionarProduto: Integer;
  end;

var
  FrmProdutividadeFaterProduto: TFrmProdutividadeFaterProduto;

implementation

{$R *.dfm}

uses Emater.Cadastro.Modulo, Emater.Recurso.Modulo, Emater.Produtividade.Consts;

procedure TFrmProdutividadeFaterProduto.BtnOKClick(Sender: TObject);
begin
  if (LkpCmbBxProduto.Text <> '') then
    ModalResult := mrOk
  else
    begin
      Msg.Informacao(PRODUTIVIDADE_INFORMACAO_SELECIONAR_PRODUTO);
      LkpCmbBxProduto.SetFocus;
    end;
end;

procedure TFrmProdutividadeFaterProduto.FormCreate(Sender: TObject);
begin
  inherited;
  DtSrcProduto.DataSet := DtmCadastroModulo.DtStProduto;
  LkpCmbBxProduto.Properties.ListSource := DtSrcProduto;
end;

function TFrmProdutividadeFaterProduto.SelecionarProduto: Integer;
begin
  if (ShowModal = mrOk) then
    Result := LkpCmbBxProduto.EditValue
  else
    Result := 0;
end;

end.
