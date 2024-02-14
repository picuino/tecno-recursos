:Date: 07/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-busqueda-binaria:

Búsqueda binaria
================
El algoritmo de búsqueda binaria es más rápido que el algoritmo de
búsqueda lineal estudiado en la unidad anterior.

Este algoritmo aprovecha que una lista ya está ordenada para encontrar
el elemento buscado con mayor rapidez.
Estos son los pasos del algoritmo:

   1. Repite todo mientras haya lista en la que buscar.
   2. Buscamos el elemento en la mitad de la lista.
   3. Si se encuentra el elemento, devuelve la posición del
      elemento encontrado.
   4. Si el elemento buscado es **mayor** que el elemento de la mitad de
      la lista, dividimos la lista en dos y solo buscaremos en la mitad
      superior de la lista.
   5. En caso de que el elemento buscado sea **menor** que el elemento
      de la mitad de la lista, dividimos la lista en dos y solo buscaremos
      en la mitad inferior de la lista.
   6. Si no se ha encontrado el elemento, devuelve ``None``


Ejemplo de búsqueda binaria
---------------------------
Este es un ejemplo de lista para buscar un elemento, con las posiciones de
los números::

    lista = [
        8, 13, 17, 19, 33, 35, 40, 42, 44, 46, 51, 53, 63, 72, 75, 85, 87, 89, 92, 99 ]
    #  ^  ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^   ^
    #  0  1   2   3   4   5   6   7   8   9   10  11  12  13  14  15  16  17  18  19

Vamos a buscar el elemento 89 en esta lista con búsqueda binaria.

Primero buscamos en la mitad de la lista, posición 9, lo que nos devuelve
el número 46. Como 46 es menor que 89, sabemos que el elemento buscado
solo puede estar en la mitad superior de la lista::

    lista = [
        8, 13, 17, 19, 33, 35, 40, 42, 44, 46, 51, 53, 63, 72, 75, 85, 87, 89, 92, 99 ]
    #                                         ^   ^   ^   ^   ^   ^   ^   ^   ^   ^
    #                                         10  11  12  13  14  15  16  17  18  19

Ahora buscamos en la mitad de la parte superior de la lista, en la
posición 14, lo que nos devuelve el número 75.
Como 75 es menor que 87, sabemos que el elemento buscado solo pude estar
en la mitad superior de la lista::

    lista = [
        8, 13, 17, 19, 33, 35, 40, 42, 44, 46, 51, 53, 63, 72, 75, 85, 87, 89, 92, 99 ]
    #                                                             ^   ^   ^   ^   ^
    #                                                             15  16  17  18  19

Volvemos a buscar en la mitad de la parte de la lista superior,
en la posición 17, lo que nos devuelve el número 89.
Este es el elemento buscado, por lo que podemos devolver la posición
17.

Como podemos comprobar, con solo 3 comparaciones se ha encontrado el
elemento buscado en la posición 17. Una búsqueda lineal habría requerido
18 comparaciones en total.

La búsqueda binaria, por lo tanto, es mucho más rápida que la búsqueda
lineal, sobre todo en listas muy grandes de elementos, con la desventaja
de que necesita buscar en una lista que ya esté ordenada.


Programa de búsqueda binaria
----------------------------
El programa para realizar una búsqueda binaria tendrá dos índices,
``inicio`` y ``final``.
Uno apunta al comienzo de la lista y otro al final de la lista.
Estos índices se actualizarán a medida que conozcamos qué parte de
la lista puede contener al elemento buscado::

    def busqueda_binaria(lista, buscado):
        inicio = 0
        final = len(lista) - 1

        while inicio <= final:
            medio = (inicio + final) // 2
            if lista[medio] == buscado:
                return medio
            elif lista[medio] < buscado:
                inicio = medio + 1
            else:
                final = medio - 1

        return None


    lista = [
        8, 13, 17, 19, 33, 35, 40, 42, 44, 46,
        51, 53, 63, 72, 75, 85, 87, 89, 92, 99
        ]
    buscado = 87

    resultado = busqueda_binaria(lista, buscado)

    if resultado == None:
        print(f'El elemento {buscado} no se encuentra en la lista')
    else:
        print(f'El elemento {buscado} se encuentra en la posición {resultado}')


Ejercicios
----------

#. Programa una función de búsqueda binaria que devuelva la posición
   en la que se debería colocar un nuevo elemento para que quede ordenado
   dentro de una lista de números ya ordenados.

   Pista::

       def posicion_insertar(lista, nuevo_numero):
           inicio = 0
           final = len(lista) - 1

           while inicio <= final:
               ...
               ...
               ...

           return ...


       lista = [
           8, 13, 17, 19, 33, 35, 40, 42, 44, 46,
           51, 53, 63, 72, 75, 85, 87, 89, 92, 99
           ]

       nuevo_numero = 68
       posicion = posicion_insertar(lista, nuevo_numero)
       print(f'El número {nuevo_numero} debería insertarse en la posición {posicion}')


   Salida::

       El número 68 debería insertarse en la posición 13

   Prueba el programa con los números 7, 25, 48 y 100.

   Los resultados correctos son las posiciones 0, 4, 10 y 20.
