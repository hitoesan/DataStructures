program multiplicar_matrizes;
type matriz = array[1..100, 1..100] of longint;

{Supoe-se que o número de colunas de A é igual ao de linhas de B}
procedure multiplicar_matrizes (var A: matriz; lin_A, col_A: integer;
                                var B: matriz; lin_B, col_B: integer;
                                var AB: matriz; var lin_AB, col_AB: integer) ;

var i , j , k: integer;
begin
  lin_AB:= lin_A; col_AB:= col_B;
  for i:= 1 to lin_A do
    for j:= 1 to col_B do
    begin
      AB[ i , j ]:= 0;
      for k:= 1 to lin_B do
        AB[ i , j ]:= AB[ i , j ] + A[ i ,k] * B[k, j ];
    end;
end;

begin
end.
