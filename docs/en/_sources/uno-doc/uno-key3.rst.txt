:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. |keyNum| replace::  ``keyNum``: número del 1 al 6 que representa al pulsador
      del que se solicita su valor.
.. |KEY_VALUES| replace:: Se pueden utilizar también los valores predefinidos
   ``KEY_LEFT``, ``KEY_RIGHT``, ``KEY_UP``, ``KEY_DOWN``, ``KEY_ENTER`` y ``KEY_BACK``.


Pulsadores: Contadores
======================


Objetivos
---------
* Leer los contadores de tiempo y pulsaciones asociados a un pulsador.
* Realizar acciones asociadas a los contadores de tiempo.


La función ``keyCount``
-----------------------

.. function:: int keyCount(int keyNum)

   Esta función devuelve el número de veces que se ha presionado un pulsador.
   El valor se incrementa en uno inmediatamente después de presionar el pulsador.
   Si se mantiene el pulsador pulsado medio segundo, el valor se incrementa a razón
   de 5 pulsaciones por segundo. Si el pulsador se mantiene presionado durante dos
   segundos, el valore de pulsaciones se incrementa a razón de 20 pulsaciones por
   segundo.

   |keyNum|


La función ``keyTimeOn``
------------------------

.. function:: int keyTimeOn(int keyNum)

   Esta función devuelve el tiempo que ha estado presionado el pulsador.
   El tiempo se mide contando 250 pasos por segundo.

   |keyNum|


La función ``keyTimeOff``
-------------------------
.. function:: int keyTimeOff(int keyNum)

   Esta función devuelve el tiempo que ha estado sin presionar el pulsador.
   El tiempo se mide contando 250 pasos por segundo.

   |keyNum|


Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. El siguiente programa mueve hacia la derecha un led cuando se
   presiona el pulsador 2.
   Modificar el programa para que el led se mueva hacia la izquierda
   al pulsar el pulsador 1.

   .. code-block:: Arduino
      :linenos:

      // Mueve una luz a izquierda y derecha con los pulsadores 1 y 2

      #include <Picuino.h>

      int led, count;

      void setup() {
         pio.begin();            // Inicializa el shield Picuino UNO
         led = 1;                // Enciende primero el led D1
         pio.ledWrite(led, LED_ON);
      }

      void loop() {

         // Mueve a la derecha con la tecla derecha

         // Lee el número de pulsaciones del pulsador 'derecha'
         count = pio.keyCount(KEY_RIGHT);

         // Si el número de pulsaciones es mayor que cero
         if (count > 0) {

            // Apaga el led actual
            pio.ledWrite(led, LED_OFF);

            // Incrementa la posición del led
            led = led + count;

            // Si la posición del led es mayor que 6
            // vuelve a la posición 1
            if (led > 6) led = 1;

            // Enciende el led en la nueva posición
            pio.ledWrite(led, LED_ON);
         }
      }


2. El siguiente programa es un juego para comprobar la habilidad de
   contar tiempo.
   Se debe esperar a que el pulsador 1 no esté presionado.
   En ese momento se medirá el tiempo que ha estado presionado.
   Cuanto más se parezca el tiempo presionado a 3 segundos,
   más puntuación se obtendrá.
   **Modificar** el programa para que antes de comenzar el juego,
   el led D1 parpadee una vez por segundo.
   Una vez presionado el pulsador 1, el parpadeo debe apagarse para
   no dar pistas sobre el tiempo que debe estar encendido.

   .. code-block:: Arduino
      :linenos:

      // Juego de medida de tiempo

      #include <Picuino.h>

      int time, points;

      void setup() {
         pio.begin();   // Inicializa el shield Picuino UNO
      }

      void loop() {

         // Espera hasta que se presione el pulsador 1
         while(pio.keyPressed(1) == 0);

         // Espera hasta que se deje de presionar el pulsador 1
         while(pio.keyPressed(1) == 1);

         // Lee el tiempo que ha estado presionado el pulsador 1
         time = pio.keyTimeOn(1);

         // Calcula la puntuación
         points = time - 3*250;

         // Muestra la puntuación por el display
         pio.dispWrite(abs(points));
         if (points < 0)
            pio.dispWrite(1, 0x02);
         delay(1000);
      }


3. Modificar el programa que aparece a continuación, parecido al
   anterior.
   En este juego la puntuación será más alta si se presiona un
   pulsador el mismo tiempo dos veces consecutivas.
   Primero el programa debe medir el tiempo que ha estado presionado
   el pulsador 1, después debe esperar a que no esté presionado.
   Finalmente se medirá el segundo tiempo que el pulsador esté
   presionado.

   .. code-block:: Arduino
      :linenos:

      // Juego de medida de tiempo. Versión de dos pulsaciones

      #include <Picuino.h>

      int time1, time2;
      int points;

      void setup() {
         pio.begin();  // Inicializa el shield Picuino UNO
      }

      void loop() {
         // Comienza parpadeando el led D1
         pio.ledBlink(1, 50, 50);

         // Espera hasta que se presione el pulsador 1
         while(pio.keyPressed(1) == 0);

         // Cuenta el tiempo que está presionado el pulsador 1
         while(pio.keyPressed(1) == 1) {
           time1 = pio.keyTimeOn(1);
           pio.dispWrite(time1);
         }

         // Espera hasta que se presione el pulsador 1
         while(pio.keyPressed(1) == 0);

         // Cuenta el tiempo que está presionado el pulsador 1
         while(pio.keyPressed(1) == 1) {
            time2 = pio.keyTimeOn(1);
            pio.dispWrite(time2);
         }

         // Apaga el led D1 y espera un segundo
         pio.ledWrite(1, LED_OFF);

         // Calcula la puntuación
         points = time1 - time2;

         // Muestra la puntuación por el display
         while(1) {
            pio.dispWrite(abs(points));
            delay(500);
            pio.dispBegin();
            delay(500);
            // Sal si se presiona el pulsador 1
            if (pio.keyEvents(1) == KEY_PRESSED_TIME2)
               break;
         }

         // Espera hasta que no se presione el pulsador 1
         while(pio.keyPressed(1) == 1);
      }
