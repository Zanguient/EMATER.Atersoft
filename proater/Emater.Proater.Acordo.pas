unit Emater.Proater.Acordo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, Data.DB, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxDBEdit, cxTextEdit, cxMemo;

type
  TFrmProaterAcordo = class(TFrmBaseDialogo)
    Label1: TLabel;
    DbMemoDescricao: TcxDBMemo;
    Label2: TLabel;
    DbMemoObjetivo: TcxDBMemo;
    DbImgCmbBxTipo: TcxDBImageComboBox;
    Label3: TLabel;
    DbImgCmbBxSituacao: TcxDBImageComboBox;
    Label4: TLabel;
    DtSrcAcordo: TDataSource;
    Label5: TLabel;
    DbMemoAcao: TcxDBMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterAcordo: TFrmProaterAcordo;

implementation

{$R *.dfm}

uses Emater.Proater.Principal;

procedure TFrmProaterAcordo.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcAcordo.DataSet := FrmProaterPrincipal.QryAcordo;
end;

end.
