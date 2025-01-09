:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _electronic-codigo-colores:

Código de colores de las resistencias
=====================================

.. figure:: electronic/_images/electronic-resistencia-02.png
   :width: 320px
   :align: center
   :alt: Código de colores de las resistencias.

El código de colores de las resistencias sirve para expresar
el valor de una resistencia en ohmios (Ω) y su tolerancia, a través de
varias bandas de colores impresas en el cuerpo de la resistencia,
que se pueden ver desde cualquier posición.

La notación de la resistencia es semejante a la notación científica,
con una mantisa de dos cifras y un exponente de una cifra.

El documento siguiente tiene ejercicios para traducir todos los
códigos de colores de las resistencias de la serie comercial E6.
La mitad de los ejercicios consiste en traducir bandas de colores
a valor de ohmios y la otra mitad consiste en traducir el valor
de la resistencia en ohmios a bandas de colores.
En todos los ejercicios se ha utilizado la tolerancia del 5% por ser
la más habitual.

| :download:`Problemas de código de colores y ley de Ohm.
  Formato PDF. <electronic/resistencias-colores/electronic-codigo-colores.pdf>`
| :download:`Problemas de código de colores y ley de Ohm.
  Formato Word. <electronic/resistencias-colores/electronic-codigo-colores.doc>`


Tabla del código de colores
---------------------------

.. figure:: electronic/_images/electronic-codigo-colores-resistencias.png
   :width: 480px
   :align: center
   :alt: Tabla con el código de colores de las resistencias.

Prefijos del sistema internacional:

  * µ = micro = 0.000 001
  * m = mili = 0.001
  * k = kilo = 1 000
  * M = Mega = 1 000 000


Traducir colores a valor numérico
---------------------------------

Para traducir código de colores a valor numérico seguiremos los siguientes
pasos:

1. Colocar la resistencia en la posición correcta de manera que la
   banda de color de tolerancia quede a la derecha.

   La mayoría de las veces la tolerancia de la resistencia es de un 5%
   y la banda es de color oro, fácilmente distinguible.

   La resistencia quedaría con las bandas

   Amarillo  Violeta  Naranja Oro

2. Traducir las dos primeras bandas de color a números.
   En el caso de la resistencia de ejemplo los colores
   son amarillo y violeta.

   Amarillo = 4

   Violeta = 7

   De manera que el primer número es 47

3. Traducir la tercera banda de color a un multiplicador

   Banda naranja = 3 ceros = multiplicador x 1000

4. Multiplicar el primer número por el multiplicador para calcular el
   valor final.

   47 x 1000 = 47000 Ohmios

5. Utilizar los sufijos para simplificar los valores muy grandes.

   47000 Ohmios = 47k Ohmios


Casos especiales
----------------

1. Cuando la segunda banda es un cero, hay que tener en cuenta que se añade
   a los ceros del multiplicador.

   Por ejemplo, una resistencia con los siguientes colores.

   Marrón Negro Rojo Oro

   Se traduce como 10 con multiplicador 100 que resulta ser 1000 Ohmios
   o 1k Ohmio.


2. Cuando el multiplicador es de color Oro, en vez de multiplicar se debe
   dividir por 10.

   Por ejemplo, una resistencia con los siguientes colores.

   Verde Azul Oro Oro

   Se traduce como 56 con multiplicador 0,1 que resulta ser 5,6 Ohmios.


Traducir valor numérico a colores
---------------------------------

Para traducir un valor de resistencia a bandas de colores seguiremos
los siguientes pasos.

1. Traducir el valor de la resistencia a ohmios sin ningún prefijo.
   Por ejemplo, para una resistencia de 3,9k Ohmios

   3,9k Ohmios = 3900 Ohmios

2. Hallar las dos primeras bandas de color a partir del valor de la
   resistencia. Por ejemplo, para una resistencia de 3900 Ohmios

   3 = Naranja

   9 = Blanco

3. Calcular el multiplicador para añadir los ceros que faltan.
   En el caso de la resistencia de 3900 Ohmios.

   Multiplicador = 100 = color Rojo (2 ceros)

4. Añadir la banda de tolerancia de color Oro.

   Naranja Blanco Rojo Oro


Casos especiales
----------------

1. Cuando la segunda banda es un cero, hay que tener en cuenta que se resta
   de los ceros del multiplicador.

   Por ejemplo, una resistencia con el valor de 100 Ohmios.

   Marrón Negro  = 10

   Necesita un multiplicador x 10 de color Marrón

   El resultado es

   Marrón Negro Marrón Oro


Cuestionarios
-------------
Cuestionarios de tipo test para calcular el valor de las resistencias
a partir del código de colores o para calcular los colores a partir
del valor de la resistencia.

  * `Cuestionario. Código de colores 1. Colores a valor. <../test/es-electric-color-code-1.html>`__
  * `Cuestionario. Código de colores 2. Valor a colores. <../test/es-electric-color-code-2.html>`__

