program ex024;

var nasc, idade: integer;

begin
	readln(nasc);
	idade := 2020 - nasc;
	writeln(idade);

	if(idade >= 16) then
		writeln('SIM')
	else
		writeln('NAO');

	if(idade >= 18) then
		writeln('SIM')
	else
		writeln('NAO');
	
end.
