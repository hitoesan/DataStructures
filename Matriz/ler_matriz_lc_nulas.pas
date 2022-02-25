program elementos_nulos;
type matriz = array[1..100, 1..100] of longint;

var a: matriz;
    m, n: longint;

{Lê matriz de l linhas e c colunas e verifica quantas linhas e colunas
são nulas.}
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

{Verifica primeiramente as linhas e depois as colunas.}
procedure lc_nula(l, c: longint; m: matriz);
var i, j, lnula, cnula: longint;
    ehnulo: boolean;

begin
  lnula:=0;
  cnula:=0;

  for i:=1 to l do
  begin
    ehnulo:=true;
    for j:=1 to c do
    begin
      if m[i][j]<>0 then
        ehnulo:=false;
    end;

    if ehnulo then
      lnula:=lnula+1;
  end;

  for j:=1 to c do
  begin
    ehnulo:=true;
    for i:=1 to l do
    begin
      if m[i][j]<>0 then
        ehnulo:=false;
    end;

    if ehnulo then
      cnula:=cnula+1;
  end;

  writeln('linhas: ', lnula);
  writeln('colunas: ', cnula);
end;

begin
  read(m, n);
  ler_matriz(m, n, a);
  lc_nula(m, n, a);
end.
