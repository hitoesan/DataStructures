program q_01;

type racional = record
  num: longint;
  den: longint;
end;

var f1, f2, resultado: racional;

procedure ler(var f: racional);
var num, den: longint;
begin
  read(num, den);
  if den=0 then
    writeln('Denominador 0 não existe!')
  else
  begin
    f.num:=num;
    f.den:=den;
  end;
end;

procedure imprimir(f: racional);
begin
  writeln(f.num, '/', f.den);
end;

function MDC(n1, n2: longint): longint;
var i, menor, max_div: longint;
begin
  menor:=0;
  max_div:=1;

  if n1<n2 then
    menor:=n1
  else
    menor:=n2;

  i:=2;
  while i<menor do
  begin
    if (n1 mod i=0) and (n2 mod i=0) then
      max_div:=i;
    i:=i+1;
  end;
  MDC:=max_div;
end;

procedure simplificar(var f: racional);
var max_div: longint;
begin
  max_div:=MDC(f.num, f.den);
  if max_div>1 then
  begin
    f.num:=f.num div max_div;
    f.den:=f.den div max_div;
  end;
end;

function adicao(f1, f2: racional): racional;
var fr: racional;
begin
  fr.den:=f1.den*f2.den;
  fr.num:=((fr.den div f1.den)*f1.num) + ((fr.den div f2.den)*f2.num);
  simplificar(fr);
  adicao:=fr;
end;

function subtracao(f1, f2: racional): racional;
var fr: racional;
begin
  fr.den:=f1.den*f2.den;
  fr.num:=((fr.den div f1.den)*f1.num) - ((fr.den div f2.den)*f2.num);
  simplificar(fr);
  subtracao:=fr;
end;

function multiplicacao(f1, f2: racional): racional;
var fr: racional;
begin
  fr.num:=f1.num*f2.num;
  fr.den:=f1.den*f2.den;
  simplificar(fr);
  multiplicacao:=fr;
end;

function divisao(f1, f2: racional): racional;
var aux: longint;
begin
  aux:=f2.num;
  f2.num:=f2.den;
  f2.den:=aux;
  divisao:=multiplicacao(f1, f2);
end;

begin
  ler(f1);
  ler(f2);
  resultado:=divisao(f1, f2);
  imprimir(resultado);
end.
