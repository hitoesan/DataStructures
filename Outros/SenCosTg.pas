program calcula_tangente;
uses Math;
var angulo, tg: real;

//O angulo eh em radianos
function calcula_seno(angulo: real): real;
begin
  calcula_seno:=sin(angulo);
end;


function calcula_cos(angulo: real): real;
begin
  calcula_cos:=cos(angulo);
end;


function existe_tangente(angulo: real; var tg: real): boolean;
begin
  if calcula_cos(angulo)=0 then
    existe_tangente:=false
  else
  begin
    tg:=tan(angulo);
    existe_tangente:=true;
  end;
end;


begin
  read(angulo);
  if existe_tangente(angulo, tg) then
    writeln(tg:0:3)
  else
    writeln('nao existe tangente de ', angulo:0:5);
end.
