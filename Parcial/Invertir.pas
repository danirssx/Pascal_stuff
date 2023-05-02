
Program InvertirProgram;

Uses crt;

Function InvertidaPalabra(largo: integer; palabra: String ): string;

Var 
  contador: integer;
  letra, invertida, modificada: string;

Begin

  invertida := '';
  contador := 0;
  modificada := palabra;

  Repeat
    Begin

      If (contador = 0) Then
        letra := copy(palabra, largo, 1)
      Else
        Begin
          letra := copy(palabra, largo-contador, 1);
        End;

      Insert(letra, invertida, contador+1);

      contador := contador + 1;

    End;

  Until (contador = largo);

  Delete(modificada, 1, largo);
  Insert(invertida, modificada, 1 );

  InvertidaPalabra := modificada;

End;

Var 
  largo, n, contador, n2: integer;
  frase, palabra, resultado, letra: string;

Begin

  frase := 'Los Algoritmos son divertidos';
  largo := length(frase);
  n := 0;
  n2 := 1;
  contador := 0;
  palabra := '';

  Repeat

    Begin
      n2 := n2 + 1;
      letra := copy(frase, contador, 1);

      If (letra = ' ') Then
        Begin
          palabra := copy(frase, n, n2);

          resultado := InvertidaPalabra(n2, palabra);

          Delete(frase, n2, n2);
          Insert(resultado, frase, n);

          n2 := 0;
          n := contador;
        End;


      contador := contador + 1;

    End;
  Until (contador = largo);

  writeln('Resultadooo: ', resultado, ' Palabra: ', frase);
  writeln();

  readln;



End.
