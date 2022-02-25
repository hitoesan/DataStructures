program repeticao_em_matriz;

const MAX = 100;
type matriz = array[1..MAX, 1..MAX] of longint;

var m, n: longint;
    a: matriz;

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

function buscar(x, l, c: longint; m: matriz): longint;
var i, j, achou: longint;

begin
  achou:=0;
  for i:=1 to l do
    for j:=1 to c do
      if m[i][j]=x then
        achou:=achou+1;

  buscar:=achou;
end;


function ha_repeticao(l, c: longint; m: matriz): boolean;
var i, j: longint;
    repeticao: boolean;
begin
  repeticao:=false;;

  for i:=1 to l do
    for j:=1 to c do
      if buscar(m[i][j], l, c, m)>1 then
        repeticao:=true;

  ha_repeticao:=repeticao;
end;

begin
  read(m, n);
  ler_matriz(m, n, a);
  
  if ha_repeticao(m, n, a) then
    writeln('sim')
  else
    writeln('nao');
end.
