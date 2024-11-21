:Date: 08/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bjt-darlington:

El esquema Darlington
=====================
El `esquema Darlington <https://es.wikipedia.org/wiki/Transistor_Darlington>`__
es un dispositivo que combina dos transistores conectados de tal manera
que la corriente de emisor del primero alimenta la corriente de base del
segundo tal y como se puede ver en la siguiente imagen:

.. figure:: electronic/_images/electronic-analog-darlington.png
   :width: 200px
   :align: center
   :alt: Esquema de dos transistores NPN en montaje Darlington.

   Esquema de dos transistores NPN en montaje Darlington.

El esquema Darlington se comporta como un transistor ordinario, con un
colector, una base y un emisor.

Ventajas:
   * La principal ventaja de este esquema consiste en que la ganancia de
     los dos transistores se multiplica, consiguiendo con facilidad
     **ganancias muy altas**, de varios miles.
     Esto permite controlar corrientes elevadas con corrientes de base
     muy pequeñas.

   * Este esquema se puede implementar con dos transistores discretos
     conectados o también existen **pares Darlington integrados** en un
     único encapsulado, lo que reduce el espacio.

Inconvenientes:
   * El esquema Darlington tiene una respuesta más lenta que un único
     transistor. Esto limita su funcionamiento como interruptor a
     dispositivos lentos.
     Para acelerar el apagado del segundo transistor se suele colocar
     una resistencia entre su base y su emisor.

   * La mínima tensión entre colector y emisor es mayor que con un solo
     transistor. Esto produce mayor calentamiento del dispositivo cuando
     controla el encendido y el apagado de dispositivos con mucha corriente
     y produce una pérdida de tensión apreciable.

   * La tensión entre base y emisor es mayor, típicamente superior
     a 1.2 voltios al sumar dos caídas de tensión de dos transistores.


Simulación I
------------
A continuación podemos ver la simulación de un esquema Darlington
en configuración de emisor común. Esta etapa necesita muy poca corriente
de base para encender una lámpara de 50 vatios y 12 voltios.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-darlington-e.txt"></iframe>
   </div>

Este esquema se puede utilizar para accionar cargas elevadas con bajas
corrientes que provengan de circuitos de control digital, como un
microcontrolador.


Simulación II
-------------
A continuación podemos ver la simulación de la etapa de salida de un
circuito oscilador muy popular, el **NE555**.
Esta etapa de salida utiliza dos configuraciones Darlington para amplificar
las señales internas del circuito y conseguir una corriente elevada que
active cargas externas.

En el recuadro superior podemos identificar un esquema Darlington
en **colector común** (colector conectado a positivo de la alimentación).
Este esquema sirve para alimentar con tensión positiva la salida.

En el recuadro inferior podemos identificar un esquema Darlington
en **emisor común** (emisor conectado a negativo de la alimentación).
Este esquema sirve para alimentar con tensión negativa la salida.

Este segundo recuadro inferior tiene algún cambio respecto a la
configuración estándar, al añadir una resistencia de 200 ohmios
entre el primer transistor Q1 y el segundo transistor Q2.
Además hay instalado un diodo entre los colectores de Q1 y Q2.
Estos cambios permiten obtener una tensión más baja en la salida
que con el esquema estándar.

Las resistencias de 200 ohmios a la derecha no pertenecen al circuito
NE555, son resistencias de carga externas.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-darlington-ne555.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja un esquema simplificado de dos transistores NPN trabajando en
   configuración Darlington.

#. Dibuja un esquema realista de dos transistores NPN trabajando en
   configuración Darlington de emisor común.

#. Dibuja un esquema realista de dos transistores NPN trabajando en
   configuración Darlington de colector común.

#. ¿Qué ventajas tiene un esquema Darlington frente a un transistor
   individual?

#. ¿Qué inconvenientes tiene un esquema Darlington frente a un transistor
   individual? ¿Cómo se puede reducir el efecto de alguno de estos
   inconvenientes?

#. En la etapa de salida del circuito NE555:

   ¿Cuántos esquemas Darlington puedes identificar?

   ¿En que configuración está cada uno y por qué?

