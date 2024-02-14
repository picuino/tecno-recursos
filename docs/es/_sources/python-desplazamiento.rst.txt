:Date: 11/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-desplazamiento:

Desplazamiento de datos
=======================
El desplazamiento de datos se refiere a la acción de mover datos de un
lugar a otro de la memoria. Es una operación que se realiza en multitud
de ocasiones, por ejemplo, en los algoritmos de ordenación, que veremos
en las siguientes unidades.

.. note::
   En el lenguaje Python existen métodos eficientes para llevar a
   cabo el desplazamiento de datos. Estos métodos se basan en el uso
   de rebanadas, asignación de tuplas y funciones de inserción y
   borrado de elementos en listas.
   Sin embargo, en esta unidad y las siguientes, no se emplearán
   estos métodos eficientes de desplazamiento de datos en Python.
   El propósito es adquirir un entendimiento a más bajo nivel de cómo
   se realizan estas operaciones, lo que puede ser aplicable en
   cualquier otro lenguaje de programación.


Intercambio de datos
--------------------
Es frecuente que un programa tenga que intercambiar los datos de dos
variables o de dos posiciones de una lista.
Para poder intercambiar los datos usaremos una variable temporal
intermedia::

    bajo = 200
    alto = 100

    # Intercambiamos los datos entre sí.
    temp = bajo
    bajo = alto
    alto = temp

Otro ejemplo se puede dar con listas de datos. En el siguiente caso
vamos a ordenar una lista de números que no está ordenada, intercambiando
los dos números del medio de la lista::

    lista = [ 1, 3, 2, 4 ]

    temp = lista[1]
    lista[1] = lista[2]
    lista[2] = temp


Desplazamiento a la derecha
---------------------------
Si necesitamos desplazar muchos números de una lista el procedimiento será
similar al de intercambio de datos, pero algo más largo.

En el siguiente ejemplo necesitamos mover el último elemento de una lista
al comienzo de la lista para ordenar todos los números::

    lista = [ 1, 2, 3, 4, 5, 0 ]
    #        ^---------------┘

Esta es una operación semejante a la de intercambio. Implica mover
todos los números hacia la derecha para dejar un espacio libre al
comienzo de la lista, que es donde finalmente colocaremos el número
0.

Para empezar guardaremos el valor del último elemento en una variable
intermedia::

    temp = lista[5]

Ahora desplazamos todos los elementos, menos el último, hacia la derecha.
Para no pisar los valores habrá que comenzar por la derecha::

    lista[5] = lista[4]
    #   [ 1, 2, 3, 4, 5, 5 ]

y continuar hacia la izquierda::

    lista[4] = lista[3]
    #   [ 1, 2, 3, 4, 4, 5 ]

    lista[3] = lista[2]
    #   [ 1, 2, 3, 3, 4, 5 ]

    lista[2] = lista[1]
    #   [ 1, 2, 2, 3, 4, 5 ]

    lista[1] = lista[0]
    #   [ 1, 1, 2, 3, 4, 5 ]

Por último copiamos el valor de la variable temporal el el primer
puesto de la lista a la izquierda del todo, para obtener la lista
completamente ordenada::

    lista[0] = temp
    #   [ 0, 1, 2, 3, 4, 5 ]


Estas operaciones se pueden agilizar por medio de un bucle ``for``, con
lo que el programa final quedaría de la siguiente manera::

    lista = [ 1, 2, 3, 4, 5, 0 ]

    final = len(lista) - 1
    temp = lista[final]
    for i in range(final, 0, -1):
        lista[i] = lista[i - 1]
    lista[0] = temp

    print(lista)

La salida del programa será la lista ordenada::

    [0, 1, 2, 3, 4, 5]


Desplazamiento a la izquierda
-----------------------------
Este caso es semejante al anterior, pero ahora deseamos mover los datos
en dirección contraria.

En el siguiente ejemplo necesitamos mover el primer elemento de una lista
al final de la lista para ordenar todos los números::

    lista = [ 5, 0, 1, 2, 3, 4 ]
    #         └---------------^

Esta operación implica mover todos los números hacia la izquierda
para dejar un espacio libre al final de la lista, que es donde
colocaremos el número 5.

El programa final será el siguiente::

    lista = [ 5, 0, 1, 2, 3, 4 ]

    final = len(lista) - 1
    temp = lista[0]
    for i in range(final):
        lista[i] = lista[i + 1]
    lista[final] = temp

    print(lista)

La salida del programa será la lista ordenada::

    [0, 1, 2, 3, 4, 5]


Ejercicios
----------

#. Escribe un programa que intercambie los datos de las siguientes
   variables de manera que cada variable contenga el número que
   corresponde con su nombre. Recuerda utilizar una variable temporal::

       uno = 2
       dos = 1
       ...
       ...

       print(uno, dos)

   Salida::

       1 2

#. Escribe un programa que intercambie los datos de las siguientes
   variables de manera que cada variable contenga el número que
   corresponde con su nombre. Recuerda utilizar una variable temporal::

       uno = 3
       dos = 1
       tres = 2

       ...
       ...

       print(uno, dos, tres)

   Salida::

       1 2 3

#. Escribe una función que desplace todos los elementos de una lista hacia
   la izquierda. El primer elemento debe desaparecer y el último elemento
   se le asignará el segundo parámetro de la función.

   Ejemplo::

      lista = [0, 1, 2, 3, 4, 5]
      desplaza_izquierda(lista, 7)
      print(lista)

   Salida::

      [1, 2, 3, 4, 5, 7]

#. Escribe una función que desplace los elementos de una lista hacia la
   derecha, pero solo hasta una posición dada por su segundo parámetro,
   la variable ``min``.
   El último elemento de la lista debe colocarse en la posición ``min``.
   Comprueba que la función funciona correctamente con los siguientes
   ejemplos.

   Ejemplo 1::

      lista = [0, 1, 2, 3, 4, 5]
      desplaza_derecha(lista, 3)
      print(lista)

   Salida::

      [0, 1, 2, 5, 3, 4]

   Ejemplo 2::

      lista = [0, 1, 2, 3, 4, 5]
      desplaza_derecha(lista, 1)
      print(lista)

   Salida::

      [0, 5, 1, 2, 3, 4]


#. Escribe una función que desplace los elementos de una lista hacia la
   izquierda, hasta el elemento dado por su segundo parámetro,
   la variable ``min``.
   Una vez realizado el desplazamiento, el último elemento de
   la lista debe asignarse al valor que estuviera en la posición ``min``.

   Ejemplo::

      lista = ['a', 'b', 'c', 'd', 'e', 'f']
      desplaza_izquierda(lista, 1)
      print(lista)

   Salida::

      ['a', 'c', 'd', 'e', 'f', 'b']
