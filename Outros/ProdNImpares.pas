program ex048;

var a, b, cont: integer;
var produto: longint;

begin
    read(a, b);
    
    if((a>b) or ((a mod 2)=0) or ((b mod 2)=0)) then
        writeln('erro')
    else
    begin
        cont:=a;
        produto:=1;
        while(cont<=b) do
        begin
            produto:=produto*cont;
            cont:=cont+2;
        end;
        writeln(produto);
    end;
end.
