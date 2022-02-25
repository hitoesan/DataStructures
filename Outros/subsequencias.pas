program subsequencias;
const MAX = 100;
type vetor = array[1..MAX] of longint;
var v: vetor;
    n, pos, tamanho_subsequencia: longint;

procedure ler_vetor(var v: vetor; n: longint);
var i, elemento: longint;
begin
  for i:=1 to n do
  begin
    read(elemento);
    v[i]:=elemento;
  end;
end;

function n_sequencias(v1,v2: vetor; tam1,tam2: longint): integer;
var i, j, sequencia: integer;

begin
  j:=1;
  sequencia:=0;

  for i:=1 to tam1 do
  begin
    if v1[i]=v2[j] then
      j:=j+1
    else
    begin
      if v1[i]=v2[1] then
        j:=2
      else
        j:=1;
    end;

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

function tem_subsequencias_iguais(var v: vetor; n, tam_seq: longint): longint;
var i, j, k: longint;
    nsequencias: integer;
    ehsequencia: boolean;
    aux: vetor;
begin
  ehsequencia:=false;

  i:=1;
  while (ehsequencia=false) and (i<=n-tam_seq) do
  begin  
    k:=1;
    for j:=i to i+tam_seq-1 do
    begin
      aux[k]:=v[j];
      k:=k+1;
    end;

    nsequencias:=n_sequencias(v, aux, n, tam_seq);
    if (nsequencias>1) then
      ehsequencia:=true;
    i:=i+1;
  end;

  if ehsequencia then
    tem_subsequencias_iguais:=i-1
  else
    tem_subsequencias_iguais:=0;
end;


begin
  read(n);
  ler_vetor(v, n);
  pos:=0;
  tamanho_subsequencia:=n div 2;

  while (pos=0) and (tamanho_subsequencia>=2) do
  begin
    pos:=tem_subsequencias_iguais(v, n, tamanho_subsequencia);
    tamanho_subsequencia:=tamanho_subsequencia-1;
  end;
  
  if pos>0 then
    writeln(pos, ' ', tamanho_subsequencia+1)
  else
    writeln('nenhuma');
end.
