unit Emater.Proater.Orcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, Data.DB, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo;

type
  TFrmProaterOrcamento = class(TFrmBaseDialogo)
    Label22: TLabel;
    Label2: TLabel;
    DbEdtAno: TcxDBTextEdit;
    DtSrcSubOrcamento: TDataSource;
    DbEdtValor: TcxDBTextEdit;
    Label1: TLabel;
    DbEdtFonte: TcxDBTextEdit;
    Label3: TLabel;
    DbEdtElemento: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterOrcamento: TFrmProaterOrcamento;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Pessoal.Modulo;

procedure TFrmProaterOrcamento.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcSubOrcamento.DataSet := FrmProaterPrincipal.QrySubOrcamento;
end;

end.
