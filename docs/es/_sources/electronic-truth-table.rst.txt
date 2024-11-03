:Date: 03/11/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-truth-table:

La tabla de verdad
==================
En temas pasados hemos visto qué es una tabla de verdad de una puerta 
lógica. En este tema vamos a ver, paso a paso, cómo crear la tabla de 
verdad de un circuito combinacional cualquiera.

Los pasos para crear la tabla de verdad de un circuito son:

#. Nombrar cada una de las entradas del circuito con una letra
   mayúscula del abecedario, A, B, C, etc.

#. Nombrar cada una de las salidas del circuito con una O más
   un número, O1, O2, O3, etc.

#. Dibujar una tabla con tantas columnas como el número de entradas más 
   el número de salidas tenga el circuito.
   
   En la primera fila de la tabla colocaremos el nombre de las entradas
   A, B, C, etc. y el nombre de las salidas O1, O2, O3, etc.

#. Terminar de dibujar en la tabla tantas filas como sean necesarias 
   (2 elevado al número de entradas).
   
   Para 2 entradas, 4 filas. 
   
   Para 3 entradas, 8 filas. 
   
   Para 4 entradas, 16 filas.

#. Numerar en binario las filas correspondientes a las entradas.

#. Para cada combinación de entradas, calcular las salidas del circuito
   y dibujarlas en la tabla.

   
Ejercicio resuelto
------------------
Dibujar la tabla de verdad del siguiente circuito de 3 entradas y 1 salida.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-combinational-01.txt"></iframe>
   </div>

#. Nombramos las entradas como A, B, C.
#. Nombramos la salida como O1.
#. Dibujamos la tabla y en la primera fila colocamos el nombre de las 
   entradas y salidas.
   
   .. figure:: electronic/_images/electronic-truth-table-01.png
      :width: 210px
      :align: center
      :alt: Tabla de verdad de tres entradas y una salida.

#. Terminamos de dibujar la tabla con 8 filas libres (2^3 = 8)
   para poder numerar todas las entradas posibles.
   
#. Numeramos en binario las filas correspondientes a las entradas.

   .. figure:: electronic/_images/electronic-truth-table-02.png
      :width: 210px
      :align: center
      :alt: Tabla de verdad de tres entradas y una salida, 
            con las entradas numeradas.

#. Por último colocamos cada una de las 8 combinaciones de entradas en
   el circuito y escribimos su salida en la columna O1.
   
   .. figure:: electronic/_images/electronic-truth-table-03.png
      :width: 210px
      :align: center
      :alt: Tabla de verdad de tres entradas y una salida rellena.


Ejercicios
----------

#. Dibuja la tabla de verdad del siguiente circuito.

   .. raw:: html

      <div class="video-center">
      <iframe src="/circuits/index.html?startCircuit=digital-combinational-02.txt"></iframe>
      </div>

#. Dibuja la tabla de verdad del siguiente circuito.

   .. raw:: html

      <div class="video-center">
      <iframe src="/circuits/index.html?startCircuit=digital-combinational-03.txt"></iframe>
      </div>


#. Dibuja la tabla de verdad del siguiente circuito.

   .. raw:: html

      <div class="video-center">
      <iframe src="/circuits/index.html?startCircuit=digital-combinational-04.txt"></iframe>
      </div>


