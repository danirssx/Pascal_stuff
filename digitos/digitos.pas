
Program digitosProgram;

// //// verificar la cantidad de digitos de n1 que hay en n2;

Uses crt;

Function VerificarDigitos(numero1, numero2: LongInt): LongInt;

Var 

  n1, n2, entero, entero2: LongInt;
  contador, total: integer;

Begin

  n1 := 0;
  n2 := 0;
  entero := numero1;
  total := 0;

  Repeat
    n1 := entero Mod 10;
    entero2 := numero2;
    contador := 0;

    While (contador <> 1) Do
      Begin
        n2 := entero2 Mod 10;
        writeln(entero2);
        If (n1 = n2) Then
          Begin
            writeln('N1: ', n1, ' Es igual a n2: ', n2);
            contador := contador + 1;
            total := total + 1;
          End
        Else
          Begin
            contador := 0;
            writeln('N1: ', n1, ' No es igual a n2: ', n2);
          End;

        If (entero2 = 0) Then
          contador := 1;

        entero2 := entero2 Div 10;
      End;


    entero := entero Div 10;
  Until (entero = 0);

  VerificarDigitos := total;

End;

Var 
  n1, n2, resultado: LongInt;

Begin

  clrscr;



  writeln('Introduce el numero de digitos que deseas introducir en N1: ');
  readln(n1);
  writeln;

  writeln('Introduce el numero de digitos que deseas introducir en N2: ');
  readln(n2);
  writeln;


  resultado := VerificarDigitos(n1, n2);

  readln;

  writeln;

  clrscr;

  writeln('En total hay ', resultado, ' numeros en comun entre: ', n1, ' y n2: '
          ,
          n2);



  readln;
End.
