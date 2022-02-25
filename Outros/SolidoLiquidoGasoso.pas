program ex028;

var F: integer;
var C: real;

begin
	readln(F);
	C := (5*F - 160) / 9;
	writeln(C:0:2);

	if(C <= 0) then
		write('solido')
	else
	begin
		if(C >= 100) then
			write('gasoso')
		else
			write('liquido');
	end;
end.
