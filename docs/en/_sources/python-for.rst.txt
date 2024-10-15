:Date: 12/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-for:

Sentencia ``for``
=================

La sentencia ``for`` nos permite repetir un bloque de código varias
veces mientras que una variable va cambiando de valor.

Este bloque de código que se repite varias veces se denomina **bucle**.

Ejemplo::

   for num in range(1, 10):
       print(num)

Este ejemplo imprimirá en pantalla todos los números desde el 1
hasta el 9.

La variable del bucle se llama 'num' y va tomando todos los valores
en el rango desde 1 hasta 10 (no incluído).


Ejemplo::

   for nombre in ['Abel', 'Beatriz', 'Conchi', 'Diana', 'Elena', 'Francisco']:
       print('Hola', nombre)

Este ejemplo imprimirá en pantalla un saludo para todos los nombres
que aparecen en la lista, desde 'Abel' hasta 'Elena'.

La variable del bucle se llama 'nombre' y va tomando todos los valores
de la lista de nombres.


Ejercicios
----------

#. Realiza un programa que imprima la tabla del 6::

      6 x 0 = 0
      6 x 1 = 6
      6 x 2 = 12
      6 x 3 = 18
      6 x 4 = 24
      6 x 5 = 30
      6 x 6 = 36
      6 x 7 = 42
      6 x 8 = 48
      6 x 9 = 54
      6 x 10 = 60


   Pista::

      for ... :
          print('6 x', i, '=', 6*i)


#. Escribe un programa que pida un número y que luego sume todos los
   números entre el 1 y el número introducido.

   Ejemplo 1::

      Introduce un número: 5
      La suma de todos los números desde
      el 1 hasta el 5 es igual a 15

   Ejemplo 2::

      Introduce un número: 27
      La suma de todos los números desde
      el 1 hasta el 27 es igual a 378


   Pista::

      num = input('Introduce un número: ')
      num = int(num)

      suma = 0
      for ... :
          suma = suma + i

      print('La suma de todos los números desde')
      print('el 1 hasta el', ... ,'es igual a', ... )


#. Escribe un programa que pida un número y que luego multiplique todos
   los números entre el 1 y el número introducido.
   Esta operación se llama factorial.

   Ejemplo 1::

      Introduce un número: 3
      El factorial de 3 es igual a 6

   Ejemplo 2::

      Introduce un número: 10
      El factorial de 10 es igual a 3628800


   Pista::

      num = input('Introduce un número: ')
      num = int(num)

      ...
      for ... in range( ... ):
         ...

      print('El factorial de', ..., 'es igual a', ...)


#. Escribe un programa que imprima en pantalla todas las edades desde
   el 15 hasta el 20 y, al lado, que imprima si es mayor o menor
   de edad::

      15 años, menor de edad
      16 años, menor de edad
      17 años, menor de edad
      18 años, mayor de edad
      19 años, mayor de edad
      20 años, mayor de edad


#. Escribe un programa que pida un número y luego imprima si es divisible
   por algún número entre 2 y 20.

   Ejemplo 1::

      Introduce un número: 60

      60 es divisible por 2
      60 es divisible por 3
      60 es divisible por 4
      60 es divisible por 5
      60 es divisible por 6
      60 es divisible por 10
      60 es divisible por 12
      60 es divisible por 15
      60 es divisible por 20

   Ejemplo 2::

      Introduce un número: 28

      28 es divisible por 2
      28 es divisible por 4
      28 es divisible por 7
      28 es divisible por 14

   Ten en cuenta que un número 'num' es divisible por 5 si su resto al
   dividir por 5 es igual a cero::

      if (num % 5 == 0):
          print(num, ' es divisible por ', 5)


#. Escribe un programa que imprima todos los números del 1 al 100.
   Los números divisibles por 3 deben sustituirse por la palabra 'choco'.
   Los números divisibles por 5 deben sustituirse por la palabra 'late'.
   Los números divisibles por 3 y por 5 deben sustituirse por la palabra
   'chocolate'::

      1
      2
      choco
      4
      late
      choco
      7
      8
      choco
      late
      11
      choco
      13
      14
      chocolate
      16
      .
      .
      .

   Ten en cuenta que un número 'num' es divisible por 3 si su resto al
   dividir por 3 es igual a cero::

      if (num % 3 == 0):
          print(num, ' es divisible por 3')

