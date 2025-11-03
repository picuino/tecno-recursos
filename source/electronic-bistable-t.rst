:Date: 29/10/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bistable-t:

El biestable T
==============
El `biestable T (toggle)
<https://es.wikipedia.org/wiki/Biestable#Biestable_T_(Toggle)>`__ 
es un circuito secuencial que permite almacenar un bit de información.

El **biestable T** tiene dos entradas, la entrada **T** o **toggle**,
que sirve como entrada de datos y la entrada de reloj (**Clock** o **CLK**)
que valida el dato de entrada.
Este biestable cambia de estado cada vez que recibe un pulso de reloj,
siempre que su entrada **T** esté activa (1 lógico).

El biestable T tiene dos salidas como el resto de biestables. Las salidas
complementarias **Q** y **/Q** que siempre presentan valores opuestos.

El **biestable T** es muy útil para construir:
  * **Contadores binarios**: circuitos que cuentan, en código binario,
    los pulsos de entrada que reciben. Cada biestable añadido en serie
    representa un bit adicional en la cuenta binaria.
  * **Divisores de frecuencia**: circuitos que dividen la frecuencia
    de entrada en frecuencias menores.
    Esto es útil, por ejemplo, en los relojes digitales, que dividen la
    frecuencia de un cristal de cuarzo para generar pulsos de un segundo
    destinados al motor que mueve las manecillas.


Simulación
----------
En la siguiente simulación podemos observar un **biestable T**:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-t.txt"></iframe>
   </div>


Tabla de verdad
---------------
Los cambios de la salida del biestable T solo se producen cuando
la entrada de reloj (**CLK**) cambia de nivel bajo (0 lógico) a nivel
alto (1 lógico), es decir, en los **flancos de subida de CLK**.

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
un flanco de subida en **CLK**, las salidas permanecen en el mismo estado
en el que estaban antes.

Si la entrada **T** está a nivel alto (1 lógico), al llegar
un flanco de subida en **CLK**, las salidas cambian de nivel,
intercambiando entre sí los estados alto (1 lógico) y bajo (0 lógico).

El comportamiento del biestable T es igual al de un 
:ref:`biestable JK <electronic-bistable-jk>`,
en el que se han unido las dos entradas **J** y **K** en una sola entrada
llamada **T**.


Ejercicios
----------
#. ¿Qué es un biestable T, por qué se llama así y para qué sirve?

#. ¿Qué semejanzas y diferencias presenta el biestable T respecto al
   biestable JK?

#. ¿Cuántas entradas tiene un biestable T y qué función cumple cada una?

#. ¿Cuántas salidas tiene un biestable T y qué función cumple cada una?

#. Dibuja el circuito de un biestable T con el nombre de sus entradas
   y de sus salidas.

#. Dibuja la tabla de verdad de un biestable T y explica brevemente
   su funcionamiento normal.

   ¿Tienen el biestable T alguna semejanza con el biestable JK?

#. Simula todos los estados del biestable T con el simulador de esta
   página.   
