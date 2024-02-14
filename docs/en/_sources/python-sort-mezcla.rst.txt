:Date: 20/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-sort-mezcla:

Ordenación por mezcla
=====================
El algoritmo de ordenación por mezcla (merge sort en inglés) es un
algoritmo recursivo basado en la técnica divide y vencerás.

Fue desarrollado en 1945 por Jonh Von Neumann y se adapta muy bien
a la ordenación de gran cantidad de datos secuenciales por ser muy
rápido y trabajar fácilmente con datos a los que solo se puede acceder
de uno en uno.

Descripción del algoritmo
-------------------------
El algoritmo de ordenación por mezcla se basa en dividir recursivamente
la lista de datos a ordenar en dos sublistas de la mitad de tamaño
cada una que la original, para poder ordenarlas con mayor facilidad.

Cuando la lista es de tamaño 0 ó 1 ya estará ordenada.

Una vez ordenadas las dos sublistas, se aplica un algoritmo que mezcla
las dos sublistas ordenadas en una sola lista ordenada de tamaño doble.

De esta manera se van mezclando sublistas de tamaño cada vez mayor
hasta que toda la lista original se encuentra ordenada.

.. figure:: python/_images/python-merge-sort-example.gif
   :align: center
   :alt: Algoritmo de ordenación por mezcla.

   Algoritmo de ordenación por mezcla.

   `Swfung8 <https://commons.wikimedia.org/wiki/File:Merge-sort-example-300px.gif>`__,
   `CC BY-SA 3.0 Unported <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
   via Wikimedia Commons.


Programa de ordenación
----------------------
A continuación aparece el código de ordenación de elementos de una lista
según el algoritmo de mezcla::

    def ordenar(lista, inicio=0, final=None):
        if final == None:
            final = len(lista) - 1

        if inicio == final:
            return

        medio = (inicio +  final + 1) // 2
        ordenar(lista, inicio, medio - 1)
        ordenar(lista, medio, final)
        mezclar(lista, inicio, medio, final)


    def mezclar(lista, inicio, medio, final):
        while (inicio < medio and inicio < final and medio <= final):
            if lista[medio] < lista[inicio]:
                temp = lista[medio]
                i = medio
                while (i > inicio):
                    lista[i] = lista[i - 1]
                    i = i - 1
                lista[inicio] = temp
                medio = medio + 1
            inicio = inicio + 1


    lista = [6, 3, 9, 5, 7, 1, 2, 4, 10, 8]
    ordenar(lista)
    print(lista)

Salida::

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


Ejercicios
----------

#.
