unit Emater.Classe.Mensagem;

interface

uses
  Windows, Messages, Vcl.Dialogs, Vcl.Controls;

type
  TMensagem = class
  private
    FHandle: HWND;
  public
    constructor Create(hWnd: HWND); overload;
    procedure Erro(const Msg: string);
    procedure Aviso(const Msg: string);
    procedure Informacao(const Msg: string);
    function Confirmacao(const Msg: string): Boolean; overload;
    function Confirmacao(const Msg: string; const NoIsDefault: Boolean): Boolean; overload;
    function Pergunta(const Msg: string): TModalResult;
  end;

implementation

uses Emater.Classe.Consts;

{ TMessagem }

constructor TMensagem.Create(hWnd: HWND);
begin
  FHandle := hWnd;
end;

function TMensagem.Confirmacao(const Msg: string): Boolean;
begin
  Result := MessageBox(FHandle, PWideChar(Msg), PWideChar(CLASSE_LEGENDA_CONFIRMACAO),
    MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON1) = IDYES;
end;

function TMensagem.Confirmacao(const Msg: string; const NoIsDefault: Boolean): Boolean;
begin
  Result := MessageBox(FHandle, PWideChar(Msg), PWideChar(CLASSE_LEGENDA_CONFIRMACAO),
    MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
end;

procedure TMensagem.Erro(const Msg: string);
begin
  MessageBox(FHandle, PWideChar(Msg), PWideChar(CLASSE_LEGENDA_ERRO), MB_ICONERROR);
end;

procedure TMensagem.Informacao(const Msg: string);
begin
  MessageBox(FHandle, PWideChar(Msg), PWideChar(CLASSE_LEGENDA_INFORMACAO), MB_ICONINFORMATION);
end;

function TMensagem.Pergunta(const Msg: string): TModalResult;
begin
  case MessageBox(FHandle, PWideChar(Msg), PWideChar(CLASSE_LEGENDA_CONFIRMACAO),
    MB_ICONQUESTION + MB_YESNOCANCEL + MB_DEFBUTTON3) of

    IDYES: Result := mrYes;
    IDNO: Result := mrNo;
  else
    Result := mrCancel;
  end;
end;

procedure TMensagem.Aviso(const Msg: string);
begin
  MessageBox(FHandle, PWideChar(Msg), PWideChar(CLASSE_LEGENDA_AVISO), MB_ICONWARNING);
end;

end.
