:Date: 12/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-if-and-or-not:

Operadores ``and``, ``or``, ``not``
===================================
Estos operadores sirven para hacer condiciones más complejas
en una sentencia ``if``.

Ejemplo para calcular si una persona puede subir a una montaña rusa.
Solo podrá subir si su altura en centímetros es mayor o igual a 150
**y también** debe ser menor o igual a 200::

    altura = input('Escribe tu altura en centímetros: ')
    altura = int(altura)

    if (altura >= 150) and (altura <= 200):
        print('Puedes pasar')
    else:
        print('No puedes pasar')


Ejemplo para calcular si un año es bisiesto::

    year = input('Escribe un año:')
    year = int(year)

    if (year % 4 == 0) and ( (year % 100 != 0) or (year % 400 == 0) ):
        print(year, 'es bisiesto')
    else:
        print(year, 'no es bisiesto')

Aunque los paréntesis no son obligatorios, es recomendable
usarlos para que se pueda entender mejor el código.


Ejercicios
----------

#. Escribe un programa que pida el nombre del mes en el que estamos
   y compruebe si estamos o no en primavera.

   Para simplificar diremos que abril, mayo y junio son los meses de
   primavera.

   Pista::

      mes = input('Escribe el nombre de un mes: ')
      if (mes == 'abril') or (mes == 'mayo') or (mes == 'junio'):
         print('...')
      else:
         print('...')


#. El siguiente programa comprueba si un número es par.
   Modifica el programa utilizando el operador ``not`` para que
   compruebe si el número es impar::

       num = input('Escribe un número: ')
       num = int(num)

       if (num % 2 == 0):
           print('El número es par')


#. Escribe un programa que utilice el operador ``and`` para comprobar
   si un nombre tiene una longitud entre 4 y 6 letras.

   La longitud de una cadena de texto se mide con la función len()::

       >>> len('Ana')
           3
       >>> len('Gustavo')
           7

   Pista::

      nombre = input('Escribe un nombre: ')
      letras = len(nombre)

      if ... :
          print('El nombre tiene entre 4 y 6 letras')


#. Escribe un programa que responda que tienes que conectar el riego
   por goteo siempre que sea de noche (no de día) y que esté el suelo
   seco (no está lloviendo).

   Pista::

      sensor_lluvia = 1
      sensor_de_dia = 0

      if ... :
          print('Conecta el riego por goteo.')
      else:
          print('Desconecta el riego por goteo.')

   Prueba el programa con las cuatro combinaciones posibles en los
   sensores. Solo debe funcionar cuando el sensor de lluvia valga cero
   y el sensor de día valga cero.


#. Escribe un programa que imprima un mensaje cuando un número
   sea positivo y no sea divisible por 3. En caso
   contrario no imprime ningún mensaje.

   Pista::

      num = input('Escribe un número:')
      num = int(num)

      if ... :
         print(num, 'es positivo y no es divisible por 3.')

