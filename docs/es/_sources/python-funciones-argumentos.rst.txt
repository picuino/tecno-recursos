:Date: 15/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-funciones-argumentos:

Parámetros con valores por omisión
==================================
Las funciones pueden tener **parámetros**, que son variables que se
utilizan en el interior de la función. Al llamar a la función
asignamos **argumentos** (datos) a los parámetros de la función.

Los parámetros pueden tener valores por defecto y en ese caso se puede
omitir el argumento en la llamada a la función.
Estos parámetros con valores por omisión deben colocarse a la derecha
de los demás parámetros.

Ejemplo::

   def saludo(nombre='María'):
       print('Te saludo,', nombre)

   saludo()
   saludo('Nerea')

Salida::

   Te saludo, María
   Te saludo, Nerea

Como se puede ver, cuando llamamos a la función sin ningún argumento,
se utiliza el valor por omisión, que en este caso es 'María'.


Ejercicios
----------

#. Escribe una función que cuente los números divisibles por 'divisor'
   que haya en todos los números desde el 1 hasta el número 'tope'.

   Pista::

      def multiplos(divisor, tope):
          contador = 0
          ...


      multiplos(3, 20)
      multiplos(5, 50)


   Salida::

      Hay 6 múltiplos de 3 desde el 1 hasta el 20
      Hay 10 múltiplos de 5 desde el 1 hasta el 50


#. Modifica la función anterior para que el último parámetro tenga
   un valor por defecto de 100.

   Salida::

      >>> multiplos(7)
          Hay 14 múltiplos de 7 desde el 1 hasta el 100


#. Escribe una función que cuente las vocales de una cadena de texto.

   Pista::

      def contar_vocales(cadena):
         vocales = 'aeiouAEIOUáéíóúÁÉÍÓÚ'
         contador = 0
         for letra in cadena:
            if letra in vocales:
               ...

   Salida::

      En la cadena " Este es un ejemplo de cadena de texto " hay 14 vocales.
      En la cadena " En un lugar de la Mancha, de cuyo nombre no quiero acordarme " hay 22 vocales.


#. Escribe una función que imprima el número más pequeño de tres números
   que le pasemos como argumentos.

   Pista::

      def menor(a, b, c):
          print('Número menor:', end=' ')
          if a < b and a < c:
              print(a)
          ...


      menor(3, 1, 7)
      menor(10, 2, 5)
      menor(6, 12, 3)

   Salida::

      Número menor: 1
      Número menor: 2
      Número menor: 3


#. Escribe una función que retorne 'True' si tres números que le
   pasemos como argumentos están ordenados de menor a mayor.
   En caso contrario, debe retornar 'False'

   Pista::

       def ordenados(a, b, c):
           if a < b and b < c:
               ...

      ordenados(3, 1, 7)
      ordenados(5, 7, 10)

   Salida::

      False
      True


#. Escribe una función que imprima tres números que le pasemos como
   argumentos, después de ordenarlos.
   Utiliza la función del ejercicio anterior para saber si los números
   están ordenados.

   Pista::

      def ordenar(a, b, c):
          print('Números ordenados:', end=' ')
          if ordenados(a, b, c):
              print(a, b, c)
          elif ordenados(a, c, b):
              print(a, c, b)
          ...

      ordenar(3, 7, 1)
      ordenar(10, 2, 5)
      ordenar(12, 6, 3)

   Salida::

      Números ordenados: 1 3 7
      Números ordenados: 2 5 10
      Números ordenados: 3 6 12


