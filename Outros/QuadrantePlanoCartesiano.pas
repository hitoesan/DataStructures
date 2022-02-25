program ex022;

var x, y: integer;

begin
    readln(x, y);
    if((x > 0) and (y > 0)) then
        writeln('1');
    
    if((x < 0) and (y > 0)) then
        writeln('2');

    if((x < 0) and (y < 0)) then
        writeln('3');

    if((x > 0) and (y < 0)) then
        writeln('4');

    if((x = 0) or (y = 0)) then
    begin
        if((x=0) and (y=0)) then
            writeln('O')
        else
        begin
         if(x = 0) then
                writeln('Y')
          else
                writeln('X');
        end
    end;

end.
