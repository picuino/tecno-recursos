:Date: 13/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-for-continue:

Sentencia ``continue``
======================
La sentencia ``continue`` dentro de un bucle ``for`` salta al comienzo
del bucle y fuerza a continuar con el siguiente elemento del bucle.

Esta sentencia sirve para evitar que se ejecute el código dentro del bucle
for que se encuentra a continuación de la sentencia ``continue``.

Ejemplo que imprime todos los números del 1 al 20, excepto los
múltiplos de 3::

   for num in range(1, 21):  # <----+
      if num % 3 == 0:       #      |
          continue           # -----+
      print(num)


   1
   2
   4
   5
   7
   8
   10
   11
   13
   14
   16
   17
   19
   20


Ejercicios
----------

#. Escribe un programa que imprima todos los números desde el 1 hasta
   el 20, excepto los múltiplos de 5.


#. Escribe un programa que imprima todos los números desde el 1 hasta
   el 10, excepto el 4 y el 7.


#. Escribe un programa que sume todos los números desde el 1 hasta el
   100, excepto los múltiplos de 3. Utiliza la sentencia continue.
   El resultado debe ser 3367.


#. Escribe un programa que cuente la cantidad de números que hay desde el
   1 hasta el 100 si quitamos los múltiplos de 3 y los múltiplos de 7.
   El resultado debe ser 57.

   Pista::

      contador = 0
      for num in range(1, 101):
          ...


#. Escribe un programa que imprima todos los años no bisiestos
   desde 1600 hasta 2400.

   Condición para saber si un año es bisiesto::

      if ( (anio % 4 == 0) and (anio % 100 != 0 or anio % 400 == 0) ):
          # Año bisiesto


#. Escribe un programa que cambie todos los espacios ' ' de una frase
   por el símbolo barra baja '_'.

   Programa que imprime todas las letras de una frase::

      frase = 'Hola, mundo. Me llamo Python y sé como hablar con la a.'
      for letra in frase:
          print(letra, sep='', end='')


#. Escribe un programa que imprima todas las letras de una frase
   cambiando todas las vocales por la letra 'a'.

   Programa que imprime todas las letras de una frase::

      frase = 'Hola, mundo! Me llamo Python y sé como hablar con la a.'
      for letra in frase:
          print(letra, sep='', end='')


   Condición para saber si una letra es una vocal::

      if letra in 'aeiouAEIOUáéíóúÁÉÍÓÚ':

