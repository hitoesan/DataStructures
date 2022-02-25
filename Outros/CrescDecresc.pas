program ex029;

var i: integer;
var a, b, c, menor, meio, maior: real;

begin
    readln(i, a, b, c);
    
    menor := a;
    meio := b;
    maior := c;


    if(menor > meio) then
    begin
        menor := b;
         meio := a;
    end;

    if(meio > maior) then
    begin
        maior := meio;
        meio := c;
    end;

    if(i = 1) then
    begin
        write(menor:0:0);
        write(' ');
        write(meio:0:0);
        write(' ');
        write(maior:0:0);
    end;


    if(i = 2) then
    begin
        write(maior:0:0);
        write(' ');
        write(meio:0:0);
        write(' ');
        write(menor:0:0); 
    end;


    if(i = 3) then
    begin
        if(a > b) then
            maior := a

        else
            maior := b;

        if(c > maior) then
            maior := c;

        if(maior = c) then
        begin
         write(a:0:0);
         write(' ');
         write(maior:0:0);
         write(' ');
         write(b:0:0); 
        end;


        if(maior = a) then
        begin
            write(b:0:0);
            write(' ');
            write(maior:0:0);
            write(' ');
            write(c:0:0);  
        end;


        if(maior = b) then
        begin
             write(a:0:0);
             write(' ');
             write(maior:0:0);
             write(' ');
             write(c:0:0); 
 
        end;
 
    end;
end.
