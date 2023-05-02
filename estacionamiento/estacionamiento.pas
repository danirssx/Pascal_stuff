
Program ConvertIntToString;

Uses crt;

Function IntToStr(n: Integer): String;

Var 
  letras: string;

Begin
  Str(n, letras);
  IntToStr := letras;
End;

Function TakeHour(n: Integer): String;
Begin
  If (n < 12) Then
    TakeHour := 'AM'
  Else
    Begin
      TakeHour := 'PM';
    End;
End;

Var 
  n1, n2: Integer;
  resultado, dani: String;


Begin

  clrscr;

  dani := 'hola';

  writeln('Indica la hora de entrada: ');
  readln(n1);

  clrscr();

  writeln('Indique enter para seguir...');
  readln();

  n2 := 54;

  resultado := IntToStr(n1) + ':' + IntToStr(n2) + ' ' + TakeHour(n1);

  writeln('El resultado es: ', resultado);

  readln;


End.
