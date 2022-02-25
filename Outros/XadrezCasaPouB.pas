program ex007;

var l, c: integer;
var cor: string;

begin
    read(l, c);

    if((l mod 2) = 0) then
    begin
        cor:='PRETA';
        if((c mod 2) = 0) then
            cor:='BRANCA';
    end
    else
    begin
        cor:='BRANCA';
        if((c mod 2) = 0) then
            cor:='PRETA';
    end;

    writeln(cor);
end.
