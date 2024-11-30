:Date: 14/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-funciones:

Definición de funciones
=======================

Las funciones son bloques de código que realizan una tarea determinada
que deseamos ejecutar una o varias veces.
También se utilizan las funciones para agrupar instrucciones con un
nombre descriptivo.

Gracias a las funciones podemos dividir un programa largo en muchos
bloques pequeños. Esto facilita mucho la programación y la lectura del
código por parte de otras personas.

Ejemplo de definición y llamada a una función::

   def mensaje():            # Definición de la función
      print('Hola, mundo.')

   mensaje()                 # Llamada a la función


La definición de la función no hace nada por si sola. Es necesario
**llamar** a la función ``mensaje()`` para que se ejecute el código
que se encuentra dentro de ella.


Parámetros y argumentos
-----------------------
Los **parámetros** son las variables que se declaran entre paréntesis
en la definición de la función.

Los **argumentos** son los valores que utilizamos para llamar a la
función.
Los argumentos permiten personalizar el comportamiento de una
función y pueden ser de diferentes tipos (booleano, números, cadenas
de texto, etc).

Ejemplo de definición de una función con un parámetro (nombre)::

   def saludo(nombre):
      print('Hola', nombre, '¿Qué tal estás?')


Llamada a la función con dos argumentos distintos ('Javier' y 'Sara')::

   saludo('Javier')
   saludo('Sara')

Resultado::

   Hola Javier ¿Qué tal estás?
   Hola Sara ¿Qué tal estás?


Sentencia ``return``
--------------------
La sentencia ``return`` se utiliza para devolver un dato desde la función.

También se puede utilizar para terminar la función en ese punto,
con un comportamiento semejante a la sentencia ``break`` de un bucle.

Ejemplo de definición de una función con ``return``::

   def suma(a, b):
       return a + b

   print(suma(3, 5))
   print(suma(11, 23))

Resultado::

   8
   34


Ejercicios
----------

#. Escribe una función que calcule si un número es par o impar
   e imprima por la pantalla el resultado.

   Escribe también en el programa varias llamadas a la función con
   varios números para comprobar que funciona correctamente.

   Pista::

      def es_par(num):
          if num % 2 == 0:
             print(num, "es ...")
          else:
             print(num, "es ...")


#. Escribe la definición de una función llamada 'mayor(a, b)' a la que le
   pasemos dos números como argumentos y que retorne el mayor de los dos.

   Escribe también en el programa varias llamadas a la función con
   varias parejas de números, para probar que funciona correctamente.

   Pista::

      def mayor(a, b):
          if ... :
             return ...
          else:
             return ...

      print( mayor(5, 9) )
      print( mayor(20, 6) )
      print( mayor(12, 15) )

   Resultado::

      9
      20
      15


#. Escribe la definición de una función que transforme grados celsius a
   grados fahrenheit sabiendo que::

      fahrenheit = celsius * 9.0 / 5 + 32

   Pista::

      def fahrenheit(celsius):
          return ...

      print("-5ºC =", fahrenheit(-5), "ºF")
      print("22ºC =", fahrenheit(22), "ºF")
      print("40ºC =", fahrenheit(40), "ºF")

   Resultado::

      -5ºC = 23.0 ºF
      22ºC = 71.6 ºF
      40ºC = 104.0 ºF


#. Escribe la definición de una función que retorne el factorial de un
   número.

   El factorial es el resultado de multiplicar todos los números desde el
   1 hasta el número deseado.

   Imprime el factorial de 5, 8 y 12.

   Pista::

      def factorial(num):
          resultado = 1
          while ... :
              resultado = ...
              num = num - 1
          return resultado

      print("El factorial de", ..., "es igual a", factorial( ... ))
      print("El factorial de", ..., "es igual a", factorial( ... ))
      print("El factorial de", ..., "es igual a", factorial( ... ))


   Resultado::

      El factorial de 5 es igual a 120
      El factorial de 8 es igual a 40320
      El factorial de 12 es igual a 479001600


#. Escribe la definición de una función que imprima una fila de n
   asteriscos en pantalla.

   Llama a esa función varias veces para imprimir un triángulo de
   asteriscos que comience por 1 asterisco y termine con 10 asteriscos.

   Pista::

      def asteriscos(n):
          for i in range( ... ):
              print('*', end='')
          print()

      for num in range(1, 11):
          asteriscos( ... )


#. Escribe la definición de una función que imprima la tabla de multiplicar
   de un número.

   Utiliza esta función para imprimir la tabla del 3 y la tabla del 5.

   Pista::

      def tabla_mult(n):
          print("Tabla del", ...)
          for i in range(1, 11):
              print( ... ,"x", ... , "=", ... )

      tabla_mult(3)
      tabla_mult(5)


   Resultado::

      Tabla del 3
      3 x 1 = 3
      3 x 2 = 6
      3 x 3 = 9
      3 x 4 = 12
      3 x 5 = 15
      3 x 6 = 18
      3 x 7 = 21
      3 x 8 = 24
      3 x 9 = 27
      3 x 10 = 30

      Tabla del 5
      5 x 1 = 5
      5 x 2 = 10
      5 x 3 = 15
      5 x 4 = 20
      5 x 5 = 25
      5 x 6 = 30
      5 x 7 = 35
      5 x 8 = 40
      5 x 9 = 45
      5 x 10 = 50
