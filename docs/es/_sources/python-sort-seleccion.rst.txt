:Date: 15/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-sort-selection:

Ordenación por selección
========================
Con este algoritmo comenzamos a ver los algoritmos de **ordenación de
datos**. Este tipo de algoritmos permiten ordenar una lista de datos
de menor a mayor. Los ordenadores toman su nombre precisamente de esta
importante función que pueden realizar, ordenar listas de nombres o
de números para facilitar la creación de listados o la posterior búsqueda
de datos.


Algoritmo de selección
----------------------
El algoritmo de ordenación consiste en buscar en toda la lista el elemento
más pequeño de todos. En principio comenzamos con el primer elemento de
la lista como el menor. Entonces un bucle compara uno a uno todos
los elementos de la lista con el menor y va seleccionando en cada
caso el más pequeño de todos::

    lista = [6, 3, 9, 5, 7, 1, 2, 4, 10, 8]
    menor = 0
    for i in range(len(lista)):
        if lista[i] < lista[menor]:
            menor = i

La variable menor valdrá 5, que es la posición del menor elemento, el 1.

Una vez que hemos encontrado la posición del menor elemento de todos,
intercambiamos ese elemento con el primero de la lista::

    temp = lista[0]
    lista[0] = lista[menor]
    lista[menor] = temp

Ahora sabemos que el primer elemento de la lista está ya ordenado al ser
el menor de todos los elementos de la lista.

Para continuar repetimos el procedimiento, pero con todos los elementos
de la lista a partir de la segunda posición. Esto conseguirá que tengamos
el segundo elemento de la lista ordenado.

Repitiendo el procedimiento una y otra vez, vamos ordenando todos los
elementos de la lista desde el primero hasta el penúltimo.
Una vez ordenados todos los elementos menos uno, el último elemento sabemos
que será el mayor de todos y estará al final de la lista, por lo que no
será necesario ordenar el último elemento.


Programa de ordenación I
------------------------
El programa completo de ordenación de elementos de una lista
según el algoritmo de selección será el siguiente::

    def busca_menor(lista, final):
        menor = final
        for i in range(final, len(lista)):
            if lista[i] < lista[menor]:
                menor = i
        return menor


    def ordenar(lista):
        for final in range(len(lista) - 1):
            menor = busca_menor(lista, final)
            temp = lista[final]
            lista[final] = lista[menor]
            lista[menor] = temp


    lista = [6, 3, 9, 5, 7, 1, 2, 4, 10, 8]
    ordenar(lista)
    print(lista)


Salida::

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


Programa de ordenación II
-------------------------
En esta segunda versión del programa de ordenación se va a alterar un
poco el algoritmo. Después de encontrar el elemento menor de la lista,
desplazaremos hacia la derecha todos los elementos no ordenados
por debajo del menor elemento, dejando un hueco para colocar este en su
sitio.

Este algoritmo modificado tiene la ventaja de mantener con su orden
original todos los elementos de la lista que todavía no han sido
movidos al comienzo de la lista::

    def busca_menor(lista, comienzo):
        menor = comienzo
        for i in range(comienzo, len(lista)):
            if lista[i] < lista[menor]:
                menor = i
        return menor


    def desplaza_derecha(lista, comienzo, final):
        temp = lista[final]
        for i in range(final, comienzo, -1):
            lista[i] = lista[i - 1]
        lista[comienzo] = temp


    def ordenar(lista):
        for comienzo in range(len(lista) - 1):
            menor = busca_menor(lista, comienzo)
            desplaza_derecha(lista, comienzo, menor)


    lista = [6, 3, 9, 5, 7, 1, 2, 4, 10, 8]
    ordenar(lista)
    print(lista)


Salida::

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


Ejercicios
----------

#. Reescribe el programa de ordenación I para que ordene los elementos
   en sentido contrario, de mayor a menor.
   Deberás cambiar los nombres de las funciones y de las variables para
   que se adapten a la nueva función que estén realizando.


#. Reescribe el programa de ordenación II para que comience a ordenar
   los elementos por la derecha, comenzando por ordenar el mayor de
   todos los elementos, que deberá desplazarse al final de la lista.


#. Escribe un programa basado en la ordenación por selección que
   desplace todos los ceros de una lista a la izquierda.
   El resto de elementos de la lista debe mantener el orden que tenía
   al comienzo::

      lista = [1, 0, 5, 3, 0, 0, 6, 2]
      separar_ceros(lista)
      print(lista)

   Salida::

      [0, 0, 0, 1, 5, 3, 6, 2]

   El programa estará basado en el programa de ordenación II.
   Debe seleccionar los ceros uno a uno y mover los ceros a la
   izquierda del todo.
   Si en algún momento no encuentra un cero en la lista, entonces el
   programa terminará.


#. Escribe un algoritmo de ordenación por selección que ordene las
   cadenas de texto por longitud de cadena, de manera que al comienzo
   se coloquen las palabras más cortas y al final las más largas::

      lista = ['manzana', 'uva', 'melocotón', 'sandía', 'melón']
