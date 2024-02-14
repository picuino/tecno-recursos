:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _pc42-display1:

Display de 7 segmentos
======================

.. only:: html

   .. image:: _thumbs/img-0092.jpg
      :width: 300px
      :alt: Display de 7 segmentos y 4 dígitos. Vista superior.
      :align: center

.. only:: latex

   .. figure:: _images/img-0092.jpg
      :width: 200px
      :alt: Display de 7 segmentos y 4 dígitos. Vista superior.
      :align: center


Objetivos
---------
* Escribir un número en el display de 7 segmentos.
* Escribir caracteres alfanuméricos en el display de 7 segmentos.


Display de 7 segmentos
----------------------
El visualizador o display de siete segmentos es un elemento que
permite mostrar números y también símbolos y caracteres de forma
limitada.
Este tipo de visualizador se utiliza en las ocasiones donde se desea
una buena visibilidad y tiene la ventaja de ser robusto y fácil de
manejar. Los visualizadores de 7 segmentos se pueden encontrar
habitualmente en placas vitrocerámicas, cargadores de baterías,
reproductores de audio, hornos de microondas, lavadoras, relojes, etc.

En este tipo de visualizador solo hay que definir el estado de siete
elementos para formar la cifra o letra deseada. En otro tipo de
displays más complejos es necesario definir el estado de 35 o más
puntos para formar un número o carácter.
La desventaja del display de 7 segmentos está basada en su poca
capacidad para representar letras y símbolos.

En la figura adjunta puede verse un display de 7 segmentos y la
nomenclatura de sus elementos.


.. only:: html

   .. image:: _images/img-0007.png
      :width: 240px
      :alt: Segmentos del display de siete segmentos.
      :align: center

.. only:: latex

   .. figure:: _images/img-0007.png
      :width: 160px
      :alt: Segmentos del display de siete segmentos.
      :align: center





La función :cpp:func:`dispNum`
------------------------------

.. cpp:function:: dispNum(int number)

   El argumento de la función :cpp:func:`dispNum` es un número entero
   positivo (0, 1, 2, ... 32767).
   Este número se visualizará con cuatro dígitos en el display.
   Si el número tiene menos de cuatro dígitos, el display apaga
   por la izquierda los dígitos no utilizados.
   Si el número es mayor de 9999, solo se representan los cuatro
   dígitos de la derecha.

   Estos son algunos ejemplos de visualización.

   .. parsed-literal::

      dispNum(0);      ->  [       0 ]
      dispNum(1);      ->  [       1 ]
      dispNum(20);     ->  [     2 0 ]
      dispNum(124);    ->  [   1 2 4 ]
      dispNum(2345);   ->  [ 2 3 4 5 ]
      dispNum(10321);  ->  [ 0 3 2 1 ]

El ejemplo que aparece a continuación representa en el display un
número que aumenta y disminuye con los pulsadores 3 y 4.

.. literalinclude:: sourcecode/display/dispNum_up_down/dispNum_up_down.ino
   :language: Arduino
   :linenos:
   :name: display-dispNum_up_down


La función :cpp:func:`dispWrite` con dos argumentos
---------------------------------------------------
La función :cpp:func:`dispWrite` permite escribir números y
caracteres en el visualizador de siete segmentos y cuatro cifras.
Dependiendo del número de argumentos, la función se comportará de una
forma distinta.


.. cpp:function:: dispWrite(int position, int segments)

   Cuando los argumentos de la función :cpp:func:`dispWrite` son dos
   números, el primero representa la posición del dígito que se desea
   cambiar y el segundo representa los segmentos que se desea
   encender.
   Las posiciones de los dígitos son, de izquierda a derecha, 1 2 3 4.

   Los segmentos de un dígito se encienden o se apagan con un número
   binario que representa a cada uno de ellos.
   El primer dígito binario (más a la derecha) representa al
   segmento 'a'.
   El segundo dígito binario representa al segmento 'b' y así hasta
   el octavo dígito binario que no representa a ningún segmento.

   Por ejemplo, el número binario 0b00000001 encenderá el segmento
   'a' y se verá en el display de 7 segmentos como una barra
   superior '¯'.
   El número binario 0b00000110 encenderá los segmentos 'b' y 'c'
   y se verá en el display de 7 segmentos como el número 1.
   El número binario 0b01000000 encenderá el segmento 'g' y se verá
   en el display de 7 segmentos como el signo menos '-'.

   En ocasiones será más sencillo utilizar los valores ya
   predefinidos en la librería.
   A continuación se muestra una lista con los valores predefinidos
   de forma estándar.

   *  **Números:** DD_0, DD_1, DD_2, DD_3, DD_4, DD_5, DD_6, DD_7,
      DD_8, DD_9
   *  **Letras:** DD_A, DD_b, DD_B, DD_C, DD_d, DD_E, DD_F, DD_G,
      DD_g, DD_H, DD_h, DD_I, DD_i, DD_J, DD_K, DD_L, DD_n, DD_ny,
      DD_o, DD_O, DD_P, DD_q, DD_r, DD_S, DD_t, DD_u, DD_U, DD_y,
      DD_Y, DD_Z
   *  **Espacio blanco:** DD_SP

   También se pueden crear símbolos a medida con números binarios.


