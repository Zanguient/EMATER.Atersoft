unit Emater.Cadastro.Unidade.Atividade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC,
  cxContainer, cxEdit, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalc, Data.DB, dxSkinSeven, dxSkinSevenClassic, Vcl.ExtCtrls, DateUtils, dxBarBuiltInMenu;

type
  TFrmCadastroUnidadeAtividade = class(TFrmBaseDialogo)
    GrpBxAtividades: TcxGroupBox;
    Label1: TLabel;
    DbEdtDataVisita: TcxDBDateEdit;
    LblSafra: TLabel;
    Label38: TLabel;
    DbLkpCmbBxProduto: TcxDBLookupComboBox;
    DbEdtSafraInicio: TcxDBMaskEdit;
    LblAreaPlantada: TLabel;
    DbEdtAreaPlantada: TcxDBCalcEdit;
    LblAreaColhida: TLabel;
    DbEdtAreaColhida: TcxDBCalcEdit;
    LblAreaPerdida: TLabel;
    DbLkpCmbBxUnidadeMedida: TcxDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    DbEdtQuantidade: TcxDBCalcEdit;
    GrpBxRegistro: TcxGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DbLkpCmbBxTecnico: TcxDBLookupComboBox;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    DtSrcProducaoAtividade: TDataSource;
    DtSrcProduto: TDataSource;
    Label8: TLabel;
    DbLkpCmbBxSistema: TcxDBLookupComboBox;
    LblTitulo: TLabel;
    Image: TImage;
    DbEdtSafraFim: TcxDBMaskEdit;
    LblBarra: TLabel;
    LblPeriodoPlantio: TLabel;
    DbEdtPeriodoPlantio: TcxDBMaskEdit;
    DbEdtAreaPerdida: TcxDBCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure DbLkpCmbBxProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure DbLkpCmbBxProdutoPropertiesChange(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure DbEdtAnoMesPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    procedure ValidarDivisaoTipo(const Tipo: Integer);
  end;

var
  FrmCadastroUnidadeAtividade: TFrmCadastroUnidadeAtividade;

implementation

{$R *.dfm}

uses Emater.Cadastro.Unidade, Emater.Conexao.Modulo, Emater.Sistema.Modulo, Emater.Pessoal.Modulo, Emater.Cadastro.Modulo,
  Emater.Dialogo.Modulo;

procedure TFrmCadastroUnidadeAtividade.BtnOKClick(Sender: TObject);
begin
  inherited;
  if not DtmDialogoModulo.ExisteCamposPendentes(DtSrcProducaoAtividade.DataSet) then
    ModalResult := mrOk;
end;

procedure TFrmCadastroUnidadeAtividade.DbEdtAnoMesPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
var
  AnoAtual, Ano, Mes: Integer;
begin
  if (Trim(DisplayValue) <> '') then
    begin
      Ano := StrToIntDef(Copy(DisplayValue, 1, 4), 0);
      Mes := StrToIntDef(Copy(DisplayValue, 6, 2), 0);

      AnoAtual := YearOf(Date);
      if ((Ano < 1900) or (Ano > AnoAtual)) then
        begin
          ErrorText := 'O ano informado está incorreto.';
          Error := True;
          Msg.Erro(ErrorText);
        end
      else
        if (Mes = 0) or (Mes > 12) then
          begin
            ErrorText := 'O mês informado está incorreto.';
            Error := True;
            Msg.Erro(ErrorText);
          end
        else
          Error := False;
    end;
end;

procedure TFrmCadastroUnidadeAtividade.DbLkpCmbBxProdutoPropertiesChange(Sender: TObject);
begin
  LblTitulo.Caption := StringOfChar(' ', 6) + DbLkpCmbBxProduto.Text;
end;

procedure TFrmCadastroUnidadeAtividade.DbLkpCmbBxProdutoPropertiesEditValueChanged(Sender: TObject);
begin
  if DtSrcProduto.DataSet.Locate('PRD_ID', DtSrcProducaoAtividade.DataSet.FieldByName('PRD_ID').AsInteger, []) then
    begin
      if (DtSrcProducaoAtividade.State in [dsEdit, dsInsert]) then
        DtSrcProducaoAtividade.DataSet.FieldByName('UNI_ID').AsInteger := DtSrcProduto.DataSet.FieldByName('UNI_ID').AsInteger;

      ValidarDivisaoTipo(DtSrcProduto.DataSet.FieldByName('DIV_TIPO').AsInteger);
    end;
end;

procedure TFrmCadastroUnidadeAtividade.FormShow(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxSistema.Properties.ListSource := DtmCadastroModulo.DtSrcSistemaProdutivo;
  DbLkpCmbBxUnidadeMedida.Properties.ListSource := DtmCadastroModulo.DtSrcUnidade;
  DbLkpCmbBxTecnico.Properties.ListSource := DtmPessoalModulo.DtSrcFuncionario;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;

  if DtSrcProduto.DataSet.Locate('PRD_ID', DtSrcProducaoAtividade.DataSet.FieldByName('PRD_ID').AsInteger, []) then
    ValidarDivisaoTipo(DtSrcProduto.DataSet.FieldByName('DIV_TIPO').AsInteger);

  LblTitulo.Caption := StringOfChar(' ', 6) + DbLkpCmbBxProduto.Text;
end;

procedure TFrmCadastroUnidadeAtividade.ValidarDivisaoTipo(const Tipo: Integer);
begin
  LblAreaPlantada.Visible := (Tipo = 2);
  DbEdtAreaPlantada.Visible := LblAreaPlantada.Visible;
  LblAreaColhida.Visible := LblAreaPlantada.Visible;
  DbEdtAreaColhida.Visible := LblAreaPlantada.Visible;
  LblAreaPerdida.Visible := LblAreaPlantada.Visible;
  DbEdtAreaPerdida.Visible := LblAreaPlantada.Visible;
  LblPeriodoPlantio.Visible := LblAreaPlantada.Visible;
  DbEdtPeriodoPlantio.Visible := LblAreaPlantada.Visible;
end;

end.
