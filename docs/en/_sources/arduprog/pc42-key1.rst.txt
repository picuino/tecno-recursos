:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. |keyNum| replace::  ``keyNum``: número del 1 al 6 que representa al pulsador
      del que se solicita su valor. El valor 0 representa a todos los pulsadores juntos.
.. |KEY_VALUES| replace:: Se pueden utizar también los valores predefinidos
   ``KEY_LEFT``, ``KEY_RIGHT``, ``KEY_DOWN``, ``KEY_UP``, ``KEY_ENTER``, ``KEY_BACK`` y ``KEY_ALL``.

.. _pc42-key1:

Pulsadores y Estados
====================

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
* Leer el estado de un pulsador.
* Programar Arduino para que responda a las pulsaciones del usuario.


Pulsadores del panel de control PC42
------------------------------------
El panel PC42 dispone de un teclado con seis pulsadores.
Cada pulsador se identifica con un número o con una constante que
lleva su nombre.
El nombre de cada pulsador puede verse en la serigrafía del circuito
impreso.
Las seis constantes y números que representan a los pulsadores son
los siguientes.

   +------------+-------------+
   | Constante  | Pulsador    |
   +============+=============+
   | KEY_LEFT   |     1       |
   +------------+-------------+
   | KEY_RIGHT  |     2       |
   +------------+-------------+
   | KEY_DOWN   |     3       |
   +------------+-------------+
   | KEY_UP     |     4       |
   +------------+-------------+
   | KEY_ENTER  |     5       |
   +------------+-------------+
   | KEY_BACK   |     6       |
   +------------+-------------+

El número de pulsador se representará en este manual como ``keyNum``.


La función :cpp:func:`keyPressed`
---------------------------------

.. cpp:function:: int keyPressed(int keyNum)

   Esta función devuelve el valor de un pulsador.
   Devuelve el valor 1 si el pulsador está presionado y 0 si no lo
   está.
   El valor de esta función filtra el ruido eléctrico y los rebotes.

   El **ruido eléctrico** son interferencias asociadas a los
   motores eléctricos, a los interruptores, a las modernas lámparas
   de bajo consumo o a los teléfonos móviles.
   Cualquiera de estos aparatos puede provocar que durante un breve
   momento un pulsador parezca estar presionado aunque no sea
   cierto.
   Es muy recomendable filtrar este ruido para evitar pulsaciones
   'falsas' o 'fantasmas'.

   Los rebotes son un fenómeno que provoca que el pulsador no haga
   contacto durante un periodo corto de tiempo, unos milisegundos,
   justo después de presionarle porque la chapa metálica 'rebota'
   y deja de hacer contacto. Este fenómeno puede provocar
   que se interprete una pulsación como dos pulsaciones, por lo que
   es recomendable que se filtre para eliminarlo.

   La desventaja de este filtro de ruido consiste en que esta función
   tiene un retardo de 20 milisegundos en responder desde que cambia
   el estado real del pulsador hasta que devuelve el valor correcto.

   Si se utiliza el argumento ``KEY_ALL``, la función devuelve un
   número que depende de la suma de los pulsadores que se encuentren
   presionados.

   +----------------------+-----------------+--------------------------+
   | Pulsador presionado  | Valor devuelto  | Valor devuelto (binario) |
   +======================+=================+==========================+
   | KEY_LEFT             |     1           |  0b000001                |
   +----------------------+-----------------+--------------------------+
   | KEY_RIGHT            |     2           |  0b000010                |
   +----------------------+-----------------+--------------------------+
   | KEY_DOWN             |     4           |  0b000100                |
   +----------------------+-----------------+--------------------------+
   | KEY_UP               |     8           |  0b001000                |
   +----------------------+-----------------+--------------------------+
   | KEY_ENTER            |     16          |  0b010000                |
   +----------------------+-----------------+--------------------------+
   | KEY_BACK             |     32          |  0b100000                |
   +----------------------+-----------------+--------------------------+

   Si se encuentra presionado el pulsador 4, la función devolverá el valor
   8. Con el pulsador 6 presionado, la función devolverá el valor 32.
   Si se presionan los dos pulsadores 4 y 6 a la vez, la función devolverá
   la suma de 8 y 32, es decir 40.

   |keyNum|

   |KEY_VALUES|


Encender un led con un pulsador
-------------------------------

El siguiente programa encenderá el led D1 cuando se presione el
pulsador 1 (``KEY_LEFT``)

.. literalinclude:: sourcecode/keyboard/keyPressed_On/keyPressed_On.ino
   :language: Arduino
   :linenos:
   :name: button-keyPressed_On


Programa equivalente en el entorno Ardublock:

.. image:: _images/ardublock_keyPressed.png
   :width: 624px
   :alt: Programa de Ardublock para encender el led D1 con el
         pulsador 1 del panel de control PC42

En este enlace se puede descargar el
:download:`archivo de programa para entorno Ardublock 'keyPressed'
<_downloads/ardublock_keyPressed.abp>`


Apagar un led con un pulsador
-----------------------------

