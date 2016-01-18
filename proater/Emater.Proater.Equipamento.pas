unit Emater.Proater.Equipamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, cxDBEdit, Data.DB, cxTextEdit, cxMemo;

type
  TFrmProaterEquipamento = class(TFrmBaseDialogo)
    Label1: TLabel;
    DbMemoDescricao: TcxDBMemo;
    DtSrcEquipamento: TDataSource;
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
  FrmProaterEquipamento: TFrmProaterEquipamento;

implementation

{$R *.dfm}

uses Emater.Proater.Principal;

procedure TFrmProaterEquipamento.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcEquipamento.DataSet := FrmProaterPrincipal.QryEquipamento;
end;

end.
