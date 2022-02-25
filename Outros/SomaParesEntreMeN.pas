program ex056;

var n, m, soma: integer;

begin
    read(n, m);
    soma:=0;

    if((n mod 2) = 0) then
       n:=n+2
    else
       n:=n+1; 
    
    while(n<m) do
    begin
        soma:=soma+n;
        n:=n+2;
    end;

    writeln(soma);
end.
