:Date: 12/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bjt-diferencial:

El par diferencial
==================
El `par diferencial
<https://es.wikipedia.org/wiki/Amplificador_diferencial#Tecnolog%C3%ADa>`__
está compuesto por dos transistores con ambos emisores conectados a una
fuente de corriente.

Cuando la tensión en las bases es la misma, la corriente por los colectores
se mantiene igual en ambos transistores y, por lo tanto, no amplifica la
señal.

Cuando la tensión en la base de un transistor es mayor que en la base del
otro transistor la corriente se desvía hacia el transistor con mayor
tensión en la base y esta señal 'diferencial' se amplifica en la salida.

Por lo tanto este amplificador solo amplifica las diferencias entre dos
tensiones de entrada y no amplifica (rechaza) los cambios que son comunes
a las dos tensiones de entrada.

Este amplificador (el par diferencial) se utiliza en la entrada de los muy
populares amplificadores operacionales, que se verán más adelante.

.. figure:: electronic/_images/electronic-analog-diferencial.png
   :width: 300px
   :align: center
   :alt: Esquema de dos transistores NPN en montaje diferencial.

   Esquema de dos transistores NPN en montaje diferencial.

El símbolo conectado debajo de los emisores de los transistores es
un generador de corriente constante.


Simulación
----------
A continuación puede verse la simulación de un par diferencial
con dos transistores NPN.
La señal de entrada diferencial tiene 25 milivoltios de amplitud de pico
y la señal de salida tiene 1 voltio de amplitud de pico.
Esto significa que la etapa tiene una ganancia de tensión a la salida
de 40 veces la tensión de entrada.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-differential.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja un esquema simplificado de dos transistores NPN trabajando en
   configuración de par diferencial.

#. Dibuja un esquema realista de dos transistores NPN trabajando en
   configuración de par diferencial.

#. ¿Cuál es el objetivo principal que tiene un par diferencial?
   ¿En qué dispositivos populares se utiliza el par diferencial?

#. Modifica en la simulación los dos generadores de tensión de 1 voltio
   para que entreguen 2 voltios. ¿Cómo cambia la salida?

   Si aumentamos la tensión de los dos generadores a 3 voltios 
   ¿Cómo cambia la salida?

   ¿Qué significa este funcionamiento?

#. Realiza en el
   `simulador de circuitos </circuits/?startCircuit=empty.txt>`__
   una simulación de un par diferencial con transistores
   PNP. El esquema será como el de la siguiente figura:

   .. figure:: electronic/_images/electronic-analog-diferencial-pnp.png
      :width: 480px
      :align: center
      :alt: Esquema de dos transistores PNP en montaje diferencial.

#. ¿Qué diferencias de funcionamiento tiene el circuito anterior
   respecto al primer circuito simulado?

   ¿Qué rango de tensión común acepta el anterior circuito en su entrada?
