:Date: 15/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

:orphan:

.. _python-funciones-scope:

Alcance de las variables
========================
Ahora que se han visto las variables y los bloques de programa, tanto
las funciones como los bucles, se puede estudiar el alcance de las
variables.

Las variables externas se pueden utilizar dentro de los bloques pero
no al revés. Las variables internas de un bloque no se pueden
utilizar fuera del bloque.

Veremos algunos ejemplos del alcance de las variables, es decir, dónde
se pueden utilizar y dónde no.


Sentencia ``global``
--------------------
Las variables globales son las que se definen en el cuerpo del programa
no dentro de bucles o de funciones.

Ejemplo de variable global::

   def mensaje():
       print('Número =', numero)

   numero = 10
   mensaje()
   numero = 11
   mensaje()

Salida::

   Número = 10
   Número = 11

En el caso anterior, la variable global 'numero' se puede leer en el
interior de la función 'mensaje()'.

Sin embargo, si intentamos actualizar la variable 'numero' dentro de
la función 'mensaje()' no funcionará porque estamos creando dos variables.
Una variable será la variable **global** 'numero' y otra será la variable
**local** 'numero', que se llaman igual, pero son distintas.

Ejemplo de variable global y variable local del mismo nombre que generan
un error::

   def mensaje():
       print('Número =', numero) # variable local no definida (error)
       numero = 11               # variable local

   numero = 10 # variable global
   mensaje()
   mensaje()

Salida::

   print('Número =', numero)
   UnboundLocalError: cannot access local variable 'numero' where it is
   not associated with a value


Para arreglar el problema tenemos que utilizar la sentencia ``global``
que declara 'numero' como variable global, no local.

Ejemplo de variable global sin error::

   def mensaje():
       global numero
       print('Número =', numero)
       numero = 11

   numero = 10
   mensaje()
   mensaje()

Salida::

   Número = 10
   Número = 11


