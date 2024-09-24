:Date: 12/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-if-else:

Sentencia ``if`` ``else``
=========================
La sentencia ``if`` ``else`` sirve para ejecutar un bloque de código
si se cumple una condición y otro bloque de código distinto si no se
cumple la condición.

Esta es una sentencia de **control de flujo**, es decir, que controla
el orden en el que se ejecutan las instrucciones del programa.

Ejemplo::

   edad = input('Escribe tu edad: ')
   edad = int(edad)

   if edad >= 18:
       print("Eres mayor de edad")
   else:
       print("Eres menor de edad")

En este ejemplo, si la variable "edad" es mayor o igual a 18,
se imprimirá "Eres mayor de edad". De lo contrario, se imprimirá
"Eres menor de edad".


Sangría de código
-----------------
En Python las instrucciones que pertenecen al bloque ``if`` deben
escribirse con un desplazamiento hacia la derecha llamado sangría.

Esta sangría, por convención, es de 4 espacios. Se puede desplazar el
código otra cantidad diferente de espacios y funcionará, pero es
conveniente acatar esta costumbre porque es lo que hace la mayoría de
programadores de Python.

Todas las instrucciones que estén desplazadas se ejecutarán dependiendo
de si la sentencia ``if`` se cumple. Las órdenes que se encuentren sin
desplazar se ejecutarán siempre::

   condicion = True

   if condicion == True:
       print('Este print() se ejecuta solo si la condición es verdadera')
       print('Este print() también')
   print('Este print() se ejecuta siempre, independientemente del if')
   print('Porque este bloque ya no pertenece al if')


En otros lenguajes de programación también hay que desplazar el código
a la derecha para mejorar la visualización de la estructura del programa,
pero no es obligatorio, ya que existen sentencias o caracteres que definen
con precisión el inicio y el final de cada bloque.

En Python, en cambio, es obligatorio realizar el sangrado del código
para que el programa pueda funcionar sin problemas.

Si el desplazamiento de las líneas de código no es regular, también
se producirá un error::

   if True:
      print('Hola')
       print('mundo')
      ^
      Error en este punto porque no coinciden las sangrías
      de las dos instrucciones.

Más adelante veremos cómo este desplazamiento o sangría se utiliza en
todas las instrucciones de Python que terminan con dos puntos ':' y
que tienen bloques de código subordinados, tales como los bucles,
las funciones, las clases, etc.


Ejercicios
----------

#. Escribe un programa que compruebe si un número es positivo
   o negativo y que imprima en pantalla el resultado.

   Pista::

      num = input('Escribe un número: ')
      num = int(num)

      if num ... :


#. Escribe un programa que compruebe si un número es par o impar.

   Para saber si un número es par (divisible por dos) es necesario
   calcular el resto de la división por dos. Si el resto vale cero
   significa que el número es divisible por dos y es par.

   Pista::

      if (num % 2 == 0):
          print('...')
      else:
          print('...')

#. Escribe un programa que pida dos números y escriba cuál de los
   dos es mayor que el otro.


#. Escribe un programa que compruebe si una condición es verdadera
   o es falsa. Comprueba que el programa funciona tanto si la
   condición es verdadera (True) como si es falsa (False).

   Pista::

      condicion = True

      if condicion:
          print('...')
      else:
          print('...')


#. Escribe un programa que pida una nota y compruebe si la nota está
   aprobada o suspensa.


#. Escribe un programa que pida una contraseña y compruebe si la
   contraseña es igual a la palabra 'secreto'.
   En caso afirmativo debe escribir en pantalla 'contraseña correcta'.
   En caso contrario debe escribir en pantalla 'contraseña incorrecta'.
