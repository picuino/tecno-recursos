:Date: 21/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-operational-inverting:

El amplificador inversor
========================
En este circuito el amplificador operacional invierte y amplifica la
señal de entrada.

El amplificador inversor tiene realimentación negativa porque la tensión
de salida produce una corriente que llega al terminal de entrada negativo
a través de la resistencia R2.

.. figure:: electronic/_images/electronic-analog-oa-inverting.png
   :width: 300px
   :align: center
   :alt: Esquema del amplificador operacional inversor.

   Esquema del amplificador operacional inversor.


Cálculo de ganancia
-------------------
La fórmula de la ganancia de este amplificador es la siguiente:

.. math::

   Ganancia = \cfrac{V_{out}}{V_{in}} = - \cfrac{R_2}{R_1}

Para calcular la ganancia de este esquema debemos tener en cuenta que con
realimentación negativa las dos entradas ``-`` y ``+`` tendrán la misma
tensión.
Esto significa que la tensión de la entrada ``-`` será igual a cero, puesto
que la entrada ``+`` está conectada a tierra.

A partir de esta premisa, la corriente de entrada será igual a Vin / R1.
Esa misma corriente será la que circule por R2, puesto que por la entrada
del amplificador operacional no circula corriente. En ese caso la tensión
en R2 será igual a la corriente por la resistencia Vout = R2 · Vin / R1.
Reordenando conseguimos la ecuación anterior de la ganancia.


Resistencia de entrada y de salida
----------------------------------
La resistencia de entrada será igual a la resistencia R1.

La resistencia de salida será muy baja, idealmente cero, porque la salida
está directamente conectada a la salida del amplificador operacional.


Simulación
----------
En la siguiente simulación podemos ver un amplificador inversor de
ganancia 5 que amplifica una pequeña señal senoidal de entrada.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=oa-inverter.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el esquema simplificado de un amplificador operacional inversor.

#. Escribe la fórmula de la ganancia del amplificador operacional
   inversor anterior.

#. ¿Qué tipo de realimentación tiene este circuito?
   ¿Qué les ocurre a las tensiones de entrada con ese tipo de
   realimentación?

#. Dibuja dos gráficas que representen la tensión de entrada y la tensión
   de salida del amplificador inversor simulado.

   ¿Qué tensiones de pico tienen cada una de las dos gráficas
   representadas?
   Puedes parar la simulación y ampliar a pantalla completa para
   medir con más precisión.

#. Calcula las resistencias necesarias para hacer que un amplificador
   operacional inversor tenga una resistencia de entrada de 1000 Ohmios
   y una ganancia de tensión igual a -100.

   Dibuja un esquema realista de este amplificador, con una alimentación
   de +-6 voltios y una entrada de tensión senoidal de 0.1 voltios.

#. Con ayuda del
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__
   dibuja el esquema de un amplificador operacional inversor
   basado en un amplificador operacional real (LM324)
   que amplifique la señal de un generador de tensión de onda cuadrada
   con una tensión de pico de 1 voltio.
   La ganancia de tensión debe valer 2.

   Grafica en el mismo osciloscopio la señal de tensión del generador y
   la señal de tensión de salida del amplificador operacional.

