:Date: 06/04/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. _mecan-neumatic-valvula-and:

La válvula de simultaneidad o válvula and
=========================================
La **válvula de simultaneidad** o **válvula and** permite el paso de aire
a presión cuando ambas vías de entrada, derecha e izquierda, reciben
aire a presión.

El funcionamiento resumido puede explicarse diciendo que la válvula deja
pasar el aire a presión cuando le llega aire a presión por la vía izquierda
**y** también le llega aire a presión por la vía derecha, de ahí su nombre.

El símbolo en reposo de la válvula de simultaneidad es el siguiente:

.. figure:: neumatic/_images/neumatic-valvula-and-0.png
   :align: center
   :alt: Valvula de simultaneidad.

   Válvula de simultaneidad o válvula and.

Cuando se inyecta aire a presión por la vía derecha, la pieza central
se moverá hacia la izquierda, impidiendo el paso de aire.

.. figure:: neumatic/_images/neumatic-valvula-and-1.png
   :align: center
   :alt: Valvula de simultaneidad con presión en la vía derecha.

   Válvula de simultaneidad con presión en la vía derecha.

Cuando se inyecta aire a presión por la vía izquierda, la pieza central
se moverá hacia la derecha, impidiendo también el paso de aire.

.. figure:: neumatic/_images/neumatic-valvula-and-2.png
   :align: center
   :alt: Valvula de simultaneidad con presión en la vía izquierda.

   Válvula de simultaneidad con presión en la vía izquierda.

Cuando se inyecta aire a presión por las vías derecha e izquierda,
la pieza central no puede cerrar las dos vías a la vez, por lo que
permite el paso de aire a presión, que saldrá por la vía superior.

.. figure:: neumatic/_images/neumatic-valvula-and-3.png
   :align: center
   :alt: Válvula de simultaneidad con presión en las vías derecha e izquierda.

   Válvula de simultaneidad con presión en las vías derecha e izquierda.

El funcionamiento de la válvula de simultaneidad puede resumirse en la
siguiente tabla de verdad o tabla lógica:

.. list-table:: Funcionamiento de la válvula de simultaneidad.
   :widths: 20 20 20
   :align: center
   :header-rows: 1

   * - Vía izquierda
     - Vía derecha
     - Vía superior
   * - Sin presión
     - Sin presión
     - Sin presión
   * - Con presión
     - Sin presión
     - Sin presión
   * - Sin presión
     - Con presión
     - Sin presión
   * - Con presión
     - Con presión
     - Con presión

Si traducimos Sin presión con un cero y Con presión con un uno,
obtenemos la clásica tabla de verdad de la función and:

.. list-table::
   :widths: 20 20 20
   :align: center
   :header-rows: 1

   * - Vía izquierda
     - Vía derecha
     - Vía superior
   * - 0
     - 0
     - 0
   * - 1
     - 0
     - 0
   * - 0
     - 1
     - 0
   * - 1
     - 1
     - 1

Cilindro de simple efecto y válvula de simultaneidad
----------------------------------------------------
En este circuito un cilindro de simple efecto es accionado por dos
válvulas 3/2 solo cuando ambas están accionadas.

En la siguiente figura se puede ver el circuito en reposo.

.. figure:: neumatic/_images/neumatic-32-and-1.png
   :align: center
   :width: 455px
   :alt: Cilindro de simple efecto con válvula de simultaneidad sin presión.

   Cilindro de simple efecto con válvula de simultaneidad sin presión.

Cuando accionamos la válvula izquierda, el aire a presión llega a la
válvula de simultaneidad, pero esta no deja pasar la presión por la
vía superior.

.. figure:: neumatic/_images/neumatic-32-and-2.png
   :align: center
   :width: 485px
   :alt: Cilindro de simple efecto con válvula de simultaneidad con
         presión a la izquierda.

   Cilindro de simple efecto con válvula de simultaneidad con presión a la
   izquierda.

