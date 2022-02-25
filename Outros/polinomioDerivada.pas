program calcular_polinomio;
uses Math;

const MAX = 100;
type polinomio = record
  grau: longint;
  pol: array[0..MAX] of longint;
end;

var pol, derivada: polinomio;
    grau, x: longint;

procedure inicializar_polinomio(var pol: polinomio);
begin
  pol.grau:=0;
end;

procedure ler(grau: longint; var pol: polinomio);
var i, coef: longint;
begin
  for i:=grau downto 0 do
  begin
    read(coef);
    pol.pol[i]:=coef;
  end;
  pol.grau:=grau;
end;

function substituir_x(x: longint; pol: polinomio): real;
var i: longint;
    res: real;
begin
  res:=0;
  for i:=0 to pol.grau do
    res:=res+(pol.pol[i]*power(x, i));

  substituir_x:=res;
end;

function derivar(pol: polinomio): polinomio;
var i, coef: longint;
    deri: polinomio;
begin
  for i:=1 to pol.grau do
  begin
    coef:=pol.pol[i]*i;
    deri.pol[i-1]:=coef;
  end;
  deri.grau:=pol.grau-1;
  derivar:=deri;
end;

begin
  inicializar_polinomio(pol);
  read(grau);
  ler(grau, pol);

  read(x);
  writeln(substituir_x(x, pol):0:2);

  derivada:=derivar(pol);
  read(x);
  writeln(substituir_x(x, derivada):0:2);
  
end.
