unit Emater.Classe.Arquivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Forms, ShellApi, IdHashMessageDigest, Zlib;

type
  TArquivo = class
  public
    class function Versao(const NomeArquivo: string): string;
    class function Tamanho(const NomeArquivo:string): Int64;
    class function Abrir(const NomeArquivo: string): HINST;
    class function ExecutarAguardar(const NomeArquivo: string; const Visibilidade: Integer): Longword;
    class function ExecutarAguardar32(const NomeArquivo: string; const Visibilidade: Integer): Longword;

    class function GerarIni(const NomeArquivo: string): string;
    class function GerarCfg(const NomeArquivo: string): string;
    class function GerarMnu(const NomeArquivo: string): string;
    class function GerarTmp(const NomeArquivo: string): string;

    class function MD5Arquivo(const Value: string): string; static;
    class function Comprimir(ArquivoCompacto: TFileName; Arquivos: array of TFileName): Boolean; static;
    class function Descomprimir(const ArquivoZip, ArquivoDestino: TFileName): Boolean; static;
  end;

implementation

{ TArquivo }

class function TArquivo.Comprimir(ArquivoCompacto: TFileName; Arquivos: array of TFileName): Boolean;
var
  FileInName: TFileName;
  FileEntrada, FileSaida: TFileStream;
  Compressor: TCompressionStream;
  NumArq, I, Len, Size: Integer;
  Fim: Byte ;
begin
  Result := True;
  try
    FileSaida := TFileStream.Create(ArquivoCompacto, fmCreate or fmShareExclusive);
    Compressor := TCompressionStream.Create( clMax, FileSaida);
    NumArq := Length(Arquivos);
    Compressor.Write(NumArq, SizeOf(Integer));
    try
      for I := Low(Arquivos) to High(Arquivos) do
        begin
          FileEntrada := TFileStream.Create(Arquivos[I], fmOpenRead and fmShareExclusive);
          try
            FileInName := ExtractFileName(Arquivos[I]);
            Len := Length(FileInName);
            Compressor.Write(Len, SizeOf(Integer));
            Compressor.Write(FileInName[1], Len);
            Size := FileEntrada.Size;
            Compressor.Write(Size, SizeOf(Integer));
            Compressor.CopyFrom(FileEntrada, FileEntrada.Size);
            Fim := 0;
            Compressor.Write(Fim, SizeOf(Byte));
          finally
            FileEntrada.Free;
          end;
        end;
    finally
      FreeAndNil(Compressor);
      FreeAndNil(FileSaida);
    end;
  except
    Result := False;
  end;
end;

class function TArquivo.Descomprimir(const ArquivoZip, ArquivoDestino: TFileName): Boolean;
var
  NomeSaida: string;
  FileEntrada, FileOut: TFileStream;
  Descompressor: TDecompressionStream;
  NumArq, I, Len,Size: Integer;
  Fim: Byte;
begin
  Result := True;
  try
    FileEntrada := TFileStream.Create(ArquivoZip, fmOpenRead and fmShareExclusive);
    Descompressor := TDecompressionStream.Create(FileEntrada);
    Descompressor.Read(NumArq,SizeOf(Integer));
    try
      I := 0;
      While I < NumArq  do
        begin
          Descompressor.Read(Len,SizeOf(Integer));
          SetLength(NomeSaida, Len);
          Descompressor.Read(NomeSaida[1],Len);
          Descompressor.Read(Size,SizeOf(Integer));
          FileOut := TFileStream.Create(ArquivoDestino, fmCreate or fmShareExclusive);
          try
            FileOut.CopyFrom(Descompressor,Size);
          finally
            FileOut.Free;
          end;
          Descompressor.Read(Fim, SizeOf(Byte));
          Inc(I);
        end;
    finally
      FreeAndNil(Descompressor);
      FreeAndNil(FileEntrada);
    end;
  except
    Result := False;
  end;
end;

class function TArquivo.MD5Arquivo(const Value: string): string;
var
  xMD5: TIdHashMessageDigest5;
  xArquivo: TFileStream;
begin
  xMD5 := TIdHashMessageDigest5.Create;
  xArquivo := TFileStream.Create(Value, fmOpenRead OR fmShareDenyWrite);
  try
    Result := xMD5.HashStreamAsHex(xArquivo);
  finally
    xArquivo.Free;
    xMD5.Free;
  end;
end;

class function TArquivo.Abrir(const NomeArquivo: string): HINST;
begin
  Result := ShellExecute(0, nil, PWideChar(NomeArquivo), nil, nil, SW_NORMAL);
end;

