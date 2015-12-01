unit Emater.Base.Filha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  dxBar, Emater.Base.Basico;

type
  TFrmBaseFilha = class(TFrmBaseBasico)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  end;

var
  FrmBaseFilha: TFrmBaseFilha;

implementation

{$R *.dfm}

uses Emater.Classe.Log;

procedure TFrmBaseFilha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmBaseFilha.FormCreate(Sender: TObject);
begin
  inherited;
  CodeSite.EnterMethod(Self.Name + '.FormCreate().');
  try
    // Controle de acesso:
    RegistrarSeguranca;
    AplicarSeguranca;
    CodeSite.SendMsg('Configurações de segurança aplicadas com sucesso.');
  finally
    CodeSite.ExitMethod(Self.Name + '.FormCreate().');
  end;
end;

end.
