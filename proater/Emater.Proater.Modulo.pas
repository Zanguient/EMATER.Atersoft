unit Emater.Proater.Modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TDtmProaterModulo = class(TDataModule)
    DtSrcContexto: TDataSource;
    QryContexto: TFDQuery;
    UpdtContexto: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  public
    procedure RecarregarDados;
  end;

var
  DtmProaterModulo: TDtmProaterModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo;

{$R *.dfm}

{ TDtmProaterModulo }

procedure TDtmProaterModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmProaterModulo.RecarregarDados;
begin
  QryContexto.Close;
  QryContexto.Open;
end;

end.
