unit Emater.Relatorio.Proater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Relatorio, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit, frxClass, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  cxGroupBox, Vcl.StdCtrls, cxPC, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxDBSet, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmRelatorioProater = class(TFrmBaseRelatorio)
    QryEmaterCorpo: TFDQuery;
    FrxDtStEmaterCorpo: TfrxDBDataset;
    QryEmaterComissao: TFDQuery;
    FrxDtStEmaterComissao: TfrxDBDataset;
    QryProaterPrincipal: TFDQuery;
    FrxDtStProater: TfrxDBDataset;
    QryProaterComunidade: TFDQuery;
    FrxDtStProaterComunidade: TfrxDBDataset;
    DtSrcProaterPrincipal: TDataSource;
    FrxDtStPotencial: TfrxDBDataset;
    QryProaterPotencial: TFDQuery;
    LblProater: TLabel;
    FrxDtStProaterAcordo: TfrxDBDataset;
    QryProaterAcordo: TFDQuery;
    FrxDtStProaterFuncionario: TfrxDBDataset;
    QryProaterFuncionario: TFDQuery;
    FrxDtStProaterMobiliario: TfrxDBDataset;
    QryProaterMobiliario: TFDQuery;
    FrxDtStProaterEquipamento: TfrxDBDataset;
    QryProaterEquipamento: TFDQuery;
    FrxDtStProaterVeiculo: TfrxDBDataset;
    QryProaterVeiculo: TFDQuery;
    FrxDtStProaterCusto: TfrxDBDataset;
    QryProaterCusto: TFDQuery;
    FrxDtStQualificacao: TfrxDBDataset;
    QryProaterQualificacao: TFDQuery;
    QrySubProjeto: TFDQuery;
    FrxDtStSubProjeto: TfrxDBDataset;
    DtSrcSubProjeto: TDataSource;
    QrySubMeta: TFDQuery;
    QrySubMetodo: TFDQuery;
    QrySubComunidade: TFDQuery;
    QrySubOrcamento: TFDQuery;
    FrxDtStSubMeta: TfrxDBDataset;
    FrxDtStSubMetodo: TfrxDBDataset;
    FrxDtStSubComunidade: TfrxDBDataset;
    FrxDtStSubOrcamento: TfrxDBDataset;
    FrxDtStResponsavel: TfrxDBDataset;
    QrySubResponsavel: TFDQuery;
    procedure BtnImprimirClick(Sender: TObject);
  public
    procedure Preparar(const ID: Int64; const Periodo: string);
  end;

var
  FrmRelatorioProater: TFrmRelatorioProater;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo;

{ TFrmRelatorioProater }

procedure TFrmRelatorioProater.BtnImprimirClick(Sender: TObject);
begin
  inherited;
  if FrxPrincipal.PrepareReport then
    case CmbBxModo.ItemIndex of
      0: FrxPrincipal.ShowPreparedReport;
      1: FrxPrincipal.Print;
    end;
end;

procedure TFrmRelatorioProater.Preparar(const ID: Int64; const Periodo: string);
begin
  LblProater.Caption := Format(LblProater.Caption, [Periodo]);
  QryProaterPrincipal.Close;
  QryProaterPrincipal.ParamByName('PRO_ID').AsLargeInt := ID;

  QryEmaterCorpo.Open;
  QryEmaterComissao.Open;
  QryProaterPrincipal.Open;
  QryProaterComunidade.Open;
  QryProaterPotencial.Open;
  QryProaterAcordo.Open;
  QryProaterFuncionario.Open;
  QryProaterMobiliario.Open;
  QryProaterEquipamento.Open;
  QryProaterVeiculo.Open;
  QryProaterCusto.Open;
  QryProaterQualificacao.Open;
  QrySubProjeto.Open;
  QrySubMeta.Open;
  QrySubMetodo.Open;
  QrySubComunidade.Open;
  QrySubOrcamento.Open;
  QrySubResponsavel.Open;

  ShowModal;
end;

end.
