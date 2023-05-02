
Program promedioProgram;

Uses crt;

Var 
  promedio, numero, contador: integer;

Begin

  clrscr;
  contador := 1;
  promedio := 0;

  While (contador<>5) Do
    Begin
      clrscr;


      writeln('Indica la nota numero ', contador, ':');
      readln(numero);

      If (numero < 100) Then
        Begin
          promedio := promedio + numero;

          contador := contador + 1;
        End
      Else
        Begin
          clrscr;
          writeln('Indica un numero entre 1 > x < 100, dale enter;');
          readln;
        End;
    End;


  promedio := (promedio Div (contador - 1));


  writeln('El promedio equivale a: ', promedio);

  readln;

End.
