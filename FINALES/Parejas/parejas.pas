
Program pareja;

Uses crt;



// Desarrolla un programa que muestre todas las parejas o combinaciones posibles de caracteres pro palabra en un texto que introduce el usuario. Se asumira que cada palabra se distinguede otrap orque estan separadas por uno o mas espacios en blacno

// Entrada: hola, que hay
// Salida: ho hl ha h, ol oa o, la l, a, qu qe ha hy ay

// Copy palabra a
// Copy 1 letter CHAR, string INFO
// largo de la palabra
// Itero la palabra
// Insert in INFO iteracion

// Termina

// Borro letra CHAR
// Repito...


Function Algor(frase: String): string;

Var 
  largo, contador, posicion: integer;
  frase_copy, palabra, pareja, letra: string;

Begin


  largo := length(frase);
  posicion := 0;
  contador := 1;
  frase_copy := frase;

  Insert(' ', frase_copy, largo+1);

  Repeat

    Begin

      // Agarro la palabra
      posicion := pos(' ', frase_copy);

      palabra := copy(frase_copy, 1, posicion);

      Repeat
        Begin
          pareja := copy(palabra, 1, 1);

          If (length(palabra) > 1) Then
            contador := 1;

          While (contador<>largo) Do
            Begin
              largo := length(palabra);
              letra := copy(palabra, contador+1, 1);

              If (letra <> ' ') Then
                Insert(letra, pareja, 2);

              If (length(pareja) = 2) Then
                writeln('pareja: ', pareja);

              Delete(pareja, 2, 1);

              contador := contador + 1;
            End;
          Delete(palabra, 1, 1);
        End;
      Until (palabra = '');

      Delete(frase_copy, 1, posicion);

    End;

  Until (frase_copy = '');

End;

Var 
  frase: string;

Begin


  frase := 'hola, que hay';

  Algor(frase);

End.
