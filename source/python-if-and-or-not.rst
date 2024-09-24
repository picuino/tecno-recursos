:Date: 12/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-if-and-or-not:

Operadores ``and``, ``or``, ``not``
===================================
Estos operadores sirven para hacer condiciones más complejas
en una sentencia ``if``.

Ejemplo para calcular si un año es bisiesto::

    year = input('Escribe un año:')
    year = int(year)

    if (year % 4 == 0) and ( (year % 100 != 0) or (year % 400 == 0) ):
        print(year, 'es bisiesto')
    else:
        print(year, 'no es bisiesto')

Aunque los paréntesis no siempre son obligatorios, es recomendable
usarlos para que se pueda entender mejor el código.


Ejercicios
----------

#. Escribe un programa que pida el nombre del mes en el que estamos
   y compruebe si estamos o no en primavera.

   Para simplificar diremos que abril, mayo y junio son los meses de
   primavera.

   Pista::

      if (mes == 'abril') or (mes == 'mayo') or (mes == 'junio'):
         print('...')
      else:


#. Escribe un programa que utilice el operador ``not`` para comprobar
   si un número introducido por el teclado es impar.


#. Escribe un programa que utilice el operador ``and`` para comprobar
   si un nombre tiene una longitud entre 4 y 6 letras.

   La longitud de una cadena de texto se mide con la función len().

   Pista::

      >>> len('Sara')
          4
      >>> len('Santiago')
          8


#. Escribe un programa que responda que tienes que conectar el riego
   por goteo siempre que sea de noche y que no esté lloviendo.

   Pista::

      sensor_lluvia = True
      sensor_de_dia = True

      if ... :
          print('Conecta el riego por goteo.')
      else:
          print('Desconecta el riego por goteo.')

   Prueba el programa con las cuatro combinaciones posibles en los
   sensores. ¿Qué combinaciones hacen que se conecte el riego?


#. Escribe un programa que imprima un mensaje cuando un número
   sea positivo, sea par y no sea divisible por 3. En caso
   contrario no imprime ningún mensaje.

   Pista::

      num = input('Escribe un número:')
      num = int(num)

      if ... :
         print(num, 'es positivo, es par y no es divisible por 3.')

