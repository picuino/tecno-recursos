:Date: 24/12/2022
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-datos-numeros:

Datos numéricos
===============
En Python existen diferentes tipos de datos numéricos que se pueden
utilizar para trabajar con números. Los principales tipos de datos
numéricos son los enteros (int), los números de punto flotante
(float) y los números complejos (complex) que, por ahora, no vamos a
tratar.

Enteros
   Los enteros son números enteros, positivos o negativos sin
   decimales.
   Por ejemplo: 1, -2 y 100

Punto flotante
   Los números de punto flotante son números con decimales.
   Por ejemplo: 1.5, 3.14 y -0.75

.. note::
   En Python los decimales se separan con un punto.
   En español no es la forma correcta de separar los decimales,
   puesto que se utiliza la coma, pero los decimales en Python
   no se traducen del estándar anglosajón al estándar español porque
   esto daría lugar a errores en el código.

En Python es fácil trabajar con estos tipos de datos numéricos utilizando
operadores matemáticos comunes como la suma, la resta, la multiplicación,
la división o la potencia.
También es posible realizar operaciones más avanzadas como el cálculo
del módulo, redondeo, truncamiento, funciones trigonométricas, etc.
utilizando funciones especiales.


Operaciones con números enteros
-------------------------------
Los números enteros son números sin decimales. Las operaciones básicas
que se pueden aplicar a los números enteros son las siguientes:

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Símbolo
     - Operación
   * - ``+``
     - Suma
   * - ``-``
     - Resta
   * - ``*``
     - Multiplicación
   * - ``//``
     - División entera (sin calcular decimales)
   * - ``%``
     - Resto de una división
   * - ``**``
     - Potencia (elevado a un número)

Copia los siguientes ejemplos en el entorno IDLE para comprobar que
funcionan correctamente:

.. code:: python

   >>> 2 + 6
       8
   >>> 5 - 9
       -4
   >>> 11 // 3
       3
   >>> 11 % 3
       2
   >>> 5 ** 2
       25

Los números enteros en Python pueden ser muy grandes y tener muchísimas
cifras de precisión:

.. code:: python

   >>> 123 ** 456
       992500687720988567008314620574696326372959408198869005198162
       988813828671047493990779211286614261446380554242369362718724
       928003527416499021181438196726015699981001207904967595176364
       654458956257416098662099005001984071532446047789680169630280
       503102614176159144687299182406854878786176459769390634643579
       861657117309763994785076492286863414669671679101266533421349
       427448514638999274870924866109771461127635671016726459531321
       964814393398730170881404146612711985003332557130961423351514
       146306516830655187840812036784877030028020820912366035190262
       568806244996817813872275740354848312715156831237421490955692
       604636096559777009388445806119312464951662086955403136981400
       116380273225662526897808381363518287953142721621112222311709
       017156123557013475523715300136938553798348656670600146433024
       591004297836539669137830022907842834556282833554705299329560
       514844771293338811599302127586876027950885792304316616960102
       32187390436601614145603241902386663442520160735566561


Operaciones con números en coma flotante
----------------------------------------
Los números en coma flotante son números con decimales.

Los números en coma flotante pierden la gran precisión que tienen los
números enteros y almacenan solo 16 cifras de precisión.
El tamaño máximo de un número de coma flotante también es más reducido
(10^307) que el tamaño máximo de un número entero (10^4300).

El número entero 2 en coma flotante se verá como 2.0, con un cero añadido
después del punto decimal.

Las operaciones básicas que se pueden aplicar a los números en coma
flotante son las siguientes:

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Símbolo
     - Operación
   * - ``+``
     - Suma
   * - ``-``
     - Resta
   * - ``*``
     - Multiplicación
   * - ``/``
     - División con decimales
   * - ``%``
     - Resto de una división
   * - ``**``
     - Potencia (elevado a un número)
   * - ``round(number, digits)``
     - Redondea un número en coma flotante a ``digits`` decimales.

Copia los siguientes ejemplos en el entorno IDLE para comprobar que
funcionan correctamente:

