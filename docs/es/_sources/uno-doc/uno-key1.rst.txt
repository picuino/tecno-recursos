:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. |keyNum| replace::  ``keyNum``: número del 1 al 6 que representa al pulsador
      del que se solicita su valor. El valor 0 representa a todos los pulsadores juntos.
.. |KEY_VALUES| replace:: Se pueden utizar también los valores predefinidos
   ``KEY_LEFT``, ``KEY_RIGHT``, ``KEY_UP``, ``KEY_DOWN``, ``KEY_ENTER``, ``KEY_BACK`` y ``KEY_ALL``.


Pulsadores
==========

Objetivos
---------
* Leer el estado de un pulsador.
* Programar Arduino para que responda a las pulsaciones del usuario.


Pulsadores del shield Picuino UNO
---------------------------------
El shield dispone de un teclado de seis pulsadores. Cada pulsador se
identifica con un número o con una constante que lleva su nombre.
El nombre de cada pulsador puede verse en la serigrafía de la placa
de circuito impreso. Las seis constantes y números que representan a
los pulsadores son los siguientes :

   +------------+-------------+
   | Constante  | Pulsador    |
   +============+=============+
   | KEY_LEFT   |     1       |
   +------------+-------------+
   | KEY_RIGHT  |     2       |
   +------------+-------------+
   | KEY_UP     |     3       |
   +------------+-------------+
   | KEY_DOWN   |     4       |
   +------------+-------------+
   | KEY_ENTER  |     5       |
   +------------+-------------+
   | KEY_BACK   |     6       |
   +------------+-------------+

El número de pulsador se representará en el manual como ``keyNum``.


La función  ``keyPressed``
--------------------------

.. function:: int keyPressed(int keyNum)

   Esta función devuelve el valor de un pulsador.
   Devuelve el valor 1 si el pulsador está presionado y 0 si no lo
   está.
   El valor de esta función filtra el ruido eléctrico y los rebotes.

   El **ruido eléctrico** son interferencias asociadas a los motores
   eléctricos, a los interruptores, a las modernas lámparas de bajo
   consumo o a los teléfonos móviles.
   Cualquiera de estos aparatos puede provocar que durante un breve
   momento un pulsador parezca estar presionado aunque no sea cierto.
   Es muy recomendable filtrar este ruido para evitar pulsaciones
   'falsas' o 'fantasmas'.

   Los rebotes son un fenómeno que provoca que el pulsador no haga
   contacto durante un periodo corto de tiempo, unos milisegundos,
   justo después de presionarle porque la chapa metálica 'rebota' y
   deja de hacer contacto. Este fenómeno puede provocar que se
   interprete una pulsación como dos pulsaciones, por lo que es
   recomendable que se filtre para eliminarlo.

   La desventaja de este filtro de ruido consiste en que esta función
   tiene un retardo de 20 milisegundos en responder desde que cambia
   el estado real del pulsador hasta que devuelve el valor correcto.
   Si se utiliza el argumento ``KEY_ALL``, la función devuelve un
   número que depende de la suma de los pulsadores que se encuentren
   presionados.

   +----------------------+---------------+---------------+
   | Pulsador presionado  | Valor decimal | Valor binario |
   +======================+===============+===============+
   | KEY_LEFT             |     1         |  0b000001     |
   +----------------------+---------------+---------------+
   | KEY_RIGHT            |     2         |  0b000010     |
   +----------------------+---------------+---------------+
   | KEY_UP               |     4         |  0b000100     |
   +----------------------+---------------+---------------+
   | KEY_DOWN             |     8         |  0b001000     |
   +----------------------+---------------+---------------+
   | KEY_ENTER            |     16        |  0b010000     |
   +----------------------+---------------+---------------+
   | KEY_BACK             |     32        |  0b100000     |
   +----------------------+---------------+---------------+

   Si se encuentra presionado el pulsador 4, la función devolverá
   el valor 8. Con el pulsador 6 presionado, la función devolverá
   el valor 32. Si se presionan los dos pulsadores 4 y 6
   a la vez, la función devolverá la suma de 8 y 32, es decir 40.

   |keyNum|

   |KEY_VALUES|


Encender un led con un pulsador
-------------------------------

