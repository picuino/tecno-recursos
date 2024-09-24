:Date: 09/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-input:

La función :py:func:`input`
===========================

.. py:function:: input(prompt)

   La función `input(prompt)
   <https://docs.python.org/es/3/library/functions.html#input>`__
   imprime en pantalla el mensaje 'prompt' y devuelve una línea de
   texto escrita por el usuario con el teclado.

   Esta función se puede utilizar para detener la marcha del programa
   hasta que se pulse la tecla 'Enter' o la tecla 'Return'.

   Ejemplos::

      >>> nombre = input('Escribe tu nombre: '); print('Hola', nombre)
          Escribe tu nombre: Montse
          Hola Montse
      >>> input('Pulsa Enter para continuar')
          Pulsa Enter para continuar
          ''
      >>> num = input('Escribe un número: ')
          Escribe un número: 45
      >>> num
          '45'
      >>> int(num)
          45
      >>> float(num)
          45.0

   Observa cómo el número introducido es una cadena de texto,
   por lo que no podemos realizar cálculos con él.
   Para convertir el texto en un número hay que utilizar alguna
   de las siguientes funciones:

   ``int('')`` convierte una cadena de texto en un número entero
   (sin decimales)

   ``float('')`` convierte una cadena de texto en un número en coma flotante.


Ejercicios
----------

#. Escribe un programa que pida dos números por pantalla
   y luego imprima la suma de los dos.

#. Escribe un programa que pida tu nombre por pantalla
   y luego imprima un saludo personalizado con tu nombre.

#. Escribe un programa que pida dos números por pantalla
   y luego imprima el Máximo Común Divisor de los dos números.

   Pista::

      import math

      # Greatest Common Divisor
      # Máximo Común Divisor de dos números a y b
      math.gcd(a, b)

#. Escribe un programa que pida dos números por pantalla
   y luego imprima el Mínimo Común Múltiplo de los dos números.

   Pista::

      import math

      # Lowest Common Multiple
      # Mínimo Común Múltiplo de dos números a y b
      math.lcm(a, b)


