program ex032;

var saldo: real;

begin
    readln(saldo);
    if((saldo >= 0) and (saldo<=200)) then
    begin
        writeln(saldo:0:0);
        writeln('0');
    end;
    if((saldo > 200) and (saldo<=400)) then
    begin
        writeln(saldo:0:0);
        writeln('20%');
    end;
    if((saldo > 400) and (saldo<=600)) then
    begin
        writeln(saldo:0:0);
        writeln('30%');
    end;
    if((saldo > 600)) then
    begin
        writeln(saldo:0:0);
        writeln('40%');
    end;
end.
