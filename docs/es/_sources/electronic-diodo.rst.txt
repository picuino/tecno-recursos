:Date: 30/09/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-diodo:

El diodo
========
Un `diodo <https://es.wikipedia.org/wiki/Diodo>`__
semiconductor es un dispositivo electrónico que permite el paso
de corriente con facilidad en un sentido y no permite el paso de corriente
en el sentido contrario.

.. figure:: electronic/_images/electronic-diode-closeup.jpg
   :width: 320px
   :align: center
   :alt: Fotografía de un diodo semiconductor.

   Fotografía de un diodo semiconductor.
   
   `John Maushammer <https://es.wikipedia.org/wiki/Archivo:Diode-closeup.jpg>`__,
   `CC BY-SA 2.5 <https://creativecommons.org/licenses/by-sa/2.5/deed.es>`__,
   via Wikimedia Commons.

El diodo conduce corriente cuando se aplica tensión positiva en el ánodo
y tensión negativa en el cátodo. Si se le aplica tensión al contrario,
se dice que está polarizado en inverso y no conducirá corriente.

.. figure:: electronic/_images/electronic-analog-diodo.png
   :width: 124px
   :align: center
   :alt: Símbolo del diodo semiconductor.

   Símbolo del diodo semiconductor.

El diodo permite que la corriente circule desde el ánodo hasta el
cátodo. La flecha del símbolo del diodo indica el sentido de la corriente
desde el polo positivo hacia el polo negativo.

Tensión umbral de polarización directa
   La tensión umbral es la tensión de polarización directa a partir de
   la cual la corriente comienza a aumentar rápidamente.

   En los diodos rectificadores esta tensión es de unos 0.65 voltios.
   En diodos de tipo LED esta tensión aumenta hasta 1.8 voltios para ledes
   rojos y hasta 3 voltios para ledes blancos.

   En diodos rectificadores especiales
   (`diodos schottky <https://es.wikipedia.org/wiki/Diodo_Schottky>`__)
   esta tensión puede bajar hasta 0.2 voltios.


Simulación
----------
En la siguiente simulación se puede observar un diodo sometido a tensión
positiva y a tensión negativa de 1 voltio.

La gráfica de abajo a la izquierda representa la tensión y la corriente
del diodo.

La gráfica de abajo a la derecha representa la corriente que circula
por el diodo (eje vertical Y) en función de la tensión que recibe
el diodo (eje horizontal X).
Es una curva con un codo que comienza a subir en los 0.65 voltios de
la tensión umbral del diodo.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=diodecurve.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el símbolo de un diodo semiconductor con el nombre de sus
   terminales.

#. ¿Qué función realiza un diodo? ¿Cuándo conduce corriente?

#. ¿Qué es la tensión umbral y cuánto vale para diferentes diodos?

#. Dibuja una gráfica con la corriente que circula por un diodo (eje Y)
   en función de la tensión del diodo (eje X).
   Dibuja en la gráfica las marcas de voltaje cada 0.1 voltios y las
   marcas de corriente cada 0.1 amperios con separación suficiente entre ellas.

   Dibuja una línea en la tensión umbral de la curva.

   Recuerda ampliar el simulador con la opción ``Archivo...`` ``Cambiar a
   Pantalla Completa`` para poder ver mejor la gráfica.

#. ¿Qué ocurre en el diodo cuando la tensión del ánodo es negativa?

