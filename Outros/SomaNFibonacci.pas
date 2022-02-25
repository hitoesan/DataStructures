program ex041;

var n, ant, atual, prox, soma, cont: longint;

begin
    read(n);
    ant:=0;
    atual:=1;
    cont:=0;
    soma:=0;

    while(cont<n) do
    begin
        soma:=soma+ant;
        prox:=ant+atual;
        ant:=atual;
        atual:=prox;
        cont:=cont+1;
    end;

    writeln(soma);
end.
