:Date: 19/08/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-recursividad:

Recursividad
============
La recursividad es una técnica de programación que consiste en que una
función se llame a sí misma para resolver un problema.
Esta técnica permite dividir un problema original en subproblemas
semejantes pero más sencillos de solucionar.

Una función recursiva se compone de dos partes:

   1. Solución del caso más sencillo o caso base.

      Si la función tiene como argumento un problema sencillo de resolver,
      se resuelve y se devuelve la solución.
      En este caso la función no se llama a sí misma.

   2. Solución del caso más elaborado.

      Si la función tiene como argumento un problema difícil de
      resolver, el problema se divide en problemas más pequeños y
      sencillos y se llama a sí misma para resolverlos.

Ejemplo de función recursiva para calcular el factorial de un número.
El factorial de un número es la multiplicación de todos los números
desde el 1 hasta el número deseado. Por ejemplo, el factorial de
6 es la multiplicación de 1 x 2 x 3 x 4 x 5 x 6.

El siguiente programa calcula el factorial de un número de forma
recursiva::

   def factorial(n):
       if n <= 1:
           # Caso más sencillo
           return 1
       else:
           # Simplifica el problema y se llama a sí misma
           return n * factorial(n - 1)

   print(factorial(6))  # Salida: 720


El siguiente programa devuelve una cadena de texto invertida
de forma recursiva::

   def invierte(texto):
       if len(texto) == 1:
           # Caso más sencillo
           return texto
       else:
           # Simplifica el problema y se llama a sí misma
           return texto[-1] + invierte(texto[:-1])

   print(invierte('Hola, mundo'))

Salida::

   odnum ,aloH


A la hora de programar una función recursiva es importante definir los
casos más sencillos o casos base y asegurarse de que cada llamada
recursiva se acerque al caso base para evitar bucles infinitos.

Algunas estructuras de datos, como las listas enlazadas, los árboles,
o los directorios del disco duro, se pueden definir y manipular de forma
recursiva de manera más simple.


Ejercicios
----------

#. Define una función recursiva que convierta una lista de letras en
   una cadena de texto única::

      def texto(lista):
         ...
         ...

      print(texto(['H', 'o', 'l', 'a', ',', 'm', 'u', 'n', 'd', 'o'))

   Salida::

      Hola, mundo


#. Define una función recursiva que cuente hacia atrás desde el número
   que se le pase como argumento.

   Pista::

      def cuenta_atras(n):
          if n == 0:
              ...
          else:
              ...
              ...

      cuenta_atras(10)

   Salida::

      10
      9
      8
      7
      6
      5
      4
      3
      2
      1
      ¡Despegue!


#. Define una función recursiva llamada replicar que reciba dos argumentos
   ``veces`` y ``numero``. La función debe devolver una lista en la que
   aparezca ``numero`` tantas veces como diga la variable ``veces``.

   Pista::

      def replicar(numero, veces):
          if veces <= 0:
              return []
          else:
              lista = ...
              lista = lista + [numero]
              return ...

      replicar(6, 10)

   Salida::

      [6, 6, 6, 6, 6, 6, 6, 6, 6, 6]


#. Define una función recursiva que invierta el orden de los dígitos
   de un número sin convertirlo en una cadena.

   Para obtener el último dígito de un número se puede calcular el módulo
   10 del número. Por ejemplo, 1234 % 10 será igual a 4, el último dígito
   del número 1234.

   Pista::

      def invierte(n, resultado=0):
          if n == 0:
              return resultado
          else:
              ultimo_digito = ...
              resultado = resultado * 10 + ultimo_digito
              return invierte( ... )

      print(invierte(12345)) # Salida: 54321




