uses Sysutils;

var
  arqPgm: text;
  i, j, pixel, largura, altura, maximo: integer;
  p2 : string;


begin
  Assign(arqPgm, 'open.pgm');
  Reset(arqPgm);

  readln(arqPgm, p2);
  if (p2 <> 'P2') then
  begin
    writeln('Tipo de imagem inválido (', p2, ')');
    exit();
  end;

  read(arqPgm, largura, altura, maximo);
  for i:=1 to altura do
  begin
    for j:=1 to largura do
    begin
      read(arqPgm, pixel);
      if (pixel > maximo) or (pixel <0) then
      begin
        writeln('Erro: pixel[',i,',',j,']=',pixel);
        // ajustar para 0 ou maximo
      end;
      // write(pixel, ' ');
    end;
    // writeln;
  end;

  Close(arqPgm);

end.
