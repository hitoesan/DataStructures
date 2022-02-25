program Calculadora;

uses crt;
var num, a, b, c, DELTA, DELTA2, X1, X2, Xa, Xb: real;

begin

        clrscr;

        writeln('Ax^2 + Bx + C = 0');
        write('Digite valor de A: ');
        readln(num);
        a := num;

        write('Digite valor de B: ');
        readln(num);
        b := num;

        write('Digite valor de C: ');
        readln(num);
        c := num;

		begin
                 DELTA := b * b;
                 DELTA2 := -1 * 4 * a * c;
                 DELTA := DELTA + DELTA2;
                 if DELTA < 0 then
                         begin
                          writeln('Não há raízes reais.');
                   	 end

                 else
                         begin
                          Xa := sqrt(DELTA);
                          Xb := 2 * a;

                          X1 := -1 * b + Xa;
                          X1 := X1 / Xb;

                          X2 := -1 * b - Xa;
                          X2 := X2 / Xb;
                          writeln('Raíz 1: ',X1:4:2);
                          writeln('Raíz 2: ',X2:4:2);
                         end;
                 end;

end.
