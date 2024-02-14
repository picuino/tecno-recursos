:Date: 15/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-textos:

Cadenas de texto
================
Además de números, Python puede manipular cadenas de texto o de caracteres.
Las cadenas de texto pueden estar encerradas entre comillas dobles "" o
entre comillas simples ''.

Si necesitamos utilizar una comilla simple o una comilla doble dentro
de una cadena de texto, podemos utilizar el carácter escape '\\'::

   >>> 'Hola, mundo'  # Comillas simples
       'Hola, mundo'
   >>> "doesn't"     # Comillas dobles
       "doesn't"
   >>> 'doesn\'t'    # Carácter escape
       "doesn't"

Los símbolos de escape más utilizados son::

   \\ -> \
   \n -> Nueva línea
   \r -> Comienzo de línea
   \t -> Tabulación
   \b -> Un carácter hacia atrás (backspace)



Las cadenas de texto pueden contener caracteres
`Unicode <https://es.wikipedia.org/wiki/Unicode>`__, es decir que pueden
contener las letras del alfabeto latino 'ñ', letras de alfabetos
diferentes como el griego 'Ω', el cirílico 'Я' o, incluso,
símbolos '☀' y emojis '😀'.


Cadenas de texto multilínea
---------------------------
En el caso de querer escribir muchas líneas de texto se puede incluir
en la cadena el carácter de nueva línea '\\n' o utilizar las cadenas
multilínea que se encierran entre tres comillas simples o dobles::

   print("""Este es un ejemplo de una cadena de texto
   que ocupa varias líneas.

   Al imprimir este texto sale tal y como se ha escrito.""")

Salida::

   Este es un ejemplo de una cadena de texto
   que ocupa varias líneas.

   Al imprimir este texto sale tal y como se ha escrito.


Estos textos multilínea se pueden utilizar dentro de las funciones
para añadir un texto de ayuda que explique su funcionamiento::

   def factorial(n):
      """Devuelve el factorial del número n (n!).
      El factorial es el resultado de multiplicar todos los valores
      enteros desde el número 1 hasta n."""

      mult = 1
      for i in range(2, n+1):
         mult = mult * i
      return mult


   help(factorial)


Salida::

   Help on function factorial in module __main__:

   factorial(n)
       Devuelve el factorial del número n (n!).
       El factorial es el resultado de multiplicar todos los valores
       enteros desde el número 1 hasta n.


La función ``help()`` nos devuelve la cadena de texto de la función
para informarnos de su funcionamiento. Todas las funciones internas
de Python tienen esta cadena de texto informativa para poder pedir
ayuda sobre su funcionamiento.


Unión de cadenas de texto
-------------------------

Para unir dos cadenas de texto podemos usar el símbolo de suma::

   >>> 'Hola, ' + 'mundo'
       'Hola, mundo'
   >>> a = 'Hola, '
   >>> b = 'mundo'
   >>> a + b
       'Hola, mundo'


Dos o más cadenas literales se unen entre sí si van seguidas una delante
de la otra::

    >>> 'Hola ' 'Inés ' '¿Qué tal estás?'
        'Hola Inés ¿Qué tal estás?'


Multiplicación de cadenas de texto
----------------------------------
El símbolo de multiplicación se puede utilizar para obtener varias veces
un texto::

   >>> 'Ja ' * 5
       'Ja Ja Ja Ja Ja'
   >>> 'Hola, mund' + 'o' * 10
       'Hola, mundoooooooooo'


Ejercicios
----------

#. Crea una cadena de texto con caracteres especiales como acentos,
   letras griegas, símbolos, emojis, etc.
   Puedes copiar y pegar desde varias páginas de Internet:

      * `Symbol <https://symbl.cc/es/>`__
      * `Tabla de caracteres Unicode
        <https://www.rapidtables.org/code/text/unicode-characters.html>`__
      * Mapa de caracteres de Windows

#. Crea una cadena de texto multilínea con un recuadro doble alrededor
   de una frase inventada.

   Utiliza estos símbolos para hacer el recuadro::

      ╔ ═ ╗
      ║   ║
      ╚ ═ ╝


#. Crea una función que imprima una tabla de 2 filas por 2 columnas
   en las que aparezcan 4 números inventados.

   La función debe tener una cadena de texto multilínea en la que se
   explique cuál es su propósito.

   Utiliza estos símbolos para recuadrar la tabla::

      ╔ ═ ╦ ═ ╗
      ║   ║   ║
      ╠ ═ ╬ ═ ╣
      ║   ║   ║
      ╚ ═ ╩ ═ ╝

#. Escribe un programa que ingrese una cadena de texto por el teclado
   y escriba el número de caracteres que tiene esa cadena.

   Pista: la función len('texto') devuelve la longitud, es decir el
   número de caracteres, de una cadena de texto.


#. Escribe una función que genere automáticamente un recuadro
   alrededor de cualquier cadena de texto que le pasemos como argumento.

   Llama a la función varias veces con distintas cadenas de texto.

   Ejemplo::

      recuadro('Hola, mundo')

   Salida::

      ╔═════════════╗
      ║ Hola, mundo ║
      ╚═════════════╝

   Pistas:
      * Utiliza la multiplicación de caracteres para imprimir el
        carácter '═' varias veces.
      * Utiliza la función ``len(texto)`` para saber la longitud de la
        cadena de texto que deseamos imprimir.

