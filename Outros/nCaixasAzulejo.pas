program ex036;

var tipo, area, caixas: longint;

begin
    readln(tipo, area);

    
    area := area*100*100;
    
    if(tipo = 1) then
    begin
        caixas := area div (50*40*10);
        if((area mod (50*40*10)) > 0) then
            caixas := caixas + 1; 
    end;

    if(tipo = 2) then
    begin
        caixas := area div (50*60*10);
        if((area mod (50*60*10)) > 0) then
            caixas := caixas + 1; 
     end;

    if(tipo = 3) then
    begin
        caixas := area div (50*80*10);
        if((area mod (50*80*10)) > 0) then
            caixas := caixas + 1; 
 
    end;

    write(caixas);
    write(' caixas');
end.
