:Date: 02/11/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-morgan-laws:

Las leyes de De Morgan
======================
Las leyes de Augustus De Morgan o simplemente las
`leyes de De Morgan <https://es.wikipedia.org/wiki/Leyes_de_De_Morgan>`__
son dos reglas de transformación que permiten intercambiar puertas AND
y puertas OR simplemente negando o invirtiendo las entradas y salidas:

.. figure:: electronic/_images/electronic-morgan-laws-01.png
   :width: 296px
   :align: center
   :alt: Transformación de OR con entradas negadas en NAND.
   
   Transformación de OR con entradas negadas en NAND.

.. figure:: electronic/_images/electronic-morgan-laws-02.png
   :width: 296px
   :align: center
   :alt: Transformación de AND con entradas negadas en NOR.
   
   Transformación de AND con entradas negadas en NOR.

En forma de fórmula lógica las expresiones serían:

.. math::

   \overline{A} + \overline{B} = \overline{A \cdot B }

.. math::

   \overline{A} \cdot \overline{B} = \overline{A + B }


Otra forma de expresar las leyes de De Morgan es:

* Una puerta OR con todas sus entradas y salidas invertidas o negadas 
  es equivalente a una puerta AND.

  .. figure:: electronic/_images/electronic-morgan-laws-04.png
     :width: 296px
     :align: center
     :alt: Transformación de una puerta OR toda negada a puerta AND.
   
     Transformación de una puerta OR toda negada a puerta AND.

  .. math::

     \overline{ \overline{A} + \overline{B} } = A \cdot B

* Una puerta AND con todas sus entradas y salidas invertidas o negadas 
  es equivalente a una puerta OR.
  
  .. figure:: electronic/_images/electronic-morgan-laws-03.png
     :width: 296px
     :align: center
     :alt: Transformación de una puerta AND toda negada a puerta OR.
   
     Transformación de una puerta AND toda negada a puerta OR.

  .. math::

     \overline{ \overline{A} \cdot \overline{B} } = A + B


Doble negación
--------------
Hay que recordar del apartado dedicado a la puerta NOT, que una doble 
negación se cancela resultando en una línea sin negación:

.. figure:: electronic/_images/electronic-morgan-laws-05.png
   :width: 404px
   :align: center
   :alt: Una doble negación se cancela entre sí.

   Una doble negación se cancela entre sí.

Conociendo las leyes de De Morgan y esta última ley, podremos intercambiar
siempre cualquier puerta OR por una puerta AND y viceversa, 
independientemente de las entradas y salidas que tenga negadas.

Simulación
----------
En la siguiente simulación podemos ver el funcionamiento de
las leyes de De Morgan en varios circuitos.

Según cambian los valores de entrada a las siguientes puertas lógicas,
la puerta de arriba siempre entrega en la salida el mismo valor que
la puerta de abajo, demostrando que son equivalentes.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-morgan-laws.txt"></iframe>
   </div>


Ejercicios
----------

#. Comprueba en la simulación anterior que la puerta superior tiene la
   misma salida que la puerta inferior en cada uno de los 4 circuitos
   que aparecen.

#. Transforma las siguientes puertas lógicas para que utilicen la puerta
   alternativa según las leyes de De Morgan.
   
   
.. figure:: electronic/_images/electronic-morgan-laws-06.png
   :width: 264px
   :align: center
   :alt: Ejercicio de transformación de puertas lógicas.


.. figure:: electronic/_images/electronic-morgan-laws-07.png
   :width: 264px
   :align: center
   :alt: Ejercicio de transformación de puertas lógicas.
