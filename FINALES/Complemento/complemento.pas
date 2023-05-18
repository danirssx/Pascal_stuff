
Program complementoProgram;

Uses crt, math;




// Elabora un programa denominado Complemento, que reciba como parámetro un número X (de cualquier cantidad de dígitos) y retorne o devuelva un número conformado por los  complementos de los dígitos de X. Para obtener el complemento con base 10, se toma y descompone un número de k dígitos, se calcula lo que le falta a cada dígito para llegar a 9 y se reconstruye el nuevo número con los complementos obtenidos.

// Para x = 3256 el complemento = 6743

// n completo
// n2 igual al Mod 10 
// n2 = 9 - n2
// nf = nf + (n2*(10**cont))


Function ComplementoFunction(num: LongInt): LongInt;

Var 
  n, nf: LongInt;
  n2, cont: integer;

Begin

  n := num;
  n2 := 0;
  nf := 0;
  cont := 0;

  Repeat
    n2 := 0;
    n2 := n Mod 10;
    // 5
    n2 := 9 - n2;
    // 4

    If (nf = 0) Then
      nf := n2;


    If ((n2 <> 0) And (nf <> n2)) Then
      nf := nf + (n2*(10**cont));
    // 3 + 40 = 43


    n := n Div 10;
    //325
    cont := cont + 1;
    // 1
  Until (n = 0);

  ComplementoFunction := nf;

End;

Var 
  numero, resultado: LongInt;

Begin

  numero := 19312;

  resultado := ComplementoFunction(numero);

  writeln('Resultado final: ', resultado);

End.
