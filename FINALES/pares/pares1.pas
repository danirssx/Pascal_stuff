
Program paresProgram;

Uses crt;



// 7.- Escribir un programa que partir de un número N dado por el usuario imprima la distancia entre cada par de primos contiguos menores que N. Ejemplo: para N = 15 los pares de primos menores que él son: 1-2, 2-3, 3-5, 5-7, 7-11, 11-13. El programa generará las distancias 1, 1, 2, 2, 4, 2.

// bucle con n
// contador  

Function PrimoTuyo(num: integer): integer;

Var 
  n, j, anterior, cont: integer;
  pares: string;
  primo: boolean;

Begin

  n := num;
  cont := 1;
  anterior := 0;

  While (cont<>n) Do
    Begin
      primo := true;
      cont := cont + 1;

      For j := 2 To cont - 1 Do
        Begin
          If (cont Mod j = 0) Then
            Begin
              primo := false;
            End
        End;

      anterior := anterior + 1;

      If primo Then
        Begin
          write(cont-anterior, '-', cont);
          writeln();
          anterior := 0;

        End;

    End;

End;


Var 
  numero: integer;

Begin

  numero := 20;

  PrimoTuyo(numero);



End.
