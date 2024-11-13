:Date: 06/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bjt:

El transistor
=============
El transistor es un dispositivo electrónico de tres terminales que permite
amplificar la corriente eléctrica.
Tiene múltiples aplicaciones que van desde fabricar amplificadores de
audio, osciladores de radio, reguladores de tensión, controladores
para motores eléctricos, fuentes de alimentación, circuitos digitales,
microprocesadores, memorias, etc.
El transistor forma parte de prácticamente todos los circuitos
electrónicos.

El transistor bipolar
---------------------
Es un tipo concreto de transistor basado en 3 zonas
semiconductoras dopadas alternativamente como positivas y negativas.
De ahí que existan dos transistores diferentes, un denominado NPN y
otro denominado PNP, según el dopaje positivo o negativo de las tres
zonas.

Los símbolos de los dos transistores bipolares son los siguientes:

.. figure:: electronic/_images/electronic-analog-bjt-npn.png
   :width: 180px
   :align: center
   :alt: Símbolo del diodo semiconductor.

   Símbolo del transistor bipolar NPN.

.. figure:: electronic/_images/electronic-analog-bjt-pnp.png
   :width: 180px
   :align: center
   :alt: Símbolo del diodo semiconductor.

   Símbolo del transistor bipolar PNP.

El funcionamiento de ambos tipos de transistores es muy semejante con
la diferencia de que el transistor PNP trabaja con corrientes negativas
mientras que el transistor NPN trabaja con corrientes positivas.

En la práctica el transistor NPN es más utilizado porque es más eficiente
a la hora de conducir la corriente eléctrica. Por esa razón se estudiará
más en profundidad. El transistor PNP se verá más adelante en
configuraciones que utilizan los dos tipos de transistores, como la salida
analógica en push-pull o la salida digital en totem-pole.


El transistor como amplificador
-------------------------------
En el siguiente circuito podemos experimentar el funcionamiento de
un amplificador típico basado en transistor.

La **unión base-emisor** del transistor se comporta como un diodo,
por lo que necesita una tensión de 0.65 voltios para poder conducir
corriente.

En la barra lateral derecha hay una barra deslizante que permite cambiar
el valor de la resistencia de polarización de base. Esta resistencia
permite el paso de una pequeña corriente. El transistor amplifica la
corriente que llega por la base y deja pasar desde el colector hasta el
emisor una corriente mucho mayor, multiplicando la corriente de base
por la ganancia.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-simple.txt"></iframe>
   </div>


Ganancia del transistor
-----------------------
La corriente de colector en un transistor típico es de 50 a 300 veces
mayor que la corriente de base. Esta relación entre la corriente de
colector y la corriente de base se denomina **ganancia** del
transistor, también denominada como β o parámetro **hfe**.

La fórmula de la ganancia del transistor por lo tanto será:

.. math::

   \beta = hfe = \cfrac{I_{colector}}{I_{base}}


Donde las variables son:

   β = hfe = ganancia del transistor (número adimensional)

   I_colector = corriente del colector en amperios [A]

   I_base = corriente de base en amperios [A]

.. Note::
   Los transistores de potencia son transistores capaces de conducir
   corrientes altas, mayores de un amperio. Estos transistores pueden
   tener una ganancia menor de 50 cuando trabajan con grandes
   corrientes.

   Lo mismo ocurre con los transistores de alta frecuencia, que a
   frecuencias de trabajo cercanas a su límite tienen una ganancia
   mucho menor que a bajas frecuencias.


Ejercicios
----------

#. Dibuja el símbolo del transistor NPN y del transistor PNP
   y añade los nombres de cada uno de sus terminales.

#. ¿Qué función tiene un transistor bipolar?

#. Dibuja un esquema eléctrico de un transistor bipolar funcionando.
   Añade las corrientes y las tensiones que podemos encontrar en cada uno
   de sus tres terminales.

#. Comprueba que la ganancia del transistor simulado vale 100 calculando
   la relación entre la corriente de colector dividida por la corriente
   de base.

#. Desliza la barra de la derecha llamada ``Resistencia`` y comprueba si
   la ganancia se mantiene para varias posiciones.

#. Cuando la resistencia de base deja pasar mucha corriente, llega un
   momento que el transistor se **satura** y no puede conducir más
   corriente.

   Este es un comportamiento típico de los circuitos digitales, pero se
   intenta evitar en los circuitos analógicos.

   Cambia la resistencia de Base por una de 5k Ohmios.
   ¿Cuál es la ganancia del transistor? 
   ¿Qué tensión hay en el colector cuando el transistor está **saturado**?
