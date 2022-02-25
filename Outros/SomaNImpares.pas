program ex043;

var n, i, cont, soma: longint;

begin
    read(n);
    i:=1;
    cont:=0;
    soma:=0;

    while(cont<>n) do
    begin
        soma:=soma+i;
        i:=i+2;
        cont:=cont+1;
    end;

    writeln(soma);
end.
