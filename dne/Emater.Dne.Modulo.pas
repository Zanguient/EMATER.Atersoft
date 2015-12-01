unit Emater.Dne.Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDtmDneModulo = class(TDataModule)
    DtSrcCidade: TDataSource;
    DtSrcNaturalidade: TDataSource;
    DtSrcUF: TDataSource;
    DtSrcCidadeAcao: TDataSource;
    DtStCidade: TFDQuery;
    UpdtCidade: TFDUpdateSQL;
    DtStCidadeCID_ID: TIntegerField;
    DtStCidadeCID_NOME: TStringField;
    DtStCidadeCID_TIPO: TStringField;
    DtStCidadeCID_IBGE: TIntegerField;
    DtStCidadeUFE_ID: TStringField;
    DtStNaturalidade: TFDQuery;
    UpdtNaturalidade: TFDUpdateSQL;
    DtStNaturalidadeCID_ID: TIntegerField;
    DtStNaturalidadeCID_NOME: TStringField;
    DtStNaturalidadeCID_TIPO: TStringField;
    DtStNaturalidadeCID_IBGE: TIntegerField;
    DtStNaturalidadeUFE_ID: TStringField;
    DtStUF: TFDQuery;
    UpdtUF: TFDUpdateSQL;
    DtStUFUFE_ID: TStringField;
    DtStUFUFE_NOME: TStringField;
    DtStUFUFE_UF_NOME: TStringField;
    DtStCidadeAcao: TFDQuery;
    UpdtCidadeAcao: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  public
    procedure RecarregarDados;
    procedure AplicarFiltroNaturalidade(const UF: string);
  end;

var
  DtmDneModulo: TDtmDneModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo;

{$R *.dfm}

procedure TDtmDneModulo.AplicarFiltroNaturalidade(const UF: string);
begin
  DtStNaturalidade.Filtered := True;
  DtStNaturalidade.Filter := 'UFE_ID = ' + QuotedStr(UF);
end;

procedure TDtmDneModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmDneModulo.RecarregarDados;
begin
  DtStCidade.Close;
  DtStCidade.Open;

  DtStNaturalidade.Close;
  DtStNaturalidade.Open;

  DtStUF.Close;
  DtStUF.Open;

  DtStCidadeAcao.Close;
  DtStCidadeAcao.Open;
end;

end.
