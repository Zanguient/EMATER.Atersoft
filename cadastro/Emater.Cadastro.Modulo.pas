unit Emater.Cadastro.Modulo;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDtmCadastroModulo = class(TDataModule)
    DtSrcParentesco: TDataSource;
    DtSrcDAPTipo: TDataSource;
    DtSrcDivisao: TDataSource;
    DtSrcCategoria: TDataSource;
    DtSrcOrganizacaoTipo: TDataSource;
    DtSrcEstadoCivil: TDataSource;
    DtSrcEscolaridade: TDataSource;
    DtSrcMotivo: TDataSource;
    DtSrcComunidade: TDataSource;
    DtSrcOrganizacao: TDataSource;
    DtSrcDAPOrigem: TDataSource;
    DtSrcOcupacaoTipo: TDataSource;
    DtSrcDocumentoTipo: TDataSource;
    DtSrcBem: TDataSource;
    DtSrcUnidade: TDataSource;
    DtSrcSistemaProdutivo: TDataSource;
    DtSrcDerivado: TDataSource;
    DtSrcDestino: TDataSource;
    DtSrcProduto: TDataSource;
    DtSrcOrganizacaoPublico: TDataSource;
    DtStCategoria: TFDQuery;
    UpdtCategoria: TFDUpdateSQL;
    DtStOcupacaoTipo: TFDQuery;
    UpdtOcupacaoTipo: TFDUpdateSQL;
    DtStDivisao: TFDQuery;
    UpdtDivisao: TFDUpdateSQL;
    DtStDAPTipo: TFDQuery;
    UpdtDAPTipo: TFDUpdateSQL;
    DtStParentesco: TFDQuery;
    UpdtParentesco: TFDUpdateSQL;
    DtStOrganizacaoTipo: TFDQuery;
    UpdtOrganizacaoTipo: TFDUpdateSQL;
    DtStEstadoCivil: TFDQuery;
    UpdtEstadoCivil: TFDUpdateSQL;
    DtStEscolaridade: TFDQuery;
    UpdtEscolaridade: TFDUpdateSQL;
    DtStMotivo: TFDQuery;
    UpdtMotivo: TFDUpdateSQL;
    DtStComunidade: TFDQuery;
    UpdtComunidade: TFDUpdateSQL;
    DtStOrganizacao: TFDQuery;
    UpdtOrganizacao: TFDUpdateSQL;
    DtStDAPOrigem: TFDQuery;
    UpdtDAPOrigem: TFDUpdateSQL;
    DtStDocumentoTipo: TFDQuery;
    UpdtDocumentoTipo: TFDUpdateSQL;
    DtStBem: TFDQuery;
    UpdtBem: TFDUpdateSQL;
    DtStUnidade: TFDQuery;
    UpdtUnidade: TFDUpdateSQL;
    DtStSistemaProdutivo: TFDQuery;
    UpdtSistemaProdutivo: TFDUpdateSQL;
    DtStDerivado: TFDQuery;
    UpdtDerivado: TFDUpdateSQL;
    DtStDestino: TFDQuery;
    UpdtDestino: TFDUpdateSQL;
    DtStProduto: TFDQuery;
    UpdtProduto: TFDUpdateSQL;
    DtStOrganizacaoPublico: TFDQuery;
    UpdtOrganizacaoPublico: TFDUpdateSQL;
    DtSrcDatum: TDataSource;
    DtStDatum: TFDQuery;
    UpdtDatum: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure RecarregarDados;
  end;

var
  DtmCadastroModulo: TDtmCadastroModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Emater.Conexao.Modulo;

{$R *.dfm}

procedure TDtmCadastroModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

procedure TDtmCadastroModulo.RecarregarDados;
begin
  DtStCategoria.Close;
  DtStCategoria.Open;

  DtStDivisao.Close;
  DtStDivisao.Open;

  DtStDAPTipo.Close;
  DtStDAPTipo.Open;

  DtStParentesco.Close;
  DtStParentesco.Open;

  DtStOrganizacaoTipo.Close;
  DtStOrganizacaoTipo.Open;

  DtStEstadoCivil.Close;
  DtStEstadoCivil.Open;

  DtStEscolaridade.Close;
  DtStEscolaridade.Open;

  DtStMotivo.Close;
  DtStMotivo.Open;

  DtStComunidade.Close;
  DtStComunidade.Open;

  DtStOrganizacao.Close;
  DtStOrganizacao.Open;

  DtStDAPOrigem.Close;
  DtStDAPOrigem.Open;

  DtStOcupacaoTipo.Close;
  DtStOcupacaoTipo.Open;

  DtStDocumentoTipo.Close;
  DtStDocumentoTipo.Open;

  DtStBem.Close;
  DtStBem.Open;

  DtStUnidade.Close;
  DtStUnidade.Open;

  DtStSistemaProdutivo.Close;
  DtStSistemaProdutivo.Open;

  DtStDerivado.Close;
  DtStDerivado.Open;

  DtStDestino.Close;
  DtStDestino.Open;

  DtStProduto.Close;
  DtStProduto.Open;

  DtStOrganizacaoPublico.Close;
  DtStOrganizacaoPublico.Open;

  DtStDAtum.Close;
  DtStDatum.Open;
end;

end.
