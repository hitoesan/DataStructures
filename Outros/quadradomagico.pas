program quadrado_magico;
const MAX = 100;
type matriz = array[1..MAX, 1..MAX] of longint;

var n: longint;
    A: matriz;

procedure ler_matriz(l, c: longint; var m: matriz);
var i, j, elemento: longint;
begin
  for i:=1 to l do
    for j:=1 to c do
    begin
      read(elemento);
      m[i][j]:=elemento;
    end;
end;

function quadrado_magico(n: longint; m: matriz): boolean;
var i, j, soma, somabase: longint;
    eh_quadrado: boolean;
begin
  somabase:=0;
  eh_quadrado:=true;
  for i:=1 to n do
    somabase:=somabase+ m[1][i];

  {Verifica linha a linha.}
  for i:=1 to n do
  begin
    soma:=0;
    for j:=1 to n do
      soma:=soma+m[i][j];
    if soma<>somabase then
      eh_quadrado:=false;
  end;

  {Verifica coluna a coluna.}
  for i:=1 to n do
  begin
    soma:=0;
    for j:=1 to n do
      soma:=soma+m[j][i];
    if soma<>somabase then
      eh_quadrado:=false;
  end;

  {Verifica a diagonal principal.}
  soma:=0;
  for i:=1 to n do
    soma:=soma+m[i][i];
  if soma<>somabase then
    eh_quadrado:=false;

  {Verifica a diagonal secundária.}
  soma:=0;
  j:=n;
  for i:=1 to n do
  begin
    soma:=soma+m[i][j];
    j:=j-1;
  end;
  if soma<>somabase then
    eh_quadrado:=false;

  quadrado_magico:=eh_quadrado;
end;

begin
  read(n);
  ler_matriz(n, n, A);

  if quadrado_magico(n, A) then
    writeln('sim')
  else
    writeln('nao');
end.