El siguiente programa encenderá el led D1 cuando se presione el
pulsador 1 (``KEY_LEFT``)

.. code-block:: Arduino
   :linenos:

   // Enciende el led D1 cuando se pulse el pulsador 1

   #include <Picuino.h>

   void setup() {
      pio.begin();   // Inicializa el shield Picuino UNO
   }

   void loop() {
      int on_off;
      on_off = pio.keyPressed(KEY_LEFT); // Lee el estado del pulsador 1
      pio.ledWrite(1, on_off);           // Enciende el led D1 si está
                                         // presionado el pulsador 1
   }


Apagar un led con un pulsador
-----------------------------

El siguiente programa realizará la función contraria al anterior,
apagará el led D1 cuando se pulse el pulsador 1 (``KEY_LEFT``)

.. code-block:: Arduino
   :linenos:

   // Apaga el led D1 con el pulsador 1

   #include <Picuino.h>

   void setup() {
      pio.begin();                  // Inicializa el shield Picuino UNO
   }

   void loop() {
      int on_off;
      on_off = pio.keyPressed(1);   // Lee el estado del pulsador 1
      pio.ledWrite(1, !on_off);     // Enciende el led D1 si no está
                                    // presionado el pulsador 1
   }


El lenguaje de Arduino permite escribir la última función del
programa anterior de otras formas.
Estas son algunas alternativas, todas consiguen el mismo resultado.

.. code-block:: Arduino
   :linenos:

   // Enciende el led D1 si el pulsador 1 no está presionado

   // Función NOT lógico
   pio.ledWrite(1, !on_off);

   // Función Negación binaria
   pio.ledWrite(1, ~on_off);

   // Función resta
   pio.ledWrite(1, 1-on_off);

   // Funciones de comparación
   pio.ledWrite(1, (on_off == 0));
   pio.ledWrite(1, (on_off < 1));

   // Función XOR
   pio.ledWrite(1, on_off ^ 1);

Como se puede ver, el lenguaje es muy rico en expresiones.


La función ``keyValue``
-----------------------

