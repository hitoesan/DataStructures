program calcula_percentual;
var antigo, atual: real;

{Calcula em quantos porcento um valor foi aumentado/diminuído em
comparação com outro}

function aumento_percentual(antigo, atual: real): real;
begin
  aumento_percentual:=(atual-antigo)/antigo;
end;


begin
  read(antigo, atual);
  while(antigo<>0) or (atual<>0) do
  begin
    writeln(aumento_percentual(antigo, atual):0:2);
    read(antigo, atual);
  end;
end.
