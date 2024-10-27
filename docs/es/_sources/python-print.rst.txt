:Date: 08/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-print:

La función :py:func:`print`
===========================

.. py:function:: print(*objects, sep=' ', end='\n')

   La función `print()
   <https://docs.python.org/es/3/library/functions.html#print>`__
   sirve para imprimir textos, números y otros objetos en la pantalla.

   Es una herramienta muy útil a la hora de encontrar errores de
   programación y para informar del desarrollo del programa.

   El parámetro **sep** indica qué carácter se va a utilizar para separar
   los distintos objetos que se imprimirán en la pantalla.
   Por defecto es el espacio en blanco.

   El parámetro **end** indica qué carácter se va a utilizar al finalizar
   la impresión. Por defecto es una nueva línea '\\n', pero se puede
   sustituir por una cadena vacía '' para que sucesivos ``print``
   impriman en la misma línea.

   Ejemplos::

      >>> print('Hola, mundo')
          Hola, mundo

      >>> print(3 + 5.6)
          8.6

      >>> print(1, 2, 3, 4, sep=' + ')
          1 + 2 + 3 + 4

      >>> print('Hola,'); print('mundo')
          Hola,
          mundo

      >>> print('Hola,', end=' '); print('mundo')
          Hola, mundo



Ejercicios
----------

#. Escribe un programa que imprima varios números separados por
   punto y coma gracias al argumento ``sep``.


#. Escribe un programa que imprima en una sola línea dos palabras juntas.
   La primera y la segunda palabra se deben imprimir con dos órdenes
   ``print()`` separadas.


#. Escribe un programa que calcule e imprima la media de tres notas:
   5, 8, 9.

   Pista: deberás sumar todas las notas dentro de un paréntesis y después
   dividir el resultado entre 3.


#. Escribe un programa que imprima 'Hola, mundo' en dos líneas distintas
   con una sola orden ``print()``.

   Pista: el caracter '\\n' sirve para añadir una nueva línea
   dentro de una cadena de texto.


#. Escribe un programa que asigne un valor a una variable y que
   luego imprima el valor de la variable en pantalla.

   Pista::

      a = 5
      print( ... )

   Salida::

      La variable 'a' tiene el valor 5

#. Escribe un programa que asigne dos valores a dos variables y que
   luego imprima sus valores y el valor de la suma.

   Pista::

      a = 9
      b = 7
      print( ... )

   Salida::

      La suma de 9 y de 7 es igual a 16


