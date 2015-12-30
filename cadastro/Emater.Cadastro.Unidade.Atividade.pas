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
    Label38: TLabel;
    DbLkpCmbBxProduto: TcxDBLookupComboBox;
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
    LblPeriodoPlantio: TLabel;
    DbEdtPeriodoPlantio: TcxDBMaskEdit;
    DbEdtAreaPerdida: TcxDBCalcEdit;
    LblPeriodoColheita: TLabel;
    DbEdtPeriodoColheita: TcxDBMaskEdit;
    LblAno: TLabel;
    DbEdtAno: TcxDBMaskEdit;
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
      Ano := StrToIntDef(Copy(DisplayValue, 4, 4), 0);
      Mes := StrToIntDef(Copy(DisplayValue, 1, 2), 0);

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
var
  Cultura, Criacao, Outros: Boolean;
begin
  Criacao := (Tipo = 1);
  Cultura := (Tipo = 2);
  Outros := (Tipo = 3);

  LblAno.Visible := Criacao or Outros;
  DbEdtAno.Visible := Criacao or Outros;

  LblAreaPlantada.Visible := Cultura;
  DbEdtAreaPlantada.Visible := Cultura;
  LblAreaColhida.Visible := Cultura;
  DbEdtAreaColhida.Visible := Cultura;
  LblAreaPerdida.Visible := Cultura;
  DbEdtAreaPerdida.Visible := Cultura;
  LblPeriodoPlantio.Visible := Cultura;
  DbEdtPeriodoPlantio.Visible := Cultura;
  LblPeriodoColheita.Visible := Cultura;
  DbEdtPeriodoColheita.Visible := Cultura;
end;

end.
