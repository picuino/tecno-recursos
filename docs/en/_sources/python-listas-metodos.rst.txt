:Date: 21/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-listas-metodos:


Métodos de listas
=================
Los `métodos de las listas
<https://docs.python.org/es/3/tutorial/datastructures.html#more-on-lists>`__
son funciones asociadas a las listas que se pueden utilizar
para manejarlas. Se llaman añadiendo un punto y el nombre del método::

   >>> lista = [1, 2, 3, 4, 5]

   >>> lista.append(6)  # Añadir un elemento al final de la lista
   >>> lista
       [1, 2, 3, 4, 5, 6]

   >>> lista.pop()  # Retira un elemento del final de la lista
       6
   >>> lista
       [1, 2, 3, 4, 5]

   >>> lista.pop(0)  # Retira un elemento del comienzo de la lista
       1
   >>> lista
       [2, 3, 4, 5]

   >>> lista.index(4) # Devuelve la posición de un elemento en la lista
       2

   >>> lista.count(3) # Devuelve cuántas veces encuentra 3 en la lista
       1

   >>> lista = ['uno', 'dos', 'tres']
   >>> ', '.join(lista) # Une las cadenas de texto de una lista
       'uno, dos, tres'


Funciones con listas
--------------------

.. py:function:: max(lista)

   La función ``max(lista)`` devuelve el elemento con mayor valor de todos
   los elementos de la lista::

      >>> max([1, 8, 5, 6, 3])
          8

.. py:function:: min(lista)

   La función ``min(lista)`` devuelve el elemento con menor valor de todos
   los elementos de la lista::

      >>> max(['hola', 'mundo'])
          'hola'

.. py:function:: sum(lista)

   La función ``sum(lista)`` devuelve la suma de todos los números
   que contiene una lista::

      >>> sum([1, 8, 5, 6, 3])
          23

.. py:function:: len(lista)

   La función ``len(lista)`` devuelve el número de elementos que contiene
   una lista::

      >>> len([1, 8, 5, 6, 3])
          5

.. py:function:: sorted(lista)

   La función ``sorted(lista)`` devuelve otra lista ordenada de menor
   a mayor::

      >>> sorted([1, 8, 5, 6, 3])
          [1, 3, 5, 6, 8]


.. py:function:: list(elementos)

   Convierte un iterable en una lista::

      >>> list('Hola, mundo')
          ['H', 'o', 'l', 'a', ',', ' ', 'm', 'u', 'n', 'd', 'o']

      >>> list(range(10, -1, -2))
          [10, 8, 6, 4, 2, 0]


Ejercicios
----------

#. Escribe una función que calcule el promedio de una lista de números.
   El promedio es igual a la suma de los elementos dividido entre el
   número de elementos.

   Llama a la función para calcular el promedio de las siguientes listas::

      [10, 20, 30, 40, 50]

      [7.0, 5.5, 6.8, 6.3, 8.2]


#. Escribe una función que acepte una lista como argumento y que
   retorne otra lista que contenga solo los números pares.

   Debes crear una nueva lista vacía y añadirle los números pares de la
   lista pasada como argumento.

   Llama a la función con las siguientes listas como argumentos::

      [3, 77, 78, 84, 75, 54, 8, 66, 8, 13]

      [81, 52, 78, 88, 51, 74, 23, 60, 47, 4]


#. Escribe una función que acepte una lista como argumento y que retorne
   otra lista con el elemento menor, el elemento mayor, el número de
   elementos y la suma de todos los elementos.

   Llama a la función con las siguientes listas como argumento::

      >>> resumen([49, 9, 16, 31, 6, 35, 14, 7, 7, 15, 13, 44, 38, 43])
          [6, 49, 14, 327]

      >>> resumen([28, 13, 24, 45, 48, 47, 7, 43, 5, 24])
          [5, 48, 10, 284]

      >>> resumen([7, 32, 45, 47, 24, 10, 1, 18, 38, 36, 22, 50])
          [1, 50, 12, 330]
