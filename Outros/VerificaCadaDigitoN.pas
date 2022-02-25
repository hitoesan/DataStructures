program ex055;

var n, cont: integer;
var m, alg, quoc: longint;

begin
    read(n, m);
    quoc:=m;    
    cont:=0;

    while(quoc<>0) do
    begin

        if(quoc>=10) then
            alg:=quoc mod 10
        else
            alg:=quoc;

        if(alg=n) then
            cont:=cont+1;

        quoc:=quoc div 10;

    end;

    if(cont<>0) then
        writeln(cont)
    else
        writeln('NAO');
end.
