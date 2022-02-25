program palavras_cruzadas;
const MAX = 100;
type matriz = array[0..MAX, 0..MAX] of longint;
type mascara = array[0..MAX, 0..MAX] of boolean;

var A: matriz;
    n, m: longint;

{Gera um jogo de palavras cruzadas, no qual cada número representa
o começo de uma palavra, -1 representa um quadrado preto e 0 representa
um quadrado vazio.}

procedure ler_matriz(l, c: longint; var m: matriz);
var i, j, elemento: longint;
begin
  for i:=1 to l do
    for j:=1 to c do
    begin
      read(elemento);
      m[i][j]:=elemento;
    end;

  for i:=1 to c do
    m[l+1][i]:=-1;
  for i:=1 to l do
    m[i][c+1]:=-1;
  for i:=1 to l do
    m[i][0]:=-1;
end;

function eh_branco(l, c: longint; m: matriz): boolean;
begin
  if m[l][c]=-1 then
    eh_branco:=false
  else
    eh_branco:=true;
end;

procedure preencher_linha(l, c: longint; m1: matriz; var m2: mascara);
var i: longint;
begin
  i:=c;
  while m1[l][i]<>-1 do
  begin
    m2[l][i]:=false;
    i:=i+1;
  end; 
end;

procedure preencher_coluna(l, c: longint; m1: matriz; var m2: mascara);
var i: longint;
begin
  i:=l;
  while m1[i][c]<>-1 do
  begin
    m2[i][c]:=false;
    i:=i+1;
  end; 
end;

procedure imprimir(l, c: longint; m: matriz);
var i, j: longint;
begin
  for i:=1 to l do
  begin
    for j:=1 to c do
      write(m[i][j], ' ');
    writeln();
  end;
end;

{Popula uma matriz com as casas já varridas.}

procedure preencher(l, c: longint; var m: matriz);
var i, j, cont: longint;
    masc: mascara;
begin
  for i:=1 to l do
    for j:=1 to c do
      if eh_branco(i, j, m) then
        masc[i][j]:=true
      else
        masc[i][j]:=false;

  for j:=1 to c do
    masc[l+1][j]:=false;
  for i:=1 to l do
    masc[c+1][i]:=false;
  
  cont:=1;
  for i:=1 to l do
    for j:=1 to c do
    begin
      if eh_branco(i, j, m) then
      begin
        if masc[i][j+1] then
        begin
          m[i][j]:=cont;
          preencher_linha(i, j, m, masc);
          cont:=cont+1;
        end
        else
          if masc[i+1][j] then
          begin
            m[i][j]:=cont;
            preencher_coluna(i, j, m, masc);
            cont:=cont+1;
          end
          else
            if (m[i][j-1]=-1) and (eh_branco(i, j+1, m)) then
            begin
              m[i][j]:=cont;
              preencher_linha(i, j, m, masc);
              cont:=cont+1;
            end;
      end;
    end;
end;

begin
  read(n, m);
  ler_matriz(n, m, A);
  preencher(n, m, A);
  writeln();
  imprimir(n, m, A);
end.
