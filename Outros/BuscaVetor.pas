program ex002;
type vetor = array[1..200] of longint;
var v: vetor;
var elemento: longint;
var tam, i: integer;


function busca_vetor(v: vetor; tam: integer; n: real): integer;
var i, busca: integer;
begin
  busca:=-1;
  for i:=1 to tam do
  begin
    if n=v[i] then
    begin
      busca:=i;
      break;
    end;
  end;
  busca_vetor:=busca;
end;


begin
  read(elemento);
  tam:=0;
  while elemento<>0 do
  begin
    tam:=tam+1;
    v[tam]:=elemento;
    read(elemento);
  end;

  if tam=0 then
    writeln('vetor vazio')
  else
  begin
    read(elemento);
    while elemento<>0 do
    begin
      i:=busca_vetor(v, tam, elemento);
      if i=-1 then
        writeln(0)
      else
        writeln(i);
      read(elemento);
    end;
  end;
end.

