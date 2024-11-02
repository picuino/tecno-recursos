:Date: 28/10/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-gate-not:

La puerta lógica NOT
====================
Los componentes más sencillos de la electrónica digital son las
**puertas lógicas**, que llevan a cabo operaciones lógicas básicas.
Combinando estas puertas lógicas se puede llegar a construir circuitos
mucho más complejos, hasta llegar a los computadores modernos.

La puerta lógica más sencilla posible es la **puerta negación**, también
llamada **puerta inversora** o **puerta NOT**, cuyo símbolo se muestra
a continuación:

.. figure:: electronic/_images/electronic-simbolo-puerta-not.png
   :width: 180px
   :align: center
   :alt: Puerta lógica NOT.
   
   Puerta lógica NOT.

Esta puerta invierte el valor de la señal de entrada, de manera que si
la entrada vale un 1 lógico, la salida valdrá un 0 lógico y viceversa.

El círculo a la salida del triángulo es el que representa que la puerta
invierte, o niega, el valor de entrada.

La función lógica NOT se representa mediante una línea sobre el elemento
a invertir o negar:

.. math::

   Out = \overline{ A }


A continuación podemos leer la 
`tabla de verdad <https://es.wikipedia.org/wiki/Tabla_de_verdad#Negaci%C3%B3n>`__
de la puerta NOT, que representa todos los valores posibles de entrada y
de salida de la puerta lógica:

.. figure:: electronic/_images/electronic-puerta-not-02.png
   :width: 114px
   :align: center
   :alt: Tabla de verdad de puerta lógica NOT.
   
   Tabla de verdad de la puerta lógica NOT.

Cuando la entrada (A) vale cero, la salida (Out) valdrá uno.

Cuando la entrada (A) vale uno, la salida (Out) valdrá cero.


Simulación
----------
En la siguiente simulación podemos ver una puerta NOT con una entrada
que puede cambiar de valor y una salida que vale siempre lo contrario 
al valor de entrada.

En el simulador los valores se pueden representar con números (0, 1),
con niveles lógicos (L, H) o con valores de tensión (0V, 5V), con
la siguiente correspondencia:

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Nivel
     - Valor lógico
     - Valor de tensión
   * - L = LOW
     - 0 = Cero lógico
     - 0 Voltios
   * - H = HIGH
     - 1 = Uno lógico
     - 5 Voltios

Hay que clicar sobre el valor lógico de entrada para que cambie de valor.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-puerta-not.txt"></iframe>
   </div>


Ejercicios
----------

#. ¿Qué es una puerta lógica? ¿Qué se puede llegar a construir con las
   puertas lógicas?

#. Dibuja el símbolo de la puerta NOT y escribe debajo su
   función lógica y sus tres diferentes nombres.
   
#. Dibuja la tabla de verdad de la puerta NOT con **valores numéricos**.

   Dibuja la tabla de verdad de la puerta NOT con **niveles lógicos**.

#. Realiza una simulación de dos puertas NOT en serie.
   ¿Cómo crees que será la tabla de verdad de las dos puertas?
   
   Realiza la simulación y dibuja la tabla de verdad de las dos puertas
   en serie.