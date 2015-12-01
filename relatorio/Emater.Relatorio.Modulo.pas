unit Emater.Relatorio.Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, frxCross, frxExportText, frxExportRTF, frxExportImage,
  frxExportHTML, frxClass, frxExportPDF, frxChart, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDtmRelatorioModulo = class(TDataModule)
    frxPDFExport: TfrxPDFExport;
    frxHTMLExport: TfrxHTMLExport;
    frxJPEGExport: TfrxJPEGExport;
    frxRTFExport: TfrxRTFExport;
    frxSimpleTextExport: TfrxSimpleTextExport;
    frxChartObject: TfrxChartObject;
    frxCrossObject: TfrxCrossObject;
    DtStUnidadeLocal: TFDQuery;
    DtStProjeto: TFDQuery;
    DtStFuncionarioLocal: TFDQuery;
    DtStMetodologia: TFDQuery;
    DtStCategoria: TFDQuery;
    UpdtCategoria: TFDUpdateSQL;
    DtStDivisao: TFDQuery;
    UpdtDivisao: TFDUpdateSQL;
    DtStComunidade: TFDQuery;
    UpdtComunidade: TFDUpdateSQL;
    DtStGrupo: TFDQuery;
    DtStCultura: TFDQuery;
    UpdtCultura: TFDUpdateSQL;
    DtStClasse: TFDQuery;
    UpdtClasse: TFDUpdateSQL;
    DtStSistema: TFDQuery;
    UpdtSistema: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  public
    procedure RecarregarDados;
    procedure CarregarComunidadePorCidade(const Cidade: Integer);
  end;

var
  DtmRelatorioModulo: TDtmRelatorioModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo;

{$R *.dfm}

procedure TDtmRelatorioModulo.CarregarComunidadePorCidade(const Cidade: Integer);
begin
  DtStComunidade.Close;
  DtStComunidade.ParamByName('cid_id').AsInteger := Cidade;
  DtStComunidade.Open;
  DtStComunidade.FetchAll;
end;

procedure TDtmRelatorioModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmRelatorioModulo.RecarregarDados;
begin
  DtStUnidadeLocal.Close;
  DtStUnidadeLocal.Open;

  DtStFuncionarioLocal.Close;
  DtStFuncionarioLocal.Open;

  DtStMetodologia.Close;
  DtStMetodologia.Open;

  DtStCategoria.Close;
  DtStCategoria.Open;

  DtStDivisao.Close;
  DtStDivisao.Open;

  DtStGrupo.Close;
  DtStGrupo.Open;

  DtStClasse.Close;
  DtStClasse.Open;

  DtStCultura.Close;
  DtStCultura.Open;

  DtStSistema.Close;
  DtStSistema.Open;

  DtStProjeto.Close;
  DtStProjeto.Open;

  DtStComunidade.Close;
  DtStComunidade.Open;
end;

end.
