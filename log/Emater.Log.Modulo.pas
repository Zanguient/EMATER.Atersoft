unit Emater.Log.Modulo;

interface

uses
  System.SysUtils, System.Classes, FIBQuery, pFIBQuery, pFIBStoredProc, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDtmLogModulo = class(TDataModule)
    StrdPrcSisReplicacaoPendente: TFDStoredProc;
    procedure DataModuleCreate(Sender: TObject);
  public
    function ReplicacaoPendente(const Objetos, Atributo, Chave: string): Boolean;
    procedure ReplicacaoPendenteExibir(const Objetos, Atributo, Chave: string; const LblReplicacao: TLabel);
    procedure RecarregarDados;
  end;

var
  DtmLogModulo: TDtmLogModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo, Emater.Log.Consts;

{$R *.dfm}

{ TDtmLogModulo }

procedure TDtmLogModulo.ReplicacaoPendenteExibir(const Objetos, Atributo, Chave: string; const LblReplicacao: TLabel);
begin
  if ReplicacaoPendente(Objetos, Atributo, Chave) then
    begin
      LblReplicacao.Caption := LOG_MSG_REPLICACAO_PENDENTE;
      LblReplicacao.Transparent := False;
    end
  else
    begin
      LblReplicacao.Caption := LOG_MSG_REPLICACAO_REALIZADA;
      LblReplicacao.Transparent := True;
    end;
end;

procedure TDtmLogModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmLogModulo.RecarregarDados;
begin

end;

function TDtmLogModulo.ReplicacaoPendente(const Objetos, Atributo, Chave: string): Boolean;
begin
  try
    StrdPrcSisReplicacaoPendente.ParamByName('objetos').AsString := Objetos;
    StrdPrcSisReplicacaoPendente.ParamByName('Atributo').AsString := Atributo;
    StrdPrcSisReplicacaoPendente.ParamByName('chave').AsString := Chave;
    StrdPrcSisReplicacaoPendente.ExecProc;

    Result := StrdPrcSisReplicacaoPendente.ParamByName('existe').AsBoolean;
  except
    Result := False;
  end;
end;

end.
