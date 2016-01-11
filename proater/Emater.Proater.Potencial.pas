unit Emater.Proater.Potencial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxMemo, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProaterPotencial = class(TFrmBaseDialogo)
    DtSrcPotencial: TDataSource;
    Label22: TLabel;
    DbLkpCmbBxContexto: TcxDBLookupComboBox;
    DbMemoPotencialidade: TcxDBMemo;
    Label1: TLabel;
    DbMemoProblema: TcxDBMemo;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterPotencial: TFrmProaterPotencial;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Proater.Modulo;

procedure TFrmProaterPotencial.FormShow(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxContexto.Properties.ListSource := DtmProaterModulo.DtSrcContexto;
  DtSrcPotencial.DataSet := FrmProaterPrincipal.QryPotencial;
end;

end.
