:Date: 13/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bjt-current:

La fuente de corriente
======================
Este circuito sirve para generar una corriente que se mantendrá constante,
independientemente de la tensión que haya a su salida.
Es un circuito muy utilizado para polarizar otras etapas de transistores,
como el par diferencial, para alimentar diodos led de corriente constante,
enviar información inmune al ruido eléctrico, etc.

.. figure:: electronic/_images/electronic-analog-current-source.png
   :width: 200px
   :align: center
   :alt: Esquema de una fuente de corriente constante basada en dos
         transistores NPN.

   Esquema de una fuente de corriente constante basada en transistores NPN.


.. figure:: electronic/_images/electronic-analog-current-source-symbol.png
   :width: 100px
   :align: center
   :alt: Símbolo de una fuente de corriente constante.

   Símbolo de una fuente de corriente constante.


Funcionamiento y cálculos
-------------------------
La función de cada componente es la siguiente:

* La resistencia R1 polariza la base del transistor Q2, que comienza a
  conducir corriente.

* Al conducir corriente el transistor Q2, la tensión de la resistencia
  R2 comienza a subir, hasta que llega aproximadamente a 0.6 voltios,
  que es el momento en el que comienza a conducir corriente el transistor
  Q1.

* Al conducir corriente el transistor Q1, la corriente de la resistencia
  R1 se escapa por el colector del transistor Q1 y deja de alimentar a
  la base de Q2.

* El resultado final es que se mantiene una tensión prácticamente constante
  en la base de Q1 y, por lo tanto, en la resistencia R2. Esa tensión
  constante se traduce en que circulará una corriente prácticamente
  constante por el emisor de Q2 y, despreciando la corriente de base, por
  el colector de Q2.

  Aplicando la ley de Ohm:

  .. math::

     I_{R2} = \frac{V_{be}}{R_2}

  Siendo:

     I_R2 = Corriente que circula por la resistencia R2 en amperios [A]

     V_be = Tensión entre la base y el emisor del transistor Q1 en voltios [V]

     R_2 = Resistencia R2 en ohmios [Ω]


Simulación
----------
A continuación puede verse la simulación de una fuente de corriente
constante basada en transistores NPN.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-current-source.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja un esquema simplificado de una fuente de corriente constante
   basada en transistores NPN.

   Dibuja al lado el símbolo de la fuente de corriente constante.

#. Dibuja un esquema realista de una fuente de corriente constante
   basada en transistores NPN, que alimenta a una resistencia.

#. ¿Cuál es la función principal de una fuente de corriente?
   ¿Qué aplicaciones tiene?

#. En la simulación de la fuente de corriente constante podemos comprobar
   cómo le afectan los cambios externos.

   Cambia la tensión de alimentación desde 9 voltios hasta 18 voltios en
   pasos de 3 en 3 voltios y anota en una tabla cómo va variando la
   corriente por el colector del transistor con el cambio de tensión
   de alimentación.

#. En la simulación de la fuente de corriente constante podemos comprobar
   cómo le afectan los cambios externos.

   Con una tensión de alimentación de 9 voltios, cambia la resistencia R3
   por los valores 2000Ω, 1000Ω, 100Ω, 10Ω. Anota en una tabla cuánto
   vale la corriente de colector para cada uno de los valores de
   resistencia.

#. Diseña una fuente de corriente constante que funcione con una tensión
   de alimentación de 12 voltios y con una corriente de colector de 10
   miliamperios.

   Para conseguirlo, cambia la tensión de alimentación a 12 voltios
   y calcula la resistencia R2 necesaria con la fórmula:

   .. math::

      R_2 = \frac{V_e}{I_e}

   Sin utilizar decimales para el valor de la resistencia.

#. Diseña en el
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__
   una fuente de corriente negativa constante.
   La forma del circuito será igual que la fuente simulada anterior,
   pero utilizando transistores PNP y conectando el circuito en
   espejo horizontal.
   Es decir, la resistencia R1 irá conectada al negativo de la pila
   y la resistencia R2 irá conectada al positivo de la pila.