El siguiente programa realizará la función contraria al anterior,
apagará el led D1 cuando se presione el pulsador 1 (``KEY_LEFT``)

.. literalinclude:: sourcecode/keyboard/keyPressed_Off/keyPressed_Off.ino
   :language: Arduino
   :linenos:
   :name: button-keyPressed_Off


El lenguaje de Arduino permite escribir la última función del programa
anterior de muchas otras formas. Estas son algunas alternativas que
consiguen el mismo resultado.

.. code-block:: Arduino
   :linenos:

   // Enciende el led D1 si el pulsador 1 no está presionado

   // Función NOT lógico
   pc.ledWrite(1, !on_off);

   // Función Negación binaria
   pc.ledWrite(1, ~on_off);

   // Función resta
   pc.ledWrite(1, 1-on_off);

   // Funciones de comparación
   pc.ledWrite(1, (on_off == 0));
   pc.ledWrite(1, (on_off < 1));

   // Función XOR
   pc.ledWrite(1, on_off ^ 1);

Como se puede ver, el lenguaje de Arduino es muy rico en expresiones.
Gracias a esto es un lenguaje muy potente y, a su vez, complejo de aprender.
Por esta razón en los ejemplos siguientes aparecerá el mínimo número
de expresiones lógicas, para no complicar el aprendizaje.


El programa equivalente en el entorno Ardublock resulta más sencillo:

.. image:: _images/ardublock_keyPressed_2.png
   :target: ../_downloads/ardublock_keyPressed_2.abp
   :width: 668px
   :alt: Programa de Ardublock para apagar el led D1 con el
         pulsador 1 del panel de control PC42

:download:`Programa para entorno Ardublock: 'keyPressed_2'
<_downloads/ardublock_keyPressed_2.abp>`



La función :cpp:func:`keyValue`
-------------------------------

