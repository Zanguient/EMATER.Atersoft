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
    DbCmbBxMes: TcxDBComboBox;
    Label3: TLabel;
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

uses Emater.Proater.Principal, Emater.Pessoal.Modulo, Emater.Proater.Modulo, Emater.Proater.Consts;

procedure TFrmProaterMetodo.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcSubMetodo.DataSet := FrmProaterPrincipal.QrySubMetodo;
  DbLkpCmbBxMetodo.Properties.ListSource := DtmProaterModulo.DtSrcMetodologia;

  DbCmbBxMes.Properties.Items.Clear;
  DbCmbBxMes.Properties.Items.Add(MES_JANEIRO);
  DbCmbBxMes.Properties.Items.Add(MES_FEVEREIRO);
  DbCmbBxMes.Properties.Items.Add(MES_MARCO);
  DbCmbBxMes.Properties.Items.Add(MES_ABRIL);
  DbCmbBxMes.Properties.Items.Add(MES_MAIO);
  DbCmbBxMes.Properties.Items.Add(MES_JUNHO);
  DbCmbBxMes.Properties.Items.Add(MES_JULHO);
  DbCmbBxMes.Properties.Items.Add(MES_AGOSTO);
  DbCmbBxMes.Properties.Items.Add(MES_SETEMBRO);
  DbCmbBxMes.Properties.Items.Add(MES_OUTUBRO);
  DbCmbBxMes.Properties.Items.Add(MES_NOVEMBRO);
  DbCmbBxMes.Properties.Items.Add(MES_DEZEMBRO);
end;

end.
