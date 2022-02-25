program ex049;

var salario, salmin: real;
var total, cat1, cat2, cat3, cat4: integer;

begin
    read(salario);
    total:=0;
    cat1:=0;
    cat2:=0;
    cat3:=0;
    cat4:=0;

    while(salario<>0) do 
    begin
        salmin:=salario/450;
        total:=total+1;

        if((salmin>0) and (salmin<4)) then
            cat1:=cat1+1;

        if((salmin>=4) and (salmin<10)) then
            cat2:=cat2+1;

        if((salmin>=10) and (salmin<21)) then
            cat3:=cat3+1;

        if((salmin>20)) then
            cat4:=cat4+1;

        read(salario);
    end;

    writeln(((cat1/total)*100):0:2);
    writeln(((cat2/total)*100):0:2);
    writeln(((cat3/total)*100):0:2);
    writeln(((cat4/total)*100):0:2);

end.
