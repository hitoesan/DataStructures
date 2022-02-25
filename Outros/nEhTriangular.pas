program ex010;

var n, soma, cont: integer;

begin
    read(n);
    cont:=0;
    soma:=0;
    while(soma<n) do
    begin
        cont:=cont+1;
        soma:=(cont)*(cont+1)*(cont+2);
    end;

    if(soma=n) then
        writeln(1)
    else
        writeln(0);
end.