class function TArquivo.ExecutarAguardar(const NomeArquivo: string; const Visibilidade: Integer): Longword;
var
  zAppName: array[0..512] of Char;
  zCurDir: array[0..255] of Char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  { *** By Pat Ritchey *** }
  StrPCopy(zAppName, NomeArquivo);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, SizeOf(StartupInfo), #0);
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibilidade;
  if not CreateProcess(nil,
    zAppName,                   // Pointer to command line string;
    nil,                        // Pointer to process security attributes;
    nil,                        // Pointer to thread security attributes;
    False,                      // Handle inheritance flag;
    CREATE_NEW_CONSOLE or       // Creation flags
    NORMAL_PRIORITY_CLASS,
    nil,                        // Pointer to new environment block
    nil,                        // Pointer to current directory name
    StartupInfo,                // Pointer to STARTUPINFO
    ProcessInfo)                // Pointer to PROCESS_INF
    then Result := WAIT_FAILED
  else
  begin
    while WaitForSingleObject(ProcessInfo.hProcess, 0) = WAIT_TIMEOUT do
    begin
      Application.ProcessMessages;
      Sleep(50);
    end;
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess, Result);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

class function TArquivo.ExecutarAguardar32(const NomeArquivo: string; const Visibilidade: Integer): Longword;
var
  zAppName: array[0..512] of Char;
  zCurDir: array[0..255] of Char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  { *** By Pat Ritchey *** }
  StrPCopy(zAppName, NomeArquivo);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, SizeOf(StartupInfo), #0);
  StartupInfo.cb := SizeOf(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibilidade;
  if not CreateProcess(nil,
    zAppName,                         // Pointer to command line string;
    nil,                              // Pointer to process security attributes;
    nil,                              // Pointer to thread security attributes;
    False,                            // Handle inheritance flag;
    CREATE_NEW_CONSOLE or             // Creation flags;
    NORMAL_PRIORITY_CLASS,
    nil,                              // Pointer to new environment block;
    nil,                              // Pointer to current directory name;
    StartupInfo,                      // Pointer to STARTUPINFO;
    ProcessInfo)                      // Pointer to PROCESS_INF;
    then Result := WAIT_FAILED
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess, Result);
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

class function TArquivo.GerarCfg(const NomeArquivo: string): string;
var
  S, Ex: string;
  I: Integer;
begin
  S := ExtractFileName(NomeArquivo);
  Ex := ExtractFileExt(NomeArquivo);

  for I := Length(Ex) downto 1 do
    Delete(S, Length(S), 1);

  Result := ExtractFilePath(NomeArquivo) + S + '.cfg';
end;

class function TArquivo.GerarIni(const NomeArquivo: string): string;
var
  S, Ex: string;
  I: Integer;
begin
  S := ExtractFileName(NomeArquivo);
  Ex := ExtractFileExt(NomeArquivo);

  for I := Length(Ex) downto 1 do
    Delete(S, Length(S), 1);

  Result := ExtractFilePath(NomeArquivo) + S + '.ini';
end;

class function TArquivo.GerarMnu(const NomeArquivo: string): string;
var
  S, Ex: string;
  I: Integer;
begin
  S := ExtractFileName(NomeArquivo);
  Ex := ExtractFileExt(NomeArquivo);

  for I := Length(Ex) downto 1 do
    Delete(S, Length(S), 1);

  Result := ExtractFilePath(NomeArquivo) + S + '.mnu';
end;

class function TArquivo.GerarTmp(const NomeArquivo: string): string;
var
  S, Ex: string;
  I: Integer;
begin
  S := ExtractFileName(NomeArquivo);
  Ex := ExtractFileExt(NomeArquivo);

  for I := Length(Ex) downto 1 do
    Delete(S, Length(S), 1);

  Result := ExtractFilePath(NomeArquivo) + S + '.tmp';
end;

class function TArquivo.Tamanho(const NomeArquivo: string): Int64;
var
  Handle: THandle;
  FindData: TWin32FindData;
begin
  Handle := FindFirstFile(PChar(NomeArquivo), FindData);
  if Handle <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      Int64Rec(Result).Lo := FindData.nFileSizeLow;
      Int64Rec(Result).Hi := FindData.nFileSizeHigh;
      Exit;
    end;
  end;
  Result := -1;
end;

class function TArquivo.Versao(const NomeArquivo: string): string;
type
  PFFI = ^vs_FixedFileInfo;
var
  F: PFFI;
  Handle: Dword;
  Len: Longint;
  Data: Pchar;
  Buffer: Pointer;
  Tamanho: Dword;
  PFileName: Pchar;
begin
   PFileName := StrAlloc(Length(NomeArquivo)+1);
   StrPcopy(PFileName, NomeArquivo);
   Len := GetFileVersionInfoSize(PFileName, Handle);
   Result := '';
   if (Len > 0) then
   begin
     Data := StrAlloc(Len + 1);
     if GetFileVersionInfo(PFileName, Handle, Len, Data) then
     begin
       VerQueryValue(Data, '\', Buffer, Tamanho);
       F := PFFI(Buffer);
       Result := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs),
                                        LoWord(F^.dwFileVersionMs),
                                        HiWord(F^.dwFileVersionLs),
                                        Loword(F^.dwFileVersionLs)]);
     end;
     StrDispose(Data)
   end;
   StrDispose(PFileName);
end;

end.
