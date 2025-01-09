:Date: 09/05/2021
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electric-serie-paralelo-resistencias:

Resistencias equivalentes
=========================
En esta unidad se estudiarán las resistencias equivalentes de circuitos
con resistencias en serie, con resistencias en paralelo y con resistencias
en montajes mixtos.

.. image:: electric/_images/electric-resistencias-serie-paralelo-06.png
   :align: center
   :width: 386px

Una resistencia equivalente a un circuito con varias resistencias es
aquella por la que pasará la misma corriente que por el circuito al
alimentarlos con la misma fuente de tensión.


.. contents:: Índice de contenidos:
   :local:
   :depth: 2


Resistencia equivalente de un circuito en serie
-----------------------------------------------
Un circuito con resistencias en serie está configurado como el de
la siguiente figura:

.. image:: electric/_images/electric-resistencias-serie-paralelo-01.png
   :align: center
   :width: 573px

Este circuito se puede simplificar en un circuito con una sola resistencia
que tenga un valor equivalente a las dos resistencias en serie.
Este circuito se denomina circuito equivalente y por él circulará la misma
corriente que por el circuito con dos resistencias.

Para calcular el valor de la resistencia equivalente a un circuito en serie,
se deben sumar los valores de todas las resistencias en serie según la
siguiente fórmula:

.. math::

    R12 = R1 + R2

En el caso de que el circuito esté compuesto por tres resistencias en
serie:

.. image:: electric/_images/electric-resistencias-serie-paralelo-03.png
   :align: center
   :width: 384px

se deberán sumar los valores de las tres resistencias para calcular el valor
de la resistencia equivalente, según la siguiente fórmula:

.. math::

    R123 = R1 + R2 + R3

Si a un circuito le añadimos una resistencia en serie la resistencia total
siempre aumentará y por lo tanto la corriente total siempre disminuirá.


Resistencia equivalente de un circuito en paralelo
--------------------------------------------------
En la siguiente figura se puede ver un circuito con resistencias en paralelo
y su circuito equivalente con una sola resistencia:

.. image:: electric/_images/electric-resistencias-serie-paralelo-02.png
   :align: center
   :width: 573px

En el caso de un circuito con resistencias en paralelo, la resistencia
equivalente se calculará con el inverso de la suma de las inversas de
las resistencias según la siguiente fórmula:

.. math::

    R12 = \cfrac{1}{ \cfrac{1}{R1} + \cfrac{1}{R2} }

La resistencia equivalente de un paralelo siempre será menor que cualquiera
de las resistencias que forman el paralelo.

Si el circuito está formado por tres resistencias en paralelo, el cálculo
puede extenderse a tres resistencias en total según la siguiente fórmula:

.. image:: electric/_images/electric-resistencias-serie-paralelo-04.png
   :align: center
   :width: 384px

.. math::

    R123 = \cfrac{1}{ \cfrac{1}{R1} + \cfrac{1}{R2} + \cfrac{1}{R3} }


Si a un circuito le añadimos una resistencia en paralelo, la resistencia
total siempre disminuirá y por lo tanto la corriente total siempre
aumentará.


Resistencia equivalente de un circuito paralelo-serie
-----------------------------------------------------
Los circuitos mixtos están compuestos por resistencias en serie y por
resistencias en paralelo.
Para resolver los circuitos mixtos primero habrá que resolver los circuitos
serie o paralelo interiores y con el circuito ya simplificado resolver los
circuitos serie o paralelo exteriores.

A continuación veremos varios ejemplos.

En la siguiente figura podemos ver un circuito mixto de tres resistencias:

.. image:: electric/_images/electric-resistencias-serie-paralelo-05.png
   :align: center
   :width: 386px

En este circuito mixto primero hay que resolver el paralelo formado por
las resistencias R2 y R3, con lo cual el circuito se simplifica según la
siguiente imagen.

.. image:: electric/_images/electric-resistencias-serie-paralelo-12.png
   :align: center
   :width: 294px

.. math::

    R23 = \cfrac{1}{ \cfrac{1}{R2} + \cfrac{1}{R3} }

A continuación se pueden sumar las resistencias R1 y R23 para calcular
la resistencia equivalente del circuito completo:

.. math::

    R123 = R1 + R23


Resistencia equivalente de un circuito serie-paralelo
-----------------------------------------------------

En la siguiente figura podemos ver otro circuito mixto de tres resistencias.

.. image:: electric/_images/electric-resistencias-serie-paralelo-06.png
   :align: center
   :width: 386px

En este circuito mixto primero hay que resolver la serie formada por las
resistencias R1 y R2 sumando sus valores, con lo cual el circuito se
simplifica según la siguiente imagen:

.. image:: electric/_images/electric-resistencias-serie-paralelo-07.png
   :align: center
   :width: 284px

.. math::

    R12 = R1 + R2

A continuación se puede calcular el paralelo de las resistencias R12 y R3
para hallar la resistencia equivalente del circuito completo:

.. math::

    R123 = \cfrac{1}{ \cfrac{1}{R12} + \cfrac{1}{R3} }


Resistencia equivalente de un circuito dos series-paralelo
----------------------------------------------------------

En la siguiente figura podemos ver un circuito mixto de cuatro
resistencias:

.. image:: electric/_images/electric-resistencias-serie-paralelo-10.png
   :align: center
   :width: 384px

En este circuito mixto primero hay que calcular el equivalente en serie
de las resistencias R1 y R2 y por otro lado el equivalente en serie de las
resistencias R3 y R4, con lo que el circuito se simplifica según la
siguiente imagen:

.. image:: electric/_images/electric-resistencias-serie-paralelo-11.png
   :align: center
   :width: 279px

.. math::

    R12 = R1 + R2

.. math::

    R34 = R3 + R4

Una vez simplificado el circuito, se puede calcular el paralelo de las
dos resistencias R12 y R34 según la fórmula correspondiente:

.. math::

    R1234 = \cfrac{1}{ \cfrac{1}{R12} + \cfrac{1}{R34} }


Resistencia equivalente de un circuito dos paralelos-serie
----------------------------------------------------------

En la siguiente figura podemos ver otro circuito mixto de cuatro
resistencias:

.. image:: electric/_images/electric-resistencias-serie-paralelo-08.png
   :align: center
   :width: 384px

En este circuito mixto primero hay que calcular el equivalente en paralelo
de las resistencias R1 y R2 y por otro lado el equivalente en paralelo de
las resistencias R3 y R4, con lo que el circuito se simplifica según la
siguiente imagen:

.. image:: electric/_images/electric-resistencias-serie-paralelo-09.png
   :align: center
   :width: 280px

.. math::

    R12 = \cfrac{1}{ \cfrac{1}{R1} + \cfrac{1}{R2} }

.. math::

    R34 = \cfrac{1}{ \cfrac{1}{R3} + \cfrac{1}{R4} }

Una vez simplificado el circuito, se puede calcular la serie de las
dos resistencias R12 y R34 según la fórmula correspondiente:

.. math::

    R1234 = R12 + R34


Ejercicios
----------
Ejercicios de cálculo de resistencias equivalentes en serie,
en paralelo y en circuitos mixtos.

|  :download:`Calcular resistencias en serie y en paralelo.
   Formato PDF.
   <electric/electric-resistencias-serie-paralelo.pdf>`
|  :download:`Proyecto editable. Formato KiCad.
   <electric/electric-resistencias-serie-paralelo.zip>`


Cuestionarios
-------------

`Cuestionario. Calcular resistencias equivalentes.
<../test/es-electric-series-parallel-calc-2.html>`__
