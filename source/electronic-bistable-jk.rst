:Date: 28/10/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bistable-jk:

El biestable JK
===============
El `biestable JK
<https://es.wikipedia.org/wiki/Biestable#Biestable_JK>`__ es un circuito
secuencial que puede almacenar un bit de información.

El **biestable JK** es uno de los más usados. Su funcionamiento es idéntico
al biestable RS, excepto en el caso de que se activen sus dos entradas
**J** y **K** a nivel alto (1 lógico). En ese caso las salidas cambian al
estado contrario al que tenían anteriormente (función toggle) y esto evita
la indeterminación no deseada del biestable RS.

Este biestable es la base de numerosos circuitos secuenciales tales como
contadores, registros, divisores de frecuencia, memorias de estado, etc.


Simulación
----------
En la siguiente simulación podemos ver un **biestable JK**:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-jk.txt"></iframe>
   </div>


Tabla de verdad
---------------
Los cambios de la salida del biestable JK solo se producen cuando
cambia el estado de la entrada Clock (CLK) de nivel bajo (0 lógico) -> 
a nivel alto (1 lógico), es decir en los **flancos de subida de CLK**.

La tabla de verdad del **biestable JK** es la siguiente:

.. list-table::
   :widths: 15 15 15 15 15
   :header-rows: 1

   * - J
     - K
     - CLK
     - Q
     - /Q
   * - 0
     - 0
     - _↑¯
     - Q
     - /Q
   * - 1
     - 0
     - _↑¯
     - 1
     - 0
   * - 0
     - 1
     - _↑¯
     - 0
     - 1
   * - 1
     - 1
     - _↑¯
     - /Q
     - Q


Si las dos entradas **J** y **K** están a nivel bajo (0 lógico), al llegar
un flanco de subida en **CLK** las salidas permanecen en el mismo estado
en el que estaban antes.

Si la entrada **J** está a nivel alto (1 lógico), al llegar un flanco de
subida en **CLK** la salida **Q** cambia a nivel alto (1 lógico) y **/Q**
cambiará a nivel bajo (0 lógico).
La entrada **J** es semejante a la entrada **SET** de un biestable RS.

Si la entrada **K** está a nivel alto (1 lógico), al llegar un flanco de
subida en **CLK** la salida **Q** cambia a nivel bajo (0 lógico) y **/Q**
cambiará a nivel alto (1 lógico).
La entrada **K** es semejante a la entrada **RESET** de un biestable RS.

Si las dos entradas **J** y **K** están a nivel alto (1 lógico), al llegar
un flanco de subida en **CLK** las salidas **Q** y **/Q** cambian al
estado contrario que tenían antes.
Esto evita la indeterminación que tenía el biestable RS y servirá para
fabricar otros circuitos útiles, como los divisores de frecuencia.


Ejercicios
----------
#. ¿Qué es un biestable JK y para qué sirve?

#. ¿Cuántas entradas tiene un biestable JK y qué función tiene cada una?

   ¿Tienen alguna semejanza con el biestable RS?

#. ¿Cuántas salidas tiene un biestable JK y qué función tiene cada una?

#. Dibuja el circuito de un biestable JK con el nombre de sus entradas
   y de sus salidas.

#. Dibuja la tabla de verdad de un biestable JK y explica brevemente
   su funcionamiento normal.

#. ¿Puede tener el biestable JK una entrada prohibida o indeterminada?
   
#. Simula todos los estados del biestable JK con el simulador de esta
   página.