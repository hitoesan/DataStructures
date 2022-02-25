program ex003;
type vetor = array[1..200] of integer;
var v: vetor;
var n, i, elemento: integer;

function eh_crescente(v: vetor; tam: integer): boolean;
var i: integer;
var crescente: boolean;
begin
  crescente:=true;
  for i:=1 to tam-1 do
  begin
    if v[i]>v[i+1] then
      crescente:=false;
  end;
  eh_crescente:=crescente;
end;


procedure imprimir_inverso(v: vetor; tam: integer);
var i: integer;
begin
  for i:=tam downto 1 do
    write(v[i], ' ');
  writeln();
end;

begin
  read(n);

  if n=0 then
    writeln('vetor vazio')
  else
  begin
    for i:=1 to n do
    begin
      read(elemento);
      v[i]:=elemento;
    end;

    if eh_crescente(v, n) then
      writeln('sim')
    else
      writeln('nao');
  end;

  imprimir_inverso(v, n);
end.
