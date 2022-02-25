program ex011;

var n, i: integer;
var resultado: boolean;

begin
    read(n);
    i:=2;
    resultado:=true;

    if(n=0) then
        resultado:=false;

    while(i<=(n/2)) do
    begin
        if((n mod i) = 0) then
            resultado:=false;
            break;
        i:=i+1;
    end;

    if(resultado) then
        writeln('SIM')
    else
        writeln('NAO');
end.
