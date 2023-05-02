
Program paresCartesianos;

Uses crt;

Function ParesFuncion(n1, n2: Integer): String;

Var 
  t1, t2, resultado: string;
Begin

  Str(n1, t1);
  Str(n2, t2);

  resultado := '(' + t1 + ',' + t2 + ')';

  ParesFuncion := resultado;

End;

Var 
  n1, n2, ncopy, ncopy2, orig2: longInt;
  pares: string;

Begin

  clrscr;

  writeln('Indica el numero 1: ');
  readln(n1);

  clrscr;

  writeln('Indica el numero 2: ');
  readln(n2);

  clrscr;


  ncopy := n1;
  ncopy2 := n2;
  orig2 := ncopy2;

  writeln('Aqui van los pares: ');
  writeln;
  writeln('Presiona enter...');
  readln;

  While ((ncopy<>0)) Do
    Begin
      ncopy2 := orig2;
      n1 := ncopy Mod 10;
      ncopy := ncopy Div 10;

      Repeat

        n2 := ncopy2 Mod 10;
        ncopy2 := ncopy2 Div 10;

        pares := ParesFuncion(n1, n2);

        writeln('El par equivale a: ', pares);

      Until (ncopy2 = 0);
    End;


  readln;

End.
