program ex009;

var pa, pb, ta, tb: real;
var ano: integer;

begin
    read(pa, pb, ta, tb);
    ano:=0;
    
    if(pa>pb) then
    begin
        if(ta<tb) then
        begin
            while(pa>pb) do
            begin
                ano:=ano+1;
                pa:=pa*(1+ta);
                pb:=pb*(1+tb);
            end;
            writeln(ano);
        end
        else
            writeln(0);
    end
    else
    begin
        if(tb<ta) then
        begin
            while(pa<pb) do
            begin
                ano:=ano+1;
                pa:=pa*(1+ta);
                pb:=pb*(1+tb);
            end;
            writeln(ano);
        end
        else
            writeln(0);
 
    end;
    
end.