.. function:: int keyValue(int keyNum)

   Esta función es semejante a la función ``keyValue`` vista
   anteriormente.
   Devuelve el valor de un pulsador. Si el pulsador está
   presionado, devuelve el valor 1 si el pulsador no está
   presionado devuelve el valor 0.
   Esta función no filtra el ruido eléctrico como lo hace
   la función ``keyPressed()``.

   Esta función devuelve el estado inmediato del pulsador y por
   lo tanto puede devolver valores falsos producidos por el ruido
   eléctrico o los rebotes.

   Como ventaja, esta función devuelve el valor del pulsador sin
   retraso de tiempo en la respuesta.


   |keyNum|

   |KEY_VALUES|



Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. Encender el led D1 con el pulsador 1 y apagar el led D1 con el
   pulsador 2.
   Corregir los errores sintácticos del siguiente programa.

   .. code-block:: Arduino
      :linenos:

      // Enciende el led D1 con el pulsador 1 y
      // apaga el led D1 con el pulsador 2

      #include <Picuino.h>

      void setup() {
         pio.Begin();                 // Inicializa el shield Picuino UNO
      }

      void loop() {
         if (pio.keypressed(1))       // Si (pulsador 1 está presionado)
            pio.ledWrite(1, LED_ON);  //   Enciende led D1
         if (pio.keypressed(2))       // Si (pulsador 2 está presionado)
            pio.ledWrite(1, LED_OFF)  //   Apaga el led D1


2. Encender todos los ledes de la siguiente manera.
   El led D1 se encenderá al pulsar el pulsador 1.
   A continuación el led D2 se encenderá al pulsar el pulsador 2.
   El programa seguirá de esta manera hasta llegar a encender todos
   los led.
   Completar el programa que aparece a continuación.

   .. code-block:: Arduino

      // Enciende todos los ledes uno a uno y por orden
      // con todos los pulsadores

      #include <Picuino.h>

      void setup() {
         pio.begin();   // Inicializa el shield Picuino UNO

         // Mientras (pulsador 1 no esta presionado), espera
         while (pio.keyPressed(1) == 0);

         // Enciende el led D1
         pio.ledWrite(1, LED_ON);


      }

      void loop() {
      }

3. Al comenzar, encender el led D1.
   Cuando se presione el pulsador 1, se apagará el led D1 y se
   encenderá el led siguiente.
   La luz se moverá así hacia la derecha, hasta volver a comenzar
   en el led D1 otra vez.
   Completar el programa que aparece a continuación según los
   comentarios.

   .. code-block:: Arduino
      :linenos:

      // Mover la luz de los ledes hacia la derecha
      // con los pulsadores

      #include <Picuino.h>

      int i;

      void setup() {
         pio.begin();              // Inicializa el shield Picuino UNO
         i = 1;                    // El primer led encendido es el 1
      }

      void loop() {
         pio.ledWrite(i, LED_ON);  // Enciende el led i
         if (pio.keyPressed(i)) {  // Si (pulsador i está presionado)
            pio.                   //    Apaga el led i
            i =                    //    Aumenta i en una unidad
            if (i > 6) i = 1;      // Si (i es mayor que 6) i vale 1
            pio.                   //    Enciende el led i
         }
      }


4. Modificar el programa anterior para que los ledes se enciendan
   desde el D6 hasta el D1.
   Cuando llegue el turno de apagar el led D1, se encenderá de nuevo
   el led D6.


5. Los tres ledes D1, D2 y D3 se encenderán cuando se pulse a la vez
   los tres pulsadores 1, 2 y 3.
   Utiliza el operador '&&' que evalúa si se producen dos condiciones
   a la vez.
   Completar el programa que aparece a continuación según los
   comentarios.

   .. code-block:: Arduino
      :linenos:

      // Enciende los ledes D1, D2, D3 cuando
      // se presionen los pulsadores 1, 2 y 3

      #include <Picuino.h>

      void setup() {
         pio.begin();                // Inicializa el shield Picuino UNO
      }

      void loop() {

         if (pio.keyPressed(1)  &&   // Si ( (pulsador 1 presionado) y
             pio.keyPressed(2)  &&   //      (pulsador 2 presionado) y
             pio.keyPressed(3)) {    //      (pulsador 3 presionado))
            pio.                     //    Enciende los ledes D1, D2 y D3


         }
      }


6. Después de pulsar en orden la secuencia de pulsadores 2, 4 y 1,
   una cerradura electrónica se abrirá. La apertura se indicará
   encendiendo en secuencia los ledes rojo, amarillo y verde, uno cada
   segundo.
   Completar los huecos del programa que aparece a continuación según
   los comentarios.

   .. code-block:: Arduino
      :linenos:

      // Cerradura electrónica

      #include <Picuino.h>

      int step;

      void setup() {
         pio.begin();   // Inicializa el shield Picuino UNO
         step = 1;      // Espera la pulsación del primer pulsador
      }

      void loop() {

         // Si (etapa del programa es 1)
         if (step == 1) {

            // Si (solo el pulsador 2 presionado)
            if (pio.keyPressed(0)==0b000010) {

               // Espera a que no esté presionado
               while(pio.keyPressed(2));

               // Pasa a la siguiente etapa del programa
               step = 2;
            }
         }

         // Si (etapa del programa es 2)
         if (step == 2) {
            // Si (solo el pulsador 4 presionado)
            if (pio.keyPressed(0)==0b001000) {

               // Espera a que no esté presionado
               while(pio.keyPressed(4));

               // Pasa a la siguiente etapa del programa
               step = 3;
            }
         }

         // Si (etapa del programa es 3)
         if (step == 3) {
            // Si (solo el pulsador 1 presionado)
            if (                       ) {

               // Espera a que no esté presionado


               // Pasa a la siguiente etapa del programa

            }
         }

         // Si (etapa del programa es 4)
         if (step == 4) {

            // Enciende el led rojo y espera un segundo
            pio.ledWrite(1, LED_ON);
            delay(1000);

            // Enciende el led amarillo y espera un segundo
            pio.ledWrite(2, LED_ON);
            delay(1000);

            // Enciende el led verde y espera un segundo
            pio.ledWrite(3, LED_ON);
            delay(1000);

            // Apaga todos los ledes
            pio.ledBegin();

            // Pasa a la primera etapa del programa
            step = 1;
         }
      }
