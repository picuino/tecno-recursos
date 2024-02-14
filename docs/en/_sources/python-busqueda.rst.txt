:Date: 07/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-busqueda:

Búsqueda de datos
=================
En este apartado vamos a estudiar cómo buscar datos dentro de una lista.
Existen numerosas funciones y métodos de Python para conseguirlo,
pero en esta unidad se van a estudiar los algoritmos de búsqueda sin su
ayuda para poder aprender cómo funcionan estos algoritmos internamente.


Búsqueda lineal de datos
------------------------
El algoritmo más sencillo para buscar un dato en una lista consiste en
ir recorriendo todos los elementos de la lista, uno a uno, hasta encontrar
aquel que estamos buscando.

En este caso vamos a programar una búsqueda lineal del menor elemento
de una lista de datos.

Una variable guardará la posición del menor elemento encontrado hasta el
momento e iremos actualizando esta posición a medida que vayamos
encontrando otros elementos menores::

    def busca_menor(lista):
        """Busca el elemento menor de una lista"""

        # El elemento menor será el primero, para empezar
        menor = 0

        for i in range(len(lista)):
            if lista[i] < lista[menor]:
                menor = i

        return menor


    lista = [
        75, 13, 92, 99, 19, 33, 40, 42, 85, 17,
        44, 63,  8, 87, 72, 51, 46, 87, 35, 53
        ]

    menor = busca_menor(lista)

    print(f'El menor elemento está en la posición {menor}')
    print(f'Su valor es {lista[menor]}')


El resultado es el siguiente::

    El menor elemento está en la posición 12
    Su valor es 8


Ejercicios
----------

#. Escribe un programa con una función que busque el elemento mayor
   de una lista. Llama a esa función con la lista de números anterior
   para comprobar que el resultado es el elemento 3 que vale 99.


#. Escribe una función que devuelva la posición del último elemento
   par de una lista. Si no existe ningún número par, el resultado devuelto
   debe ser la constante ``None`` para indicar que no existe ninguno.

   Llama a la función con la lista de números anterior para comprobar
   que el resultado es la posición 16, número 46.

   Pista::

       def ultimo_par(lista):
           ultimo = None

           for i in range(len(lista)):
               if ...

           return ultimo

       lista = [
           75, 13, 92, 99, 19, 33, 40, 42, 85, 17,
           44, 63,  8, 87, 72, 51, 46, 87, 35, 53
           ]
       ultimo = ultimo_par(lista)
       print( ... )
       print( ... )


   Resultado::

       El último elemento par está en la posición 16
       Su valor es 46


#. Escribe una función que devuelva la posición del primer elemento
   impar de una lista. Si no existe ningún número impar, el resultado
   devuelto debe ser la constante ``None`` para indicar que no existe
   ninguno.

   Llama a la función con la lista de números anterior para comprobar
   que el resultado es la posición 0, número 75.

   Resultado::

       El primer elemento impar está en la posición 0
       Su valor es 75


#. Escribe una función que cuente las veces que se encuentra un elemento
   en una lista. Llama a esa función para calcular cuántas veces aparece
   el elemento 5 en una lista de notas.

   Pista::

       def buscar(lista, numero):
           contador = 0
           for i in lista:
               if ...


       notas = [
           8, 3, 6, 6, 2, 9, 4, 3, 5, 9,
           3, 1, 2, 5, 8, 4, 3, 10, 4, 6
           ]

       cantidad = buscar(notas, 5)
       print(f'Hay un total de {cantidad} notas iguales a 5')


#. Modifica el programa anterior con un bucle que busque cuántas veces
   aparecen todas las notas desde el 0 hasta el 10.


#. Modifica el programa de búsqueda del elemento menor de una lista.
   Añade al programa otra función que vaya buscando una y otra vez
   el elemento menor, que lo imprima en pantalla y que lo borre de la
   lista con la función ``del()``.
   El resultado final debe ser que imprima todos los elementos
   de la lista ordenados de menor a mayor.

   Pista::

       def busca_menor(lista):
           """Busca el elemento menor de una lista"""

           menor = 0

           for i in range(len(lista)):
               if lista[i] < lista[menor]:
                   menor = i

           return menor


       def lista_menores(lista):
           ...
           ...
           ...


       lista = [
           75, 13, 92, 99, 19, 33, 40, 42, 85, 17,
           44, 63,  8, 87, 72, 51, 46, 87, 35, 53
           ]

       lista_menores(lista)


   Resultado::

       8
       13
       17
       19
       33
       35
       40
       42
       44
       46
       51
       53
       63
       72
       75
       85
       87
       87
       92
       99
