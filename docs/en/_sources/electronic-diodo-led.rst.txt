:Date: 02/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-diodo-led:

El diodo led
============
El `diodo led <https://es.wikipedia.org/wiki/Led>`__
es un diodo emisor de luz (Light Emitting Diode).
Existen versiones de varios colores, desde los led infrarrojos de los
mandos a distancia hasta los led ultravioletas de las lámparas de curado
de resina plástica que utilizan los dentistas.

.. figure:: electronic/_images/electronic-analog-led-symbol.png
   :width: 180px
   :align: center
   :alt: Símbolo del diodo led.

   Símbolo del diodo led.

.. figure:: electronic/_images/electronic-led-traffic-light.jpg
   :width: 160px
   :align: center
   :alt: Semáforo basado en ledes de colores.

   Semáforo basado en ledes de colores.

En todas partes podemos ver ledes de colores rojo, verde o azul haciendo
la función de pilotos en todo tipo de aparatos electrónicos o en semáforos.

Los ledes blancos se han hecho cada vez más eficientes, sustituyendo
hace años a las lámparas tradicionales de filamento incandescente.

Los ledes se basan en una tecnología que todavía hoy en día está
progresando, por ejemplo, en las pantallas
`OLED <https://es.wikipedia.org/wiki/Diodo_org%C3%A1nico_de_emisi%C3%B3n_de_luz>`__
de los televisores y teléfonos inteligentes de última generación.


Polarización del led
--------------------
Normalmente los ledes tienen una tensión fija de funcionamiento que no se
puede sobrepasar y que es menor que la tensión de alimentación.
Para evitar que el led se queme, debemos insertar una resistencia en serie
que limitará su corriente de funcionamiento.

En la siguiente simulación podemos ver un esquema de una linterna led
basada en tres pilas en serie de 1.5 voltios y en un led blanco de 3
voltios de tensión de trabajo con una corriente de 50 miliamperios.
La resistencia de polarización es de 30 ohmios.

.. figure:: electronic/_images/electronic-pcb-luces-led-08t.jpg
   :width: 180px
   :align: center
   :alt: Led blanco de 5mm.

   Led blanco cilíndrico de 5 milímetros de diámetro.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=diode-led-white.txt"></iframe>
   </div>


Cálculo de la resistencia de polarización
-----------------------------------------
Para calcular la resistencia necesaria que polarice el led correctamente
hay que utilizar la siguiente fórmula:

.. math::

   R = \cfrac{V_{cc} - V_{led}}{I_{led}}


Donde las variables son:

      R = Resistencia de polarización del led en ohmios [Ω].

      V_cc = Tensión de alimentación en voltios [V].

      V_led = Tensión de trabajo del diodo led en voltios [V].

      I_led = Corriente de trabajo del diodo led en amperios [A].


Ejemplo 1:
   Necesitamos calcular la resistencia de polarización de led verde
   de un teclado de ordenador. Su tensión de trabajo es de 2.2 Voltios
   su corriente de trabajo es de 10 miliamperios y la tensión de
   alimentación es de 5 voltios.

   Aplicando la fórmula:

   .. math::

      R = \cfrac{V_{cc} - V_{led}}{I_{led}}

   .. math::

      R = \cfrac{5 - 2.2}{0.010} = 280 \Omega


Ejemplo 2:
   Necesitamos calcular la resistencia de polarización del led blanco
   que ilumina una pantalla de teléfono inteligente.
   Su tensión de trabajo es de 3 voltios, su corriente de trabajo es de
   150 miliamperios y la tensión de alimentación es de 3.6 voltios.

   Aplicando la fórmula:

   .. math::

      R = \cfrac{V_{cc} - V_{led}}{I_{led}}

   .. math::

      R = \cfrac{3.6 - 3.0}{0.150} = 4 \Omega


Ejercicios
----------

#. Dibuja el esquema eléctrico de una linterna con diodo led.
   Utiliza el símbolo que aparece al comienzo de la unidad, con dos
   flechas que indican la salida de luz del diodo.


#. Calcula la resistencia de polarización del led rojo de un ratón
   sabiendo que la tensión de trabajo es de 1.8 voltios,
   la corriente de trabajo es de 16 miliamperios y
   la tensión de alimentación es de 5 voltios.

   Comprueba con el
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__
   que el cálculo es correcto.

   No olvides **cambiar la tensión de funcionamiento del led**,
   editando el led... Create New Simple Model...
   Forward Voltage 1.8 ... Current At Above Voltage (A) 0.016 ... OK.


#. Calcula la resistencia de polarización de un piloto de automóvil
   compuesto por dos ledes en serie blancos que tienen una tensión de
   trabajo de 3 voltios cada uno y una corriente de trabajo de
   20 miliamperios. La tensión de alimentación es de 12 voltios.

   Comprueba con el
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__
   que el cálculo es correcto.

   No olvides **cambiar la tensión de funcionamiento de los ledes**,
   editando cada led... Create New Simple Model...
   Forward Voltage 3.0 ... Current At Above Voltage (A) 0.020 ... OK.


Ampliación
----------
#. Busca información sobre la multiplexación de ledes en ánodo común
   y en cátodo común, muy utilizada en displays de 7 segmentos.

#. Aprende qué es la conexión de ledes con la técnica de
   `charlieplexing
   <http://electrocirc.blogspot.com/2012/05/tecnica-charlieplexing-para-controlar.html>`__
   para encender múltiples ledes con pocas líneas de control.
