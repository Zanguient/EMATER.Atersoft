unit Emater.Classe.Log;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, DateUtils, Forms, StrUtils;

type
  CodeSite = class
  strict private
    class var
      FIndentation: Integer;
  private
    class function GetLogFileName: string;
    class procedure WriteLog(const Msg: string);
  public
    class procedure EnterMethod(const MethodName: string);
    class procedure ExitMethod(const MethodName: string);
    class procedure SendMsg(const Msg: string);
    class procedure SendError(const Msg: string);
    class procedure SendNote(const Msg: string);
    class procedure SendWarning(const Msg: string);
    class procedure AddResetSeparator;
  end;

implementation

{ TLogger }

class procedure CodeSite.AddResetSeparator;
begin
  CodeSite.WriteLog('[=================================================================================================]');
end;

class procedure CodeSite.EnterMethod(const MethodName: string);
begin
  WriteLog('[>] ' + MethodName);
  CodeSite.FIndentation := CodeSite.FIndentation + 4;
end;

class procedure CodeSite.ExitMethod(const MethodName: string);
begin
  CodeSite.FIndentation := CodeSite.FIndentation - 4;
  WriteLog('[<] ' + MethodName);
end;

class function CodeSite.GetLogFileName: string;
var
  S: string;
begin
  S := ExtractFilePath(Application.ExeName) + 'Logs\';
  if not DirectoryExists(S) then
    ForceDirectories(S);
  Result := S + 'Sevensoft.Atersoft.' + FormatDateTime('yyyy.mm.dd', Date) + '.txt';
end;

class procedure CodeSite.SendError(const Msg: string);
begin
  WriteLog('[#] ' + Msg);
end;

class procedure CodeSite.SendMsg(const Msg: string);
begin
  WriteLog('[-] ' + Msg);
end;

class procedure CodeSite.SendNote(const Msg: string);
begin
  WriteLog('[+] ' + Msg);
end;

class procedure CodeSite.SendWarning(const Msg: string);
begin
  WriteLog('[!] ' + Msg);
end;

class procedure CodeSite.WriteLog(const Msg: string);
var
  T: TextFile;
  S: string;
  DataHora: string;
begin
  S := GetLogFileName;
  AssignFile(T, S);
  if FileExists(S) then
    begin
      Reset(T);
      Append(T);
    end
  else
    begin
      Rewrite(T);
    end;
  try
    DataHora := FormatDateTime('[dd/mm/yyyy hh:nn:ss.zzz] ', Now);
    Writeln(T, DataHora + StringOfChar(' ', FIndentation) + Msg);
  finally
    CloseFile(T);
  end;
end;

end.
