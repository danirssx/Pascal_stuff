
Program fraseProgram;

Uses crt;

Var 
  frase, elemento: string;
  numero, posResultado, contador: integer;

Begin

  clrscr;


  writeln('Indica la frase que quieres analizar: ');
  readln(frase);

  elemento := 'el';




// Aqui inicializo las variables para que funcione el while porque si no corre y se va a la mierda
  // 
  // 
  contador := -1;
  posResultado := 1;

  writeln;
  writeln(frase);

  // Cuando no hayan mas "El" en el codigo, "posResultado = 0" abajo explico
  While (posResultado<>0) Do
    Begin



// El numero es igual a las letras que tiene "El" en este caso 2, Length() se encarga de calcularlo
      numero := Length(elemento);


// Aqui viene la vaina, Pos agarra 2 parametros, el primero es lo que quieres ENCONTRAR que es "EL" y lo segundo la frase completa en la que lo va a buscar. El te va a devolver es la posicion en la que esta el elemento en la en numeros, si es "EL" y la frase "pata el pollo" esta en la posicion 5, si cuento letra por letra.
      posResultado := Pos(elemento, frase);


// El delete tambien es una funcion que no hace falta declarla, aqui va a borrar lo que hay en la frase con los parametros que le doy, primero la frase completa la cual va a modificar, el posResultado que es la posicion y el numero es la cantidad de letras que va a borrar de izquierda a derecha, las cuales son 2.
      Delete(frase, posResultado, numero);

      // El contador va a indicar la cantidad de "El" que hay

      contador := contador + 1;
    End;

  writeln;

  writeln('Frase completa: ', frase);
  writeln;

  writeln('Numero de letras de "el": ', numero);
  writeln;
  writeln('Elemento: ', posResultado);
  writeln;

  writeln('La cantidad de "el" equivale a: ', contador);

  readln;


End.
