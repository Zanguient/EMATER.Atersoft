unit Emater.Proater.Demanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, Data.DB, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProaterDemanda = class(TFrmBaseDialogo)
    Label22: TLabel;
    DbLkpCmbBxCargo: TcxDBLookupComboBox;
    Label2: TLabel;
    DbEdtQtdeBeneficiario: TcxDBTextEdit;
    DtSrcCargo: TDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterDemanda: TFrmProaterDemanda;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Pessoal.Modulo;

procedure TFrmProaterDemanda.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcCargo.DataSet := FrmProaterPrincipal.QryDemanda;
  DbLkpCmbBxCargo.Properties.ListSource := DtmPessoalModulo.DtSrcCargo;
end;

end.
