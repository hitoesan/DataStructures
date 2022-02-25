program ocorrencias;
type vetor = array[1..100] of longint;
var vn, vm: vetor;
    n, m, i: integer;
    elemento: longint;

function n_sequencias(v1,v2: vetor; tam1,tam2: integer): integer;
var i, j, sequencia: integer;

begin
  j:=1;
  sequencia:=0;

  for i:=1 to tam1 do
  begin
    if v1[i]=v2[j] then
      j:=j+1
    else
      j:=1;

    if j>tam2 then
    begin
      if v1[i]=v2[1] then
        j:=2
      else
        j:=1;
      sequencia:=sequencia+1;
    end;
  end;

  n_sequencias:=sequencia;
end; 

begin
  read(n, m);
  
  for i:=1 to n do
  begin
    read(elemento);
    vn[i]:=elemento;
  end;

  for i:=1 to m do
  begin
    read(elemento);
    vm[i]:=elemento;
  end;

  writeln(n_sequencias(vn, vm, n, m));
end.
