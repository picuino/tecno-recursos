:Date: 17/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-textos-indices:

Índices de cadenas de texto
===========================
Las cadenas de texto están formadas por caracteres individuales que se
pueden obtener con los índices. Un índice de cadena de texto es un número
dentro de dos corchetes ``[]`` de apertura y de cierre::

   >>> lang = 'Python'
   >>> lang[0]
       'P'
   >>> lang[1]
       'y'
   >>> lang[2]
       't'
   >>> lang[3]
       'h'

El primer carácter 'P' tiene el índice cero 'lang[0]'.
Esta es una convención que utilizan muchos otros lenguajes de programación
como el lenguaje C o el lenguaje JavaScript.
La primera vez que se aprende no es sencillo acostumbrarse, pero es
necesario para poder escribir código correcto.

Los índices negativos comienzan por el final de la cadena de texto::

   >>> lang[-1]
       'n'
   >>> lang[-2]
       'o'
   >>> lang[-3]
       'h'
   >>> lang[-4]
       't'

Los índices fuera de rango producen un error en el programa::

   >>> lang[20]
       Traceback (most recent call last):
         File "<pyshell#1>", line 1, in <module>
           lang[20]
       IndexError: string index out of range


Rebanadas o slicers
-------------------
Los índices se pueden escribir para que obtengan varios caracteres de una
cadena de texto, utilizando el carácter dos puntos ':' para separar el
comienzo del final en un índice::

   >>> lang = 'Python'
   >>> lang[0:3]
       'Pyt'
   >>> lang[2:5]
       'tho'
   >>> lang[1:-2]
       'yth'
   >>> lang[-3:-2]
       'h'

El siguiente esquema puede ayudar a entender mejor cómo funcionan los
índices y las rebanadas::

   |   +---+---+---+---+---+---+
   |   | P | y | t | h | o | n |
   |   +---+---+---+---+---+---+
   |   0   1   2   3   4   5   6
   |  -6  -5  -4  -3  -2  -1

Un índice tomará la letra de su derecha.

Una rebanada tomara los caracteres que hay entre los dos
números. Por ejemplo, [1:-2] tomará todos los caracteres que se encuentran
entre los índices 1 y -2 'yth' ::

   |   +---+---+---+---+---+---+
   |   | P | y | t | h | o | n |
   |   +---+---+---+---+---+---+
   |       1          -2

Los números de las rebanadas también se pueden dejar sin
escribir y esto es equivalente a decir que tome todos los caracteres
desde el comienzo o que tome todos los caracteres hasta el final de
la cadena::

   >>> lang[:3]
       'Pyt'
   >>> lang[3:]
       'hon'
   >>> lang[:]
       'Python'

Las rebanadas con índices fuera de rango no producen error,
solo devuelven una cadena vacía::

   >>> lang[20:30]
       ''



Bucles con cadenas de texto
---------------------------
Un bucle ``for`` puede ir tomando los caracteres de una cadena de texto
uno a uno::

   >>>  for c in 'Hola, mundo':
   ...      print(c)
   ...
   ...
        H
        o
        l
        a
        ,

        m
        u
        n
        d
        o


Ejercicios
----------

#. Escribe una función que imprima uno a uno todos los caracteres
   de una cadena de texto que le pasemos como argumento, sin 
   utilizar índices.

   Llama a la función dos veces con dos cadenas de texto distintas.

   Pista::

       def deletrea(texto):
           for c in ... :
               print( ... )
       
       deletrea('Hola, mundo')
       deletrea( ... )


#. Escribe una función que imprima uno a uno todos los caracteres
   de una cadena de texto que le pasemos como argumento, utilizando
   índices.

   Llama a la función dos veces con dos cadenas de texto distintas.
   
   Pista::
   
       def deletrea(texto):
           for i in range(len(texto)):
               print( ... )
       
       deletrea('Hola, mundo')
       deletrea('En un lugar de la mancha')


#. Escribe una función que acepte como argumento una cadena de texto
   y que vaya imprimiendo la cadena poco a poco imprimiendo al principio
   solo un carácter, luego dos caracteres, así hasta terminar imprimiendo
   todos los caracteres.

   Ejemplo::

      >>> letrero('En un lugar de la Mancha')
          E
          En
          En
          En u
          En un
          En un
          En un l
          En un lu
          ...
          ...


#. Modifica la función anterior para que imprima la cadena de texto
   comenzando desde la derecha, carácter por carácter, hasta terminar::

      >>> letrero_inverso('En un lugar de la Mancha')
          a
          ha
          cha
          ncha
          ancha
          Mancha
           Mancha
          a Mancha
          la Mancha
          ...
          ...


#. Escribe una función que acepte como argumento una cadena de texto y
   que imprima grupos de cinco caracteres del texto desde el comienzo
   de la cadena hasta el final::

      >>> letrero_corto('En un lugar de la Mancha')
              E
             En
            En
           En u
          En un
          n un
           un l
          un lu
          n lug
           luga
          lugar
          ugar
          gar d
          ar de
          r de
           de l
          de la
          ...
          ...
          ancha
          ncha
          cha
          ha
          a

   Pista: añade espacios al comienzo y al final de la cadena de texto.
