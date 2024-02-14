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
      * ``stop`` es el número que para el rango. Nunca se llega a ese valor.
      * ``step`` es el valor que se va sumando a ``start`` para conseguir
        los números consecutivos.

      Ejemplo::

         >>> # comenzando en 2, parar en 20, saltando de 3 en 3
         >>> list( range(2, 20, 3) )
             [2, 5, 8, 11, 14, 17]

         >>> # comenzando en 100, parar en 0, saltando de -10 en -10
         >>> list( range(100, 0, -10) )
             [100, 90, 80, 70, 60, 50, 40, 30, 20, 10]


   Con dos argumentos:

      solo se utilizan los parámetros ``start`` y ``stop``.
      ``step`` se supone igual a uno.

      Ejemplo::

         >>> list( range(5, 11) )
             [5, 6, 7, 8, 9, 10]

         >>> list( range(-10, 1) )
             [-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0]

   Con un argumento:

      * El argumento se copia en el parámetro ``stop``.
      * ``start`` se supone igual a cero.
      * ``step`` se supone igual a uno

      Ejemplo::

         >>> list( range(10) )
             [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

         >>> list( range(2) )
             [0, 1]

      Como el rango comienza por cero, el número de elementos del rango es
      igual al número que escribimos dentro de la función rango.


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
