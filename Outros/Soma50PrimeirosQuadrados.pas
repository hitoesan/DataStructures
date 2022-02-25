program ex047;

var soma, cont: longint;

begin
    cont:=1;
    soma:=0;

    while(cont <= 50) do
    begin
        soma:=soma+sqr(cont);
        cont:=cont+1;
    end;
    writeln(soma);
end. 
