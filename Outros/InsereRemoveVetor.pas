program ex002;
type vetor = array[1..200] of real;
var opcao, tam:integer;
var n: real;
var v: vetor;

procedure ordenar_vetor(var v: vetor; tam: integer);
var i, j, imenor: integer;
var menor: real;
begin
  i:=1;
  while(i<=tam) do
  begin
    imenor:=i;
    j:=i+1;
    while(j<=tam) do
    begin
      if v[j]<v[imenor] then
        imenor:=j;
      j:=j+1;
    end;
    
    menor:=v[imenor];
    v[imenor]:=v[i];
    v[i]:=menor;
    i:=i+1;
  end; 
end;

procedure inserir_vetor(var v: vetor; var tam: integer; n: real);
begin
  tam:=tam+1;
  v[tam]:=n;
end;

function busca_vetor(v: vetor; tam: integer; n: real): integer;
var i, busca: integer;
begin
  busca:=-1;
  for i:=1 to tam do
  begin
    if n=v[i] then
      busca:=i;
  end;
  busca_vetor:=busca;
end;

function remover_vetor(var v: vetor; var tam: integer; n: real): boolean;
var i: integer;
begin
  i:=busca_vetor(v, tam, n);

  if i<>-1 then
  begin
    while(i<=tam) do
    begin
      v[i]:=v[i+1];
      i:=i+1;
    end;
    tam:=tam-1;
    remover_vetor:=true;
  end
  else
    remover_vetor:=false;
end;

procedure ler_vetor(v: vetor; tam: integer);
var i: integer;
begin
  if tam=0 then
    write('vazio')
  else
  begin
    for i:=1 to tam do
      write(v[i]:0:1, ' ');
  end;  
  writeln();
end;


begin
  read(opcao);
  tam:=0;

  while(opcao<>0) do
  begin
    if opcao=1 then
    begin
      read(n);
      if tam<200 then
      begin
        inserir_vetor(v, tam, n);
        ordenar_vetor(v, tam);
        ler_vetor(v, tam);
      end
      else
        writeln('erro');
    end;

    if opcao=2 then
    begin
      read(n);
      if remover_vetor(v, tam, n) then
        ler_vetor(v, tam)
      else
        writeln('erro');
    end;
    
    read(opcao);
  end;
  ler_vetor(v, tam);
end.

