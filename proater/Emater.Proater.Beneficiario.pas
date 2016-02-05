unit Emater.Proater.Beneficiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, Data.DB, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProaterBeneficiario = class(TFrmBaseDialogo)
    Label22: TLabel;
    DbLkpCmbBxComunidade: TcxDBLookupComboBox;
    Label2: TLabel;
    DbEdtQtde: TcxDBTextEdit;
    DtSrcSubComunidade: TDataSource;
    DbEdtAno: TcxDBTextEdit;
    Label1: TLabel;
    Label3: TLabel;
    DbLkpCmbBxCategoria: TcxDBLookupComboBox;
    Label4: TLabel;
    DbLkpCmbBxProduto: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterBeneficiario: TFrmProaterBeneficiario;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Pessoal.Modulo, Emater.Proater.Modulo, Emater.Cadastro.Modulo;

procedure TFrmProaterBeneficiario.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcSubComunidade.DataSet := FrmProaterPrincipal.QrySubComunidade;
  DbLkpCmbBxComunidade.Properties.ListSource := DtmCadastroModulo.DtSrcComunidade;
  DbLkpCmbBxCategoria.Properties.ListSource := DtmCadastroModulo.DtSrcCategoria;
  DbLkpCmbBxProduto.Properties.ListSource := DtmCadastroModulo.DtSrcProduto;
end;

end.
