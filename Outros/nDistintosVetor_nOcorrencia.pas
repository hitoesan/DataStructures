program ex004;
type vetor = array[0..200] of longint;
var v, v_distintos, v_ocorrencias: vetor;
var n, i, ndistintos: integer;
var elemento: longint;

function elementos_distintos(v: vetor; tam: integer; var v_distintos: vetor): integer;
var i, j, ndistintos: integer;
var ehdistinto: boolean;

begin
  ndistintos:=1;
  for i:=1 to tam do
  begin
    ehdistinto:=true;
    for j:=1 to ndistintos-1 do
    begin
      if v[i]=v_distintos[j] then
        ehdistinto:=false;
    end;

    if ehdistinto then
    begin
      v_distintos[ndistintos]:=v[i];
      ndistintos:=ndistintos+1;
    end;
  end;

  elementos_distintos:=ndistintos-1;
end;

function ocorrencias(v: vetor; tam: integer): vetor;
var i: integer;
var v_ocorrencias: vetor;
begin
  for i:=0 to 200 do
    v_ocorrencias[i]:=0;

  for i:=1 to tam do
  begin
    v_ocorrencias[v[i]]:=v_ocorrencias[v[i]]+1;
  end;
  ocorrencias:=v_ocorrencias;
end;

begin
  read(n);
  for i:=1 to n do
  begin
    read(elemento);
    v[i]:=elemento;
  end;

  ndistintos:=elementos_distintos(v, n, v_distintos);
  if n=0 then
    writeln('vetor vazio')
  else
  begin
    if ndistintos=1 then
      write('a sequencia tem ', ndistintos, ' numero distinto: ')
    else
      write('a sequencia tem ', ndistintos, ' numeros distintos: ');
    for i:=1 to ndistintos do
      write(v_distintos[i], ' ');
    writeln();
  end;
  
  v_ocorrencias:=ocorrencias(v, n);
  for i:=1 to ndistintos do
  begin
    if v_ocorrencias[v_distintos[i]]=1 then
      writeln(v_distintos[i], ' ocorre ', v_ocorrencias[v_distintos[i]], ' vez')
    else
      writeln(v_distintos[i], ' ocorre ', v_ocorrencias[v_distintos[i]], ' vezes');
  end;

end.
