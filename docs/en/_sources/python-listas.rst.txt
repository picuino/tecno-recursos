:Date: 20/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-listas:

Listas
======
Una lista es un conjunto de datos ordenado en secuencia.
Las listas se construyen encerrando entre corchetes ``[ ]`` varios
elementos separados por comas::

   >>> lista_impares = [1, 3, 5, 7, 9]
   >>> lista_nombres = ['Juan', 'Nerea', 'Camila', 'Joaquín']
   >>> lista_booleana = [True, False, False, True]

Como puede observarse, los datos de una lista pueden ser de cualquier tipo.
Incluso se pueden hacer listas con varios tipos de datos o una lista de
listas::

   >>> nombre_y_altura = [ ['Juan', 176], ['Nerea', 169], ['Camila', 166] ]

Las listas son una herramienta muy versátil para almacenar los datos
de un programa y trabajar con ellos.


Listas multilínea
-----------------
Las listas con muchos elementos o con una estructura compleja se
pueden escribir separando los elementos en líneas consecutivas
para que el resultado sea más legible::

   lista = [
       ['Juan', 176],
       ['Nerea', 169],
       ['Camila', 166]
       ]

   lista = [
      'Primer texto',
      'Segundo texto',
      'Último texto'
      ]


Operaciones con listas
----------------------
Las listas se pueden sumar y multiplicar por un número,
igual que las cadenas de texto::

   >>> [1, 2, 3] + [4, 5, 6]
       [1, 2, 3, 4, 5, 6]

   >>> [1, 2] * 5
       [1, 2, 1, 2, 1, 2, 1, 2, 1, 2]


Sentencia ``in``
----------------
La sentencia ``in`` retorna un valor ``True`` o ``False`` y permite
conocer si un dato se encuentra dentro de una lista::

   >>> lista = [1, 2, 3, 'a', 'b', 'c']
   >>> 3 in lista
       True

   >>> 'b' in lista
       True

   >>> 10 in lista
       False

   >>> 'x' in lista
       False

La sentencia ``not in`` es la contraria a la sentencia ``in`` y devuelve
verdadero si un elemento no está en una lista::

   >>> 'x' not in lista
       True

   >>> 3 not in lista
       False


Ejercicios
----------

#. Escribe un programa que asigne a una lista el nombre de
   cinco compañeros/as o amigos/as.


#. Añade al programa anterior otra lista con las edades de
   las personas anteriores. Si no las sabes, puedes escribirlas de
   forma aproximada.

   Crea una tercera lista que contenga las dos listas anteriores::

      [ ['nombre1', 'nombre2', ....], [edad1, edad2, ...] ]


#. Escribe un programa que cree una lista multilínea con tres frases
   famosas que elijas desde `esta página web
   <https://psicologiaymente.com/reflexiones/frases-famosas>`__
   u otra web de tu elección.


#. Escribe una lista con los 10 primeros números primos.
   Puedes encontrar cuáles son en un buscador de Internet.

   Haz la lista en dos partes. Primero defines la lista con 5 primos
   y luego le sumas a la lista otros 5 primos más.


#. Modifica el programa anterior para que compruebe si los
   números 3, 7, 9, 13 y 20  pertenecen a los primeros 10
   números primos.

   Para ello debes definir una función que compruebe si el número
   está en la lista y que imprima el resultado.

   Llama a la función 5 veces para comprobar los 5 números.

