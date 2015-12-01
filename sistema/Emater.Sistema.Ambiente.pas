unit Emater.Sistema.Ambiente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxPC, Data.DB, FIBDataSet, pFIBDataSet, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmSistemaAmbiente = class(TFrmBaseDialogo)
    DtStUnidade: TpFIBDataSet;
    DtSrcUnidade: TDataSource;
    DtStUnidadeUND_ID: TFIBStringField;
    DtStUnidadeUND_NOME_DESCRICAO: TFIBStringField;
    DtStParametro: TpFIBDataSet;
    DtSrcParametro: TDataSource;
    DtStParametroPAR_ID: TFIBIntegerField;
    DtStParametroPAR_DESCRICAO: TFIBStringField;
    DtStParametroPAR_NOME: TFIBStringField;
    DtStParametroPAR_VALOR: TFIBStringField;
    Label5: TLabel;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
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
  if (DtStParametro.State = dsEdit) then
    DtStParametro.Cancel;
  ModalResult := mrOk;
end;

procedure TFrmSistemaAmbiente.BtnOKClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    if (DtStParametro.State = dsEdit) then
      begin
        DtStParametro.Post;

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
  DtStParametro.Open;
  DtStUnidade.Open;
end;

end.
