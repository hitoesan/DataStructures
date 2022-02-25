program ex054;

var n, ant, lados: integer;
var res: boolean;

begin
    read(n);
    ant:=n;
    res:=true;
    lados:=0;

    while(n<>0) do
    begin
        lados:=lados+1;
        
        if(n<>ant) then
            res:=false;
        
        ant:=n;
        read(n);
    end;

    if((lados>2) and (res)) then
        writeln('SIM')
    else
        writeln('NAO');
end.
