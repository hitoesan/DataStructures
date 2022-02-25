program ex003;

var n, ant, resultado: integer;

begin
    read(n);
    resultado:=1;

    while(n<>0) do
    begin
        ant:=n;
        read(n);

        if(ant<>sqrt(n)) then
            resultado:=0;

        read(n);
    end;

    writeln(resultado);
end.
