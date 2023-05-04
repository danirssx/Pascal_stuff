
Program SieteProgram;

Uses math, crt;

Function DigSiete(numero: LongInt): LongInt;

Var 
  n1, n2, nf: LongInt;
  contador: integer;

Begin

  n1 := numero;
  n2 := 0;
  nf := 0;
  contador := 0;

  Repeat

    n2 := n1 Mod 10;
    n2 := n2 + 7;
    If (n2 >= 10) Then
      n2 := n2 Mod 10;

    If (contador = 0) Then
      nf := nf + n2
    Else
      Begin
        nf := nf + n2*(10**contador);

      End;
    contador := contador + 1;
    n1 := n1 Div 10;
  Until (n1 = 0);

  DigSiete := nf;

End;

Var 
  numero, resul: LongInt;

Begin

  clrscr;

  numero := 132424;

  //   809191

  resul := DigSiete(numero);

  writeln;

  writeln(resul);

  readln;



End.
