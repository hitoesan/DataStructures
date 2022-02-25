program Encontrar_MDC;
var n1, n2: longint;

{Retorna o MDC entre dois inteiros.}
function MDC(n1, n2: longint): longint;
var i, menor, max_div: longint;
begin
  menor:=0;
  max_div:=1;

  if n1<n2 then
    menor:=n1
  else
    menor:=n2;

  i:=2;
  while i<menor do
  begin
    if (n1 mod i=0) and (n2 mod i=0) then
      max_div:=i;
    i:=i+1;
  end;
  MDC:=max_div;
end;

begin
  read(n1, n2);
  writeln(MDC(n1, n2));
end.

