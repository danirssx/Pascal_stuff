
Program lineasProgram;

Uses crt;


// Elabora un programa para generar la siguiente secuencia de dígitos y que se imprima por pantalla de la forma que se muestra en el ejemplo para un número de líneas compendido entre 4 y 30.

// Ejemplo para N=5 lineas
//  1
//  1  2
//  1  2  3
//  1  2  3  4 


Function lineas(num: integer): string;

Var 
  n, contador, lin: integer;
  linea: string;

Begin

  n := num;
  lin := 1;


  While (lin <> n ) Do
    Begin
      contador := 0;

      While (contador <> lin) Do
        Begin
          write(contador, ' ');
          contador := contador + 1;
        End;
      writeln();


      lin := lin + 1;
    End;

End;

Var 
  numero: integer;

Begin

  numero := 30;

  writeln('Dame un numero papi: ');
  readln;

  lineas(numero);

End.
