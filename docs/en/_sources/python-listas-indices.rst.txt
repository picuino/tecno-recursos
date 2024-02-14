:Date: 21/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-listas-indices:


Índices de listas
=================
Para obtener y manejar los datos de una lista se pueden utilizar índices
y rebanadas igual que se utilizaban con las cadenas de texto::

   >>> lista = ['a', 'b', 'c', 'd', 'e']
   >>> lista[0]
       'a'
   >>> lista[3]
       'd'
   >>> lista[-1]
       'e'

Este esquema puede ayudar a entender la posición de los índices::

      [ 'a', 'b', 'c', 'd', 'e' ]
       ^    ^    ^    ^    ^   ^
       0    1    2    3    4   5
      -5   -4   -3   -2   -1

Los índices entre corchetes devuelven el elemento que se encuentra en esa
posición de la lista, comenzando por la primera posición en el índice cero.

Rebanadas
---------
Por su parte las rebanadas devuelven otra lista compuesta por los elementos
que se encuentren entre dos índices::

   >>> lista[0:1]
       ['a']

   >>> lista[1:-1]
       ['b', 'c', 'd']

   >>> lista[10:20]   # Índices fuera de rango devuelven una lista vacía
       []

   >>> lista[:3]
       ['a', 'b', 'c']

   >>> lista[3:]
       ['d', 'e']


Modificación de elementos
-------------------------
Al contrario que con las cadenas de texto, en las listas si que se pueden
modificar sus elementos cambiándolos por otro valor::

   >>> lista = ['a', 'b', 'c', 'd', 'e']

   >>> # Cambia el primer elemento de la lista
   >>> lista[0] = 'A'
   >>> lista
       ['A', 'b', 'c', 'd', 'e']

   >>> # Cambia los elementos 3º y 4º de la lista por otra lista
   >>> lista[2:4] = ['=', 'X']
       ['A', 'b', '=', 'X', 'e']


Sentencia ``del``
-----------------
La sentencia ``del`` (palabra que proviene de delete) elimina un elemento
de la lista que se encuentre en una posición determinada::

   >>> lista = [1, 2, 3, 4, 5, 6]
   >>> del lista[0]
   >>> lista
       [2, 3, 4, 5, 6]

   >>> del lista[2]
   >>> lista
       [2, 3, 5, 6]

También se pueden utilizar rebanadas con la sentencia ``del``::

   >>> lista = [1, 2, 3, 4, 5, 6]
   >>> del lista[1:3]
   >>> lista
       [1, 4, 5, 6]


Ejercicios
----------

#. Escribe un programa que defina una lista con los 10 primeros números
   primos. A continuación debe imprimir el primer número primo, el tercero
   y el séptimo.

#. Modifica el programa anterior para que imprima la suma de los 4 primeros
   números primos. Debes programar un bucle que cuente desde 0 hasta 3
   y utilizar estos números como índices para recuperar los números primos
   de la lista.

#. Escribe un programa que defina una lista con tres nombres.
   El programa debe imprimir la lista, modificar el segundo nombre y
   volver a imprimir la lista modificada.

#. Escribe un programa que defina una lista con las primeras 6 letras
   del abecedario en mayúsculas.

   Imprime una sublista desde la 'B' hasta la 'D'.

   Imprime una sublista desde la 'C' hasta el final.

#. Modifica el programa anterior para que borre las posiciones pares
   de la lista y que luego imprima la lista resultante::

      ['A', 'C', 'E']

   Ten en cuenta que a medida que se borran elementos de la lista,
   los elementos posteriores cambian de posición.

#. Escribe un programa que defina una lista con las primeras 6 letras
   del abecedario en mayúsculas.
   A continuación un bucle ``for`` debe cambiar cada una de las letras
   por su valor en minúsculas gracias al método ``.lower()```.

   El bucle for debe medir la longitud de la lista con la función
   ``len()``.

   Pista::

       lista = ['A', ... ]
       for i in range( ... ):
           lista[i] = ...
       print(lista)
