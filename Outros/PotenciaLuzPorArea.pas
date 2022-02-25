program ex026;

var area: integer;

begin
	readln(area);
	
	if(area <= 6) then
		write(100)
	else
	begin
		area := area - 3;
		write(80 + (area * 15));
	end;
end.
