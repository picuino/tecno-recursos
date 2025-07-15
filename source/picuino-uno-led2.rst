:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


Parpadeo de los LED
===================

Objetivos
---------
* Generar parpadeo de ledes mediante la función ledBlink.


La función ``ledBlink``
-----------------------

.. function:: ledBlink(int ledNum, int time_on, int time_off)

   Esta función hace parpadear a un led con una cadencia determinada.
   Sus parámetros son los siguientes:

   ``ledNum``: led que va a parpadear. Los valores válidos van desde 1
   para el led D1 hasta 8 para el color azul del led D6.

   El led D6 es un led RGB, que integra 3 ledes en su interior.
   Los números 6, 7, 8 representan respectivamente los colores rojo,
   verde y azul del led D6.

   ``time_on``: tiempo, en centésimas de segundo, que el led debe
   permanecer encendido.
   Si este parámetro vale cero, el led permanecerá encendido todo
   el tiempo.

   ``time_off``: tiempo, en centésimas de segundo, que el led debe
   permanecer apagado.

   .. note::

      Cada vez que se ejecuta la función ``ledBlink()``, el led
      comienza por encenderse durante el tiempo ``time_on``.
      Esto puede servir para sincronizar el comienzo del parpadeo de
      un led.
      Si la función se ejecuta repetidamente cada poco tiempo, el led
      permanecerá todo el tiempo encendido, puesto que antes de llegar
      a apagarse, el parpadeo se reinicia una y otra vez.


Parpadeo del led D1
-------------------

En este ejemplo se desea hacer parpadear al led D1 con un tiempo
encendido de medio segundo y un tiempo apagado de medio segundo.
El periodo de parpadeo será por lo tanto de un segundo.
En este caso la función se dará desde el bloque ``setup()``
una sola vez.

.. code-block:: arduino
   :linenos:

   // Parpadea el led D1 una vez por segundo

   #include <Picuino.h>

   void setup() {
      pio.begin();               // Inicializar el shield Picuino UNO
      pio.ledBlink(1, 50, 50);   // Parpadea el led D1
                                 //   50 centésimas de segundo encendido
                                 //   50 centésimas de segundo apagado
   }

   void loop() {
   }


Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. Hacer parpadear el led D1 y el led D4 con una frecuencia de un
   segundo.
   Los dos ledes se deben encender y apagar al mismo tiempo.
   Utilizar la función ``ledBlink()``.

2. Modificar el ejercicio anterior para que el encendido de los dos
   ledes D1 y D4 sea alternativo, de manera que solo un led esté
   encendido en cada momento.
   El tiempo de encendido de cada led será de medio segundo.

3. Hacer parpadear dos led a la vez con una frecuencia de un segundo.
   El led D1 se programará con la función ``ledBlink(1, 50, 50)``,
   por el contrario el led D3 se programará con la función
   ``ledWrite()``.
   Primero comenzará a parpadear el led D1 y, pasado un segundo,
   lo hará el led D3.
   Se deben sincronizar los dos ledes para que parpadeen a la vez
   ajustando los tiempos de encendido y apagado con la función
   ``delay()``.

4. Corregir los errores sintácticos del siguiente programa para
   conseguir que funcione correctamente.

   .. code-block:: arduino
      :linenos:

      // Luces de Navidad.
      // Programa con errores sintácticos.

      #include <Picuino.h>

      void setup() {
         int time_on;   // Declara la variable time_on como un número entero
         int time_off;  // Declara la variable time_off como un número entero

         pio.Begin()    // Inicia el shield Picuino UNO

         // Repite y asigna valores a variable 'num' desde 1 hasta 5
         for(int num=1; num<=5; num++) {

            // Tiempo encendido = aleatorio entre 0,5 y 3,0 segundos
            time_on = random(50, 300)

            // Tiempo apagado = aleatorio entre 0,5 y 3,0 segundos
            time_off = Random(50, 300)

            // Parpadea el led 'num' un tiempo aleatorio
            pio.ledblink(num, time_on, time_off)

      }

      void loop() {
      }

5. Hacer parpadear a un led de manera que se encienda durante una
   décima de segundo cada diez segundos, para indicar que el módulo
   está encendido gastando muy poca corriente eléctrica.

6. Hacer parpadear a un led de manera que se encienda durante dos
   décimas de segundo, cada segundo.

7. Los seis primeros ledes se deben encender en secuencia de manera que
   comience por encenderse el led D1 y termine por encenderse el led D6.
   entre el encendido de un led y el siguiente debe pasar entre
   250 y 500 milésimas de segundo.
   Una vez que todos los ledes estén encendidos, comenzarán a apagarse
   por el led D1 hasta que todos estén apagados.
   Nota: Para resolver este problema, se debe utilizar solo una función
   ``ledBlink()`` por cada led, junto con una función ``delay()`` para
   esperar un tiempo entre un encendido y el siguiente.
