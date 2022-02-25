program compactacao;
type vetor = array[0..100] of longint;
var v, v_distintos: vetor;
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

procedure imprimir_vetor(v: vetor; tam: integer);
var i: integer;
begin
  for i:=1 to tam do
    write(v[i], ' ');
  writeln();
end;

begin
  read(n);

  while n<>0 do
  begin
    for i:=1 to n do
    begin
      read(elemento);
      v[i]:=elemento;
    end; 

    write('O: ');
    imprimir_vetor(v, n);
    ndistintos:=elementos_distintos(v, n, v_distintos);
    write('C: ');
    imprimir_vetor(v_distintos, ndistintos);
    read(n);
  end;
end.
