:Date: 14/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-while:

Sentencia ``while``
===================
La sentencia ``while`` permite ejecutar un bloque de código varias veces
mientras se cumple una condición.

Es un tipo de bucle con condición. Se utiliza cuando no sabemos exactamente
cuántas veces se requiere ejecutar un bloque de código, pero si que sabemos
que condición se tiene que cumplir.

Ejemplo de programa que suma precios mientras que el total sea menor de
1000::

   suma = 0

   while suma < 1000:
       precio = input('Introduce un precio: ')
       suma = suma + int(precio)

   print('La suma de todos los precios es mayor de 1000')


Sentencia ``while True``
------------------------
También se puede utilizar la sentencia ``while`` con una condición siempre
verdadera para hacer un bucle que se ejecute para siempre::

   while True:
       print('Hola, mundo!')


Para poder parar el funcionamiento de este programa hay que presionar las
teclas [Control] + [C].

El programa anterior es poco funcional porque no tiene una condición para
poder detenerse.
Ahora veremos otro ejemplo con la sentencia ``while`` que se detiene
gracias a una sentencia ``break`` después de escribir la palabra 'fin'::

   while True:
       nombre = input('Escribe tu nombre: ')
       if nombre == 'fin':
           break
       print('Hola', nombre)


Esta construcción es equivalente a decir que se ejecute un bloque de
instrucciones **hasta que** se cumpla una condición.


Ejercicios
----------

#. Escribe un programa con la sentencia ``while`` que vaya imprimiendo
   todos los números desde el 0 hasta el 10.

   Pista::

      contador = 0
      while ... :
          ...
          contador = contador + 1


#. Modifica el programa anterior para que imprima todos los números
   desde el 10 hasta el 0.


#. Escribe un programa que sume todos los números enteros desde el 1
   y que se detenga cuando la suma sea mayor o igual a 1000.

   Al final debe escribir desde qué número hasta qué número ha sumado y
   cuánto vale la suma.

   Pista::

      suma = 0
      contador = 1
      while ... :
          ...


#. Escribe un programa que se repita continuamente hasta que se introduzca
   por el teclado la letra 'n' a la pregunta '¿Quieres continuar? (S/n)'.

   Pista::

      while True:
          respuesta = input( ... )


#. Escribe un programa que imprima la `sucesión de Fibonacci
   <https://es.wikipedia.org/wiki/Sucesi%C3%B3n_de_Fibonacci>`__
   hasta el número 1000.

   Pista::

      a = 0
      b = 1
      while ... :
          print(b)
          suma = a + b
          a = b
          b = suma


#. Escribe un programa que juegue con el usuario a adivinar un número.
   Si el número introducido es más alto que el número secreto,
   debe imprimir una pista diciendo 'Demasiado alto'.
   Igualmente debe imprimir una pista 'Demasiado bajo' para los números
   menores que el número secreto.

   Cuando el usuario acierte el número secreto, el programa debe imprimir
   'Acertaste' y detenerse.

   Pista::

      import random
      numero_secreto = random.randint(1, 100)

      while True:
          ...

