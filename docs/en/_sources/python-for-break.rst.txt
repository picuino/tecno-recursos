:Date: 13/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-for-break:

Sentencia ``break``
===================

La sentencia ``break`` dentro de un bucle ``for`` salta fuera del
bucle para continuar con la siguiente instrucción después del bucle.

Esta sentencia 'rompe' la ejecución del bucle ``for`` y la termina
de forma inmediata.

En el siguiente ejemplo un contador desde el número 1 hasta el número 9
se rompe en el número 5::

   for num in range(1, 10):
       print(num)
       if num == 5:
           break
   print('Final')


La salida por pantalla del anterior código será la siguiente::

   1
   2
   3
   4
   5
   Final

En este otro ejemplo, un programa busca el primer número que sea múltiplo
de 5 y múltiplo de 7 entre los primeros 100 números.
El programa deja de buscar cuando encuentra el primer número que cumpla
la condición::

   for num in range(1, 101):
       if (num % 5 == 0) and (num % 7 == 0):
           break
   print(num)

La salida por pantalla del anterior código será la siguiente::

   35

En los bucles ``for`` también se puede utilizar la sentencia ``else``.
El bloque de código dentro de la sentencia ``else`` se ejecutará siempre
que el bucle for termine normalmente y no se ejecutará si el bucle for
termina debido a una sentencia ``break``

Ejemplo::

   for num in range(1, 100):
       if (num % 5 == 0) and (num % 7 == 0):
           print(num, 'es divisible por 5 y por 7')
           break
   else:
       print('No encontrado ningún número divisible por 5 y por 7')

El ejemplo dará como resultado el número 35, pero si reducimos el rango
a ``range(1, 30)`` el resultado nos dirá que no ha encontrado ningún 
número divisible por 5 y por 7.


Ejercicios
----------

#. Escribe un programa que imprima en pantalla una cuenta hacia atrás
   desde el 10 hasta el 1.
   El programa se debe detener al llegar al número 5.

   Pista::

      for num in range(10, 0, -1):
         ...
         ...
         ...


#. Escribe un programa que pida una contraseña un máximo de 4 veces.
   Si se acierta la contraseña debe escribir 'Acceso autorizado'
   y terminar. Si no se acierta la contraseña las 4 veces, debe escribir
   'Acceso no autorizado'.

   La validez de la contraseña y del acceso debe escribirse en una variable
   que se comprobará al final del bucle.

   Pista::

      password = '1234'

      for intento in range(4):
          entrada = input('Introduce la contraseña: ')
          ...
          ...
      else:
          print('Acceso no permitido')


#. Modifica el siguiente programa para que escriba una frase en la
   pantalla hasta llegar a la letra número 30, en la que debe dejar de
   escribir gracias a una sentencia break.

   Utiliza un contador de letras para saber cuándo debe terminar el bucle.

   Pista::

      frase = 'En un lugar de la Mancha, de cuyo nombre no quiero acordarme'
      contador = 0
      for letra in frase:
          print(letra, end='')
          ...
          ...
          ...


#. Escribe un programa que vaya sumando todos los números enteros desde
   el 1 hasta el 100 y que se detenga cuando la suma sea mayor que 1000.
   El programa debe indicar hasta qué número ha sumado y cual es el
   resultado de la suma.

   Pista::

      suma = 0
      maximo = 1000

      for num in range(1, 101):
          suma = suma + num
          ...
          ...
          ...


#. Escribe un programa que busque si un número tiene divisores entre el 2
   y el propio número menos uno.
   En caso de tener algún divisor, escribe en la pantalla que
   no es un número primo. En caso contrario escribe que es un número
   primo.

   Pista::

      num = input('Escribe un número: ')
      num = int(num)

      for divisor in range(2, num):
          if num % divisor == 0:
              ...
              ...
      else:
          print(...)
