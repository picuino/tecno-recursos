
.. _mecan-tornillos:

Tornillos
=========
Un tornillo es una máquina simple compuesta por un plano inclinado
que se encuentra enrollado alrededor de un eje cilíndrico.

.. figure:: mecan/_images/mecan-tornillo-01.jpg
   :align: center
   :width: 340px

   Tornillo y tuerca hexagonal.

   `Afrank99 <https://commons.wikimedia.org/wiki/File:M4_Inbusschraube_focusstacked.jpg>`__
   `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__
   via Wikimedia Commons.


La denominación de las diferentes partes del tornillo es la siguiente.

.. glossary::

   Rosca
      Es el plano inclinado enrollado de forma helicoidal 
      alrededor de un eje cilíndrico.

   Cabeza del tornillo
      Es la parte extrema del tornillo, utilizada para girar la rosca.
      Suele ser de forma cuadrada o hexagonal en tornillos grandes.

   Filete
      Es la parte saliente del surco de la rosca.

   Paso
      Es la distancia que hay entre dos filetes consecutivos de la rosca.

   tuerca
      Es una pieza mecánica con un orificio roscado que se acopla
      al tornillo. La tuerca suele tener una forma cuadrada o hexagonal 
      para facilitar su giro mediante llaves de apriete.


.. figure:: mecan/_images/mecan-tornillo-03.png
   :align: center
   :width: 340px

   Partes de una rosca.

   `I.A.Rem. <https://commons.wikimedia.org/wiki/File:M4_Inbusschraube_focusstacked.jpg>`__
   `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__
   via Wikimedia Commons.


Los tornillos sirven para realizar uniones desmontables o para realizar
mecanismos que avanzan lentamente y con mucha fuerza.
Por ejemplo el mecanismo de un gato mecánico para levantar automóviles
está basado en un tornillo que mueve unas tijeras.

.. figure:: mecan/_images/mecan-tornillo-02.gif
   :align: center
   :width: 480px

   Gato mecánico con tornillo.

   `Interiot <https://commons.wikimedia.org/wiki/File:Jackscrew.gif>`__
   Public Domain via Wikimedia Commons.


Cálculo de tornillos
--------------------
Los parámetros de un tornillo son su **paso** o distancia entre filetes,
el número de vueltas de **giro** y el **avance** lineal que consigue
al girar. La fórmula que relaciona estas variables es la siguiente.

.. math::

   Avance = Giro \cdot Paso

Siendo

   Avance = distancia que recorre el tornillo
   
   Giro = número de vueltas que gira el tornillo
   
   Paso = distancia entre dos filetes del tornillo

Tanto el **Avance** como el **Paso** deben estar expresados en las mismas
unidades de distancia.


Ejercicio silla
---------------
Una silla de taller tiene se eleva mediante un tornillo con una rosca
de paso igual a 4 milímetros por vuelta. 
Si queremos elevar la silla 6 centímetros
¿Cuántas vueltas será necesario dar al tornillo?


Para resolver el problema, escribimos primero los datos de los que
disponemos, convirtiendo todas las distancias a la misma unidad.

.. math::

   Avance = 6 cm = 60 \: mm

.. math::

   Paso = 4 \: mm / vuelta

A continuación escribimos la fórmula y sustituimos las cantidades
conocidas.

.. math::

   Avance = Giro \cdot Paso

.. math::

   60 \: mm = Giro \cdot 4 \: mm / vuelta

Para finalizar, despejamos la incógnita para hayar el resultado.

.. math::

   Giro = \cfrac{60}{4} = 15 \: Vueltas

