:Date: 29/10/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bistable-t:

El biestable T
==============
El `biestable T (Toggle)
<https://es.wikipedia.org/wiki/Biestable#Biestable_T_(Toggle)>`__ 
es un circuito secuencial que puede almacenar un bit de información.

El **biestable T** tiene dos entradas, la entrada **T** o toggle, que sirve
como entrada de datos y la entrada de reloj (Clock o **CLK**) que sirve
para validar el dato de entrada.
Este biestable cambia de estado cada vez que recibe un pulso de reloj
mientras su entrada **T** esté activa (1 lógico).

El biestable T tiene dos salidas como el resto de biestables. Las salidas
complementarias **Q** y **/Q** que siempre valen una lo contrario de la
otra.

El **biestable T** es muy útil para construir:
  * **Contadores binarios**: son circuitos que cuentan, en código binario,
    los pulsos de entrada que les llegan. Cada biestable que se añade en
    serie es un bit que se añade a la cuenta binaria.
  * **Divisores de frecuencia**: son circuitos que dividen la frecuencia
    de su entrada en frecuencias menores.
    Esto es útil por ejemplo en los relojes digitales que dividen la
    frecuencia de un cristal de cuarzo para dar pulsos de un segundo
    al motor de las manillas.


Simulación
----------
En la siguiente simulación podemos ver un **biestable T**:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-t.txt"></iframe>
   </div>


Tabla de verdad
---------------
Los cambios de la salida del biestable T solo se producen cuando
cambia el estado de la entrada Clock (CLK) de nivel bajo (0 lógico) -> 
a nivel alto (1 lógico), es decir en los **flancos de subida de CLK**.

La tabla de verdad del **biestable T** es la siguiente:

.. list-table::
   :widths: 20 20 20 20
   :header-rows: 1

   * - T
     - CLK
     - Q
     - /Q
   * - 0
     - _↑¯
     - Q
     - /Q
   * - 1
     - _↑¯
     - /Q
     - Q


Si la entrada **T** está a nivel bajo (0 lógico), al llegar
un flanco de subida en **CLK** las salidas permanecen en el mismo estado
en el que estaban antes.

Si la entrada **T** está a nivel alto (1 lógico), al llegar
un flanco de subida en **CLK** las salidas cambian su nivel al nivel
contrario de manera que intercambian el estado alto (1 lógico) y el
estado bajo (0 lógico) entre sí.

El comportamiento del biestable T es igual al de un biestable JK en el
que se han unido las dos entradas **J** y **K** en una sola entrada
llamada **T**.


Ejercicios
----------
#. ¿Qué es un biestable T, por qué se llama así y para qué sirve?

#. ¿Qué parecidos y diferencias tiene el biestable T con
   el biestable JK?

#. ¿Cuántas entradas tiene un biestable T y qué función tiene cada una?

#. ¿Cuántas salidas tiene un biestable T y qué función tiene cada una?

#. Dibuja el circuito de un biestable T con el nombre de sus entradas
   y de sus salidas.

#. Dibuja la tabla de verdad de un biestable T y explica brevemente
   su funcionamiento normal.

   ¿Tienen alguna semejanza el biestable T con el biestable JK?

#. Simula todos los estados del biestable T con el simulador de esta
   página.   
