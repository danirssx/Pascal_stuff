
Program esotericoProgram;

// // Sumo cada digito impar de N que sea primero y resto los digitos pares;
// // el 9 no se toma en cuenta porque no es primo

Uses crt, math;

Function Esoterico(numero: LongInt): LongInt;

Var 
  n1, n2, nf: LongInt;

Begin

  clrscr;

  n1 := numero;
  n2 := 0;
  nf := 0;

  Repeat

    If ((n1 Mod 10) Mod 2 = 0) Then
      Begin
        n2 := n2 + (n1 Mod 10);
        writeln(n2, ' n2');
      End;

    If (((n1 Mod 10) Mod 2 = 1) And (n1 Mod 10 <> 9)) Then
      Begin
        nf := nf + (n1 Mod 10);
        writeln(nf, ' nf');
      End;

    n1 := n1 Div 10;
  Until (n1 = 0);

  nf := nf - n2;

  writeln;

  writeln('Resul nf no modificado: ', nf);

  readln;
  writeln;

  If (nf Mod 7 = 0) Then
    nf := nf + (numero Mod 10)
  Else
    Begin
      nf := nf * 2;
    End;

  Esoterico := nf;

End;

Var 
  n, n2, resultado: LongInt;

Begin
  clrscr;
  n := 456921;
  n2 := 327519;

  resultado := Esoterico(n2);

  writeln('Resultado final: ', resultado);


  readln;


End.
