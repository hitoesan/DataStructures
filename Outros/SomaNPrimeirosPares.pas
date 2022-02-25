program ex039;

var n, prod, i, cont: longint;

begin
    read(n);
    i:=2;
    prod:=1;
    cont:=0;
    while(cont<>n) do
    begin
        prod:=prod*i; 
        i:=i+2;
        cont:=cont+1;
    end;
    
    writeln(prod);
end.
