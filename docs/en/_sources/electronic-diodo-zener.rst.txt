:Date: 31/09/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-diodo-zener:

El diodo zener
==============
Los diodos rectificadores soportan una tensión negativa alta sin conducir.
Sin embargo los `diodos zener <https://es.wikipedia.org/wiki/Diodo_Zener>`__
están diseñados para que puedan conducir corriente cuando la tensión
negativa sea menor que la tensión de ruptura, con un valor que puede
valer entre 2 y 6 voltios.

.. figure:: electronic/_images/electronic-analog-diodo-zener.png
   :width: 131px
   :align: center
   :alt: Símbolo del diodo zener y nombre de sus terminales.

   Símbolo del diodo zener y nombre de sus terminales.

.. Note::
   Existen diodos que conducen corriente con tensiones inversas mayores
   de 6 voltios. Este tipo de diodos se basan en el efecto **avalancha**,
   un efecto diferente al zener.
   Sin embargo nos podemos encontrar diodos de avalancha denominados como
   diodos zener o viceversa, porque ambos tienen la misma función de
   conducir corriente a una tensión inversa concreta.

Los diodos zener permiten construir circuitos limitadores que evitan que
la tensión supere un valor, determinado por su tensión de ruptura.
Con los diodos zener también se pueden fabricar referencias de tensión muy
precisas, utilizadas en los aparatos de mayor precisión.

En la siguiente simulación puede verse la curva característica de un diodo
zener. El diodo conduce corriente cuando la tensión positiva supera
los 0.65 voltios, como cualquier diodo rectificador.
Pero también conduce corriente cuando la tensión es negativa y llega a un
umbral denominado tensión de ruptura, que en este caso vale 5.6 voltios.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=zeneriv.txt"></iframe>
   </div>


Referencia de tensión
---------------------
En el circuito que aparece a continuación se puede ver una de las
aplicaciones del diodo zener, reduciendo una tensión variable de entrada
a una tensión relativamente fija de salida.
Este es un esquema muy simple, pero funcional. En la práctica se utilizan
circuitos más elaborados y mucho más precisos para construir las fuentes
fijas de tensión.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=zenerref.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el símbolo del diodo zener con el nombre de sus terminales.

#. ¿Qué otros diodos están relacionados con los diodos zener porque
   realizan la misma función? ¿En qué se diferencian de los zener?

#. Dibuja la gráfica de tensión (en el eje x) y de corriente (en el eje y)
   de el diodo zener de la primera simulación.

   Dibuja en los ejes las marcas horizontales y verticales que correspondan
   a los valores de tensión y corriente utilizados.

#. Dibuja un circuito con un diodo zener que limite la tensión a 5.6
   voltios a partir de una tensión de alimentación de 12 voltios.

   Con ayuda del
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__
   ajusta la resistencia de polarización del diodo zener para que conduzca
   aproximadamente 20 miliamperios.

   ¿Cuánto vale la resistencia de polarización?

#. Realiza el circuito de la siguiente imagen con el
   `simulador de circuitos
   <../circuits/?startCircuit=empty.txt>`__.

   Este circuito es una fuente de alimentación lineal regulada.
   Tiene un rectificador de onda completa con condensador de filtro y un
   regulador de tensión basado en un diodo zener y un transistor.

   .. figure:: electronic/_images/electronic-analog-diodo-zener-npn.png
      :width: 512px
      :align: center
      :alt: Fuente de alimentación regulada con diodo zener y un transistor.

      Fuente de alimentación regulada con diodo zener y un transistor.

   Añade un osciloscopio con la tensión del condensador y añade a ese mismo
   osciloscopio la tensión en la resistencia R2.

   ¿Qué tensiones tienen los dos componentes?
   Dibuja una gráfica aproximada de las formas de las dos tensiones
   en el mismo gráfico.

#. Investiga ¿Qué función realiza el diodo zener en el circuito anterior?
   ¿Qué función realiza el transistor?

