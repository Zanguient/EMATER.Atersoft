unit Emater.Cadastro.Unidade.Comercio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCurrencyEdit, cxMaskEdit, cxCalc, cxTextEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxImageComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu;

type
  TFrmCadastroUnidadeComercio = class(TFrmBaseDialogo)
    DtSrcProducaoProduto: TDataSource;
    DtSrcDerivado: TDataSource;
    cxGroupBox1: TcxGroupBox;
    LblOutro: TLabel;
    DbEdtOutro: TcxDBTextEdit;
    LblConsumida: TLabel;
    DbEdtConsumida: TcxDBCalcEdit;
    LblComercializada: TLabel;
    DbEdtComercializada: TcxDBCalcEdit;
    Label4: TLabel;
    DbEdtValorUnitario: TcxDBCurrencyEdit;
    DbLkpCmbBxProduto: TcxDBLookupComboBox;
    LblProduto: TLabel;
    DbRdGrpTipo: TcxDBRadioGroup;
    LblDerivado: TLabel;
    DbLkpCmbBxDerivado: TcxDBLookupComboBox;
    DbEdtTotal: TcxDBCurrencyEdit;
    Label6: TLabel;
    DtSrcDestino: TDataSource;
    DtSrcProduto: TDataSource;
    LblUnidadeMedida: TLabel;
    DbLkpCmbBxUnidadeMedida: TcxDBLookupComboBox;
    LblTitulo: TLabel;
    Image: TImage;
    DtSrcProducaoAtividade: TDataSource;
    Label1: TLabel;
    DbEdtQtdeProduzida: TcxDBTextEdit;
    DbLkpCmbBxDestino: TcxDBLookupComboBox;
    Label5: TLabel;
    procedure DbRdGrpTipoPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DbLkpCmbBxProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure DbLkpCmbBxDerivadoPropertiesEditValueChanged(Sender: TObject);
    procedure DbLkpCmbBxProdutoPropertiesChange(Sender: TObject);
    procedure DbLkpCmbBxDerivadoPropertiesChange(Sender: TObject);
    procedure DbEdtOutroPropertiesChange(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    procedure AtualizarTitulo;
  end;

var
  FrmCadastroUnidadeComercio: TFrmCadastroUnidadeComercio;

implementation

{$R *.dfm}

uses Emater.Cadastro.Unidade, Emater.Conexao.Modulo, Emater.Cadastro.Modulo, Emater.Cadastro.Consts;

procedure TFrmCadastroUnidadeComercio.AtualizarTitulo;
begin
  case DbRdGrpTipo.ItemIndex of
    0:
      begin
        LblTitulo.Caption := StringOfChar(' ', 6) + DbLkpCmbBxProduto.Text;
      end;
    1:
      begin
        LblTitulo.Caption := StringOfChar(' ', 6) + DbLkpCmbBxDerivado.Text;
      end;
    2:
      begin
        LblTitulo.Caption := StringOfChar(' ', 6) + DbEdtOutro.Text;
      end;
  end;
end;

procedure TFrmCadastroUnidadeComercio.BtnOKClick(Sender: TObject);
var
  Colhido, Comercializado: string;
begin
  if (DtSrcProducaoProduto.DataSet.FieldByName('PRP_TIPO').AsInteger = 2) then
    begin
      if ((DtSrcProducaoProduto.DataSet.FieldByName('PRP_QTDE_CONSUMIDA').AsFloat +
        DtSrcProducaoProduto.DataSet.FieldByName('PRP_QTDE_COMERCIALIZADA').AsFloat) >
        DtSrcProducaoAtividade.DataSet.FieldByName('ATV_QUANTIDADE').AsFloat) then
        begin
          Comercializado := FloatToStr(DtSrcProducaoProduto.DataSet.FieldByName('PRP_QTDE_CONSUMIDA').AsFloat +
            DtSrcProducaoProduto.DataSet.FieldByName('PRP_QTDE_COMERCIALIZADA').AsFloat);
          Colhido := DtSrcProducaoAtividade.DataSet.FieldByName('ATV_QUANTIDADE').AsString;
          MSG.Aviso(Format(CADASTRO_AVISO_TOTAL_COMERCIALIZADO_MAIOR, [Colhido, Comercializado]));
          if DbEdtConsumida.CanFocus then
            DbEdtConsumida.SetFocus;
        end
      else
        ModalResult := mrOk;
    end
  else
    ModalResult := mrOk;
end;

procedure TFrmCadastroUnidadeComercio.DbEdtOutroPropertiesChange(Sender: TObject);
begin
  AtualizarTitulo;
end;

procedure TFrmCadastroUnidadeComercio.DbLkpCmbBxDerivadoPropertiesChange(Sender: TObject);
begin
  AtualizarTitulo;
end;

procedure TFrmCadastroUnidadeComercio.DbLkpCmbBxDerivadoPropertiesEditValueChanged(Sender: TObject);
begin
  if DtSrcDerivado.DataSet.Locate('DEV_ID', DtSrcProducaoProduto.DataSet.FieldByName('DEV_ID').AsInteger, []) then
    begin
      if (DtSrcProducaoProduto.State in [dsEdit, dsInsert]) then
        DtSrcProducaoProduto.DataSet.FieldByName('UNI_ID').AsInteger := DtSrcDerivado.DataSet.FieldByName('UNI_ID').AsInteger;
    end;

  LblConsumida.Visible := (DtSrcProducaoProduto.DataSet.FieldByName('DES_ID').AsInteger = 100000003);
  DbEdtConsumida.Visible := (DtSrcProducaoProduto.DataSet.FieldByName('DES_ID').AsInteger = 100000003);
  LblComercializada.Visible := (DtSrcProducaoProduto.DataSet.FieldByName('DES_ID').AsInteger <> 100000003);
  DbEdtComercializada.Visible := (DtSrcProducaoProduto.DataSet.FieldByName('DES_ID').AsInteger <> 100000003);
end;

procedure TFrmCadastroUnidadeComercio.DbLkpCmbBxProdutoPropertiesChange(Sender: TObject);
begin
  AtualizarTitulo;
end;

procedure TFrmCadastroUnidadeComercio.DbLkpCmbBxProdutoPropertiesEditValueChanged(Sender: TObject);
begin
  if DtSrcProduto.DataSet.Locate('PRD_ID', DtSrcProducaoProduto.DataSet.FieldByName('PRD_ID').AsInteger, []) then
    begin
      if (DtSrcProducaoProduto.State in [dsEdit, dsInsert]) then
        DtSrcProducaoProduto.DataSet.FieldByName('UNI_ID').AsInteger := DtSrcProduto.DataSet.FieldByName('UNI_ID').AsInteger;
    end;
end;

procedure TFrmCadastroUnidadeComercio.DbRdGrpTipoPropertiesEditValueChanged(Sender: TObject);
begin
  LblProduto.Enabled := False;
  DbLkpCmbBxProduto.Enabled := False;
  LblDerivado.Enabled := False;
  DbLkpCmbBxDerivado.Enabled := False;
  LblOutro.Enabled := False;
  DbEdtOutro.Enabled := False;
  LblUnidadeMedida.Enabled := False;
  DbLkpCmbBxUnidadeMedida.Enabled := False;

  case DbRdGrpTipo.ItemIndex of
    0:
      begin
        if (DtSrcProducaoProduto.State in [dsEdit, dsInsert]) then
          DtSrcProducaoProduto.DataSet.FieldByName('PRD_ID').AsInteger :=
            DtSrcProducaoAtividade.DataSet.FieldByName('PRD_ID').AsInteger;
        DbEdtQtdeProduzida.DataBinding.DataSource := DtSrcProducaoAtividade;
        DbLkpCmbBxDerivado.Clear;
        DbEdtOutro.Clear;
      end;
    1:
      begin
        LblDerivado.Enabled := True;
        DbLkpCmbBxDerivado.Enabled := True;
        DbLkpCmbBxProduto.Clear;
        DbEdtOutro.Clear;
        DbEdtQtdeProduzida.DataBinding.DataSource := nil;
      end;
    2:
      begin
        LblOutro.Enabled := True;
        DbEdtOutro.Enabled := True;

        LblUnidadeMedida.Enabled := True;
        DbLkpCmbBxUnidadeMedida.Enabled := True;
        DbLkpCmbBxDerivado.Clear;
        DbLkpCmbBxProduto.Clear;
        DbEdtQtdeProduzida.DataBinding.DataSource := nil;
      end;
  end;

end;

procedure TFrmCadastroUnidadeComercio.FormShow(Sender: TObject);
begin
  inherited;
  DbLkpCmbBxUnidadeMedida.Properties.ListSource := DtmCadastroModulo.DtSrcUnidade;
  AtualizarTitulo;
  DbRdGrpTipo.Properties.OnEditValueChanged(DbRdGrpTipo);

  if TbShtPrincipal.TabVisible then
    begin
      PgCntrlPrincipal.ActivePage := TbShtPrincipal;

      if DbLkpCmbBxProduto.CanFocus then
        DbLkpCmbBxProduto.SetFocus;

      if DbLkpCmbBxDerivado.CanFocus then
        DbLkpCmbBxDerivado.SetFocus;

      if DbEdtOutro.CanFocus then
        DbEdtOutro.SetFocus;
    end;
end;

end.
