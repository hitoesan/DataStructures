program ex061;

var n, a, b, cont: integer;

begin
    read(n);
    a:=0;
    b:=n;
    cont:=1;

    while((cont<n)) do
    begin
        a:=a+1;
        b:=b-1;
        writeln(a, ' ', b);
        cont:=cont+1;
    end;
end.
