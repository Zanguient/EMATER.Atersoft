unit Emater.Proater.Veiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, cxDBEdit, Data.DB, cxTextEdit, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProaterVeiculo = class(TFrmBaseDialogo)
    Label1: TLabel;
    DbMemoDescricao: TcxDBMemo;
    DtSrcVeiculo: TDataSource;
    Label2: TLabel;
    DbEdtQtdeNecessaria: TcxDBTextEdit;
    DbEdtQtdeExistente: TcxDBTextEdit;
    Label3: TLabel;
    Label22: TLabel;
    DbLkpCmbBxVeiculoTipo: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterVeiculo: TFrmProaterVeiculo;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Proater.Modulo;

procedure TFrmProaterVeiculo.FormShow(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxVeiculoTipo.Properties.ListSource := DtmProaterModulo.DtSrcVeiculoTipo;
  DtSrcVeiculo.DataSet := FrmProaterPrincipal.QryVeiculo;
end;

end.
