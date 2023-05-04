
Program fraseVocal;

Uses crt;

Function eliminarVocales(frase1: String): string;

Var 
  iterador, largo: integer;
  posicion, frasepiche, frasemod: string;

Begin

  frasemod := upcase(frase1);
  frasepiche := frasemod;
  largo := Length(frase1);
  iterador := 0;


  Repeat
    posicion := copy(frasepiche, 1, 1);

    Case posicion Of 
      'A': Delete(frasemod, iterador, 1);
      'E': Delete(frasemod, iterador, 1);
      'I': Delete(frasemod, iterador, 1);
      'O': Delete(frasemod, iterador, 1);
      'U': Delete(frasemod, iterador, 1);


    End;

    iterador := iterador + 1;
    Delete(frasepiche, 1, 1);



  Until (iterador = largo);

  eliminarVocales := frasemod;


End;

Var 
  frase, frase_Vocal: string;
  palabras: integer;

Begin

  clrscr;

  frase := 'Daniel le gustan sus zapatos';

  frase_Vocal := eliminarVocales(frase);

  writeln('Frase con vocales eliminadas: ');
  writeln;
  writeln(frase_Vocal);

  readln;

End.
