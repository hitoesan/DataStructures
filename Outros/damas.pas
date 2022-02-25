program damas;
const MAX = 100;
type matriz = array[0..MAX, 0..MAX] of longint;

var d: matriz;
    n: longint;

{Verifica os movimentos possíveis (tomar, mover, ficar) para
cada peça preta -1 em um tabuleiro de damas.}

{Adiciona uma sentinela nas extremidades de cada linha, sinalizando
a extremidade do tabuleiro e que a posição não deve ser considerada
um movimento válido.}

{Armazena as posições das peças nas matrizes tomar, mover e ficar, que
representam seus movimentos válidos nesta ordem de prioridade.}

procedure ler_matriz(l, c: longint; var m: matriz);
var i, j, elemento, sentinela: longint;
begin
  sentinela:=-2;
  for i:=1 to l do
  begin
    m[i][0]:=sentinela;
    m[i][c+1]:=sentinela;
    for j:=1 to c do
    begin
      read(elemento);
      m[i][j]:=elemento;
    end;
  end;
end;

procedure imprimir(n: longint; m: matriz);
var i: longint;
begin
  if n=0 then
    write(0)
  else
    for i:=1 to n do
      write(m[i][1], '-', m[i][2], ' ');
  writeln();
end;

procedure movimentos(n: longint; d: matriz);
var i, j, t, m, f: longint;
    tomar, mover, ficar: matriz;
begin
  t:=1;
  m:=1;
  f:=1;
  for i:=1 to n do
    for j:=1 to n do
    begin

      if (d[i][j]=-1) then
        if (d[i+1][j-1]=1) or (d[i+1][j+1]=1) then
        begin
          tomar[t][1]:=i;
          tomar[t][2]:=j;
          t:=t+1;
        end
        else
        begin
          if (d[i+1][j-1]=0) or (d[i+1][j+1]=0) then
          begin
            mover[m][1]:=i;
            mover[m][2]:=j;
            m:=m+1;
          end
          else
          begin
            ficar[f][1]:=i;
            ficar[f][2]:=j;
            f:=f+1;
          end;
        end;
    end;

  write('tomar: ');
  imprimir(t-1, tomar);

  write('mover: ');
  imprimir(m-1, mover);

  write('ficar: ');
  imprimir(f-1, ficar);
end;

begin
  n:=8;
  ler_matriz(n, n, d);
  movimentos(n, d);
end.
