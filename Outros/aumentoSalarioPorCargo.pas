program ex032;

var salario, aumento: real;
var codigo: integer;

begin
    readln(salario, codigo);
    
    if((codigo>100) and (codigo<104)) then
    begin
        if(codigo = 101) then
        begin
        writeln(salario:0:2);
        aumento := salario*0.1;
        writeln((salario + aumento):0:2);
        writeln(aumento:0:2);  
        end;

        if(codigo = 102) then
        begin
        writeln(salario:0:2);
        aumento := salario*0.2;
        writeln((salario + aumento):0:2);
        writeln(aumento:0:2);  
        end;

        if(codigo = 103) then
        begin
        writeln(salario:0:2);
        aumento := salario*0.3;
        writeln((salario + aumento):0:2);
        writeln(aumento:0:2); 
        end;  
    end
    else
    begin
        writeln(salario:0:2);
        aumento := salario*0.4;
        writeln((salario + aumento):0:2);
        writeln(aumento:0:2);
    end;
end.
