program contrario;
uses Math;
var n: longint;

{inverte a ordem de um número. Ex: 123 -> 321}

function numero_ao_contrario(n: longint): real;
var algarismo, dividendo: longint;
var ncontrario: real;
var digitos: integer;

begin
  digitos:=0;
  dividendo:=n;
  ncontrario:=0;

  {Encontra o número de dígitos}
  while dividendo<>0 do
  begin
    digitos:=digitos+1;
    dividendo:=dividendo div 10;
  end;

  {Encontra os algarismos 1 a 1, à partir do último dígito.
  Depois, é multiplicado de acordo com sua casa decimal
  de acordo com o número de dígitos}
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


begin
  read(n);
  writeln(numero_ao_contrario(n):0:0);
end.
