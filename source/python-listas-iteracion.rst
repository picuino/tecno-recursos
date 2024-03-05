:Date: 21/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-listas-iteracion:


Iteración de listas
===================
Iterar una lista significa recorrer cada uno de los elementos de la lista
uno a uno para realizar alguna acción con cada elemento.
Esta técnica permite manipular datos de manera repetitiva sin tener
que escribir el código varias veces.

Las listas se pueden iterar con un bucle ``for``.

Ejemplo::

   lista = ['Juan', 'Nerea', 'Camila', 'Esteban']
   for nombre in lista:
       print(f'Hola {nombre}')

Salida::

   Hola Juan
   Hola Nerea
   Hola Camila
   Hola Esteban


Función ``len()``
-----------------
La función ``len()`` devuelve el número de elementos que contiene una
lista.
Es útil para realizar iteraciones con el **índice** en el que se encuentra
cada elemento::

   >>> lista = ['A', 'B', 'C', 'D', 'E', 'F']
   >>> len(lista)
       6

   >>> for i in range(len(lista)):
   ...     if i % 2 == 0:
   ...         print(f'{lista[i]}')
   ...
       A
       C
       E

   >>> for i in range(len(lista)):
   ...     if i % 2 != 0:
   ...         print(f'{lista[i]}')
   ...
       B
       D
       F


Función ``list()``
------------------
La función ``list()`` permite crear una lista a partir de varios elementos
o convertir un iterable como ``range()`` en una lista::

   >>> list(range(10))
       [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

   >>> list(range(1, 11, 2)) # Impares
       [1, 3, 5, 7, 9]

   >>> list('Hola, mundo')
       ['H', 'o', 'l', 'a', ',', ' ', 'm', 'u', 'n', 'd', 'o']


Comprensión de listas
---------------------
La comprensión de listas es un método escueto y rápido de generar
listas. Utiliza el bucle ``for`` dentro de dos corchetes ``[ ]``

Ejemplo::

   lista = [num for num in range(10)]


Es equivalente a este otro código, más lento y largo de escribir::

   lista = []
   for num in range(10):
       lista.append(num)


Ejercicios
----------

#. Escribe un programa que defina una lista de nombres y a continuación
   imprima en pantalla el nombre y la letra por la que comienza
   con el siguiente formato::

      Juan       comienza por 'J'
      Nerea      comienza por 'N'
      Camila     comienza por 'C'
      Esteban    comienza por 'E'


#. Escribe un programa que pida una frase por la entrada de teclado.
   El programa debe convertir la frase en una lista de caracteres.

   A continuación el programa debe imprimir la frase al revés,
   comenzando por la última letra y terminando por la primera letra.

   Pista: para ir desde el final hasta el principio se puede utilizar
   un índice con la función ``for i in range(len(lista)-1, -1, -1):``.


#. Escribe un programa que genere una lista de los números impares hasta
   el 99. El programa debe sumar todos los números de la lista e
   imprimir el resultado, que debe ser igual a 2500.


#. Escribe un programa que defina la siguiente lista de elementos::

      lista_1 = [1, 2, 2, 3, 4, 4, 5, 5, 5, 7]

   El programa debe generar una nueva lista que contenga todos los
   elementos de la primera excepto los que están duplicados::

      lista_2 = [1, 2, 3, 4, 5, 7]

   Pista: recorre todos los elementos de la lista_1 y si no están en
   la lista_2, los añades a la lista_2.


#. Escribe un programa que lea una frase desde el teclado y la cifre
   con el siguiente algoritmo.

   El programa debe dividir la frase en letras con la función
   ``list(frase)``.

   A continuación el programa debe generar una nueva lista con las letras
   con índice par.

   A esa nueva lista se deben añadir al final las letras con índice impar.

   Por último se imprimirán todas las letras de la nueva lista juntas.


   Salida::

      Introduce una frase: La lluvia en Sevilla es una pura maravilla

      L lvae eil suapr aailalui nSvlae n uamrvla


   Salida::

      Introduce una frase: En un lugar de la Mancha, de cuyo nombre no quiero acordarme

      E nlgrd aMnh,d uonmr oqir cramnu ua el aca ecy oben ueoaodre

   Salida::

      Introduce una frase: Si eres capaz de descifrar esto, es que eres un/a crack

      S rscpzd ecfa so sqeee nacakiee aa edsirret,e u rsu/ rc


#. Escribe un programa que descifre el código producido por el anterior
   programa.

   Pista::

       frase = input('Escribe la frase cifrada: ')

       # Para evitar errores debe haber un número par de caracteres
       if len(frase) % 2 != 0:
           frase = frase + ' '

       # Genera dos listas con los caracteres de índice par
       # y los caracteres de índice impar
       lista_cifrada = list(frase)
       lista_cifrada_par = lista_cifrada[ : len(frase)//2]
       lista_cifrada_impar = lista_cifrada[len(frase)//2 : ]

       # Genera una lista descifrada vacía
       lista_descifrada = [''] * len(frase)

       # Reparte los caracteres pares
       for i in range(len(lista_cifrada_par)):
           lista_descifrada[i*2] = lista_cifrada_par[i]

       # Reparte los caracteres impares
       for ...

       # Imprime el resultado
       for ...

