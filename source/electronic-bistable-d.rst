:Date: 15/10/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bistable-d:

El biestable D
==============
El `biestable D
<https://es.wikipedia.org/wiki/Biestable#Biestable_D_(Data_o_Delay)>`__
(Data o Delay) es un circuito secuencial básico que, al igual que el 
biestable RS, puede almacenar un bit de información.
La diferencia entre ambos consiste en la forma de almacenar ese bit
con sus entradas.

El **biestable D** tiene una entrada **D** o dato que puede estar a
nivel alto (1 lógico) o a nivel bajo (0 lógico). Ese dato se va a grabar
en el interior del biestable cuando se active otra entrada denominada
Reloj o CLK (Clock), en el flanco de subida o cambio de cero a uno lógico.

El biestable D sirve principalmente para almacenar datos binarios y para
sincronizar señales.

Simulación
----------
En la siguiente simulación podemos ver un **biestable D**:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-d.txt"></iframe>
   </div>


Tabla de verdad
---------------
La tabla de verdad del **biestable D** es la siguiente:

.. list-table::
   :widths: 20 20 20 20
   :header-rows: 1

   * - D
     - CLK
     - Q
     - /Q
   * - 0
     - 0
     - Q
     - /Q
   * - 1
     - 0
     - Q
     - /Q
   * - 0
     - _↑¯
     - 0
     - 1
   * - 1
     - _↑¯
     - 1
     - 0
   * - 0
     - 1
     - Q
     - /Q
   * - 1
     - 1
     - Q
     - /Q

Flanco de subida
   Los cambios de estado de este biestable ocurren solamente cuando la
   entrada **CLK** cambia de estar inactiva (0 lógico) a estar activa 
   (1 lógico).
   No ocurren cuando se mantiene inactiva ni cuando se mantiene activa,
   solo en el momento del cambio de valor de 0 lógico a 1 lógico.
   Este cambio se denomina **"Flanco de subida"** y lo vamos a representar
   con el símbolo "_↑¯".

En el momento que en la entrada **CLK** hay un flanco de subida, el valor
de la entrada **D** se copia en el interior del biestable y ese valor se
puede ver en la salida **Q**.

Una vez que la entrada **CLK** está a nivel alto, aunque cambie la entrada
**D**, el valor del biestable no cambiará, porque no ha habido un flanco
de subida.


La salida **/Q** siempre tendrá el valor contrario a la salida **Q**.
Como este biestable no tiene estados prohibidos o indeterminados, esta
condición se cumple siempre.


Ejercicios
----------
#. ¿Qué es un biestable D y para qué sirve?

#. ¿Cuántas entradas tiene un biestable D y qué función tiene cada una?

#. ¿Cuántas salidas tiene un biestable D y qué función tiene cada una?

#. Dibuja el circuito de un biestable D con el nombre de sus entradas
   y de sus salidas.

#. Dibuja la tabla de verdad de un biestable D y explica brevemente
   su funcionamiento normal.

#. ¿Puede tener el biestable D una entrada prohibida o indeterminada?
   ¿Qué consecuencias tiene ese funcionamiento?
   
