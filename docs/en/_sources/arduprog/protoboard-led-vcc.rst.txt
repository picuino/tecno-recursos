:Date: 14/12/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _protoboard-led-vcc:

Led siempre encendido
=====================
Monta en protoboard el siguiente esquema eléctrico.

.. image:: protoboard/arduino-proto-01-led-vcc-sch.png
   :alt: Esquema eléctrico de placa Arduino con un led conectado a la alimentación
   :width: 400px
   :align: center

.. image:: protoboard/arduino-proto-01-led-vcc-bb.png
   :alt: Montaje en protoboard de placa Arduino con un led conectado a la alimentación
   :width: 400px
   :align: center

El led rojo debe permanecer siempre encendido cuando se
alimenta la placa Arduino Uno.


:download:`Circuito eléctrico en formato Fritzing
<protoboard/arduino-proto-01-led-vcc.fzz>`


----

Ejercicios
----------
1. Cambia el sentido del led para que los pines estén conectados
   al revés.
   Puedes comprobar que el led se apaga cuando está conectado
   al revés. Al ser un diodo, solo permite el paso de la electricidad
   en un sentido y no lo permite en el sentido contrario.

   Si en algún momento un led no funciona, comprueba que está
   conectado en el sentido correcto.

2. Cambia la resistencia de 220 Ohmios por otra resistencia de 1000
   Ohmios. Comprobarás que la luminosidad del led disminuye.

   Cambia la resistencia de 220 Ohmios por otra resistencia de 150
   Ohmios. Comprobarás que la luminosidad del led aumenta.

   La resistencia que acompaña al led sirve para limitar la corriente
   que circula.
   De esa manera se evita que el led o la salida de la placa Arduino
   se quemen.
