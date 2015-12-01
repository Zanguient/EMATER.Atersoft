unit Emater.Produtividade.Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDtmProdutividadeModulo = class(TDataModule)
    DtStMetodo: TFDQuery;
    UpdtMetodo: TFDUpdateSQL;
    DtStMetodoFinal: TFDQuery;
    UpdtMetodoFinal: TFDUpdateSQL;
    DtStFinalidade: TFDQuery;
    UpdtFinalidade: TFDUpdateSQL;
    DtStRecurso: TFDQuery;
    UpdtRecurso: TFDUpdateSQL;
    DtStTecnica: TFDQuery;
    UpdtTecnica: TFDUpdateSQL;
    DtStFerramenta: TFDQuery;
    UpdtFerramenta: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure RecarregarDados;
  end;

var
  DtmProdutividadeModulo: TDtmProdutividadeModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo;

{$R *.dfm}

procedure TDtmProdutividadeModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmProdutividadeModulo.RecarregarDados;
begin
  DtStMetodo.Close;
  DtStMetodo.Open;

  DtStMetodoFinal.Close;
  DtStMetodoFinal.Open;

  DtStFinalidade.Close;
  DtStFinalidade.Open;

  DtStRecurso.Close;
  DtStRecurso.Open;

  DtStTecnica.Close;
  DtStTecnica.Open;

  DtStFerramenta.Close;
  DtStFerramenta.Open;
end;

end.
