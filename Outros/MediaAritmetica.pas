program ex052;

var m, cont: integer;
var n, soma: real;

begin
    read(m);
    cont:=0;
    soma:=0;

    while(cont<m) do
    begin
        read(n);
        soma:=soma+n;
        cont:=cont+1;
    end;

    writeln(trunc(soma/m));
end.
