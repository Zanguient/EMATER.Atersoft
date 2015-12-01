unit Emater.Pessoal.Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDtmPessoalModulo = class(TDataModule)
    DtSrcFuncionario: TDataSource;
    DtSrcFuncao: TDataSource;
    DtSrcCargo: TDataSource;
    DtSrcFuncaoSituacao: TDataSource;
    DtStFuncionario: TFDQuery;
    UpdtFuncionario: TFDUpdateSQL;
    DtStFuncao: TFDQuery;
    UpdtFuncao: TFDUpdateSQL;
    DtStCargo: TFDQuery;
    UpdtCargo: TFDUpdateSQL;
    DtStFuncaoSituacao: TFDQuery;
    UpdtFuncaoSituacao: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure RecarregarDados;
  end;

var
  DtmPessoalModulo: TDtmPessoalModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo;

{$R *.dfm}

procedure TDtmPessoalModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmPessoalModulo.RecarregarDados;
begin
  DtStFuncionario.Close;
  DtStFuncionario.Open;

  DtStFuncao.Close;
  DtStFuncao.Open;

  DtStCargo.Close;
  DtStCargo.Open;

  DtStFuncaoSituacao.Close;
  DtStFuncaoSituacao.Open;
end;

end.
