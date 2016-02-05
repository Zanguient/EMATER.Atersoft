unit Emater.Proater.Metodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, Data.DB, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProaterMetodo = class(TFrmBaseDialogo)
    Label22: TLabel;
    DbLkpCmbBxMetodo: TcxDBLookupComboBox;
    Label2: TLabel;
    DbEdtQtde: TcxDBTextEdit;
    DtSrcSubMetodo: TDataSource;
    DbEdtAno: TcxDBTextEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterMetodo: TFrmProaterMetodo;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Pessoal.Modulo, Emater.Proater.Modulo;

procedure TFrmProaterMetodo.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcSubMetodo.DataSet := FrmProaterPrincipal.QrySubMetodo;
  DbLkpCmbBxMetodo.Properties.ListSource := DtmProaterModulo.DtSrcMetodologia;
end;

end.
