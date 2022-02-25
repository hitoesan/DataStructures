program palavras_cruzadas;
const MAX = 100;
type matriz = array[0..MAX, 0..MAX] of longint;

var A: matriz;
    n, m: longint;

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
  begin
    m[0][i]:=-1;
    m[l+1][i]:=-1;
  end;

  for i:=1 to l do
  begin
    m[i][0]:=-1;
    m[i][c+1]:=-1;
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

procedure preencher(l, c: longint; var m: matriz);
var i, j, cont: longint;
begin
  cont:=1;
  for i:=1 to l do
    for j:=1 to c do
      if (m[i][j]<>-1) then
      begin
        if(m[i][j-1]=-1) and (m[i][j+1]<>-1) then
        begin
          m[i][j]:=cont;
          cont:=cont+1;
        end
        else
          if(m[i-1][j]=-1) and (m[i+1][j]<>-1) then
          begin
            m[i][j]:=cont;
            cont:=cont+1;
          end;
      end;
end;

begin
  read(n, m);
  ler_matriz(n, m, A);
  writeln();
  preencher(n, m, A);
  imprimir(n, m, A);
end.
