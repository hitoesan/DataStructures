program ex021;

var n: integer;

begin
	readln(n);
	if((n mod 7 = 0) or (n mod 11 = 0)) then
		begin
			if((n mod 7 = 0) and (n mod 11 = 0)) then
				writeln('Multiplo de 7 e de 11.')
			else
			begin
				if(n mod 7 = 0) then
					writeln('Multiplo exclusivamente de 7.')
				else
					writeln('Multiplo exclusivamente de 11.');
			end;
		end
	else
		writeln('Nao e multiplo nem de 7 nem de 11.');
end.
