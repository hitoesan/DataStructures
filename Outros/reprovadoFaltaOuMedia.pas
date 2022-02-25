program ex019;

var n1, n2, n3, faltas, media: real;

begin
    readln(n1, n2, n3, faltas);
    media := (n1+n2+n3) / 3;    

    if(faltas >= 10) then
        writeln('NAO')
    else
    begin
        if(media >= 7.0) then
            writeln('SIM')
        else
        begin
            if(media >= 4.0) then
                writeln('TALVEZ')
            else
                writeln('NAO');
        end;
    end;
end.

