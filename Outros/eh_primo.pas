program teste_se_primo;
var i: longint;


{Verifica se o número possui divisíveis até sua raiz.
Como certamente haverá primos neste intervalo,
se o número não for múltiplo de nenhum desses primos,
ele não será primo}

{Segundo o Crivo de Aristótenes, eliminar os múltiplos dos primos
de um intervalo até a raiz é o suficiente para descobrir todos os primos
naquele intervalo}


//Inclui 1 como primo
function eh_primo(n: longint): boolean;
var divisor: longint;
var primo: boolean;

begin
  divisor:=2;
  primo:=true;

  while(divisor<=sqrt(n)) do
  begin

    if (n mod divisor) = 0 then
      primo:=false;

    divisor:=divisor+1;      
  end;

  eh_primo:=primo;
end;


begin
  for i:=1 to 10000 do
    if eh_primo(i) then
      writeln(i);
end.
