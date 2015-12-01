unit Emater.Credito.Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDtmCreditoModulo = class(TDataModule)
    DtSrcFinanceira: TDataSource;
    DtSrcLinha: TDataSource;
    DtSrcTipo: TDataSource;
    DtSrcPublico: TDataSource;
    DtSrcSituacao: TDataSource;
    DtSrcClassificacao: TDataSource;
    DtSrcGrupo: TDataSource;
    DtSrcCultura: TDataSource;
    DtSrcCriacao: TDataSource;
    DtSrcMaquina: TDataSource;
    DtSrcEquipamento: TDataSource;
    DtSrcBenfeitoria: TDataSource;
    DtSrcVariedade: TDataSource;
    DtSrcRaca: TDataSource;
    DtStFinanceira: TFDQuery;
    UpdtFinanceira: TFDUpdateSQL;
    DtStRaca: TFDQuery;
    UpdtRaca: TFDUpdateSQL;
    DtStLinha: TFDQuery;
    UpdtLinha: TFDUpdateSQL;
    DtStTipo: TFDQuery;
    UpdtTipo: TFDUpdateSQL;
    DtStPublico: TFDQuery;
    UpdtPublico: TFDUpdateSQL;
    DtStSituacao: TFDQuery;
    UpdtSituacao: TFDUpdateSQL;
    DtStClassificacao: TFDQuery;
    UpdtClassificacao: TFDUpdateSQL;
    DtStGrupo: TFDQuery;
    UpdtGrupo: TFDUpdateSQL;
    DtStCultura: TFDQuery;
    UpdtCultura: TFDUpdateSQL;
    DtStCriacao: TFDQuery;
    UpdtCriacao: TFDUpdateSQL;
    DtStMaquina: TFDQuery;
    UpdtMaquina: TFDUpdateSQL;
    DtStEquipamento: TFDQuery;
    UpdtEquipamento: TFDUpdateSQL;
    DtStBenfeitoria: TFDQuery;
    UpdtBenfeitoria: TFDUpdateSQL;
    DtStVariedade: TFDQuery;
    UpdtVariedade: TFDUpdateSQL;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmCreditoModulo: TDtmCreditoModulo;

implementation

uses Emater.Conexao.Modulo;

{$R *.dfm}

end.
