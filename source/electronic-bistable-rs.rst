:Date: 14/10/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bistable-rs:

El biestable RS
===============
Hasta ahora hemos estudiado circuitos **combinacionales**.
En este tipo de circuitos, las salidas de señal dependen exclusivamente
de las entradas, sin ningún efecto de memoria interna.

A partir de ahora, estudiaremos algunos circuitos **secuenciales**, que
se diferencian de los combinacionales en que sus salidas dependen no solo
de las entradas, sino también del estado interno del circuito, que tiene
memoria.

El primer circuito secuencial que vamos a estudiar es el **biestable RS**.
Este biestable se utiliza para almacenar un bit de información (un cero o
un uno), funcionando como el circuito de memoria más básico que podemos
utilizar. Es el componente fundamental de los circuitos secuenciales, como
contadores y registros y es la base de la memoria SRAM en las computadoras.

El biestable RS tiene dos entradas: la entrada **S** o **SET** que memoriza
un **uno** (estado alto), y la entrada **R** o **RESET** que memoriza un
**cero** (estado bajo).

El biestable RS tiene dos salidas: la salida **Q** refleja el
estado interno del biestable y la salida negada **/Q** que tendrá el valor
contrario de la salida **Q**.

Simulación
----------
En la siguiente simulación, podemos observar un **biestable RS** fabricado
con dos puertas NOR:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-rs-nor.txt"></iframe>
   </div>


Tabla de verdad
---------------
La tabla de verdad del **biestable RS** fabricado con puertas NOR es la
siguiente:

.. list-table::
   :widths: 20 20 20 20
   :header-rows: 1

   * - S
     - R
     - Q
     - /Q
   * - 0
     - 0
     - Q
     - /Q
   * - 1
     - 0
     - 1
     - 0
   * - 0
     - 1
     - 0
     - 1
   * - 1
     - 1
     - 0
     - 0

Al activar la entrada **SET** el biestable se activa y la salida **Q**
tendrá un valor alto (1 lógico). Una vez que se desactiva la entrada
**SET** el biestable sigue manteniendo su estado activo hasta que le
llegue una entrada contraria, **RESET**.

Al activar la entrada **RESET** el biestable se desactiva y la salida **Q**
tendrá un valor bajo (0 lógico). Una vez que se desactiva la entrada
**RESET** el biestable sigue manteniendo su estado inactivo hasta que le
llegue una entrada contraria, **SET**.

El último estado, cuando se activan simultáneamente las entradas **SET** y
**RESET**, se denomina **estado prohibido** o **estado indeterminado**
porque fuerza a ambas salidas a nivel bajo (cero lógico).
En este estado, las salidas del biestable se comportan de manera
ilógica, ya que las señales de **SET** y de **RESET** se oponen
directamente entre sí.


Biestable RS NAND
-----------------
En la siguiente simulación, podemos ver un **biestable RS** fabricado con
dos puertas NAND:

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-bistable-rs-nand.txt"></iframe>
   </div>

Las entradas serán activas a nivel bajo (un cero activa la entrada y un
uno es igual a entrada en reposo).


Ejercicios
----------
#. ¿Qué dos tipos de circuitos digitales existen?
   ¿En qué se diferencian entre sí?

#. ¿Qué tipo de circuito digital es un biestable RS y para qué sirve?

#. ¿Cuántas entradas tiene un biestable RS y qué función cumple cada una?

#. ¿Cuántas salidas tiene un biestable RS y qué función cumple cada una?

#. Dibuja el circuito de un biestable RS con puertas NOR.

   La entrada SET debe valer 1 y la entrada RESET debe valer cero.
   Dibuja los valores correctos de las salidas Q y /Q.

#. Dibuja la tabla de verdad de un biestable RS y explica brevemente
   su funcionamiento normal.

#. ¿Cómo se llama el estado en el que las dos entradas están a nivel alto
   y por qué se llama así?
   
#. Ayudándote con la última simulación, dibuja la tabla de verdad del
   biestable RS fabricado con puertas NAND.

   Señala en la tabla el estado prohibido o indeterminado.
   ¿Qué valen sus dos salidas en ese estado?