.. cpp:function:: int keyValue(int keyNum)

   Esta función es semejante a la función :cpp:func:`keyPressed`
   vista anteriormente.
   Devuelve el valor de un pulsador. Si el pulsador está presionado,
   devuelve el valor 1 si el pulsador no está presionado devuelve el
   valor 0.
   Esta función no filtra el ruido eléctrico como lo hace la función
   :cpp:func:`keyPressed`.

   Esta función devuelve el estado actual del pulsador sin filtro y,
   por lo tanto, puede devolver valores falsos producidos por el
   ruido eléctrico o los rebotes.

   Como ventaja, esta función devuelve el valor del pulsador sin
   retraso de tiempo en la respuesta.

   |keyNum|

   |KEY_VALUES|



Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. Encender el led D1 con el pulsador 1 y apagar el led D1 con el pulsador
   2. Corregir los errores sintácticos del siguiente programa.
   Los errores más comunes son: olvidar el punto y coma al final de la
   instrucción, cambiar mayúsculas y minúsculas, olvidar un corchete o
   paréntesis.
   Arduino ayuda a encontrar los errores de dos maneras.
   Al escribir una función correcta, esta aparece con un color naranja.
   Al compilar el código, la ventana inferior informa sobre los errores
   encontrados.

   .. code-block:: Arduino
      :linenos:

      // Programa con errores.
      // Enciende el led D1 con el pulsador 1 y
      // apaga el led D1 con el pulsador 2

      #include <Wire.h>
      #include <PC42.h>

      void setup() {
         pc.Begin();                 // Inicializar el módulo PC42
      }

      void loop() {
         if (pc.keypressed(1))       // Si (pulsador 1 está presionado)
            pc.ledWrite(1, LED_ON);  //   Enciende led D1
         if (pc.keypressed(2))       // Si (pulsador 2 está presionado)
            pc.ledWrite(1, LED_OFF)  //   Apaga el led D1


2. Encender todos los ledes de la siguiente manera.
   El led D1 se encenderá al presionar el pulsador 1.
   A continuación el led D2 se encenderá al presionar el pulsador 2.
   El programa seguirá de esta manera hasta llegar a encender 5 led.
   Completar el programa que aparece a continuación.

   .. code-block:: Arduino
      :linenos:

      // Programa incompleto.
      // Enciende todos los ledes uno a uno y por orden
      // con todos los pulsadores

      #include <Wire.h>
      #include <PC42.h>

      void setup() {
         pc.begin();   // Inicializar el módulo PC42

         // Mientras (pulsador 1 no esta presionado), espera
         while (pc.keyPressed(1) == 0);

         // Enciende el led D1
         pc.ledWrite(1, LED_ON);


      }

      void loop() {
      }


   Programa equivalente en el entorno Ardublock:

   .. image:: _images/ardublock_keyPressed_3.png
      :target: ../_downloads/ardublock_keyPressed_3.abp
      :width: 669px
      :alt: Programa de Ardublock para encender una secuencia de
            led con los pulsadores


   :download:`Programa para entorno Ardublock: 'keyPressed_3'
   <_downloads/ardublock_keyPressed_3.abp>`

3. Al comenzar, se encenderá el led D1.
   Cuando se presione el pulsador 1, se apagará el led D1 y se encenderá
   el led siguiente. La luz se moverá así hacia la derecha hasta el led D5.
   Al presionar el pulsador 5, el led D5 se apagará y se encenderá de nuevo
   el led led D1.
   Completar el programa que aparece a continuación según los comentarios.

   .. code-block:: Arduino
      :linenos:

      // Programa incompleto.
      // Mover la luz de los ledes hacia la derecha
      // con los pulsadores

      #include <Wire.h>
      #include <PC42.h>

      int i;

      void setup() {
         pc.begin();              // Inicializar el módulo PC42
         i = 1;                   // El primer led encendido es el 1
      }

      void loop() {
         pc.ledWrite(i, LED_ON);   // Enciende el led i
         if (pc.keyPressed(i)) {   // Si (pulsador i está presionado)
            pc.                    //    Apaga el led i
            i =                    //    Aumenta i en una unidad
            if (i > 6) i = 1;      // Si (i es mayor que 6) i vale 1
         }
      }

   Programa equivalente en el entorno Ardublock:

   .. image:: _images/ardublock_keyPressed_4.png
      :target: ../_downloads/ardublock_keyPressed_4.abp
      :width: 672px
      :alt: Programa de Ardublock para encender una secuencia de
            led con los pulsadores

   :download:`Programa para entorno Ardublock: 'keyPressed_4'
   <_downloads/ardublock_keyPressed_4.abp>`


4. Modificar el programa anterior para que los ledes se enciendan desde el
   D6 hasta el D1.
   Cuando llegue el turno de apagar el led D1, se encenderá de nuevo el
   led D6.


5. Los tres ledes D1, D2 y D3 se encenderán cuando se presione a la vez
   los tres pulsadores 1, 2 y 3.
   Utiliza el operador '&&' que evalúa si se producen dos condiciones a la
   vez.
   Completar el programa que aparece a continuación según los comentarios.

   .. code-block:: Arduino
      :linenos:

      // Programa incompleto.
      // Enciende los ledes D1, D2, D3 cuando
      // se presionen los pulsadores 1, 2 y 3

      #include <Wire.h>
      #include <PC42.h>

      void setup() {
         pc.begin();                // Inicializar el módulo PC42
      }

      void loop() {

         if (pc.keyPressed(1)  &&   // Si ( (pulsador 1 presionado) y
             pc.keyPressed(2)  &&   //      (pulsador 2 presionado) y
             pc.keyPressed(3)) {    //      (pulsador 3 presionado))
            pc.                     //    Enciende los ledes D1, D2 y D3


         }
      }

   Programa equivalente en el entorno Ardublock:

   .. image:: _images/ardublock_keyPressed_5.png
      :target: ../_downloads/ardublock_keyPressed_5.abp
      :width: 680px
      :alt: Programa de Ardublock para encender una secuencia de
            led con los pulsadores

   :download:`Programa para entorno Ardublock: 'keyPressed_5'
   <_downloads/ardublock_keyPressed_5.abp>`


6. Después de presionar en orden la secuencia de pulsadores 2, 4 y 1, una
   cerradura electrónica se abrirá.
   La apertura se indicará encendiendo en secuencia los ledes rojo,
   amarillo y verde, uno cada segundo.
   Completar los huecos del programa que aparece a continuación según los
   comentarios.

   .. code-block:: Arduino
      :linenos:

      // Programa incompleto.
      // Cerradura electrónica
      // Presionar la secuencia 2, 4, 1 para abrir la cerradura

      #include <Wire.h>
      #include <PC42.h>

      int step;

      void setup() {
         pc.begin();   // Inicializar el módulo PC42
         step = 1;     // Espera la pulsación del primer pulsador
      }

      void loop() {

         // Si (etapa del programa es 1)
         if (step == 1) {

            // Si (solo el pulsador 2 presionado)
            if (pc.keyPressed(0) == 0b00000010) {

               // Espera a que no esté presionado
               while(pc.keyPressed(2));

               // Pasa a la siguiente etapa del programa
               step = 2;
            }
         }

         // Si (etapa del programa es 2)
         if (step == 2) {
            // Si (solo el pulsador 4 presionado)
            if (pc.keyPressed(0) == 0b001000) {

               // Espera a que no esté presionado
               while(pc.keyPressed(4));

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
            pc.ledWrite(1, LED_ON);
            delay(1000);

            // Enciende el led amarillo y espera un segundo
            pc.ledWrite(2, LED_ON);
            delay(1000);

            // Enciende el led verde y espera un segundo
            pc.ledWrite(3, LED_ON);
            delay(1000);

            // Apaga todos los ledes
            pc.ledBegin();

            // Pasa a la primera etapa del programa
            step = 1;
         }
      }


   Programa equivalente en el entorno Ardublock:

   .. image:: _images/ardublock_keyPressed_6.png
      :target: ../_downloads/ardublock_keyPressed_6.abp
      :width: 854px
      :alt: Programa de Ardublock para encender una secuencia de
            led con los pulsadores

   :download:`Programa para entorno Ardublock: 'keyPressed_6'
   <_downloads/ardublock_keyPressed_6.abp>`

