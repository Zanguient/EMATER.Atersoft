unit Emater.Classe.Cadeia;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, DateUtils, Forms, StrUtils, IdHashMessageDigest;

type
  TCadeia = class
  public
    // Tipos:
    class function ValidarInteiro(const AValor:string): Boolean;
    class function ValidarData(const AValor:string): Boolean;

    // Documentos:
    class function ValidarCPF(const AValor:string): Boolean;
    class function ValidarCNPJ(const AValor:string): Boolean;

    // String diversas:
    class function RemoverAcentos(const AValor: string): string;
    class function RemoverFimLinha(const AValor: string): string;
    class function CompletarEsquerda(const AValor: string; C: Char; Qtde: Smallint): string;
    class function CompletarDireita(const AValor: string; C: Char; Qtde: Smallint): string;
    class function SomenteNumeros(const AValor: string): string;
    class function SomenteNumerosDecimal(const AValor: string; CaracterDecimal: Char): string;
    class function Substituir(const AValor, ADe, APara: string): string;
    class function SubstituirCaracterRico(const AValor: string): string;
    class function ContarCaracter(const AValor: string; C: Char): Integer;

    // Datas:
    class function DataCitada(const AValor, AFormato: string): string;
    class function Idade(const ADataInicio, ADataFim: TDate): string;
    class function IdadeAnoMesDia(const ADataInicio, ADataFim: TDate): string;

    // Extensıes:
    class function ExtensoNumero(AValor: Currency; IsMoney: Boolean = True): string;
    class function ExtensoData(AData: TDate): string;

    // Criptografia:
    class function MD5(const ATexto: string): string;
  end;

implementation

uses
  Emater.Classe.Consts;

{$R-} {$Q-}

class function TCadeia.MD5(const ATexto: string): string;
var
  idMD5 : TIdHashMessageDigest5;
begin
  idMD5 := TIdHashMessageDigest5.Create;
  try
    Result := idmd5.HashStringAsHex(ATexto);
  finally
    idMD5.Free;
  end;
end;

class function TCadeia.ExtensoData(AData: TDate): string;
var
  Dia, Mes, Ano: string;
begin

  // Obtendo o dia:
  if (DayOf(AData) = 1) then
    Dia := 'Primeiro'
  else
    Dia := ExtensoNumero(DayOf(AData), False);

  // Obtendo o mÍs:
  Mes := FormatDateTime('mmmm', AData);
  Mes[1] := UpperCase(Mes[1])[1];

  // Obtendo o ano:
  Ano := ExtensoNumero(YearOf(AData), False);

  Result := Dia + ' de ' + Mes + ' de ' + Ano;
end;
{$R+} {$Q+}

class function TCadeia.Substituir(const AValor, ADe, APara: string): string;
var
  Position: Integer;
begin
  Result := AValor;
  Position := Pos(ADe, Result);
  while (Position > 0) do
  begin
    Delete(Result, Position, Length(ADe));
    Insert(APara, Result, Position);
    Position := Pos(ADe, Result);
  end;
end;

