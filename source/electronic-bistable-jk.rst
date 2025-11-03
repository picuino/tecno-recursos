:Date: 28/10/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bistable-jk:

El biestable JK
===============
El `biestable JK
<https://es.wikipedia.org/wiki/Biestable#Biestable_JK>`__ 
es un circuito secuencial que permite almacenar un bit de información.

El **biestable JK** es uno de los biestables más utilizados por su 
versatilidad. Su funcionamiento es idéntico al 
:ref:`biestable RS <electronic-bistable-rs>`, salvo cuando ambas entradas
**J** y **K** se activan simultáneamente a nivel alto (1 lógico).
En ese caso, las salidas cambian al estado opuesto al que tenían
previamente (función **toggle**), evitando así la indeterminación
no deseada del biestable RS.

Este biestable constituye la base de numerosos circuitos secuenciales,
tales como contadores, registros, divisores de frecuencia o memorias de
estado.


Simulación
----------
En la siguiente simulación podemos observar un **biestable JK**:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-jk.txt"></iframe>
   </div>


Tabla de verdad
---------------
Los cambios en la salida del **biestable JK** solo se producen cuando
cambia el estado de la entrada Clock (CLK) pasa de nivel bajo (0 lógico) 
a nivel alto (1 lógico); es decir, durante los **flancos de subida de
CLK**.

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
que tenían previamente.

Si la entrada **J** está a nivel alto (1 lógico), al producirse un flanco
de subida en **CLK**, la salida **Q** pasa a nivel alto (1 lógico)
y **/Q** pasa a nivel bajo (0 lógico).
La entrada **J** cumple una función similar a la entrada **SET** de un
biestable RS.

Si la entrada **K** está a nivel alto (1 lógico), al producirse un flanco
de subida en **CLK**, la salida **Q** pasa a nivel bajo (0 lógico)
y **/Q** pasa a nivel alto (1 lógico).
La entrada **K** cumple una función similar a la entrada **RESET** de un
biestable RS.

Si ambas entradas **J** y **K** están a nivel alto (1 lógico), al
producirse un flanco de subida en **CLK**, las salidas **Q** y **/Q**
cambian al estado opuesto al que tenían antes.
Este comportamiento elimina la indeterminación presente en el biestable RS
y permite construir otros circuitos útiles, como divisores de frecuencia y
contadores.


Ejercicios
----------
#. ¿Qué es un biestable JK y para qué sirve?

#. ¿Cuántas entradas tiene un biestable JK y qué función cumple cada una?

   ¿Tienen alguna semejanza con las del biestable RS?

#. ¿Cuántas salidas tiene un biestable JK y qué función cumple cada una?

#. Dibuja el circuito de un biestable JK con el nombre de sus entradas
   y de sus salidas.

#. Dibuja la tabla de verdad de un biestable JK y explica brevemente
   su funcionamiento normal.

#. ¿Puede tener el biestable JK una entrada prohibida o indeterminada?

   ¿Qué se puede construir con el biestable JK gracias a ese
   funcionamiento?
   
#. Simula todos los estados del biestable JK con el simulador de esta
   página.