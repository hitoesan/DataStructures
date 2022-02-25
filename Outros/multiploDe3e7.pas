program ex111;

var n: integer;

begin
	read(n);
	if((n mod 3 = 0) and (n mod 7 = 0)) then
		write('SIM')
	else
		write('NAO');

end.
