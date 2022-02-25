program contrario;
uses Math;
var n, m: longint;

function numero_ao_contrario(n: longint): real;
var algarismo, dividendo: longint;
var ncontrario: real;
var digitos: integer;

begin
  digitos:=0;
  dividendo:=n;
  ncontrario:=0;

  while dividendo<>0 do
  begin
    digitos:=digitos+1;
    dividendo:=dividendo div 10;
  end;

  dividendo:=n;
  digitos:=digitos-1;
  while dividendo<>0 do
  begin
    algarismo:=dividendo mod 10;
    ncontrario:=ncontrario+(algarismo*power(10, digitos));
    digitos:=digitos-1;
    dividendo:=dividendo div 10;
  end;

  numero_ao_contrario:=ncontrario;
end;


function contrario(n, m: longint): boolean;
begin
  if numero_ao_contrario(n)=m then
    contrario:=true
  else
    contrario:=false;
end;


begin
  read(n,m);
  if contrario(n,m) then
    writeln(n, ' eh o contrario de ', m)
  else
    writeln(n, ' nao eh o contrario de ', m);
end.
