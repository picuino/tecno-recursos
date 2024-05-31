:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


Sensor LDR
==========
.. ¿Qué es?. Foto. Vídeo


Esquema de conexión del sensor LDR
----------------------------------

.. image:: _images/img-0041.jpg
   :align: center
   :width: 400px
   :alt: Esquema de cableado del sensor LDR


Ejercicios
----------

1. Compila y carga el siguiente programa en Arduino.
   Observa cómo cambian los valores medidos según se ilumine
   más o menos el sensor LDR.

   .. code-block:: Arduino
      :linenos:

      //
      // Sensor LDR
      //
      #include <Picuino.h>

      // Inicia Arduino
      void setup() {
         pio.begin();
         Serial.begin(19200);  // Inicializa el puerto serie
      }

      // Bucle principal
      void loop() {
         // Lee la señal producida por el sensor LDR
         int ldr = analogRead(A1);

         // Muestra la señal por pantalla
         pio.dispWrite(ldr);
         Serial.print("LDR = ");
         Serial.println(ldr);

         // Espera medio segundo
         delay(500);
      }

2. Realiza un programa que emita diferentes notas dependiendo
   del la luz que reciba el sensor LDR.
   Sustituye en el programa anterior la espera de tiempo por las
   siguientes líneas de código.

   .. code-block:: Arduino
      :linenos:

      // Theremin con sensor LDR
      pio.buzzTone(500 + ldr*2);
      delay(64);
      pio.buzzTone(0);
      delay(128);

