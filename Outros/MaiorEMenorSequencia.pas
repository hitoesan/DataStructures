program ex040;

var atual, menor, maior: longint;

begin
    read(atual);
    menor:=atual;
    maior:=atual;

    while(atual<>0) do
    begin
        
        if(atual<menor) then
            menor:=atual;

        if(atual>maior) then
            maior:=atual;

        read(atual);
    end;

    writeln(maior, ' ', menor);
end.
