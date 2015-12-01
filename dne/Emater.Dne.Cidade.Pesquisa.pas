unit Emater.Dne.Cidade.Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, Vcl.StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxListBox, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrmDneCidadePesquisa = class(TFrmBaseBasico)
    BtnOK: TcxButton;
    BtnCancelar: TcxButton;
    LkpCmbBxUF: TcxLookupComboBox;
    Label1: TLabel;
    GrdMunicipio: TcxGrid;
    GrdMunicipioTbl: TcxGridDBTableView;
    GrdMunicipioLvl: TcxGridLevel;
    GrdMunicipioTblCID_NOME: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure LkpCmbBxUFPropertiesEditValueChanged(Sender: TObject);
    procedure GrdMunicipioTblDblClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    function Executar(out ID: Integer; out Nome: string): Boolean;
  end;

var
  FrmDneCidadePesquisa: TFrmDneCidadePesquisa;

implementation

{$R *.dfm}

uses Emater.Dne.Modulo, Emater.Conexao.Modulo, Emater.Recurso.Modulo;

{ TFrmDneCidadePesquisa }

procedure TFrmDneCidadePesquisa.BtnOKClick(Sender: TObject);
begin
  if not GrdMunicipioTbl.DataController.DataSet.IsEmpty then
    ModalResult := mrOk
  else
    MSG.Aviso('Não há nenhum município selecionado.');
end;

function TFrmDneCidadePesquisa.Executar(out ID: Integer; out Nome: string): Boolean;
begin
  if (ShowModal = mrOk) then
    begin
      ID := DtmDneModulo.DtStNaturalidadeCID_ID.Value;
      Nome := DtmDneModulo.DtStNaturalidadeCID_NOME.AsString + ' (' + DtmDneModulo.DtStNaturalidadeUFE_ID.AsString + ')';
      Result := True;
    end
  else
    Result := False;
end;

procedure TFrmDneCidadePesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  GrdMunicipioTbl.DataController.DataSource := DtmDneModulo.DtSrcNaturalidade;
  LkpCmbBxUF.Properties.ListSource := DtmDneModulo.DtSrcUF;
  DtmDneModulo.AplicarFiltroNaturalidade('ZZ');
end;

procedure TFrmDneCidadePesquisa.GrdMunicipioTblDblClick(Sender: TObject);
begin
  if (GrdMunicipioTbl.DataController.DataSet.Active) and (not GrdMunicipioTbl.DataController.DataSet.IsEmpty) then
    begin

      if GrdMunicipioTbl.Controller.FocusedRow.Expandable then
        begin
          if GrdMunicipioTbl.Controller.FocusedRow.Expanded then
            GrdMunicipioTbl.Controller.FocusedRow.Expand(True)
          else
            GrdMunicipioTbl.Controller.FocusedRow.Collapse(True);
        end
      else
        if GrdMunicipioTbl.DataController.DataSource.DataSet.Active and BtnOK.Visible then
          BtnOK.Click;
    end;
end;

procedure TFrmDneCidadePesquisa.LkpCmbBxUFPropertiesEditValueChanged(Sender: TObject);
begin
  if not VarIsNull(LkpCmbBxUF.EditValue) then
    begin
      DtmDneModulo.AplicarFiltroNaturalidade(LkpCmbBxUF.EditValue);
      GrdMunicipio.SetFocus;
    end
  else
    DtmDneModulo.AplicarFiltroNaturalidade('ZZ');
end;

end.
