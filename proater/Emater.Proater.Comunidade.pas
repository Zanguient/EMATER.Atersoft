unit Emater.Proater.Comunidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBEdit;

type
  TFrmProaterComunidade = class(TFrmBaseDialogo)
    DtSrcComunidade: TDataSource;
    Label22: TLabel;
    DbLkpCmbBxComunidade: TcxDBLookupComboBox;
    Label3: TLabel;
    DbEdtLocalizacao: TcxDBTextEdit;
    Label1: TLabel;
    DbEdtQtdeBeneficiario: TcxDBTextEdit;
    Label2: TLabel;
    DbEdtQtdeUPF: TcxDBTextEdit;
    BtnPesquisar: TcxButton;
    procedure DbLkpCmbBxComunidadePropertiesEditValueChanged(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProaterComunidade: TFrmProaterComunidade;

implementation

{$R *.dfm}

uses Emater.Proater.Principal, Emater.Cadastro.Modulo, Emater.Cadastro.Comunidade.Busca;

procedure TFrmProaterComunidade.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  FrmCadastroComunidadeBusca := TFrmCadastroComunidadeBusca.Create(Self);
  try
    if (FrmCadastroComunidadeBusca.ShowModal = mrOk) then
      begin
        if not (DtSrcComunidade.DataSet.State in [dsEdit, dsInsert]) then
          DtSrcComunidade.DataSet.Edit;
        DtSrcComunidade.DataSet.FieldByName('COM_ID').AsInteger := FrmCadastroComunidadeBusca.QryConsultaCOM_ID.Value;
      end;
  finally
    FrmCadastroComunidadeBusca.Release;
    FrmCadastroComunidadeBusca := nil;
  end;
end;

procedure TFrmProaterComunidade.DbLkpCmbBxComunidadePropertiesEditValueChanged(Sender: TObject);
begin
  inherited;

  if (DtSrcComunidade.DataSet.State in [dsEdit, dsInsert]) then
    begin
      if DtmCadastroModulo.DtStComunidade.Locate('COM_ID', DbLkpCmbBxComunidade.EditValue) then
        DtSrcComunidade.DataSet.FieldByName('PRC_LOCALIZACAO').AsString := DtmCadastroModulo.DtStComunidade.FieldByName('COM_LOCALIZACAO').AsString;
    end;
end;

procedure TFrmProaterComunidade.FormShow(Sender: TObject);
begin
  inherited;
  DtSrcComunidade.DataSet := FrmProaterPrincipal.QryComunidade;
  DbLkpCmbBxComunidade.Properties.ListSource := DtmCadastroModulo.DtSrcComunidade;
end;

end.
