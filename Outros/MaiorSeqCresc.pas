program aula;

var n, atual, seq, ant: integer;

begin
    read(atual);
    n := 1;
    seq := 1;
    while(atual<>0) do
    begin
        ant := atual;
        read(atual);
        
        if(atual > ant) then
        begin
            n:=n+1;
            if(n > seq) then
                seq := n;
        end
        else
            n:=1;
    end;
    writeln(seq);
end.