.. code:: python

   >>> 2.0 + 6.0
       8.0
   >>> 5.0 - 9.0
       -4.0
   >>> 11 / 3
       3.6666666666666665
   >>> 11.0 % 3.5
       0.5
   >>> 5.0 ** 3.2
       172.4662076826519
   >>> round(3.1415926, 4)
       3.1416


Errores decimales en coma flotante
----------------------------------
Los números en coma flotante se almacenan dentro del ordenador como
números binarios (compuestos por ceros y unos) y no como números decimales.
La representación de estos números en la pantalla se realiza convirtiendo
los números binarios en números en formato decimal.
Esto hace que se produzcan errores a la hora de almacenar y de realizar
cálculos con decimales. Un ejemplo práctico es la siguiente suma:

.. code:: python

   >>> 0.1
       0.1
   >>> 0.2
       0.2
   >>> 0.1 + 0.2
       0.30000000000000004

Los números decimales se almacenan con un pequeño error que no es visible
en la pantalla. Sin embargo la suma de los dos números decimales da como
resultado un número con un pequeño error que sí es visible en el decimal
número 17.

Estos errores de redondeo se producen solo con la parte decimal de los
números en coma flotante y no se producen con los números enteros, aunque
los almacenemos en formato de coma flotante:

.. code:: python

   >>> 1.0 + 2.0
       3.0


Conversión de tipos
-------------------
Hay varios casos en los que se pueden convertir datos de
números enteros a coma flotante o viceversa.

División de dos números enteros
   La operación división con decimales ``/`` aplicada a números enteros
   puede dar como resultado un número con decimales, que se almacenará
   como un número en coma flotante.

   .. code:: python

      >>> 5 / 3
          1.6666666666666667

Operaciones mixtas entre enteros y flotantes
   Una operación cualquiera entre un número entero y un número en coma
   flotante dará como resultado un número en coma flotante.

   .. code:: python

      >>> 5 * 2.0
          10.0
      >>> 5 + 2.0
          7.0
      >>>

Forzar la conversión de tipos
   Se puede forzar que un número se convierta de un tipo a otro tipo
   con las siguientes funciones:

   * ``int(n)`` Convierte n en un número entero eliminando la parte decimal.
   * ``float(n)`` Convierte n en un número en coma flotante.

   Ejemplos de conversiones (también llamadas cast):

   .. code:: python

      >>> int(5.6)
          5
      >>> float(8)
          8.0


Otras operaciones matemáticas
-----------------------------
Para realizar más operaciones matemáticas con números enteros o con
números en coma flotante, es necesario importar la librería
`math <https://docs.python.org/es/3/library/math.html>`__
que da acceso a multitud de operaciones matemáticas avanzadas.

Antes de utilizar la librería 'math' es necesario importarla dentro
de nuestro programa.
La palabra clave ``import`` se utiliza para importar cualquier librería
de Python, que dará acceso a muchas funciones extras.

Este es un ejemplo:

   .. code:: python

      >>> import math
      >>> math.gcd(24, 18)
          6

En este ejemplo se ha utilizado la función ``math.gcd()`` que devuelve
el máximo común divisor (greatest common divisor) de varios números.

Se pueden ver todas las funciones de la librería ``math`` en la
`documentación oficial del lenguaje Python
<https://docs.python.org/es/3/library/math.html>`__.


Ejercicios
----------

#. Calcula la suma de las siguientes distancias: 100m, 15m, 50m, 80m

#. Calcula el cuadrado de 55 sabiendo que el cuadrado de
   un número es equivalente a elevar ese número a 2.

   El resultado debe dar 3025

#. Calcula la media de estas notas:  6, 7, 6, 8

   Se deben sumar todos los números y dividir el resultado entre cuatro.
   Utiliza paréntesis para que la operación funcione bien.
   (6 + 7 + 6 + 8) / 4

   El resultado debe dar 6.75

#. Redondea el resultado anterior a un solo decimal.

   El resultado debe dar 6.8

#. Calcula el resto de dividir 53 entre 7.

   El resultado debe dar 4

#. Calcula el siguiente número a 80 que dividido entre 7 da como resto
   cero.

   Debes utilizar el operador resto de una división ``% 7`` con cada
   uno de los números  80, 81, 82, 83, etc. hasta que el resto valga cero.
