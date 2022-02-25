program ex050;

var dividendo, divisor, n: integer;

begin
    read(dividendo, divisor);
    n:=0;    

    while(((dividendo mod divisor) = 0) or (dividendo = 0) ) do
    begin
        n:=n+1;
        dividendo:=dividendo div divisor;
    end;
    
    writeln(n);
    
end.
