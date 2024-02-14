:Date: 17/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-mosfet:

El transistor mosfet
====================
El transistor mosfet es un tipo de transistor que permite el paso de más
o menos corriente eléctrica entre sus terminales Drenador y Fuente,
dependiendo de la tensión en su terminal de Puerta.

.. figure:: electronic/_images/electronic-analog-mosfet-n.png
   :width: 200px
   :align: center
   :alt: Símbolo del transistor mosfet de canal N.

   Símbolo del transistor mosfet de canal N.

Los tres terminales de un transistor mosfet son:
   * **Drenador** (Drain, letra D): terminal por el que entra la corriente.
   * **Fuente** (Source, letra S): terminal por el que sale la corriente.
   * **Puerta** (Gate, letra G): terminal de control por tensión.

Existen dos tipos de mosfet, los de canal Negativo y los de canal Positivo.
Los más frecuentes son los de canal N (Negativo) porque conducen mucho
mejor la electricidad que sus versiones de canal P (Positivo).


Ventajas
--------
El mosfet es un transistor que no necesita un aporte de corriente constante
en su terminal de control para poder funcionar, funciona a una velocidad
mucho mayor que el transistor bipolar y es capaz de conducir grandes
corrientes con caídas de tensión muy bajas entre sus terminales.

Todas estas ventajas de los mosfet han favorecido que poco a poco hayan
sustituido a los transistores bipolares en todo tipo de circuitos
analógicos y digitales.

Los transistores bipolares por su parte tienen una gran resistencia a las
descargas electrostáticas y son baratos, lo que les hace preferibles
todavía en ciertas aplicaciones.


Simulación
----------
En la siguiente simulación se han sustituido dos transistores bipolares
Darlington por un transistor mosfet de canal N con ventaja.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=mosfet-n-lamp.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja un esquema simplificado de un transistor mosfet de canal N, con
   la letra de todos sus terminales. ¿Qué significa cada letra?

#. Dibuja un esquema realista de un transistor mosfet trabajando como
   un interruptor controlado por tensión que enciende y apaga una lámpara.

#. ¿Qué función realiza un transistor mosfet?

#. Enumera tres ventajas de los transistores mosfet respecto a los
   transistores bipolares.

#. En la simulación anterior, mide la tensión entre los terminales de
   drenador y fuente del mosfet cuando la lámpara está encendida.
   ¿Qué tensión tienen?

#. Añade a la simulación anterior un circuito semejante que utilice dos
   transistores Darlington en vez de un mosfet.
   ¿Qué tensión tienen entre colector y emisor cuando la lámpara está
   encendida?

