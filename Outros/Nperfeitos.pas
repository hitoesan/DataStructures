program ex006;

var k, n, cont, soma, divisor: integer;

begin
    read(k);
    cont:=0;
    n:=1;

    while(cont<k) do
    begin
        n:=n+1;
        divisor:=1;
        soma:=0;
        while(divisor<>n) do
        begin
            if((n mod divisor) = 0) then
                soma:=soma+divisor;
            divisor:=divisor+1;
        end;
    
        if(soma=n) then
        begin
            write(n, ' ');
            cont:=cont+1;
        end
    end;
end.
