:Date: 12/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-for-range:

La función :py:func:`range`
===========================

.. py:function:: range(start, stop, step)

   La función range() sirve para crear un rango de números en un bucle
   ``for``.
   Tiene tres parámetros con valores por omisión, por lo que puede tener
   uno, dos o tres argumentos.

   Con tres argumentos:

      * ``start`` es el primer número entero por el que comienza el rango.
      * ``stop`` es el número que finaliza el rango. Nunca se llega a ese valor.
      * ``step`` es el valor que se va añadiendo a ``start`` para conseguir
        los números consecutivos.

      Ejemplo::

         >>> # comenzando en 2, parar en 20, saltando de 3 en 3
         >>> for i in range(2, 20, 3):
         ...     print(i)
         ...
             2
             5
             8
             11
             14
             17

         >>> # comenzando en 100, parar en 0, saltando de -10 en -10
         >>> for i in range(100, 0, -10):
         ...     print(i)
         ...
             100
             90
             80
             70
             60
             50
             40
             30
             20
             10


   Con dos argumentos:

      * Solo se utilizan los parámetros ``start`` y ``stop``.
      * El parámetro ``step`` se supone igual a uno.

      Ejemplo::

         >>> for i in range(5, 11):
         ...     print(i)
         ...
             5
             6
             7
             8
             9
             10

         >>> for i in range(-6, 3):
         ...     print(i)
         ...
             -6
             -5
             -4
             -3
             -2
             -1
             0
             1
             2


   Con un argumento:

      * El argumento se copia en el parámetro ``stop``.
      * El parámetro ``start`` se supone igual a cero.
      * El parámetro ``step`` se supone igual a uno.

      Ejemplo::

         >>> for i in range(6):
         ...     print(i)
         ...
             0
             1
             2
             3
             4
             5

         >>> for i in range(3):
         ...     print(i)
         ...
             0
             1
             2

      Como el rango comienza en el número cero, el número de elementos
      del rango será igual al número que escribimos dentro de la
      función rango.


Ejercicios
----------

#. Escribe un programa que imprima todos los números pares
   entre el 2 y el 20, ambos incluidos.


#. Escribe un programa que imprima todos los números impares
   entre el 1 y el 19, ambos incluidos.


#. Escribe un programa que imprima una cuenta atrás que comience
   imprimiendo 10 y que acabe imprimiendo 0.


#. Escribe un programa que escriba el siguiente listado::

      50
      45
      40
      35
      30
      25
      20

#. Escribe un programa que escriba el siguiente listado::

      -50
      -45
      -40
      -35
      -30
      -25
      -20

#. Escribe un programa que sume todos los primeros 'n' números impares
   y comprueba que el resultado es igual al cuadrado de 'n'.

   Pista::

      num = input('Introduce cuántos impares sumaremos: ')
      num = int(num)

      suma = 0
      for ... in range(1, num*2, ... ):
          suma = ...

      print('La suma de los', num, 'primeros impares es igual a', suma)
      print('El cuadrado de', num, 'es igual a', num*num)

