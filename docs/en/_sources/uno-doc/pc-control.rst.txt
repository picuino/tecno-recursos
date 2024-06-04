:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


Control serie de Arduino
========================
Con el siguiente programa, Arduino ejecuta las órdenes que recibe
desde el ordenador través del puerto serie.

Ejercicios
----------

1. Ejecutar y probar el siguiente programa en Arduino.

   .. code-block:: arduino
      :linenos:

      /*
        Programa para controlar Arduino desde el puerto serie del PC
      */
      #include <Picuino.h>

      #define AND &&


      /*
         Inicialización
      */
      void setup() {
         Serial.begin(9600);   // Inicializa las comunicaciones serie
         pio.begin();          // Inicializa el shield Picuino UNO
      }


      /*
         Bucle principal
      */
      void loop() {
         int dato, orden;

         // Envía las instrucciones por el puerto serie
         Serial.println();
         Serial.println("Instrucciones:");
         Serial.println(" H3  - enciende el led 3");
         Serial.println(" L3  - apaga el led 3");
         Serial.println(" R1  - lee y devuelve el valor de la entrada analogica 1");
         Serial.println();

         // Lee del puerto serie una instrucción
         while(1) {
            // Espera la recepción de un dato
            while(Serial.available() == 0);

            // Si se recibe una orden correcta, sale al siguiente paso
            orden = Serial.read();

            // Orden de encendido de un led
            if (orden == 'H')  {
              dato = leer_num();
              led_on(dato);
            }

            // Orden de apagado de un led
            if (orden == 'L') {
              dato = leer_num();
              led_off(dato);
            }

            // Orden de lectura de puerto analógico
            if (orden == 'R') {
               dato = leer_num();
               read_analog(dato);
            }
         }
      }


      /*
         Funciones
      */

      // Lee un número desde el puerto serie
      int leer_num() {
         int dato;

         // Espera la recepción de un dato
         while(Serial.available() == 0);

         // Lee el dato
         dato = Serial.read();

         // Si el dato es un número, devuelve el número
         if ((dato >= '0') AND (dato <= '9'))
            return dato - '0';

         // En caso contrario, devuelve el dato
         return dato;
      }


      // Enciende un led
      void led_on(int argumento) {
         // Comprueba que el argumento no se sale de rango
         if (argumento > 8) argumento = 8;

         // Enciende el led
         pio.ledWrite(argumento, LED_ON);
      }


      // Apaga un led
      void led_off(int argumento) {
         // Comprueba que el argumento no se sale de rango
         if (argumento > 8) argumento = 8;

         // Apaga el led
         pio.ledWrite(argumento, LED_OFF);
      }


      // Lee un puerto analógico y envía el resultado por el puerto serie
      void read_analog(int argumento) {
         // Comprueba que el argumento no se sale de rango
         if (argumento > 3) argumento = 0;

         // Lee el valor analógicoEjecuta la instrucción
         int valor = analogRead(argumento);
         Serial.print("Valor=");
         Serial.println(valor);
      }


2. Añadir una nueva orden con la letra 'C' (clear) para que Arduino
   apague de una sola vez todos los ledes.

3. Añadir una nueva orden con la letra 'S' (secuencia) para que
   Arduino encienda uno a uno todos los ledes desde el primero hasta
   el último con una cadencia de un led por segundo.
