unit UnitAll;

interface
uses Windows, Messages, SysUtils, Classes,Forms;


   function Unescape(s: AnsiString): WideString;
   function ReplaceStr(const S, Srch, Replace: string): string;
   function SelectNumber(const S: string): string;
   function CheckCID(cid: string): boolean;
   function Agemonth(bdate,vdate: TDateTime): integer;
   function  GetTempDir : string;


implementation
uses
 Mainfrom,LoginForm  ;



function  Unescape(s: AnsiString): WideString;
var i: Integer; j: Integer; c: Integer;
begin // Make result at least large enough. This prevents too many reallocs
  SetLength(Result, Length(s));
  i := 1; j := 1;
  while i <= Length(s) do
  begin // If a '\' is found, typecast the following 4 digit integer to widechar
    if s[i] = '\' then
    begin
      if s[i+1] <> '/' then
      begin
        if ((s[i+1] <> 'u') or not TryStrToInt('$' + string(Copy(s, i + 2, 4)), c)) then
        begin
          raise Exception.CreateFmt('Invalid code at position %d', [i]);
        end;
        Inc(i, 6);
        Result[j] := WideChar(c);
      end else
      begin
        Result[j] := WideChar(s[i+1]);
        Inc(i, 2);
      end;
    end else
    begin
      Result[j] := WideChar(s[i]);
      Inc(i);
    end;
      Inc(j);
  end; // Trim result in case we reserved too much space
  SetLength(Result, j-1);
end;

function ReplaceStr(const S, Srch, Replace: string): string;
var
  I: Integer;
  Source: string;
begin
  Source := S;
  Result := '';
  repeat
    I := Pos(Srch, Source);
    if I > 0 then
    begin
      Result := Result + Copy(Source, 1, I - 1) + Replace;
      Source := Copy(Source, I + Length(Srch), MaxInt);
    end
    else
      Result := Result + Source;
  until I <= 0;
end;

function SelectNumber(const S: string): string;
var
  I,j: Integer;
  Source: string;
  mychar : Char;
begin
  Source := s;
  Result := '';
    j := Length(Source);
    if j > 0 then
    for I := 0 to j do
    begin
      mychar := Char(Source[i]);
      if (Ord(mychar) = 46) or ((Ord(mychar) >= 48) and (Ord(mychar) <=57 )) then
        Result := Result + mychar;

    end;
end;

function CheckCID(cid: string): boolean;
var
  i: integer;
  nMod, nValue, cv: integer;
  snmod: string;
begin
  cid := replacestr(cid, '-', '');
  result := false;
  if length(cid) <> 13 then
    exit;

  cv := strtoint(copy(cid, 1, 1));
  nValue := cv * 13;

  for i := 2 to 12 do
  begin
    cv := strtoint(copy(cid, i, 1));
    nValue := nValue + (cv * (14 - i));

  end;

  nMod := 11 - (nValue mod 11);
  snmod := inttostr(nmod);
  snmod := copy(snmod, length(snmod), 1);
  result := copy(cid, 13, 1) = snmod;

end;

function Agemonth(bdate,vdate: TDateTime): integer;
var aday,amonth : Integer;
begin
    aday := Round(vdate - bdate);
    amonth := aday div 30;
    Result := amonth;
end;

function  GetTempDir : string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;
end.
