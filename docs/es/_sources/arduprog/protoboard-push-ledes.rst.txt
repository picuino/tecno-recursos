:Date: 19/12/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _protoboard-push-ledes:

Pulsadores y ledes
==================
Monta en protoboard el siguiente esquema eléctrico.

.. image:: protoboard/arduino-proto-04-push-ledes-sch.png
   :alt: Esquema eléctrico de placa Arduino con dos pulsadores y dos ledes
   :width: 700px
   :align: center

.. image:: protoboard/arduino-proto-04-push-ledes-bb.png
   :alt: Montaje en protoboard de placa Arduino con dos pulsadores y dos ledes
   :width: 400px
   :align: center

:download:`Circuito eléctrico en formato Fritzing
<protoboard/arduino-proto-04-push-ledes.fzz>`


----

Ejercicios
----------

1. Sube a la placa Arduino UNO el siguiente programa.
   El led verde se encenderá al pulsar el pulsador 1.

   .. code-block:: arduino
      :linenos:

      // Define el pin de cada componente
      int LED_VERDE = 2;
      int LED_ROJO = 3;
      int PUSH_1 = 8;
      int PUSH_2 = 9;

      // Ejecuta una sola vez las siguientes instrucciones
      void setup() {
         // Los ledes se conectan a salidas
         pinMode(LED_VERDE, OUTPUT);
         pinMode(LED_ROJO, OUTPUT);

         // Los pulsadores se conectan a entradas
         pinMode(PUSH_1, INPUT_PULLUP);
         pinMode(PUSH_2, INPUT_PULLUP);
      }

      // Repite para siempre las siguientes instrucciones
      void loop() {
         // Si presionamos pulsador 1 entonces
         if (digitalRead(PUSH_1) == LOW) {
            // Enciende el led verde
            digitalWrite(LED_VERDE, HIGH);
         }
         // En caso contrario
         else {
            // Apaga el led verde
            digitalWrite(LED_VERDE, LOW);
         }
      }

#. Modifica el programa anterior para añadir que el led rojo se
   encienda al presionar el pulsador 2.

#. Modifica el programa anterior para que los dos ledes se
   enciendan al presionar el pulsador 1 y que se apaguen al
   presionar el pulsador 2.

#. Realiza un programa para simular una luz temporizada de escalera.
   El led verde se encenderá al presionar el pulsador 1 y debe
   mantenerse encendido durante 4 segundos. Después de ese tiempo
   el led verde se apagará.

   La instrucción que se debe utilizar para esperar cuatro segundos
   es:

   .. code-block:: arduino
      :linenos:

      delay(4000);

#. Modifica el programa anterior para que el led rojo se encienda
   mientras el led verde esté apagado y que se apague cuando el led
   verde esté encendido.



