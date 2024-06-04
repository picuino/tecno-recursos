:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


Encendido y apagado de los LED
==============================

Objetivos
---------
* Encender y apagar los diodos led del shield Picuino UNO.
* Generar parpadeo de ledes mediante esperas de tiempo.


Librería de manejo para Arduino
-------------------------------
Para poder comenzar a programar es necesario descargar e instalar
previamente la :download:`librería necesaria para programar el shield
Picuino UNO <_downloads/Picuino-UNO-05.zip>`

En la siguiente página web se pueden ver cómo los pasos necesarios
para la instalación de una librería para Arduino.

:ref:`add-library`


La función ``ledWrite``
-----------------------

.. function:: ledWrite(int ledNum, int bright)

   Esta función permite encender o apagar un led concreto.
   Sus parámetros son los siguientes:

   ``ledNum``: led que se va a encender o apagar. Los valores válidos
   van desde 1 para el led D1 hasta 8 para el color azul del led D6.

   El led D6 es un led RGB, que integra 3 ledes en su interior.
   Los números 6, 7, 8 representan respectivamente los colores rojo,
   verde y azul del led D6.

   ``bright``: brillo con el que se va a encender el led.
      * ``LED_OFF``: apaga el led. Se puede sustituir por el número
        cero.
      * ``LED_ON``: enciende el led con la intensidad máxima.
      * Valores entre 2 y 255: enciende el led con una intensidad
        proporcional al número.


Encender el led D1
------------------
El siguiente programa encenderá de forma permanente el led D1

.. code-block:: Arduino
   :linenos:

   // Enciende el led D1

   #include <Picuino.h>

   void setup() {
      pio.begin();               // Inicializar el shield Picuino UNO
      pio.ledWrite(1, LED_ON);   // Encender el led D1
   }

   void loop() {
   }


Parpadeo del led D1
-------------------
Si se desea encender y apagar el led D1 con un periodo de un segundo,
una forma de realizarlo es encender el led, esperar medio segundo,
apagar el led y esperar medio segundo. Cuando esta secuencia se
repite, el led parpadea.
Para conseguir una espera de medio segundo se utiliza la función
``delay(500)`` que provoca una espera de 500 milisegundos
(0,5 segundos).
Para conseguir que la secuencia se repita indefinidamente, el código
se introduce dentro del bloque ``loop()``, que se repite una y otra
vez una vez iniciado el programa de Arduino.

.. code-block:: arduino
   :linenos:

   // Parpadea el led D1

   #include <Picuino.h>

   void setup() {
      pio.begin();               // Inicializar el shield Picuino UNO
   }

   void loop() {
      pio.ledWrite(1, LED_ON);   // Encender el led D1
      delay(500);                // Esperar medio segundo (500 ms)
      pio.ledWrite(1, LED_OFF);  // Apagar el led D1
      delay(500);                // Esperar medio segundo (500 ms)
   }


Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. Encender los ledes D1, D3 y D5 de forma permanente.

2. Encender el led D1, esperar un segundo, encender el led D2, esperar
   un segundo y seguir así hasta que estén encendidos los 5 primeros
   led.
   Una vez terminado, el programa mantendrá los 5 ledes encendidos.

3. Encender los ledes rojo, ámbar y verde como en un semáforo.

   Primero se encenderá el led verde y permanecerá encendido
   durante 4 segundos.
   A continuación se apagará el led verde y se encenderá el led
   ámbar durante 2 segundos.
   Por último se apagará el led ámbar y se encenderá el rojo,
   que permanecerá encendido durante 4 segundos.

   Esta secuencia se repetirá indefinidamente.

4. Modificar el ejercicio 3 para que el led ámbar parpadee tres
   veces, cambiando de encendido a apagado cada medio segundo, antes
   de pasar a encender el led rojo.

5. Programar una baliza que encienda alternativamente el led rojo y
   el led azul.
   Cada led debe permanecer encendido durante un segundo.
   Siempre debe estar uno de los dos led encendidos y nunca estarán
   los dos led encendidos a la vez.

6. Encender el led D1, esperar un segundo, apagar el led D1 y encender
   el led D2.
   Se encenderán de esta forma, consecutivamente, los 5 primeros ledes.
   En cada momento solo un led estará encendido.
   Una vez terminada la secuencia, comenzará de nuevo desde el
   principio.

7. Realizar una modificación al ejercicio anterior para que en todo
   momento haya 2 ledes encendidos.
   Al comenzar el programa deben encenderse los ledes D1 y D2.
   Pasado un segundo se encenderán los ledes D2 y D3.
   La secuencia continuará hasta llegar a la situación inicial.

8. El siguiente programa tiene varios errores, corrige los
   errores sintácticos para que funcione correctamente.

   .. code-block:: arduino
      :linenos:

      // Enciende 6 ledes en secuencia a derecha y a izquierda
      // Programa con errores sintácticos

      #include <Picuino.h>

      void setup() {
         pio.begin();               // Inicializar el shield Picuino UNO
         pio.ledWrite(1, LED_on);
      }

      void loop() {
         for(char i=1; i<=5; i++) {
            pio.ledwrite(i+1, LED_ON);  // Encender el led siguiente
            delay(250);                 // Esperar 250 milisegundos
            pio.ledWrite(i, LED_OFF);   // Apagar el led anterior
            delay(100);                 // Esperar 100 milisegundos
         }

         for(char i=5; i>=1; i--) {
            pio.ledWrite(i, LED_ON);    // Encender el led anterior
            delay(250);                 // Esperar 250 milisegundos
            pio.ledWrite(i+1, LED_OFF); // Apagar el led siguiente
            delay(100);                 // Esperar 100 milisegundos
         }

9. Realizar un programa que haga parpadear D1 una vez por segundo a
   la vez que D2 parpadea dos veces por segundo.
