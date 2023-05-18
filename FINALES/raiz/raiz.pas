
Program raizProgram;

Uses crt;



//  Elabora un programa para determinar la raíz cuadrada aproximada de un número entero N 



// utilizando el método de restas impares sucesivas. Utiliza el pase de parámetros apropiado. 

// N= 12

//  12-1=11
// 11-3=8
// 8-5=0

// 3-7= -4

// Valores mayor o igual a 0 = 3, raiz


Function raizFunction(num: integer): integer;

Var 
  n, i, cont, impar: integer;

Begin

  n := num;
  cont := 0;
  impar := 1;

  For i := 0 To n Do
    Begin

      If (impar Mod 2 <> 0) Then
        Begin
          n := n - impar;
          If (n >= 0) Then
            Begin
              writeln('Numero positivo: ', n);
              cont := cont + 1;
            End;
        End;


      impar := impar + 1;

    End;

  raizFunction := cont;

End;

Var 
  numero, resultado: integer;
Begin

  numero := 25;

  resultado := raizFunction(numero);

  writeln('Resultado de la raiz: ', resultado);


End.
