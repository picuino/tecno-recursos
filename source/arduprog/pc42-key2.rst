:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. |keyNum| replace::  ``keyNum``: número del 1 al 6 que representa al pulsador
      del que se solicita su valor. El valor 0 representa a todos los pulsadores juntos.
.. |KEY_VALUES| replace:: Se pueden utizar también los valores predefinidos
   ``KEY_LEFT``, ``KEY_RIGHT``, ``KEY_DOWN``, ``KEY_UP``, ``KEY_ENTER``, ``KEY_BACK`` y ``KEY_ALL``.


.. _pc42-key2:

Pulsadores y Eventos
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
* Leer los eventos asociados a un pulsador.
* Programar Arduino para que responda a los eventos de los pulsadores.


Eventos relacionados con los pulsadores
---------------------------------------
|  A la hora de leer un pulsador, se debe distinguir los estados de los eventos.
|  Un **estado** se mantiene en el tiempo. Un ejemplo de estado es el valor
   presionado de un pulsador. Mientras el pulsador está presionado, el estado vale uno.
   Cuando el pulsador no está presionado, el estado vale cero.
|  Un **evento**, por el contrario, solo es verdadero al comenzar un nuevo estado.
   En el caso anterior, al presionar un pulsador el evento presionado vale uno
   la primera vez que se lee. A partir de ese momento, siempre vale cero hasta que
   se vuelva a cumplir la condición de pulsador presionado.
|  Los **eventos** son útiles cuando se desea realizar una sola acción al presionar
   una tecla. En el siguiente gráfico se puede ver la diferencia entre estado y evento.

.. only:: html

   .. image:: _images/img-0001.png
      :width: 640px
      :alt: Diferencia entre estado y evento.
      :align: center

.. only:: latex

   .. figure:: _images/img-0001.png
      :width: 120px
      :alt: Diferencia entre estado y evento.
      :align: center


La función :cpp:func:`keyEvents`
--------------------------------

.. cpp:function:: int keyEvents(int keyNum, int event)

   Esta función devuelve el valor de los eventos que se producen en un pulsador.
   Los eventos que puede devolver la función son los siguientes

   +------------------------+-----------------------------------------------------+
   | Evento                 | Significado                                         |
   +========================+=====================================================+
   | KEY_PRESSED_TIME1      | El pulsador se ha presionado durante 0,02 segundos  |
   +------------------------+-----------------------------------------------------+
   | KEY_PRESSED_TIME2      | El pulsador se ha presionado durante 0,5 segundos   |
   +------------------------+-----------------------------------------------------+
   | KEY_PRESSED_TIME3      | El pulsador se ha presionado durante 2,0 segundos   |
   +------------------------+-----------------------------------------------------+
   | KEY_RELEASED           | El pulsador se ha dejado de presionar               |
   +------------------------+-----------------------------------------------------+

   Estos valores de tiempo son los valores predefinidos después de iniciar la placa
   y se pueden cambiar en la configuración.


   |  |keyNum|


Encender un led al presionar un pulsador cierto tiempo
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

En este ejemplo, un led se encenderá después de que se presione su pulsador durante
más de medio segundo

.. literalinclude:: sourcecode/keyboard/keyEvents_Time2/keyEvents_Time2.ino
   :language: Arduino
   :linenos:
   :name: button-keyEvents_Time2


El ejemplo puede modificarse con facilidad para que se encienda después
de presionar dos segundos.

.. code-block:: Arduino
   :linenos:

   // Enciende el led D1 cuando se presione el pulsador 1
   // más de dos segundos

   #include <Wire.h>
   #include <PC42.h>

   void setup() {
      pc.begin();        // Inicializar el módulo PC42
   }

   void loop() {
      // Si (pulsador 1 es presionado-dos-segundos)
      if (pc.keyEvents(1, KEY_PRESSED_TIME3))
         // Enciende el led D1
         pc.ledWrite(1, LED_ON);
   }


Múltiples funciones en un pulsador
----------------------------------

Este ejemplo es un poco más complejo y demuestra la capacidad de los eventos para
dar más de un significado a un solo pulsador. Gracias a esta capacidad, un solo
pulsador podrá realizar muchas funciones por sí solo.

.. literalinclude:: sourcecode/keyboard/keyEvents_3_funcs/keyEvents_3_funcs.ino
   :language: Arduino
   :linenos:
   :name: button-keyEvents_3_funcs


Ejercicios
----------
Programa el código necesario para resolver los siguientes problemas.

1. El siguiente programa enciende el led D1 al presionar el pulsador D1 y apaga
   el led D1 al volver a presionar el pulsador 1. Se utiliza una variable para
   almacenar el estado del led D1.
   Se pide modificar el programa para que también el led D2 se encienda y apague
   con el pulsador 2.

   .. literalinclude:: sourcecode/keyboard/keyEvents_On_Off/keyEvents_On_Off.ino
      :language: Arduino
      :linenos:
      :name: button-keyevent_on_off


2. El siguiente programa mueve hacia la derecha un led cuando se presiona el pulsador 2.
   Modificar el programa para que el led se mueva hacia la izquierda al presionar el pulsador 1.

   .. literalinclude:: sourcecode/keyboard/keyEvents_move_right/keyEvents_move_right.ino
      :language: Arduino
      :linenos:
      :name: button-keyevents_move_right


3. Modificar el programa anterior para que se encienda el led D1 y se
   apaguen el resto de ledes al presionar el pulsador 6 ``KEY_BACK``
   durante dos segundos.

