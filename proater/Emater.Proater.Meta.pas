unit Emater.Proater.Meta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, Data.DB, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo;

type
  TFrmProaterMeta = class(TFrmBaseDialogo)
    Label22: TLabel;
    Label2: TLabel;
    DbEdtQtde: TcxDBTextEdit;
    DtSrcSubMeta: TDataSource;
    DbMemoDescricao: TcxDBMemo;
    DbEdtUnidade: TcxDBTextEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterMeta: TFrmProaterMeta;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Pessoal.Modulo;

procedure TFrmProaterMeta.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcSubMeta.DataSet := FrmProaterPrincipal.QrySubMeta;
end;

end.
