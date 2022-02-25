program converte;
uses Math;
var n: longint;

function converte_em_decimal(n: longint): real;
var algarismo, binario: longint;
var decimal: real;
var i: integer;

begin
  binario:=n;
  decimal:=0;
  i:=0;
  while(binario<>0) do
  begin
    algarismo:=binario mod 10;
    decimal:=decimal+(algarismo * power(2, i));
    i:=i+1;
    binario:=binario div 10;
  end;

  converte_em_decimal:=decimal;
end;


begin
  read(n);
  writeln(converte_em_decimal(n):0:0);
end.
