program quadrado_magico2;
const MAX = 100;
type matriz = array[1..MAX, 1..MAX] of longint;

var A, B: matriz;
    n: longint;

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

function retorna_matriz(n, li, ci: longint; m: matriz): longint;
var i, j: longint;
begin
  for i:=li to n do
    for j:=ci to n do
      retorna_matriz:=m[i][j];
end;

procedure copiar_matriz(n, li, ci: longint; m: matriz; var mr: matriz);
var i, j, l, c: longint;
begin
  for i:=1 to n do
    for j:=1 to n do
      mr[i][j]:=retorna_matriz(n, li, ci, m);
end;

{function submatrizes(n: longint; m: matriz): longint;
var submatriz: matriz;
    i, j, l, c, cont: longint;
begin
  cont:=n;
  var i:=1 to n-1 do
  begin
    var j:=1 to n-1 do
    begin
      var l:=cont downto 2 do
        
    end;
  end;
end;
}
procedure imprimir(n: longint; m: matriz);
var i, j: longint;
begin
  for i:=1 to n do
  begin
    for j:=1 to n do
      write(m[i][j], ' ');
    writeln();
  end;
  writeln();
end;

begin
  read(n);
  ler_matriz(n, n, A);
  copiar_matriz(4, 1, 1, A, B);
  imprimir(4, B);
end.
