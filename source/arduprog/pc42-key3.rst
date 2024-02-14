:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. |keyNum| replace::  ``keyNum``: número del 1 al 6 que representa al pulsador
      del que se solicita su valor. El valor 0 representa a todos los pulsadores juntos.
.. |KEY_VALUES| replace:: Se pueden utizar también los valores predefinidos
   ``KEY_LEFT``, ``KEY_RIGHT``, ``KEY_DOWN``, ``KEY_UP``, ``KEY_ENTER``, ``KEY_BACK`` y ``KEY_ALL``.

.. _pc42-key3:

Pulsadores y Contadores
=======================

.. only:: html

   .. image:: _thumbs/img-0095.jpg
      :width: 300px
      :alt: Pulsador.
      :align: center

.. only:: latex

   .. figure:: _images/img-0095.jpg
      :width: 200px
      :alt: Pulsador.
      :align: center


Objetivos
---------
* Leer los contadores de tiempo y pulsaciones asociados a un pulsador.
* Realizar acciones asociadas a los contadores de tiempo.


La función :cpp:func:`keyCount`
-------------------------------

.. cpp:function:: int keyCount(int keyNum)

   Esta función devuelve el número de veces que se ha presionado un
   pulsador.
   El valor se incrementa en uno inmediatamente después de presionar
   el pulsador.
   Si se mantiene el pulsador presionado más de medio segundo, el
   contador de pulsaciones se incrementa a razón de 10 pulsos
   por segundo.
   Si el pulsador se mantiene presionado durante más de dos segundos,
   el contador de pulsaciones se incrementa a razón de 100 pulsos por
   segundo.
   Los tiempos y las frecuencias de incremento del contador se pueden
   modificar en la configuración del teclado.

   |keyNum|


La función :cpp:func:`keyTimeOn`
--------------------------------

.. cpp:function:: int keyTimeOn(int keyNum)

   Esta función devuelve el tiempo en milisegundos que ha estado
   presionado el pulsador.
   El máximo tiempo que puede contar es de 65 segundos.
   A partir de ese momento no se cuenta más tiempo y el resultado
   devuelto siempre es el mismo.

   |keyNum|


La función :cpp:func:`keyTimeOff`
---------------------------------

.. cpp:function:: int keyTimeOff(int keyNum)

   Esta función devuelve el tiempo en milisegundos que ha estado sin
   presionar el pulsador.
   El máximo tiempo que puede contar es de 65 segundos.
   A partir de ese momento no se cuenta más tiempo y el resultado
   devuelto siempre es el mismo.

   |keyNum|


Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. El siguiente programa mueve hacia la derecha un led cuando se
   presiona el pulsador 2. Modificar el programa para que el led se
   mueva también hacia la izquierda al presionar el pulsador 1.

   .. literalinclude:: sourcecode/keyboard/keyCount_right/keyCount_right.ino
      :language: Arduino
      :linenos:
      :name: button-keyCount_right


2. El siguiente programa es un juego para comprobar la habilidad de
   contar tiempo.
   Se debe presionar el pulsador 1 exactamente durante tres segundos.
   En el display se muestra el error de tiempo en milisegundos.
   Si se ha presionado menos tiempo, el número mostrado será negativo.
   En caso de presionar más de tres segundos, el número mostrado será
   positivo. Gana el jugador que más se acerque al cero.

   **Modificar** el programa para que el led D1 parpadee una vez
   por segundo antes de comenzar el juego.
   Una vez presionado el pulsador 1, el led 1 debe apagarse para no
   dar pistas sobre el tiempo que debe estar presionado el pulsador.

   .. code-block:: Arduino
      :linenos:

      // Juego de medida de tiempo.
      // Gana el jugador que más se acerque a presionar el pulsador 1
      // exactamente 3 segundos, y consiga así menor error.

      #include <Wire.h>
      #include <PC42.h>

      void setup() {
         pc.begin();   // Inicializar el módulo PC42
      }

      void loop() {
         int time, points;

         // Espera hasta que se presione el pulsador 1
         while(pc.keyPressed(1) == 0);

         // Espera hasta que se deje de presionar el pulsador 1
         while(pc.keyPressed(1) == 1);

         // Lee el tiempo que ha estado presionado el pulsador 1
         time = pc.keyTimeOn(1);

         // Calcula la puntuación = milisegundos de error
         points = time - 3000;
         if (points > 999) points = 999;
         if (points < -999) points = -999;

         // Muestra la puntuación por el display
         pc.dispNum(abs(points));
         if (points < 0)
            pc.dispWrite(4, 0x40);  // Signo menos
         delay(500);
      }


3. Modificar el programa que aparece a continuación, parecido al
   anterior. En este juego la puntuación será más alta si se presiona
   un pulsador el mismo tiempo dos veces consecutivas.
   Primero el programa debe medir el tiempo que ha estado presionado
   el pulsador 1, después debe esperar a que no esté presionado.
   Finalmente se medirá el segundo tiempo que el pulsador esté
   presionado.

   .. code-block:: Arduino
      :linenos:

      // Juego de medida de tiempo. Versión de dos jugadores.
      //
      // El primer jugador presiona el pulsador 1 durante un tiempo.
      // En el display se muestra el tiempo presionado en milisegundos.
      //
      // El segundo jugador debe presionar el pulsador 1 exactamente el mismo tiempo.
      // El display muestra al final la diferencia entre los dos tiempos.
      // Gana el jugador que menos diferencia consiga.
      //
      // Para comenzar un nuevo intento se debe presionar el pulsador 1
      // más de 2 segundos
      //

      #include <Wire.h>
      #include <PC42.h>

      int time1, time2;
      int points;

      void setup() {
         pc.begin();  // Inicializar el módulo PC42
      }

      void loop() {
         // Comienza parpadeando el led D1
         pc.ledBlink(1, 500, 500);

         // Espera hasta que se presione el pulsador 1
         while(pc.keyPressed(1) == 0);

         // Cuenta el tiempo que está presionado el pulsador 1
         while(pc.keyPressed(1) == 1) {
           time1 = pc.keyTimeOn(1);
           pc.dispNum(time1);
         }

         // Espera hasta que se presione el pulsador 1
         while(pc.keyPressed(1) == 0);

         // Cuenta el tiempo que está presionado el pulsador 1
         while(pc.keyPressed(1) == 1) {
            time2 = pc.keyTimeOn(1);
            pc.dispNum(time2);
         }

         // Apaga el led D1 y espera un segundo
         pc.ledWrite(1, LED_OFF);

         // Calcula la puntuación
         points = time1 - time2;

         // Muestra la puntuación por el display parpadeando
         while(1) {
            pc.dispNum(abs(points));
            delay(500);
            pc.dispBegin();
            delay(500);

            // Salir del bucle si se presiona el pulsador 1
            if (pc.keyEvents(1, KEY_PRESSED_TIME2))
               break;
         }

         // Espera hasta que no se presione el pulsador 1
         while(pc.keyPressed(1) == 1);
      }
