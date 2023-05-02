
Program MenuProgram;

Uses crt, Math;

Procedure Menu(opcion, numero: String);
Begin

  writeln('[', numero, ']', ' ', opcion, ':');

End;

Procedure ImprimirResultado(opcion: String);

Begin
  clrscr;

  writeln('Los resultados de la opcion [', opcion, ']:');


End;

Function LargoNumero(numero: LongInt): Integer;

Var 
  entero, numContador: integer;

Begin

  entero := numero;
  numContador := 0;

  While (entero <> 0) Do
    Begin
      numContador := numContador + 1;
      entero := entero Div 10;
    End;


  LargoNumero := numContador;

End;

Function SumaDigitos(numero: LongInt): LongInt;

Var 
  suma, digito, numContador, entero: LongInt;

Begin

  clrscr;

  entero := numero;
  suma := 0;


  Repeat

    digito := (entero Mod (10));

    suma := suma + digito;

    writeln('La suma en total: ', digito);

    entero := entero Div 10;

  Until (entero = 0);

  SumaDigitos := suma;

End;

Function Diferencia(numero, largo: LongInt): integer;

Var 
  dif1, dif2, res1, res2, contador: LongInt;

Begin

  clrscr;

  dif1 := numero Mod 10;
  dif2 := numero Div (10**(largo));
  res1 := 0;
  res2 := 0;
  contador := 1;

  writeln(dif1);
  writeln(dif2);


  Repeat

    If (dif1 Mod contador = 0) Then
      Begin
        res1 := res1 + contador;
      End;

    contador := contador + 1;

  Until (contador = dif1+1);

  contador := 1;

  Repeat

    If (dif2 Mod contador = 0) Then
      Begin
        res2 := res2 + contador;
      End;

    contador := contador + 1;

  Until (contador = dif2+1);

  Diferencia := res2 - res1;


End;

Function ParesProg(numero, largo: LongInt): LongInt;

Var 
  pares, d2, dif2, d1: LongInt;
  suma, contador: integer;

Begin
  clrscr;

  d1 := numero Mod 100;
  d1 := d1 Div 10;
  d2 := numero Div (10**(largo-1));
  d2 := d2 Mod 10;
  contador := 1;

  suma := d1 + d2;

  writeln('Resultado de suma total: ', suma);
  readln;
  writeln;
  writeln('Presiona para continuar...');

  Repeat

    If (contador Mod 2 = 0) Then
      Begin
        writeln('Numero divisible entre 2: ', contador);
      End;

    readln;
    writeln;
    writeln('Presiona para continuar...');


    contador := contador + 1;
  Until (contador = suma+1);

End;

Function Multiplo(numero: LongInt): LongInt;

Var 
  digito, entero: LongInt;
  resul: boolean;

Begin

  clrscr;

  entero := numero;
  resul := true;
  digito := 0;

  If (numero Mod 4 = 0) Then
    writeln('El numero si es divisible entre 4.')
  Else
    Begin
      writeln('El numero no es divisible entre 4.')

    End;

  readln;
  writeln;
  writeln('Presiona para continuar...');

  Repeat


    digito := entero Mod 10;

    If (digito Mod 2 = 0) Then

      writeln('El digito ', digito, ' es un numero par.')

    Else
      Begin
        resul := false;
        writeln('El digito ', digito, ' no es un numero par.');

      End;

    writeln;

    entero := entero Div 10;

    readln;
    writeln;
    writeln('Presiona para continuar...');



  Until (entero = 0);

  If (resul = true) Then
    writeln('Todos los digitos de ', numero, ' son pares')
  Else
    Begin
      writeln('No todos los digitos de ', numero, ' son pares');
    End;


End;

Var 
  num, resultado, largo: LongInt;
  programa, opcion: integer;
  uno, dos, tres, cuatro: boolean;

Begin

  clrscr;

  num := 823478;
  opcion := 0;
  programa := 0;

  While (programa <> 2) Do

    Begin
      clrscr;

      writeln('Presiona una opcion para continuar: ');
      writeln;

      Menu('sumar', '1');
      Menu('Diferencia', '2');
      Menu('Pares', '3');
      Menu('Multiplo', '4');

      readln(opcion);

      If (opcion = 1) Then
        Begin
          resultado := SumaDigitos(num);

          writeln('Resultado impreso: ', resultado);
        End;

      If (opcion = 2) Then
        Begin
          largo := LargoNumero(num);
          resultado := Diferencia(num, largo);

          writeln('Resultado impreso: ', resultado);

        End;

      If (opcion = 3) Then
        Begin
          largo := LargoNumero(num);
          resultado := ParesProg(num, largo);

        End;

      If (opcion = 4) Then
        Begin
          resultado := Multiplo(num);

        End;



      writeln;
      writeln('////');
      writeln;

      writeln('Presiona 1 para seguir probando: ');
      writeln('Presiona 2 si quieres salir: ');

      readln(programa);

    End;

  readln;

End.