Cuando accionamos también la válvula derecha, el aire a presión llega a la
válvula de simultaneidad por ambos lados y no puede frenar ambos flujos de
aire, por lo que deja pasar aire a presión por la vía superior.
El vástago del cilindro de simple efecto saldrá hacia fuera.

.. figure:: neumatic/_images/neumatic-32-and-3.png
   :align: center
   :width: 488px
   :alt: Cilindro de simple efecto con válvula de simultaneidad con
         presión en ambas entradas.

   Cilindro de simple efecto con válvula de simultaneidad con presión
   en ambas entradas.


Unión de válvulas
-----------------
En un circuito neumático podemos unir varias válvulas selectoras y de
simultaneidad para conseguir comportamientos complejos.

En el siguiente circuito podemos ver dos válvulas distintas
(una de simultaneidad y otra selectora)
que combinan el aire a presión de tres válvulas 3/2 hacia un cilindro
de simple efecto.

.. figure:: neumatic/_images/neumatic-valvula-and-or-1.png
   :align: center
   :width: 618px
   :alt: Válvulas de simultaneidad y selectora en cascada.

   Válvulas de simultaneidad y selectora en cascada.

En el circuito anterior el vástago del cilindro saldrá hacia fuera
cuando se presione la válvula de la derecha y, a la vez, una de las dos
válvulas de la izquierda.

----

En el siguiente circuito podemos ver otra combinación distinta de válvulas
de simultaneidad y selectora hacia un cilindro de simple efecto.

.. figure:: neumatic/_images/neumatic-valvula-and-or-2.png
   :align: center
   :width: 616px
   :alt: Válvulas de simultaneidad y selectora en cascada II.

   Válvulas de simultaneidad y selectora en cascada II.

En el circuito anterior el vástago del cilindro saldrá hacia fuera siempre
que accionemos la válvula derecha o bien cuando accionemos ambas válvulas
de la izquierda.



Ejercicios
----------

#. Dibuja el símbolo en reposo de una válvula de simultaneidad neumática.

#. Dibuja el funcionamiento de una válvula de simultaneidad neumática
   cuando recibe aire a presión por la vía derecha.

   Dibuja el funcionamiento de una válvula de simultaneidad neumática
   cuando recibe aire a presión por la vía izquierda.

#. Explica el funcionamiento de la válvula de simultaneidad neumática
   y dibuja su tabla de verdad.

#. Simula el funcionamiento de un cilindro de simple efecto con un
   vástago que debe salir al accionar a la vez las
   **dos válvulas 3/2** de maniobra.

   `Simulador de neumática. <../_static/flash/simulador-neumatica.html>`__

#. Dibuja el circuito anterior en papel y explica su funcionamiento.

#. ¿Para qué sirve la unión de válvulas de simultaneidad y válvulas
   selectoras en cascada?

#. Simula un circuito que tenga tres válvulas 3/2 que accionen un
   cilindro de simple efecto.

   El vástago del cilindro debe salir fuera cuando se accionen cualquiera
   de las dos válvulas de la izquierda y a la vez se accione la válvula
   de la derecha.

   `Simulador de neumática. <../_static/flash/simulador-neumatica.html>`__

#. Dibuja el circuito anterior en papel y explica su funcionamiento.

#. Dibuja la tabla de verdad con el funcionamiento del circuito anterior
   completando la siguiente tabla.

   .. list-table::
      :widths: 25 25 25 25
      :align: center
      :header-rows: 1

      * - Válvula izquierda
        - Válvula central
        - Válvula derecha
        - Vástago
      * - No accionada
        - No accionada
        - No accionada
        - Dentro
      * - Accionada
        - No accionada
        - No accionada
        -
      * - No accionada
        - Accionada
        - No accionada
        -
      * - Accionada
        - Accionada
        - No accionada
        -
      * - No accionada
        - No accionada
        - Accionada
        -
      * - Accionada
        - No accionada
        - Accionada
        -
      * - No accionada
        - Accionada
        - Accionada
        -
      * - Accionada
        - Accionada
        - Accionada
        -
