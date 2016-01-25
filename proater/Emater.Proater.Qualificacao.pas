unit Emater.Proater.Qualificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, cxContainer, cxEdit, cxDBEdit, Data.DB, cxTextEdit, cxMemo, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmProaterQualificacao = class(TFrmBaseDialogo)
    Label1: TLabel;
    DbMemoDescricao: TcxDBMemo;
    DtSrcQualificacao: TDataSource;
    DbEdtQtdeExistente: TcxDBTextEdit;
    Label3: TLabel;
    Label22: TLabel;
    DbLkpCmbBxMetodologia: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterQualificacao: TFrmProaterQualificacao;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Proater.Modulo;

procedure TFrmProaterQualificacao.FormShow(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxMetodologia.Properties.ListSource := DtmProaterModulo.DtSrcMetodologia;
  DtSrcQualificacao.DataSet := FrmProaterPrincipal.QryQualificacao;
end;

end.
