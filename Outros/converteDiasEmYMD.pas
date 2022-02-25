program ex083;

var idade, ano, mes, dia: integer;

begin
	read(idade);
	ano := idade div 365;
	mes := (idade mod 365) div 30;
	dia := (idade mod 365) mod 30;
	write(ano);
	write(' ');
	write(mes);
	write(' ');
	write(dia);
end.
