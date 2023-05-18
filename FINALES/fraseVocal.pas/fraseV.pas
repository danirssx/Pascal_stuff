
Program FraseV;

Uses crt;

Function NumeroVocal(palabra: String): integer;

Var 
  palabra_copy: string;
  cont, largo, i: integer;


Const 
  vocales = 'AEIOU';

Begin

  palabra_copy := upcase(palabra);
  largo := length(palabra_copy);
  cont := 0;

  For i := 1 To largo Do
    Begin

      If (pos(palabra_copy[i], vocales) <> 0) Then
        Begin
          cont := cont + 1;
        End;
    End;


  NumeroVocal := cont;

End;

Function FraseVocales(frase1: String): string;

Var 
  frase_copy, palabra, valor: string;
  posicion: integer;
Begin

  frase_copy := frase1;
  posicion := 0;

  Repeat
    Begin

      posicion := pos(' ', frase_copy);
      palabra := copy(frase_copy, 1, posicion);

      If (NumeroVocal(palabra) >= 3) Then
        Begin
          writeln('Palabra mayor a 3 vocales: ', palabra);
        End;

      Delete(frase_copy, 1, posicion);
      valor := copy(frase_copy, 1, 1);

      If (valor = ' ') Then
        Begin
          Repeat
            Begin
              Delete(frase_copy, 1, 1);
            End;
          Until (valor <> ' ');
        End;
    End;

  Until (frase_copy = '');

End;

Var 
  frase, palabra, resultado: string;

Begin

  clrscr;

  writeln('Indica la frase a analizar: ');
  read(frase);

  writeln();

  writeln('Presiona enter para ver el analisis: ');
  readkey;

  clrscr;



  palabra := 'Daniel';
  resultado := FraseVocales(frase);

  writeln(resultado);

  readln;

End.
