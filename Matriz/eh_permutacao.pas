program permutacao_em_matriz;

const MAX = 100;
type matriz = array[1..MAX, 1..MAX] of longint;

var a: matriz;
    n: longint;

{Lê uma matriz quadrática e verifica se é uma permutação, ou seja,
se há n-1 elementos nulos e apenas um elemento 1.}

{Verifica primeiramente as linhas e depois as colunas.
Caso algum elemento seja diferente de 0 e 1, a execução é
interrompida. Caso contrário, conta-se a quantidade de 1's e se
exceder o limite, não será permutação.}

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

function eh_permutacao(n: longint; m: matriz): boolean;
var i, j, cont: longint;
    perm: boolean;
begin
  perm:=true;
  for i:=1 to n do
  begin
    cont:=0;
    j:=1;

    while (j<=n) and (perm) do
    begin
      if (m[i][j]<>0) and (m[i][j]<>1) then
        perm:=false
      else
      begin
        if m[i][j]=1 then
          cont:=cont+1;
      end;

      if cont>1 then
        perm:=false;
      j:=j+1;

    end;
  end;

  if perm then
  begin
    for i:=1 to n do
    begin
      cont:=0;
      j:=1;

      while (j<=n) and (perm) do
      begin
        if (m[j][i]<>0) and (m[j][i]<>1) then
          perm:=false
        else
        begin
          if m[j][i]=1 then
            cont:=cont+1;
        end;

        if cont>1 then
          perm:=false;
        j:=j+1;

      end;
    end;
  end;
  eh_permutacao:=perm;
end;

begin
  read(n);
  ler_matriz(n, n, a);
  
  if eh_permutacao(n, a) then
    writeln('sim')
  else
    writeln('nao');
end.
