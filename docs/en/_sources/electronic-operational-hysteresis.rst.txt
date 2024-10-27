:Date: 18/11/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-operational-hysteresis:

El comparador con histéresis
============================
El circuito comparador con histéresis utiliza un amplificador operacional
con realimentación **positiva** para conseguir que la comparación tenga
dos valores separados de encendido y de apagado del circuito.

Esta separación entre el valor de encendido y el valor de apagado se
denomina valor de **histéresis**.

.. figure:: electronic/_images/electronic-analog-oa-hysteresis.png
   :width: 400px
   :align: center
   :alt: Esquema de un comparador con histéresis.

   Esquema simplificado de un comparador con histéresis.

Funcionamiento
--------------
El circuito sin la resistencia R2 funciona igual que un comparador
tradicional, que compara la tensión 'Vin' con la tensión de tierra.

Al añadir la resistencia R2, añadimos realimentación positiva, porque
R2 va conectada entre la salida y el terminal de entrada positivo.
Esta realimentación positiva tiene el resultado de reforzar la tensión
de salida.

Si la salida es positiva, el terminal de entrada V+ será positivo y
la tensión de entrada Vin tendrá que ser mayor que cero para
conseguir que la salida vuelva a ser negativa.

Por el contrario si la salida es negativa, el terminal de entrada V+ será
negativo y la tensión de entrada Vin tendrá que ser menor que cero para
conseguir que la salida vuelva a ser positiva.

El resultado es una separación entre el valor de entrada que produce
una salida positiva y el valor de entrada que produce una salida negativa.

Simulación
----------
En la siguiente simulación podemos ver un comparador con histéresis
funcionando como control de una calefacción:

  * El led de salida representa el calefactor calentando el recinto.
  * La resistencia R1 representa el termostato en el que podemos cambiar
    la temperatura deseada del recinto.
  * La resistencia R3 representa el sensor de temperatura ambiente.
  * La resistencia R4 aporta realimentación positiva y es la que produce
    la histéresis.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=oa-hysteresis.txt"></iframe>
   </div>

Al aumentar el valor de la temperatura en R3, el led terminará
apagándose para que la temperatura del recinto disminuya.

Si en ese caso disminuimos el valor de la temperatura en R3, el led
terminará encendiéndose para que la temperatura del recinto aumente.

Si retiramos la resistencia R4, el circuito es un comparador tradicional
que compara la tensión de referencia de R1 con la tensión de R2 y R3, que
son un sensor de temperatura.

Con R4 conectada, las temperaturas de encendido y de apagado no coinciden,
sino que están separadas varios grados, lo que se denomina temperatura
de **histéresis**.

Si ambas temperaturas de encendido y de apagado coincidieran, la
calefacción se encendería y se apagaría continuamente, con mucha
frecuencia, y eso podría dañarla.


Ejercicios
----------
#. ¿En qué se diferencia el comparador con histéresis del comparador
   tradicional?
   Explica las diferencias de funcionamiento y de diseño del circuito.

#. ¿Qué es la tensión o la temperatura de histéresis?

#. ¿Qué es mayor en este circuito simulado, la temperatura de encendido
   o la temperatura de apagado?

   ¿En un refrigerador qué será mayor, la temperatura de encendido o la
   de apagado del refrigerador? Justifica tu respuesta.

#. Simula el cambio de temperatura en el termistor R3 para comprobar cómo
   se comporta el circuito. La luz roja del diodo representa el encendido
   de un calefactor.

   ¿A qué temperatura se enciende el calefactor?

   ¿A qué temperatura se apaga el calefactor?

   ¿Por qué hay esa diferencia entre ambos?

#. Cambia la resistencia R4 a un valor menor (100k).
   ¿Qué ocurre con la histéresis?

   Cambia la resistencia R4 a un valor mayor (800k).
   ¿Qué ocurre con la histéresis?

#. ¿Qué ventajas y qué inconvenientes tiene utilizar una menor histéresis
   en el circuito calentador?

#. Cambia el valor de la resistencia variable R1 para que la calefacción
   funcione entre los rangos 20ºC y 22ºC.

   Mantén la resistencia R4 con el valor de 800k del ejercicio anterior.
