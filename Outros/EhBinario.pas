program testa_binario;
var n: longint;

function eh_binario(n: longint): boolean;
var algarismo: integer;
var dividendo: longint;
var binario: boolean;

begin
  dividendo:=n;
  binario:=true;
  while(dividendo>=10) do
  begin
    algarismo:=dividendo mod 10;
    dividendo:=dividendo div 10;

    if ((algarismo<>0) and (algarismo<>1)) then
      binario:=false;
  end;

  if ((dividendo<>0) and (dividendo<>1)) then
    binario:=false;

  if binario then
    eh_binario:=true
  else
    eh_binario:=false;

end;

begin
  read(n);
  if eh_binario(n) then
    writeln('sim')
  else
    writeln('nao');
end.
