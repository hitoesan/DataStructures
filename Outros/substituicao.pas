program substituicao;
type vetor = array[1..100] of longint;
var v1, v2, v3: vetor;
    tv1, tv2, tv3, pos_ini, pos_fim: longint;

procedure ler_vetor(var v: vetor; var tam: longint);
var i, elemento: longint;
begin
  read(elemento);
  i:=1;
  while elemento<>0 do
  begin
    v[i]:=elemento;
    tam:=i;
    i:=i+1;
    read(elemento);
  end;
end;

function n_sequencias(v1,v2: vetor; tam1,tam2: longint; var pos_ini: longint; var pos_fim: longint): integer;
var i, j, sequencia: integer;

begin
  j:=1;
  sequencia:=0;

  for i:=1 to tam1 do
  begin
    if v1[i]=v2[j] then
    begin
      pos_fim:=i;
      j:=j+1;
    end
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

  if sequencia>0 then
    pos_ini:=pos_fim-tam2+1;

  n_sequencias:=sequencia;
end; 

function ocorre(v1, v2: vetor; tam1, tam2: longint; var pos_ini: longint; var pos_fim: longint): boolean;
var sequencias: integer;
begin
  sequencias:=n_sequencias(v1, v2, tam1, tam2, pos_ini, pos_fim);
  if sequencias>0 then
    ocorre:=true
  else
    ocorre:=false;
end;

procedure remover_vetor(var v: vetor; var n, indice1, indice2: longint);
var i, j: longint;
begin
  j:=indice2;

  if indice2=n then
    n:=indice1
  else
  begin
    for i:=indice1 to n do
    begin
      j:=j+1;
      v[i]:=v[j];
    end;
  n:=n-(indice2-indice1)-1;
  end;
end;

procedure substitui(var v1: vetor; var tam1: longint; v2: vetor; tam2, indice1, indice2: longint);
var i, j, tam_seq, novo_tam: longint;
begin
  tam_seq:=indice2-indice1+1;

  if tam_seq<tam2 then
  begin
    novo_tam:=tam1+(tam2-tam_seq);
    j:=novo_tam;
    for i:=tam1 downto indice2+1 do
    begin
      v1[j]:=v1[i];
      j:=j-1;
    end;
    tam1:=novo_tam;
  end;

  if tam2=0 then
    remover_vetor(v1, tam1, indice1, indice2)
  else
  begin
    for i:=1 to tam2 do
    begin
      v1[indice1]:=v2[i];
      indice1:=indice1+1;
    end;
  end;

end;

procedure imprime_vetor(v: vetor; tam: longint);
var i: longint;
begin
  for i:=1 to tam do
    write(v[i], ' ');
  writeln();
end;
begin
  ler_vetor(v1, tv1);
  ler_vetor(v2, tv2);
  ler_vetor(v3, tv3);
  
  pos_ini:=0;
  pos_fim:=0; 
  if ocorre(v1, v2, tv1, tv2, pos_ini, pos_fim) then
    substitui(v1, tv1, v3, tv3, pos_ini, pos_fim);
  imprime_vetor(v1, tv1);
end.
