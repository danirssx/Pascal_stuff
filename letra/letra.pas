
Program letraProgram;


// Escriba un programa que lea una cadena de caracteres del usuario y a continuacion muestre cuantas veces aparece cada letra

// E=6, S=3

Function Abecedario(frase: String): String;

Var 
  largo, posicion, contador, total: integer;
  cadena, letra: string;

Begin

  cadena := upcase(frase);
  largo := length(frase);
  posicion := 1;
  contador := 0;
  total := 0;

  Repeat

    letra := copy(cadena, 1, 1);

    Repeat
      posicion := pos(letra, cadena, 1);
      Delete(cadena, posicion, 1);

      If (posicion <> 0) Then
        total := total + 1;

    Until (posicion = 0);

    posicion := 1;
    writeln('La cantidad de: ', letra, '=', total);

    total := 0;

  Until (cadena = '');


End;

Var 
  frase, resultado: string;


Begin

  frase := 'Este es un ejercicio de string';

  resultado := Abecedario(frase);
  writeln(frase);
  writeln(resultado);

  readln;
End.
