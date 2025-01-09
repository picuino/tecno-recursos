:Date: 08/06/2022
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-hardware-ley-moore:

Ley de Moore
============

La `ley de Moore <https://es.wikipedia.org/wiki/Ley_de_Moore>`__ fue
formulada en el año 1965 por Gordon Moore, cofundador de Intel,
y expresa que cada 2 años se duplica el número de transistores de un
microprocesador.

Gracias a esta tendencia a aumentar el número de transistores, la
potencia y capacidad de cálculo han aumentado de forma exponencial
desde el año 1965 hasta la actualidad. Se espera que todavía siga
aumentando unos años más, hasta que la tecnología se tope con los
efectos cuánticos, que no permitirán seguir fabricando transistores
más pequeños.

Esta ley también es válida para otros dispositivos basados en
transistores como pueden ser la memoria RAM o la memoria Flash.


.. figure:: informatica/_images/informatica-moore-law.png
   :align: center
   :width: 340px

   `Max Roser, Hannah Ritchie <https://commons.wikimedia.org/wiki/File:Moore%27s_Law_Transistor_Count_1970-2020.png>`__,
   `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
   via Wikimedia Commons.


Relación capacidad/precio
-------------------------
Los dispositivos de hardware informático sufren una fuerte deflación de
precios con el tiempo, lo que provoca que un dispositivo muy caro, de tope
de gama, pase en pocos años a ser un dispositivo obsoleto, en el rango
de precios más baratos.

Una buena pauta a la hora de comprar hardware es no comprar lo más
barato del mercado, puesto que suele tener una baja relación
capacidad/precio.

Por otro lado, los dispositivos más nuevos del mercado se suelen lanzar
con unos precios muy altos debido a que son productos de la mayor capacidad
o rendimiento y eso les hace ser más atractivos.
El resultado es que estos dispositivos de gama alta suelen tener también
una pobre relación capacidad/precio o rendimiento/precio.

En las tablas que se muestran a continuación se pueden ver reflejados
estos conceptos.

Tabla de precios de memorias USB de marca SanDisk en Amazon en 2022.

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Capacidad [Gbyte]
     - Precio [€]
     - Capacidad/precio [Gbyte/€]
   * - 16
     - 6
     - 2,67
   * - 32
     - 8
     - 4,00
   * - 64
     - 10
     - 6,40
   * - 128
     - 17,70
     - 7,23
   * - 256
     - 30,90
     - 8,28
   * - 512
     - 87,80
     - 5,83

Como puede observarse, los dispositivos de precios más bajos se pueden
mejorar duplicando su capacidad por poco dinero más.

La relación de precio por Gigabyte mejora constantemente hasta que llegamos
al dispositivo más nuevo y de gama más alta, que tiene un precio muy
superior al resto durante el periodo de lanzamiento, por lo que no merece
la pena comprarlo por su menor relación capacidad/precio.

Tabla de precios de procesadores Intel en Amazon en 2022.
La capacidad de cálculo se ha obtenido de la página
de `PassMark Software <https://www.cpubenchmark.net>`__.

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Modelo
     - Rendimiento [PCMark]
     - Precio [€]
     - Rendimiento/precio
   * - i5-3470 3,2GHz
     - 4666
     - 65,82
     - 71
   * - i5-11400F 2,6GHz
     - 17191
     - 150,45
     - 114
   * - i5-12400 2,5GHz
     - 19500
     - 200,00
     - 98
   * - i5-12600KF
     - 27052
     - 270,00
     - 100
   * - i9-12900KS 2,4GHz
     - 44482
     - 795,00
     - 56

Los modelos de procesadores con menor rendimiento no están a la venta como
procesadores independientes, pero se siguen vendiendo en equipos ya
montados, a pesar de ser obsoletos y tener una baja relación
rendimiento/precio.

Podemos observar de nuevo que los equipos más baratos tienen una pobre
relación rendimiento/precio, al igual que los más caros y de gama alta.
La mejor compra está en un equipo intermedio, con la mejor relación
rendimiento/precio.


Test de la unidad
-----------------

`Test de la ley de Moore I.
<../test/es-hardware-ley-moore-1.html>`__

`Test de la ley de Moore II.
<../test/es-hardware-ley-moore-2.html>`__

