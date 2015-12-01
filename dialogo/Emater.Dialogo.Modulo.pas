unit Emater.Dialogo.Modulo;

interface

uses
  Windows, SysUtils, Classes, DB, FIBDataSet, pFIBDataSet, Forms,
  IniFiles, Controls, cxDBLookupComboBox, FIBQuery, pFIBQuery,
  Vcl.Dialogs, Vcl.ExtDlgs;

type
  TDtmDialogoModulo = class(TDataModule)
    OpenPictureDialog: TOpenPictureDialog;
    procedure DataModuleCreate(Sender: TObject);
  public
    function ExisteCamposPendentes(const DataSet: TDataSet): Boolean;
    function ObterNomeArquivoImagem(var AFileName: TFileName; const AFilter: string = ''): Boolean;

    procedure RecarregarDados;
  end;

var
  DtmDialogoModulo: TDtmDialogoModulo;

implementation

uses Emater.Recurso.Consts, Emater.Dialogo.Pendencia;

{$R *.dfm}

{ TDtmBase }

function TDtmDialogoModulo.ObterNomeArquivoImagem(var AFileName: TFileName; const AFilter: string): Boolean;
begin
  Result := False;
  if (AFilter <> '') then
    OpenPictureDialog.Filter := AFilter;
  if OpenPictureDialog.Execute then
    begin
      AFileName := OpenPictureDialog.FileName;
      Result := True;
    end;
end;

procedure TDtmDialogoModulo.RecarregarDados;
begin

end;

procedure TDtmDialogoModulo.DataModuleCreate(Sender: TObject);
begin
  RecarregarDados;
end;

function TDtmDialogoModulo.ExisteCamposPendentes(const DataSet: TDataSet): Boolean;
var
  I: Integer;
begin
  ExisteCamposPendentes := False;
  with (DataSet) do if not IsEmpty then
    begin
      FrmDialogoPendencia := TFrmDialogoPendencia.Create(Application);
      try
        for I := 0 to Fields.Count - 1 do
          if (Fields[I].IsNull) and Fields[I].Required then
            FrmDialogoPendencia.Adicionar(Fields[I].DisplayLabel, 48);
        if not FrmDialogoPendencia.CdsCampo.IsEmpty then
          begin
            FrmDialogoPendencia.ShowModal;
            ExisteCamposPendentes := True;
          end;
      finally
        FrmDialogoPendencia.Release;
        FrmDialogoPendencia := nil;
      end;
    end;
end;

end.
