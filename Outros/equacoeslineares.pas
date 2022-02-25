program equacoes_lineares;
const MAX = 100;
type matriz = array[1..MAX, 1..MAX] of real;
type vetor = array[1..MAX] of real;

var A: matriz;
    B, X: vetor;
    m, n: longint;

procedure ler_vetor(tam: longint; var v: vetor);
var i: longint;
    elemento: real;
begin
  for i:=1 to tam do
  begin
    read(elemento);
    v[i]:=elemento;
  end;
end;

procedure ler_matriz(l, c: longint; var m: matriz);
var i, j: longint;
    elemento: real;
begin
  for i:=1 to l do
    for j:=1 to c do
    begin
      read(elemento);
      m[i][j]:=elemento;
    end;
end;

function correcao(l, c: longint; m: matriz; r, ld: vetor): boolean;
var i, j: longint;
    soma: real;
    eh_resultado: boolean;
begin
  eh_resultado:=true;
  for i:=1 to l do
  begin
    soma:=0;
    for j:=1 to c do
      soma:=soma+(m[i][j]*r[j]);

    if soma<>ld[i] then
      eh_resultado:=false;
  end;

  correcao:=eh_resultado;
end;

begin
  read(m, n);
  ler_vetor(n, X);
  ler_matriz(m, n, A);
  ler_vetor(m, B);

  if correcao(m, n, A, X, B) then
    writeln('sim')
  else
    writeln('nao');
end.
