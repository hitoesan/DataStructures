program ex057;

var n, maior: longint;

begin
    read(n);
    maior:=0;
    
    while(n<>0) do
    begin
        if(((n mod 7)=0) and (n>maior)) then
            maior:=n;
        read(n);
    end;
    writeln(maior);
end.
