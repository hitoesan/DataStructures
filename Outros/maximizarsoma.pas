program maximizar_soma;
type vetor = array[1..100] of longint;
var v: vetor;
var i, n: integer;
var elemento: longint;

function maximizar_soma(v: vetor; tam: integer): longint;
var i, j, imaior: integer;
var soma, maior: longint;

begin
  maior:=0;
  imaior:=tam;
  for i:=1 to imaior do
  begin
    soma:=v[i];
    for j:=i+1 to imaior do
    begin
      soma:=soma+v[j];
      if soma>maior then
      begin
        maior:=soma;
        imaior:=j;
      end;
    end;
  end;
  maximizar_soma:=maior;
end;

begin
  read(n);
  for i:=1 to n do
  begin
    read(elemento);
    v[i]:=elemento;
  end;

  writeln(maximizar_soma(v, n));
end.
