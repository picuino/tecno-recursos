:Date: 19/12/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _protoboard-pot:

Potenciómetro
=============
Monta en protoboard el siguiente esquema eléctrico.

.. image:: protoboard/arduino-proto-05-pot-sch.png
   :alt: Esquema eléctrico de placa Arduino con un potenciómetro y dos ledes
   :width: 700px
   :align: center

.. image:: protoboard/arduino-proto-05-pot-bb.png
   :alt: Montaje en protoboard de placa Arduino con un potenciómetro y dos ledes
   :width: 400px
   :align: center

:download:`Circuito eléctrico en formato Fritzing
<protoboard/arduino-proto-05-pot.fzz>`


----


Ejercicios
----------

1. Sube a la placa Arduino UNO el siguiente programa.
   El led rojo se encenderá más o menos según se gire el
   potenciómetro a la derecha o a la izquierda.

   .. image:: protoboard/arduino-proto-05-code01.png
      :alt: Código del programa para Arduino que hace que se encienda más
            o menos un led dependiendo del giro de un potenciómetro


#. Sube a la placa Arduino UNO el siguiente programa.
   El led rojo y el led verde se encenderán alternativamente
   con una frecuencia que dependerá de la posición del
   potenciómetro.

   Gira el potenciómetro a la derecha y a la izquierda para
   comprobar el efecto que tiene sobre los led.

   .. image:: protoboard/arduino-proto-05-code02.png
      :alt: Código del programa para Arduino que hace que se enciendan
            alternativamente dos ledes con mayor o menor frecuencia
            dependiendo del giro de un potenciómetro


#. Sube a la placa Arduino UNO el siguiente programa.

   Al girar el potenciómetro en un sentido, los dos ledes se apagarán.

   Al girar el potenciómetro en el sentido contrario primero se
   encenderá el led verde para indicar que el valor es mayor que cero.

   Si seguimos girando el potenciómetro, se encenderá el led rojo para
   indicar que llegamos al final del recorrido.

   .. image:: protoboard/arduino-proto-05-code03.png

