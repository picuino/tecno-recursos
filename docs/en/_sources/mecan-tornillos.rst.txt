:Date: 29/05/2022
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _mecan-tornillos:

:index:`Tornillos`
==================
Un tornillo es una máquina simple formada por un plano inclinado
que se encuentra enrollado alrededor de un eje cilíndrico.

.. figure:: mecan/_images/mecan-tornillo-01.jpg
   :alt: Tornillo y tuerca hexagonal
   :align: center
   :width: 340px

   Tornillo y tuerca hexagonal.

   `Afrank99 <https://commons.wikimedia.org/wiki/File:M4_Inbusschraube_focusstacked.jpg>`__,
   `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
   via Wikimedia Commons.


Partes de un tornillo
---------------------

La denominación de las diferentes partes del tornillo es la siguiente.

.. glossary::

   Vástago
      Pieza cilíndrica del tornillo donde se tallan los surcos de la rosca.

   Cuello
      Parte del vástago del tornillo sin tallar.

   Rosca
      Es el plano inclinado enrollado de forma helicoidal
      alrededor del vástago.

   Cabeza del tornillo
      Es la parte extrema del tornillo, utilizada para girar la rosca.
      Suele ser de forma cuadrada o hexagonal en tornillos grandes.

   Filete
      Es la parte saliente del surco de la rosca.

   Paso
      Es la distancia que hay entre dos crestas consecutivas de la rosca.

   Tuerca
      Es una pieza mecánica con un orificio roscado que se acopla
      al tornillo. La tuerca suele tener una forma cuadrada o hexagonal
      para facilitar su giro mediante llaves de apriete.


.. figure:: mecan/_images/mecan-tornillo-02.png
   :alt: Partes de un tornillo y tuerca hexagonal.
   :align: center
   :width: 340px

   Partes de un tornillo y tuerca hexagonal.


Aplicaciones de los tornillos
-----------------------------
Uniones desmontables
   Una de las aplicaciones de los tornillos consiste en realizar
   uniones desmontables.

   Por ejemplo la carcasa de un ordenador está unida con tornillos.

Mecanismos que avanzan con precisión
   Los tornillos permiten realizar movimientos de mucha precisión.

   Por ejemplo un tornillo de un grifo giratorio permite abrir el
   paso de agua con mucha precisión.
   Otro ejemplo son las sillas a tornillo que se pueden subir o bajar
   con precisión dando vueltas al asiento.

Mecanismos para mover con fuerza
   Otra gran aplicación de los tornillos es construir mecanismos
   que avanzan con mucha **fuerza**.

   Por ejemplo, el mecanismo de un gato mecánico para levantar automóviles
   está basado en un tornillo que mueve unas tijeras.

   .. figure:: mecan/_images/mecan-tornillo-02.gif
      :alt: Gato mecánico para levantar automóviles, con un tornillo que
            mueve el mecanismo.
      :align: center
      :width: 480px

      Gato mecánico para levantar automóviles,
      con un tornillo que mueve el mecanismo.

      `Interiot <https://commons.wikimedia.org/wiki/File:Jackscrew.gif>`__,
      Public Domain, via Wikimedia Commons.


Cálculo de tornillos
--------------------
Los parámetros de un tornillo son su **paso** o distancia entre dos
filetes, el número de vueltas de **giro** y el **avance** lineal que
se consigue al girar.
La fórmula que relaciona estas variables es la siguiente.

.. math::

   Avance = Giro \cdot Paso

Siendo

   Avance = distancia lineal que recorre el tornillo en milímetros

   Giro = número de vueltas que gira el tornillo

   Paso = distancia que avanza el tornillo por cada vuelta que gira

Tanto el **Avance** como el **Paso** deben estar expresados en las mismas
unidades de distancia, normalmente milímetros.


Ejercicio silla
---------------
Una silla de taller se eleva mediante un tornillo con una rosca
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

Para finalizar, despejamos la incógnita para hallar el resultado.

.. math::

   Giro = \cfrac{60}{4} = 15 \: vueltas


Ejercicio tornillo de banco
---------------------------
Un tornillo de banco se abre una distancia de 12 centímetros
tras girar la manivela un total de 24 vueltas.
¿Cuál es el paso del tornillo?

Para resolver el problema, escribimos primero los datos de los que
disponemos, convirtiendo todas las distancias a la misma unidad.

.. math::

   Avance = 12 cm = 120 \: mm

.. math::

   Giro = 24 \: vueltas

A continuación escribimos la fórmula y sustituimos las cantidades
conocidas.

.. math::

   Avance = Giro \cdot Paso

.. math::

   120 \: mm = 24 \: vueltas \cdot Paso

Para finalizar, despejamos la incógnita para hallar el resultado.

.. math::

   Paso = \cfrac{120}{24} = 5 \: mm / vuelta


Ejercicio tornillo de microscopio
---------------------------------
Un microscopio dispone de un tornillo para subir y bajar la platina
y poder enfocar correctamente el objeto a visualizar.
Si el paso del tornillo es de 0.5 milímetros y realizamos un giro de
16 vueltas ¿cuánto avanzará la platina?

Para resolver el problema, escribimos primero los datos de los que
disponemos, convirtiendo todas las distancias a la misma unidad.

.. math::

   Paso = 0.5 \: mm / vuelta

.. math::

   Giro = 16 \: vueltas

A continuación escribimos la fórmula y sustituimos las cantidades
conocidas.

.. math::

   Avance = Giro \cdot Paso

.. math::

   Avance = 16 \: vueltas \cdot 0.5 \: mm / vuelta

Para finalizar, no hace falta despejar y podemos calcular directamente
el resultado.

.. math::

   Avance = 8 \: mm
