unit Emater.Conexao.Aguardar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, ExtCtrls;

type
  TFrmConexaoAguardar = class(TForm)
    ImgLocked: TImage;
    LblMensagem: TLabel;
    BtnFinalizar: TButton;
    BvlJanela: TBevel;
    procedure BtnFinalizarClick(Sender: TObject);
  end;

var
  FrmConexaoAguardar: TFrmConexaoAguardar;

implementation

{$R *.dfm}

procedure TFrmConexaoAguardar.BtnFinalizarClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
