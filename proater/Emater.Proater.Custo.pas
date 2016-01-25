unit Emater.Proater.Custo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, cxDBEdit, Data.DB, cxTextEdit, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit;

type
  TFrmProaterCusto = class(TFrmBaseDialogo)
    DtSrcCusto: TDataSource;
    Label3: TLabel;
    Label22: TLabel;
    DbLkpCmbBxCustoTipo: TcxDBLookupComboBox;
    DbEdtValor: TcxDBCurrencyEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterCusto: TFrmProaterCusto;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Proater.Modulo;

procedure TFrmProaterCusto.FormShow(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxCustoTipo.Properties.ListSource := DtmProaterModulo.DtSrcCustoTipo;
  DtSrcCusto.DataSet := FrmProaterPrincipal.QryCusto;
end;

end.
