program ex053;

var x, fat: longint;
var cont: integer;

begin
    read(x);
    fat:=1;
    cont:=0;

    while(fat=<x) do
    begin
        cont:=cont+1;
        fat:=fat*cont;        
    end;
    writeln(cont);
end.
