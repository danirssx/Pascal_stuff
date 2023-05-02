
Program verificacion;

Uses math, crt;

Var 
  numero, reves: int64;
  dig, n1, n2, n3, dia, mes, contador: integer;
  rl: real;
  bt: byte;
  bl, C: boolean;
  resultado: float;
  st: string;
  r: float;

Begin

  clrscr;

  contador := 0;
  reves := 0;
  dia := 12;
  mes := 4;

  Repeat
    Begin
      writeln('Indique el numero a evaluar, 6 digitos: ');
      readln(numero);

      If (contador > 1) Then
        writeln('Indique el numero de nuevo: ');

      contador := contador +1;
    End;


  Until ((numero > 99999) And (numero <= 999999));

  n1 := numero Div 10000;
  n3 := numero Mod 100;
  n2 := (((numero Mod 10000) - n3) Div 100);


  writeln;
  writeln('Numero n1: ', n1, ' Numero n2: ', n2, ' Numero n3: ', n3);

  writeln();
  writeln('Dale enter');
  readln();


  While (numero<>0) Do
    Begin
      dig := numero Mod 10;
      reves := ((reves*10) + dig);
      numero := numero Div 10;

      If ((reves > 9) And (reves <= 99)) Then
        reves := ((reves*100) + dia);


      If ((reves > 99999) And (reves <= 999999)) Then
        reves := ((reves * 100)+ mes);

    End;

  writeln('Indique numero: ', reves);

  readln;

End.
