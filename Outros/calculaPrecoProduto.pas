program ex030;

var codigo, qtd: integer;
var preco: real;

begin
    readln(codigo, qtd);
    if((codigo = 1001) or (codigo = 1324) or (codigo = 6548) or (codigo = 987) or (codigo = 7623)) then
    begin
        if(codigo = 1001) then
            preco := (qtd * 5.32);
        if(codigo = 1324) then
            preco := (qtd * 6.45);
        if(codigo = 6548) then
            preco := (qtd * 2.37);
        if(codigo = 987) then
            preco := (qtd * 5.32);
        if(codigo = 7623) then
            preco := (qtd * 6.45);
        writeln(preco:0:2);
    end
    else
        writeln('ERRO');

end.
