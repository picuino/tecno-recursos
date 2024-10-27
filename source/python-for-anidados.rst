:Date: 13/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-for-anidados:

Sentencias ``for`` anidadas
===========================

Una estructura de programación se dice que está anidada cuando se
encuentra dentro de otra.

Cada nivel extra con otra instrucción ``for`` habrá que escribir
el código con sangría, es decir, con espacios a la izquierda.

Este es un ejemplo con la instrucción ``for`` anidada en dos niveles
que genera una tabla de multiplicar::

   print('Tabla de multiplicar:')
   print('\t1\t2\t3\t4\t5\t6\t7\t8\t9\t10')

   for i in range(1, 11):
       print(i, end='\t')
       for j in range(1, 11):
          print(i*j, end='\t')
       print()

Resultado::

    Tabla de multiplicar:
        1   2   3   4   5   6   7   8   9   10
    1   1   2   3   4   5   6   7   8   9   10
    2   2   4   6   8   10  12  14  16  18  20
    3   3   6   9   12  15  18  21  24  27  30
    4   4   8   12  16  20  24  28  32  36  40
    5   5   10  15  20  25  30  35  40  45  50
    6   6   12  18  24  30  36  42  48  54  60
    7   7   14  21  28  35  42  49  56  63  70
    8   8   16  24  32  40  48  56  64  72  80
    9   9   18  27  36  45  54  63  72  81  90
    10  10  20  30  40  50  60  70  80  90  100

El carácter '\\t' significa tabulación y sirve para separar dos números
en 8 caracteres.


Ejercicios
----------

#. Escribe un programa que pida un número y te responda si ese número
   es el resultado de multiplicar dos números en el rango del 1 al 10.

   Pista::

      num = input('Escribe un número: ')
      num = int(num)

      for i in range(1, 11):
          for j in range(1, 11):
              if ... :
                  print('El número', num, 'es igual a', i, 'x', j)


#. Escribe un programa que genere un triángulo de asteriscos gracias a
   un bucle anidado.
   En la primera línea debe dibujar un asterisco.
   En la segunda línea debe dibujar dos asteriscos.
   Seguirá así hasta dibujar diez asteriscos en la décima línea

   Pista::

      for i in range(...):
          for j in range(...):
              print('*', end='')
          print()  # Nueva línea

   Salida::

      *
      **
      ***
      ****
      *****
      ******
      *******
      ********
      *********
      **********


#. Modifica el programa anterior para que imprima un triángulo de números
   como se muestra a continuación::

      1
      22
      333
      4444
      55555
      666666
      7777777
      88888888
      999999999


#. Dibuja un triángulo invertido que comience con 10 asteriscos y termine
   con un solo asterisco.

   Salida::

      **********
      *********
      ********
      *******
      ******
      *****
      ****
      ***
      **
      *


#. Escribe un programa que dibuje un ajedrez de asteriscos con un bucle
   anidado que imprima un asterisco cuando la suma de las dos coordenadas
   sea divisible por 2. En caso contrario debe imprimir un espacio.

   El tamaño de la cuadrícula será de 10 filas por 10 columnas.

   Recuerda que al final de cada línea se debe imprimir una nueva línea
   con la instrucción ``print()``.

   Pista::

      for i in range(...):
          for j in range(...):
              if (i + j) % 2 == 0:
                  ...
              else:
                  ...
          ...


   Salida::

      * * * * *
       * * * * *
      * * * * *
       * * * * *
      * * * * *
       * * * * *
      * * * * *
       * * * * *
      * * * * *
       * * * * *


#. Modifica el programa anterior para que dibuje otro patrón
   de puntos. Cada punto aparecerá cuando la suma de sus coordenadas
   sea divisible por 3.

   Salida::

       *  *  *
      *  *  *  *
        *  *  *
       *  *  *
      *  *  *  *
        *  *  *
       *  *  *
      *  *  *  *
        *  *  *
       *  *  *

