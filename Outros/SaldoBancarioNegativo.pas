program ex052;

var saldo: real;

begin
    read(saldo);

    while(saldo<>0) do
    begin
        if(saldo < 0) then
            writeln(saldo:0:2);
        read(saldo);
    end;
end.