El siguiente programa hace rotar una barra a través de los cuatro
segmentos superiores de un dígito.

.. literalinclude:: sourcecode/display/dispWrite_rotate_4/dispWrite_rotate_4.ino
   :language: Arduino
   :linenos:
   :name: display-dispWrite_rotate_4


El siguiente programa hace rotar una barra a través de todos los
segmentos exteriores de un dígito.

.. literalinclude:: sourcecode/display/dispWrite_rotate_6/dispWrite_rotate_6.ino
   :language: Arduino
   :linenos:
   :name: display-dispWrite_rotate_6


La función :cpp:func:`dispWrite` con cuatro argumentos
------------------------------------------------------

.. function:: dispWrite(int digit, int  digit, int  digit, int  digit)

   Cuando la función :cpp:func:`dispWrite` tiene cuatro argumentos,
   cada uno es interpretado como el valor de cada dígito del
   visualizador de siete segmentos.
   Esta es la función más sencilla para visualizar una palabra en
   el display.

El siguiente programa de ejemplo hace aparecer en el display la
palabra 'HOLA'.

.. literalinclude:: sourcecode/display/dispWrite_hola/dispWrite_hola.ino
   :language: Arduino
   :linenos:
   :name: display-dispWrite_hola


Ejercicios
----------

Programa el código necesario para resolver los siguientes problemas.

1. Completar el siguiente programa para que cuente hacia atrás desde
   10 hasta 0 cambiando de valor una vez cada segundo.
   Una vez terminada la cuenta atrás, debe encenderse el led rojo.

   .. code-block:: Arduino
      :linenos:

      // Cuenta atrás de 10 segundos

      #include <Wire.h>
      #include <PC42.h>

      int count;

      void setup() {
         pc.begin();         // Inicializar el módulo PC42
         count = 10;
         while(count > 0) {
                              // Muestra el número en el display
                              // Espera un segundo
                              // Reduce la variable count en una unidad
         }
                              // Muestra el número en el display
                              // Enciende el led rojo
      }

      void loop() {
      }


2. Completar el siguiente programa para que funcione como un dado
   electrónico. Al presionar el pulsador 1, se debe mostrar en el
   display un número desde el 1 hasta el 6.

   .. code-block:: Arduino
      :linenos:

      // Dado electrónico

      #include <Wire.h>
      #include <PC42.h>

      void setup() {
         pc.begin();       // Inicializar el módulo PC42
      }

      void loop() {
         int dado;
         // Calcula un número aleatorio entre 1 y 6
         dado = random(1, 1 + 6);
                                // Muestra el valor por el display
                                // Espera 50 milisegundos
                                // Espera mientras no se presione la tecla 1
      }


3. Mostrar en el display las palabras 'JOSE' y 'LULU', cambiando de
   una a otra cada segundo

4. Mostrar en el cuarto dígito una animación que consiste en iluminar
   todos los segmentos uno a uno desde el segmento 'a' hasta el
   segmento 'f'.
   Cuando todos los segmentos estén iluminados, se deben apagar todos
   otra vez y la secuencia comenzará de nuevo.
   El tiempo de espera entre el encendido de un segmento y el
   siguiente será de medio segundo.

5. Diseña dos símbolos nuevos y realiza un programa que los muestre
   en el display en las posiciones 2 y 4.

6. Dibuja en el display unas pesas.

7. Muestra en el display las palabras 'HOLA' y un nombre propio corto.
   Las dos palabras deben alternarse cada medio segundo.

8. Realiza una animación original en el display, mostrando símbolos o
   movimientos de luz.


