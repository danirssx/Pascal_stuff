
Program esoterico2;

Uses crt;

Function esotericoProgram(numero: integer): integer;

Var 
  i, dig: integer;
  cont_div: integer;
  esoterico: longint;
  par, impar, sum, total: integer;

Begin

  sum := 0;

  For i := 1 To numero Do
    Begin
      dig := numero Mod 10;

      If (num Mod i = 0) Then
        cont_div = cont_div + 1;

      If (dig Mod 2 <> 0) And (cont_div = 2)Then
        sum := sum + dig;

      total := sum + (dig Mod 2 = 0);

      If ((total Mod 7) = 0) Then
        total := total + (n Mod 10)
      Else
        total: total * 2;



      numero := numero Div 10;

    End;


End;


Var 
  num: longint;

Begin

  clrscr;

  writeln('Indica el numero a verificar: ');
  readln(num);

End.
