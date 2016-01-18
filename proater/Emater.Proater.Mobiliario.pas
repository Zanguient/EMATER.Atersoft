unit Emater.Proater.Mobiliario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, cxDBEdit, Data.DB, cxTextEdit, cxMemo;

type
  TFrmProaterMobiliario = class(TFrmBaseDialogo)
    Label1: TLabel;
    DbMemoDescricao: TcxDBMemo;
    DtSrcMobiliario: TDataSource;
    Label2: TLabel;
    DbEdtQtdeNecessaria: TcxDBTextEdit;
    DbEdtQtdeExistente: TcxDBTextEdit;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterMobiliario: TFrmProaterMobiliario;

implementation

{$R *.dfm}

uses Emater.Proater.Principal;

procedure TFrmProaterMobiliario.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcMobiliario.DataSet := FrmProaterPrincipal.QryMobiliario;
end;

end.
