:Date: 17/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-operational:

El amplificador operacional
===========================
El amplificador operacional es un circuito electrónico compuesto
internamente por múltiples etapas de transistores conectados para
conseguir un circuito amplificador de tensión diferencial, de alta
ganancia y lo más ideal posible.

.. figure:: electronic/_images/electronic-analog-oa.png
   :width: 200px
   :align: center
   :alt: Símbolo del amplificador operacional.

   Símbolo del amplificador operacional ideal.

Un amplificador operacional tiene **dos entradas** diferenciales señaladas
con los símbolos ``+`` y ``-`` y **una salida** en la punta del triángulo.

Los **amplificadores operacionales reales**, además, tienen dos terminales
de alimentación por los que les llega tensión positiva y tensión negativa,
necesarias para que puedan funcionar el circuito interno.

Terminales del amplificador operacional real:
   * Terminal de entrada negativo.
   * Terminal de entrada positivo.
   * Terminal de salida.
   * Terminal de alimentación positiva.
   * Terminal de alimentación negativa.

Funcionamiento
--------------
El amplificador amplifica la diferencia entre los terminales
de entrada ``+`` y ``-``. Si la entrada positiva ``+`` tiene una tensión
superior a la entrada negativa ``-``, la salida tendrá una tensión positiva.

Por el contrario si la entrada negativa ``-`` tiene una tensión superior
a la entrada positiva ``+``, la salida tendrá una tensión negativa.

Normalmente la diferencia en la tensión de entrada se multiplica
a la salida por decenas o centenas de miles de veces la tensión de entrada.
Esto significa que la ganancia de tensión es muy alta.

La corriente absorbida por las entradas del amplificador es tan baja
que en la práctica se puede considerar que vale cero. Esto significa
que la **resistencia de entrada es muy alta** porque no absorbe corriente.

La corriente de salida puede ser relativamente alta sin que cambie la
tensión de salida. Esto significa que la **resistencia de salida es muy
baja**.


Ventajas
--------
Este es un circuito muy utilizado porque aporta muchas ventajas frente a
los transistores individuales:

* Todos sus transistores internos incorporan polarización, por lo que
  apenas es necesario añadir resistencias.
* Consigue una ganancia de tensión muy alta (decenas o centenas de miles).
* La corriente de entrada es tan baja que se puede considerar igual a cero.
  Esto facilita los cálculos y que las entradas del amplificador
  operacional no afecten al resto del circuito.
* Tiene una salida push-pull que entrega corriente relativamente alta
  tanto positiva como negativa.
* La corriente de salida está limitada para que el circuito no
  se queme.

Como **desventaja** se puede decir que la velocidad de los amplificadores
operacionales es menor que la de los transistores individuales, pero esto
no representa un problema en la mayoría de las aplicaciones de baja
frecuencia.


Simulación
----------
A continuación se puede ver una simulación de un amplificador operacional
real (LM324) alimentado en las entradas con dos tensiones muy semejantes.
En este circuito el amplificador está funcionando como comparador.

Cuando se modifica el valor de la resistencia, la tensión de la entrada
positiva cambia y se puede ver cómo el operacional enciende y apaga el
led verde de la salida.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=oa-comparator.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el símbolo de un amplificador operacional ideal.

#. ¿Cuántos terminales tiene un amplificador operacional real?
   ¿Para que sirve cada uno?

#. Explica con tus palabras el funcionamiento de un amplificador
   operacional.

#. ¿Qué ventajas tiene un amplificador operacional frente a los
   amplificadores basados en transistores?

   ¿Y qué desventaja tiene?

#. Modifica la resistencia variable del simulador y escribe con qué
   tensión de entrada ``+`` comienza a encender el led  el amplificador
   operacional y con qué tensión de entrada ``+`` se enciende el led del
   todo.
