:Date: 21/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-operational-adder:

El amplificador sumador
=======================
En este circuito el amplificador operacional invierte y amplifica las
señales de entrada, que pueden ser dos o más señales.

El amplificador inversor tiene realimentación negativa porque la tensión
de salida produce una corriente que llega al terminal de entrada negativo
a través de la resistencia R3.

.. figure:: electronic/_images/electronic-analog-oa-adder.png
   :width: 300px
   :align: center
   :alt: Esquema del amplificador operacional sumador inversor.

   Esquema del amplificador operacional sumador inversor.

Este circuito está basado en el amplificador inversor, con el que guarda
una gran similitud.

Al tener la tensión de la entrada negativa cero voltios en todo momento,
las tensiones de entrada no se afectan entre sí una a la otra.


Cálculo de ganancia
-------------------
La fórmula de la tensión de salida de este amplificador es la siguiente:

.. math::

   V_{out} = - V_{in1} \cdot \cfrac{R_3}{R_1} - V_{in2} \cdot \cfrac{R_3}{R_2}

La ganancia de cada entrada depende de la resistencia de cada una de las
entradas y no tiene por qué ser igual en ambas.

La resistencia de entrada será igual a la resistencia R1 para la entrada 1
e igual a R2 para la entrada 2.

La resistencia de salida será muy baja, idealmente cero, porque la salida
está directamente conectada a la salida del amplificador operacional.


Simulación
----------
En la siguiente simulación podemos ver un amplificador sumador que
sumará dos señales senoidales de diferente frecuencia y amplitud.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=oa-adder.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el esquema simplificado de un amplificador operacional sumador.

#. Escribe la fórmula de la tensión de salida del amplificador operacional
   sumador anterior.

#. ¿Qué tipo de realimentación tiene este circuito?

   ¿Qué les ocurre a las tensiones de entrada con ese tipo de
   realimentación?

   ¿La tensión de entrada V_in1 afecta a la tensión de entrada V_in2?

#. Dibuja tres gráficas que representen la tensiones de entrada y
   la tensión de salida del amplificador inversor simulado.

   ¿Qué tensiones de pico tienen cada una de las tres gráficas
   representadas?
   Puedes parar la simulación y ampliar a pantalla completa para
   medir con más precisión.

#. Calcula las resistencias necesarias para hacer que un amplificador
   operacional sumador tenga una ganancia de tensión igual a -5 en la
   primera entrada y -10 en la segunda entrada.

   Dibuja un esquema realista de este amplificador, con una alimentación
   de +-15 voltios y dos entradas de tensión senoidal de 1 voltio.

#. Con ayuda del
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__
   dibuja el esquema de un amplificador operacional sumador
   basado en un amplificador operacional ideal que amplifique:

      * La señal de un generador de tensión de **onda cuadrada**
        con una tensión de pico de 1 voltio y una frecuencia de 20Hz.
      * La señal de un generador de tensión de **onda triangular**
        con una tensión de pico de 1 voltio y una frecuencia de 40Hz.

   Grafica en el mismo osciloscopio las señales de tensión de los
   generadores y, en otro osciloscopio diferente, grafica la señal
   de salida de tensión del amplificador sumador.


