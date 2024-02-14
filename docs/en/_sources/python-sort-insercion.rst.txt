:Date: 16/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-sort-insercion:

Ordenación por inserción
========================
Este algoritmo de ordenación tiene la ventaja de que permite que la lista
se modifique mientras se está produciendo la ordenación.
La parte de la lista no ordenada puede crecer añadiendo elementos y la
parte de la lista que ya está ordenada puede disminuir eliminando
elementos. Esto hace que sea un algoritmo flexible.

Este algoritmo se suele utilizar cuando el número de elementos a ordenar
es pequeño (menos de 100 elementos). Para conjuntos de datos mayores hay
algoritmos más rápidos y eficientes, como la ordenación por mezcla,
por montículo o la ordenación rápida.


Explicación del algoritmo
-------------------------
Al comienzo vamos a suponer que el primer elemento de la lista ya está
ordenado, mientras que todos los demás están desordenados.

A continuación tomaremos el segundo elemento de la lista. Si este elemento
es menor que el primer elemento de la lista, cambiaremos sus posiciones.
En este punto ya tenemos dos elementos de la lista ordenados.

Continuaremos con el tercer elemento de la lista. Mientras sea menor
le iremos intercambiando con el segundo y con el primer elemento de la
lista, hasta que quede ordenado.

El algoritmo continúa ordenando el resto de los elementos uno a uno
hasta que coloca el último elemento de la lista en su sitio,
momento en el que la ordenación de la lista ha terminado.


Programa de ordenación
----------------------
El programa completo de ordenación de elementos de una lista
según el algoritmo de inserción será el siguiente::

    def inserta_elemento(lista, index):
        for i in range(index, 0, -1):
            if lista[i - 1] > lista[i]:
                temp = lista[i - 1]
                lista[i - 1] = lista[i]
                lista[i] = temp
            else:
                break

    def ordenar(lista):
        for index in range(1, len(lista)):
            inserta_elemento(lista, index)


    lista = [6, 3, 9, 5, 7, 1, 2, 4, 10, 8]
    ordenar(lista)
    print(lista)


..  def inserta_elemento(lista, index):
        elemento = lista[index]
        while index > 0:
            if lista[index - 1] > elemento:
                lista[index] = lista[index - 1]
            else:
                break
            index = index - 1
        lista[index] = elemento


Salida::

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


Inserción binaria
-----------------
El algoritmo de inserción permite una mejora que consiste en
realizar la búsqueda del lugar de inserción correcto mediante búsqueda
binaria, que ya se estudió en una unidad anterior.

El algoritmo mejorado de inserción binaria es el siguiente::

    def inserta_elemento(lista, index):
        # Busqueda binaria
        primero = 0
        ultimo = index - 1
        while primero <= ultimo:
            medio = (primero + ultimo) // 2
            if lista[index] <= lista[medio]:
                ultimo = medio - 1
            else:
                primero = medio + 1

        # Desplaza elemento a su lugar
        temp = lista[index]
        for i in range(index, primero, -1):
            lista[i] = lista[i - 1]
        lista[primero] = temp


    def ordenar(lista):
        for index in range(1, len(lista)):
            inserta_elemento(lista, index)


    lista = [6, 3, 9, 5, 7, 1, 2, 4, 10, 8]
    ordenar(lista)
    print(lista)


Salida::

    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


Ejercicios
----------

#. Escribe una función que ordene una lista de tres elementos por el
   algoritmo de inserción, sin utilizar bucles de ningún tipo, solo
   con sentencias ``if``.

   Llama a la función con el siguiente código para comprobar que la
   función ``ordena()`` funciona correctamente::

      listas = [
          [1, 2, 3], [1, 3, 2],
          [2, 1, 3], [2, 3, 1],
          [3, 1, 2], [3, 2, 1]
          ]
      error = False
      for lista in listas:
          ordenar(lista)
          if lista != [1, 2, 3]:
              error = True
      if error:
          print('Error')
      else:
          print('Correcto')


#. Reescribe el programa de ordenación para que ordene los elementos
   en sentido contrario, de mayor a menor.
   Deberás cambiar los nombres de las funciones y de las variables para
   que se adapten a la nueva función que estén realizando.


#. Reescribe el programa de ordenación para que realice la ordenación
   de la lista en una sola función, sin separar el código en dos
   funciones distintas.
   Recuerda cambiar el nombre de las variables de la función
   ``inserta_elemento`` para que no sean los mismos.


#. Escribe un algoritmo de ordenación por inserción que ordene las
   cadenas de texto por longitud de cadena, de manera que al comienzo
   se coloquen las palabras más cortas y al final las más largas::

      lista = ['manzana', 'uva', 'melocotón', 'sandía', 'melón']