class function TCadeia.SubstituirCaracterRico(const AValor: string): string;
const
  CaracterRico: array[0..36] of string = (
    '\''e1', '\''e0', '\''e2', '\''e3', '\''c1', '\''c0', '\''c2', '\''e7', '\''c7',
    '\''e9', '\''e8', '\''ea', '\''c9', '\''c8', '\''ca', '\''ed', '\''ec', '\''ee',
    '\''cd', '\''cc', '\''ce', '\''f3', '\''f2', '\''f4', '\''f5', '\''d3', '\''d2',
    '\''d4', '\''d5', '\''fa', '\''f9', '\''fb', '\''fc', '\''da', '\''d9', '\''db',
    '\''dc');
  Caracter: array[0..36] of string = (
    '·', '‡', '‚', '„', '¡', '¿', '¬', 'Á', '«',
    'È', 'Ë', 'Í', '…', '»', ' ', 'Ì', 'Ï', 'Ó',
    'Õ', 'Ã', 'Œ', 'Û', 'Ú', 'Ù', 'ı', '”', '“',
    '‘', '’', '˙', '˘', '˚', '¸', '⁄', 'Ÿ', '€',
    '‹');
var
  I, P: Integer;
begin
  Result := AValor;

  for I := 0 to 36 do
    begin
      P := Pos(CaracterRico[I], Result);
      if P > 0 then
        begin
          Delete(Result, P, Length(CaracterRico[I]));
          Insert(Caracter[I], Result, P);
        end;
    end;
end;

class function TCadeia.CompletarEsquerda(const AValor: string; C: Char; Qtde: Smallint): string;
begin
  Result := AValor;
  if (Length(Result) < Qtde) then
  repeat
    Result := C + Result;
  until Length(Result) >= Qtde;
end;

class function TCadeia.CompletarDireita(const AValor: string; C: Char; Qtde: Smallint): string;
begin
  Result := AValor;
  if (Length(Result) < Qtde) then
  repeat
    Result := Result + C;
  until Length(Result) >= Qtde;
end;

class function TCadeia.Idade(const ADataInicio, ADataFim: TDate): string;
var
  Anos: Integer;
  Meses: Integer;
begin
  Anos := MonthsBetween(ADataInicio, ADataFim) div 12;
  Meses := MonthsBetween(ADataInicio, ADataFim) mod 12;
  if (Anos > 1)
    then Result := IntToStr(Anos) + ' Anos'
    else Result := IntToStr(Anos) + ' Ano';
  if (Meses > 0) then
    begin
    if (Meses > 1)
      then Result := Result + ' e ' + IntToStr(Meses) + ' Meses'
      else Result := Result + ' e ' + IntToStr(Meses) + ' MÍs';
    end;
end;

class function TCadeia.IdadeAnoMesDia(const ADataInicio, ADataFim: TDate): string;
var
  Anos: Smallint;
  Meses: Smallint;
  Dias: Smallint;
  Data: TDate;
begin
  Anos := MonthsBetween(ADataInicio, ADataFim) div 12;
  Meses := MonthsBetween(ADataInicio, ADataFim) mod 12;
  if (DayOf(ADataFim) >= DayOf(ADataInicio))
    then Dias := DayOf(ADataFim) - DayOf(ADataInicio)
    else begin
         Data := ADataInicio;
         while not IsValidDate(YearOf(ADataFim), MonthOf(IncMonth(ADataFim, -1)), DayOf(Data)) do
           begin
           Data := IncDay(Data, -1);
           end;
         Dias := DaysBetween(EncodeDate(YearOf(ADataFim), MonthOf(IncMonth(ADataFim, -1)), DayOf(Data)), ADataFim);
         end;
  Result := FormatFloat('000', Anos) + FormatFloat('00', Meses) + FormatFloat('00', Dias);
end;

class function TCadeia.SomenteNumerosDecimal(const AValor: string; CaracterDecimal: Char): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(AValor) do
    if (CharInSet(AValor[I], [CaracterDecimal, '0'..'9'])) then
      Result := Result + AValor[I];
end;

class function TCadeia.SomenteNumeros(const AValor: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(AValor) do
    if (CharInSet(AValor[I], ['0'..'9'])) then
      Result := Result + AValor[I];
end;

class function TCadeia.ValidarCNPJ(const AValor:string): Boolean;
var
  Dig: array [1..14] of Byte;
  I, Resto: Byte;
  Dv1, Dv2: Byte;
  Total1, Total2: Integer;
  Valor: string;
begin
  Valor := AValor;
  for I := Length(Valor) downto 1 do
    if not (CharInSet(Valor[I], ['0'..'9'])) then Delete(Valor, I, 1);
  try
    StrToInt(Copy(Valor, 1, 5));
  except
    Result := True;
    Exit;
  end;
  Result := False;
  if Length(Valor) = 14 then
  begin
    for I := 1 to 14 do
    try
      Dig[I] := StrToInt (Valor[I]);
    except
      Dig[i] := 0;
    end;
    Total1 := Dig[1] * 5 + Dig[2] * 4 + Dig[3] * 3 +
      Dig[4] * 2 + Dig[5] * 9 + Dig[6] * 8 +
      Dig[7] * 7 + Dig[8] * 6 + Dig[9] * 5 +
      Dig[10] * 4 + Dig[11] * 3 + Dig[12] * 2 ;
    Resto := Total1 mod 11;
    if Resto > 1
      then Dv1 := 11 - Resto
      else Dv1 := 0;
    Total2 := Dig[1] * 6 + Dig[2] * 5 + Dig[3] * 4 +
      Dig[4] * 3 + Dig[5] * 2 + Dig[6] * 9 +
      Dig[7] * 8 + Dig[8] * 7 + Dig[9] * 6 +
      Dig[10] * 5 + Dig[11] * 4 + Dig[12] * 3 + Dv1 * 2 ;
    Resto := Total2 mod 11;
    if Resto > 1
      then Dv2 := 11 - Resto
      else Dv2 := 0;
    if (Dv1 = Dig[13]) and (Dv2 = Dig[14])
      then Result := True;
  end;
end;

class function TCadeia.ValidarCPF(const AValor:string): Boolean;
var
  I, Numero, Resto: Byte ;
  Dv1, Dv2: Byte ;
  Total, Soma: Integer ;
  Valor: string;
begin
  Valor := AValor;
  for I := Length(Valor) downto 1 do
    if not (CharInSet(Valor[I], ['0'..'9'])) then Delete(Valor, I, 1);
  try
    StrToInt(Copy(Valor, 1, 5));
  except
    Result := True;
    Exit;
  end;
  Result := False;
  if Length(Valor) = 11 then
  begin
    Total := 0 ;
    Soma := 0 ;
    for I := 1 to 9 do
    begin
      try
        Numero := StrToInt (Valor[I]);
      except
        Numero := 0;
      end;
      Total := Total + (Numero * (11 - I)) ;
      Soma := Soma + Numero;
    end;
    Resto := Total mod 11;
    if Resto > 1
      then Dv1 := 11 - Resto
      else Dv1 := 0;
    Total := Total + Soma + 2 * Dv1;
    Resto := Total mod 11;
    if Resto > 1
      then Dv2 := 11 - Resto
      else Dv2 := 0;
    if (IntToStr (Dv1) = Valor[10]) and (IntToStr (Dv2) = Valor[11])
      then Result := True;
  end;
end;

class function TCadeia.ContarCaracter(const AValor: string; C: Char): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 1 to Length(AValor) do
    if (AValor[I] = C) then
      Result := Result + 1;
end;

class function TCadeia.ValidarData(const AValor:string): Boolean;
var
  Data: TDatetime;
begin
  Result := TryStrToDate(AValor, Data);
end;

class function TCadeia.ValidarInteiro(const AValor:string): Boolean;
var
  I: Int64;
begin
  Result := TryStrToInt64(AValor, I);
end;

class function TCadeia.RemoverAcentos(const AValor: string): string;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸Ò˝¿¬ ‘€√’¡…Õ”⁄«‹—›∫™¥"`~^®';
  SemAcento = 'aaeouaoaeioucunyAAEOUAOAEIOUCUNY        ';
var
  I: Integer;
begin
  Result := AValor;
  for I := 1 to Length(Result) do
  try
    if (Pos(Result[I], ComAcento) <> 0) then
      Result[I] := SemAcento[Pos(Result[I], ComAcento)];
  except on E: Exception do
    raise Exception.Create(CLASSE_ERRO_ACENTO);
  end;
end;

class function TCadeia.RemoverFimLinha(const AValor: string): string;
var
  I: Integer;
begin
  Result := AValor;
  for I := Length(Result) downto 1 do
    if (Result[I] = #10) and (Result[I] = #13) then
      begin
        Delete(Result, I, 1);        
      end;
end;

class function TCadeia.DataCitada(const AValor, AFormato: string): string;
begin
  try
    Result := QuotedStr(FormatDateTime(AFormato, StrToDate(AValor)));
  except
    Result := '';
  end;
end;

{$WARNINGS OFF}
class function TCadeia.ExtensoNumero(AValor: Currency; IsMoney: Boolean = True): string;
type
  TTipoExtenso = (teMasculino, teFeminino);

  TDigito = 0..9;

  TNumeroInfo = packed record
    Centena: TDigito;
    Dezena: TDigito;
    Unidade: TDigito;
  end;

  TExtensoInfo = packed record
    NumeroStr: String[3];
    NumeroInt: SmallInt;
  end;

var
  NumInt: Int64;
  NumDec: LongWord;
  tmpStr: ShortString;
  ExtInt: String;
  ExtDec: String;
  P: Byte;

resourcestring
  {----------------------------------------------------------------------}
  { MOEDAS                                                               }
  {----------------------------------------------------------------------}
  {$IFDEF PADRAO_PORTUGAL}
  SFctMoeda_IS = 'Euro';
  SFctMoeda_IP = 'Euros';
  SFctMoeda_DS = 'CÍntimo';
  SFctMoeda_DP = 'CÍntimos';
  {$ELSE}
  SFctMoeda_IS = 'Real';
  SFctMoeda_IP = 'Reais';
  SFctMoeda_DS = 'Centavo';
  SFctMoeda_DP = 'Centavos';
  {$ENDIF}
  SFctMoeda_E  = 'e';
  SFctMoeda_DE = 'de';

  SFctMoeda_TS = 'Trilh„o';
  SFctMoeda_TP = 'Trilhıes';
  SFctMoeda_BS = 'Bilh„o';
  SFctMoeda_BP = 'Bilhıes';
  SFctMoeda_MS = 'Milh„o';
  SFctMoeda_MP = 'Milhıes';
  SFctMoeda_ML = 'Mil';

  SFctMoeda_1M = 'Um';
  SFctMoeda_1F = 'Uma';
  SFctMoeda_2M = 'Dois';
  SFctMoeda_2F = 'Duas';
  SFctMoeda_3M = 'TrÍs';
  SFctMoeda_4M = 'Quatro';
  SFctMoeda_5M = 'Cinco';
  SFctMoeda_6M = 'Seis';
  SFctMoeda_7M = 'Sete';
  SFctMoeda_8M = 'Oito';
  SFctMoeda_9M = 'Nove';

  SFctMoeda_10 = 'Dez';
  SFctMoeda_20 = 'Vinte';
  SFctMoeda_30 = 'Trinta';
  SFctMoeda_40 = 'Quarenta';
  SFctMoeda_50 = 'Cinq¸enta';
  SFctMoeda_60 = 'Sessenta';
  SFctMoeda_70 = 'Setenta';
  SFctMoeda_80 = 'Oitenta';
  SFctMoeda_90 = 'Noventa';

  SFctMoeda_11 = 'Onze';
  SFctMoeda_12 = 'Doze';
  SFctMoeda_13 = 'Treze';
  SFctMoeda_14 = 'Quatorze';
  SFctMoeda_15 = 'Quinze';
  SFctMoeda_16 = 'Dezesseis';
  SFctMoeda_17 = 'Dezessete';
  SFctMoeda_18 = 'Dezoito';
  SFctMoeda_19 = 'Dezenove';

  SFctMoeda_C00M = 'Cento';
  SFctMoeda_100M = 'Cem';
  SFctMoeda_200M = 'Duzentos';
  SFctMoeda_200F = 'Duzentas';
  SFctMoeda_300M = 'Trezentos';
  SFctMoeda_300F = 'Trezentas';
  SFctMoeda_400M = 'Quatrocentos';
  SFctMoeda_400F = 'Quatrocentas';
  SFctMoeda_500M = 'Quinhentos';
  SFctMoeda_500F = 'Quinhentas';
  SFctMoeda_600M = 'Seiscentos';
  SFctMoeda_600F = 'Seiscentas';
  SFctMoeda_700M = 'Setecentos';
  SFctMoeda_700F = 'Setecentas';
  SFctMoeda_800M = 'Oitocentos';
  SFctMoeda_800F = 'Oitocentas';
  SFctMoeda_900M = 'Novecentos';
  SFctMoeda_900F = 'Novecentas';

const
  _lim_ext = 5;    // limite para trilhıes
  _trilhao = 1;
  _bilhao = 2;
  _milhao = 3;
  _milhar = 4;
  _centena = 5;

  function MontaExtensoBase(AValor: Int64; ATipo: TTipoExtenso): String;
  const
    // descriÁ„o das casas:
    _mm: array[1.._lim_ext, 1..2] of String = (
      (SFctMoeda_TS, SFctMoeda_TP),
      (SFctMoeda_BS, SFctMoeda_BP),
      (SFctMoeda_MS, SFctMoeda_MP),
      (SFctMoeda_ML, SFctMoeda_ML),
      ('', '')
    );
    // centena - MASCULINO:
    _cm: array[0..9] of String = (
      SFctMoeda_C00M, SFctMoeda_100M, SFctMoeda_200M,
      SFctMoeda_300M, SFctMoeda_400M, SFctMoeda_500M,
      SFctMoeda_600M, SFctMoeda_700M, SFctMoeda_800M,
      SFctMoeda_900M
    );
    // centena - FEMININO:
    _cf: array[0..9] of String = (
      SFctMoeda_C00M, SFctMoeda_100M, SFctMoeda_200F,
      SFctMoeda_300F, SFctMoeda_400F, SFctMoeda_500F,
      SFctMoeda_600F, SFctMoeda_700F, SFctMoeda_800F,
      SFctMoeda_900F
    );
    // dezena (11 a 19):
    _dd: array[1..9] of String = (
      SFctMoeda_11, SFctMoeda_12, SFctMoeda_13,
      SFctMoeda_14, SFctMoeda_15, SFctMoeda_16,
      SFctMoeda_17, SFctMoeda_18, SFctMoeda_19
    );
    // dezena inteira:
    _di: array[1..9] of String = (
      SFctMoeda_10, SFctMoeda_20, SFctMoeda_30,
      SFctMoeda_40, SFctMoeda_50, SFctMoeda_60,
      SFctMoeda_70, SFctMoeda_80, SFctMoeda_90
    );
    // unidades - MASCULINO:
    _um: array[1..9] of String = (
      SFctMoeda_1M, SFctMoeda_2M, SFctMoeda_3M,
      SFctMoeda_4M, SFctMoeda_5M, SFctMoeda_6M,
      SFctMoeda_7M, SFctMoeda_8M, SFctMoeda_9M
    );
    // unidades - FEMININO:
    _uf: array[1..9] of String = (
      SFctMoeda_1F, SFctMoeda_2F, SFctMoeda_3M,
      SFctMoeda_4M, SFctMoeda_5M, SFctMoeda_6M,
      SFctMoeda_7M, SFctMoeda_8M, SFctMoeda_9M
    );

  var
    Numero: TNumeroInfo;
    tmpStr: string;
    tmpNum: string[3];
    tmpExt: string;
    tmpPar: SmallInt;
    i: Integer;
    iNum: Byte;
    ExtInfo: array[1.._lim_ext] of TExtensoInfo;

    function TextoCentena(AIndex: Integer): ShortString;
    begin
      case ATipo of
        teMasculino:
          Result := _cm[AIndex];
        teFeminino:
          Result := _cf[AIndex];
      end;
    end;

    function TextoUnidade(AIndex: Integer): ShortString;
    begin
      case ATipo of
        teMasculino:
          Result := _um[AIndex];
        teFeminino:
          Result := _uf[AIndex];
      end;
    end;

  begin
    Result := '';
    if AValor <= 0 then Exit;
    // compıe a string de formataÁ„o
    tmpStr := IntToStr(AValor);
    while (Length(tmpStr) < (_lim_ext * 3)) do
    begin
      tmpStr := '0' + tmpStr;
    end;
    // obtÈm as partes do n˙mero
    for i := 1 to _lim_ext do
    begin
      tmpNum := Copy(tmpStr, ((i - 1) * 3) + 1, 3);
      ExtInfo[i].NumeroStr := tmpNum;
      tmpExt := '';
      iNum := 1;
      while (iNum <= 3) do
      begin
        if tmpNum[iNum] in ['0'..'9'] then
          tmpExt := tmpExt + tmpNum[iNum];
        iNum := iNum + 1;
      end;
      if tmpExt = '' then tmpExt := '0';
      ExtInfo[i].NumeroInt := StrToInt(tmpExt);
    end;
    // inicia o processamento
    for i := 1 to _lim_ext do
    begin
      tmpNum := ExtInfo[i].NumeroStr;
      // armazena o n˙mero j· devidamente fragmentado para an·lise
      Numero.Centena := StrToInt(tmpNum[1]);
      Numero.Dezena := StrToInt(tmpNum[2]);
      Numero.Unidade := StrToInt(tmpNum[3]);
      // constrÛi o extenso do n˙mero (parcial)
      tmpExt := '';
      tmpPar := StrToInt(tmpNum);
      if tmpPar > 0 then
      begin
        // trata a centena
        if (Numero.Centena > 0) then
        begin
          if (Numero.Centena = 1) and
            ((Numero.Dezena + Numero.Unidade) > 0) then
            tmpExt := tmpExt + #32 + TextoCentena(0)
          else
            tmpExt := tmpExt + #32 + TextoCentena(Numero.Centena);
        end;
        // trata a dezena
        if (Numero.Dezena > 0) then
        begin
          if (Numero.Centena > 0) then
            tmpExt := tmpExt + #32 + SFctMoeda_E;
          if (Numero.Dezena = 1) and (Numero.Unidade > 0) then
            tmpExt := tmpExt + #32 + _dd[Numero.Unidade]
          else
            tmpExt := tmpExt + #32 + _di[Numero.Dezena];
        end;
        // trata a unidade
        if (Numero.Unidade > 0) and (Numero.Dezena <> 1) then
        begin
          if (Numero.Centena > 0) or (Numero.Dezena > 0) then
            tmpExt := tmpExt + #32 + SFctMoeda_E;
          tmpExt := tmpExt + #32 + TextoUnidade(Numero.Unidade);
        end;
        if (tmpPar = 1) then
          tmpExt := tmpExt + #32 + _mm[i][1]
        else
          tmpExt := tmpExt + #32 + _mm[i][2];
      end;
      // adiciona o texto do extenso da parte analisada
      if Length(tmpExt) > 0 then
      begin
        if Result <> '' then
        begin
          if (Numero.Centena > 0) and
            ((Numero.Dezena > 0) or (Numero.Unidade > 0)) then
            Result := Result + ','
          else
            Result := Result + #32 + SFctMoeda_E;
        end;
        Result := Result + #32 + TrimLeft(TrimRight(tmpExt));
      end;
      // inicia reprocessamento
    end;
    Result := TrimLeft(TrimRight(Result));
  end;

begin
  Result := '';
  tmpStr := FormatFloat('0.00', AValor);
  P := Pos(FormatSettings.DecimalSeparator, tmpStr);
  NumInt := StrToInt64Def(Copy(tmpStr, 1, P - 1), 0);
  NumDec := StrToIntDef(Copy(tmpStr, P + 1, 2), 0);

  if NumInt > 0 then
    begin
      ExtInt := MontaExtensoBase(NumInt, teMasculino);

      if IsMoney then
        begin
          if NumInt = 1 then
            Result := ExtInt + #32 + SFctMoeda_IS
          else
            Result := ExtInt + #32 + SFctMoeda_IP;
        end
      else
        begin
          if NumInt = 1 then
            Result := ExtInt + #32
          else
            Result := ExtInt + #32;
        end;
    end;

  if NumDec > 0 then
    begin
      if NumInt > 0 then ExtDec := SFctMoeda_E;
      ExtDec := ExtDec + #32 + MontaExtensoBase(NumDec, teMasculino);

      if IsMoney then
        begin
          if NumDec = 1 then
            Result := Result + #32 + ExtDec + #32 + SFctMoeda_DS
          else
            Result := Result + #32 + ExtDec + #32 + SFctMoeda_DP;
        end
      else
        begin
          if NumDec = 1 then
            Result := Result + #32 + ExtDec
          else
            Result := Result + #32 + ExtDec;
        end;
    end;
  Result := Trim(Result);
end;
{$WARNINGS ON}

end.
