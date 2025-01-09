:Date: 31/09/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-diodo-limitador:

El diodo limitador
==================
Los diodos rectificadores también se pueden utilizar para limitar la
corriente o la tensión en los circuitos para prevenir que estos se
quemen.


Diodo de rueda libre
--------------------
Siempre que hacemos conducir corriente por una bobina (motor, relé, etc.)
la **bobina almacena energía** en su interior.
Al desactivar la bobina, la energía almacenada se
transforma en un pico de tensión que intenta mantener la corriente de
la bobina constante. Este pico de tensión puede quemar los componentes
electrónicos del circuito, por lo que se debe colocar en paralelo a la
bobina un diodo denominado '**de rueda libre**' o '**freewheel**' que
conduzca la corriente de la bobina hasta que se reduzca a cero.

En los siguientes circuitos podemos ver los diodos de rueda libre colocados
en paralelo con la bobina de un relé y otro colocado en paralelo con un
motor de corriente continua (tiene una gran bobina en su interior).

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=diode-flyback.txt"></iframe>
   </div>


.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=diode-freewheel.txt"></iframe>
   </div>


Diodo limitador de entrada
--------------------------
Este esquema recorta la tensión de entrada en torno a los 0.65 voltios, la
tensión de umbral de conducción que tienen los diodos rectificadores.

Es un circuito utilizado usualmente para proteger de las altas tensiones
las entradas de los circuitos electrónicos más sensibles, evitando que
una descarga electrostática (un chispazo) pueda quemar el circuito
electrónico.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=diodelimit.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el esquema de una bobina de 1 Henrio en serie con una resistencia
   de 100 ohmios, en serie con un interruptor y con una pila de 5 voltios.

   Coloca correctamente un diodo de protección de rueda libre en paralelo
   a la bobina.

   Utiliza el
   `simulador de circuitos <../circuits/?startCircuit=empty.txt>`__
   para comprobar que el circuito funciona correctamente.

#. Añade en el circuito anterior un osciloscopio con la gráfica de la
   corriente a través de la bobina.

   Dibuja una gráfica de la corriente con el tiempo.
   En el eje X representa el tiempo con marcas cada segundo.
   En el eje Y representa la corriente con marcas cada 10 miliamperios.


#. Modifica el circuito anterior para que el diodo esté en paralelo
   con la bobina y la resistencia. ¿El funcionamiento mejora o empeora?

   .. image:: electronic/_images/electronic-analog-diodo-freewheel2.png
      :width: 312px
      :align: center
      :alt: Diodo de rueda libre en un circuito con bobina.

   Dibuja de nuevo la gráfica de la corriente con el tiempo.

