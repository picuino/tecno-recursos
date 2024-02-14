:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

:orphan:

.. Necesita añadir esquema de conexión al led emisor de infrarrojos.

.. _comm-infrared-emitter:

Emisor de infrarrojos
=====================


Conexión
--------




Ejercicios
----------
1. Compila y carga el siguiente programa en Arduino.

   Presiona los pulsadores 1 y 2 de la placa. El led infrarrojo
   emitirá señales que otro Arduino puede recibir.

   .. code-block:: arduino
      :linenos:

      /*
         Programa para simular un control remoto con protocolo NEC
         Envía códigos infrarrojos según la tecla pulsada.
      */

      #include <Wire.h>
      #include <PC42.h>
      #include <IRremote.h>

      // Iniciación de la tarjeta Arduino
      IRsend irsend;

      void setup() {
         pc.begin();
      }

      // Función principal
      void loop() {
        int code;

        code = -1;

        // Si se ha presionado el pulsador 1
        if (pc.keyPressed(1))
           code = 48;

        // Si se ha presionado el pulsador 2
        if (pc.keyPressed(2))
           code = 104;

        // Envía el código si es mayor que cero
        if (code > 0) {
           code = (code & 0xFF);
           code = (code  << 8) + (code ^ 0xFF);
           irsend.sendNEC((long)0xFFFF0000 + code, 32);
           delay(50);
        }

      }
