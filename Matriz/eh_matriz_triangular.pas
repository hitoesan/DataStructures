program matriz_triangular;

type matriz = array[1..100, 1..100] of longint;
var m: matriz;
    n: longint;

{Lê vetor quadrático e verifica se é triangular.}
{Verifica primeiramente se o triangulo inferior é composto por 0s.
Se não for, verifica o triangulo superior.}

procedure ler_matriz_quadratica(tam: longint; var m: matriz);
var i, j, elemento: longint;
begin
  for i:=1 to tam do
    for j:=1 to tam do
    begin
      read(elemento);
      m[i][j]:=elemento;
    end;
end;

function matriz_triangular(m: matriz; tam: longint): boolean;
var i, j: longint;
    triang: boolean;
begin
  j:=1;
  triang:=true;
  for i:=2 to tam do
    for j:=1 to i-1 do
    begin
      if m[i][j]<>0 then
        triang:=false;
    end;

  if triang=false then
  begin
    triang:=true;
    for i:=1 to tam do
      for j:=i+1 to tam do
      begin
        if m[i][j]<>0  then
          triang:=false;
      end;
  end;

  matriz_triangular:=triang;
end;

begin
  read(n);
  ler_matriz_quadratica(n, m);

  if matriz_triangular(m, n) then
    writeln('sim')
  else
    writeln('nao');
end.

