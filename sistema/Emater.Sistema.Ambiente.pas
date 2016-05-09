unit Emater.Sistema.Ambiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxPC, Data.DB, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmSistemaAmbiente = class(TFrmBaseDialogo)
    DtSrcUnidade: TDataSource;
    DtSrcParametro: TDataSource;
    Label5: TLabel;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    QryUnidade: TFDQuery;
    QryUnidadeUND_ID: TStringField;
    QryUnidadeUND_NOME_DESCRICAO: TStringField;
    QryParametro: TFDQuery;
    UpdtParametro: TFDUpdateSQL;
    QryParametroPAR_ID: TIntegerField;
    QryParametroPAR_DESCRICAO: TStringField;
    QryParametroPAR_NOME: TStringField;
    QryParametroPAR_VALOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSistemaAmbiente: TFrmSistemaAmbiente;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Modulo, Emater.Recurso.Modulo, Emater.Sistema.Principal, Emater.Cadastro.Modulo,
  Emater.Pessoal.Modulo, Emater.Produtividade.Modulo, Emater.Dne.Modulo, Emater.Relatorio.Modulo;

procedure TFrmSistemaAmbiente.BtnCancelarClick(Sender: TObject);
begin
  inherited;
  if (QryParametro.State = dsEdit) then
    QryParametro.Cancel;
  ModalResult := mrOk;
end;

procedure TFrmSistemaAmbiente.BtnOKClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    if (QryParametro.State = dsEdit) then
      begin
        QryParametro.Post;

        DtmSistemaModulo.RecarregarDados;
        DtmCadastroModulo.RecarregarDados;
        DtmPessoalModulo.RecarregarDados;
        DtmProdutividadeModulo.RecarregarDados;
        DtmDneModulo.RecarregarDados;
        DtmRelatorioModulo.RecarregarDados;

        FrmSistemaPrincipal.AtualizarBarraStatus(
          DtmConexaoModulo.Servidor + ':' + DtmConexaoModulo.Base,
          DtmConexaoModulo.UsuarioNome,
          DtmSistemaModulo.UnidadeLocalNome);
      end;
  finally
    Screen.Cursor := crDefault;
  end;
  ModalResult := mrOk;
end;

procedure TFrmSistemaAmbiente.FormShow(Sender: TObject);
begin
  inherited;
  QryParametro.Open;
  QryUnidade.Open;
end;

end.
