unit Emater.Conexao.Restaurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, ExtCtrls;

type
  TFrmConexaoRestaurar = class(TForm)
    ImgLocked: TImage;
    LblMensagem: TLabel;
    BtnOk: TButton;
    BtnCancelar: TButton;
    BvlJanela: TBevel;
  end;

var
  FrmConexaoRestaurar: TFrmConexaoRestaurar;

implementation

{$R *.dfm}

end.
