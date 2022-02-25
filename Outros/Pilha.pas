program q_01;
CONST MAX = 100;

type elemento = longint;
type pilha = record
  ini: longint;
  v: array[1..MAX] of elemento;
end;

var n: elemento;
    p: pilha;

procedure inicializa_pilha(var p: pilha);
begin
  p.ini:=0;
end;

procedure empilha(x: elemento; var p: pilha);
begin
  p.ini:=p.ini+1;
  p.v[p.ini]:=x;
end;

function desempilha(var p: pilha): elemento;
begin
  desempilha:=p.v[p.ini];
  p.ini:=p.ini-1;
end;

function topo(p: pilha): elemento;
begin
  topo:=p.v[p.ini];
end;

function pilha_vazia(p: pilha): boolean;
begin
  if p.ini=0 then
    pilha_vazia:=true
  else
    pilha_vazia:=false;
end;

begin
  read(n);
  inicializa_pilha(p);

  while n<>0 do
  begin
    if n>0 then
      empilha(n, p)
    else
      if (topo(p)*(-1)=n) then
        desempilha(p);

    read(n);
  end;

  if pilha_vazia(p) then
    writeln('SIM')
  else
    writeln('NAO');
end.
