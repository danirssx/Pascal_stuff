
Program frase_mod;

Uses crt;

Var 
  cont_a, cont_e, cont_i, cont_o, cont_u: integer;

Function contVocals(str:String): integer;

Var 
  cont, i, largo: integer;
  vocal: string;
  frase: string;


Const vocals = 'AEIOU';
Begin


  largo := length(str);
  cont := 0;

  For i:=1 To length(str) Do

    Begin

      If ((pos(upcase(str[i]), vocals))) <> 0 Then
        cont := cont + 1
      Else If (upcase(str[i]) = 'A') Then
             Begin
               str[i] := 'p';
               cont_a := cont_a + 1;
             End
      Else If (upcase(str[i]) = 'E') Then
             Begin
               str[i] := 'l';
               cont_e := cont_e + 1;
             End
      Else If (upcase(str[i]) = 'I') Then
             Begin
               str[i] := 'm';
               cont_i := cont_i + 1;
             End

    End;
  contVocals := cont;
End;

Var 
  frase: string;

Begin

  clrscr;

  Repeat
    writeln('Ingresa la frase: ');
    readln(frase);
  Until (length(frase));

  cont := 0;
  cont_a := 0;
  cont_e := 0;
  cont_i := 0;
  cont_o := 0;
  cont_u := 0;

  writeLn('La cantidad de vocales en la frase es: ', contVocals(frase));
  writeLn('La cantidad de A es:', cont_a, 'La cantidad de E es:', cont_e);

  readln;
End.
