:Date: 28/02/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electric-potencia:

:index:`Potencia eléctrica`
===========================

La `potencia eléctrica <https://es.wikipedia.org/wiki/Potencia_el%C3%A9ctrica>`__
es la **velocidad** con la que un aparato **consume energía eléctrica**.
Un aparato con mucha potencia va a consumir mucha energía en una hora.
Un aparato con poca potencia va a consumir poca energía en una hora.

Todos los aparatos eléctricos tienen la obligación de informar de su
consumo de potencia en una etiqueta.


Fórmula de la potencia eléctrica
--------------------------------
Otra forma de conocer el consumo de potencia de un aparato es calcularlo
multiplicando el voltaje por la intensidad de corriente que alimentan un
aparato eléctrico. La fórmula es la siguiente:

.. math::

   P = V \cdot I

Siendo las magnitudes y unidades las siguientes:

   P = Potencia en vatios [W]

   V = Tensión eléctrica en voltios [V]

   I = Intensidad de corriente en amperios [A]

Esta fórmula solo es válida para corriente continua o para corriente
alterna de aparatos basados en resistencias.
Para los aparatos alimentados con corriente alterna que sean electrónicos,
motores, fluorescentes, etc. es necesario tener en cuenta que tendrán
potencia reactiva y no será válida la fórmula anterior.


Potencia activa y reactiva
--------------------------
Cuando se habla de la potencia que consume un aparato, nos referimos
a la **potencia activa**, es decir, la potencia que consume energía.

En corriente alterna, que es la corriente que llega a nuestras casas
hasta los enchufes, también existe la **potencia reactiva** que no
consume energía. Esta potencia aparece cuando hay condensadores o
bobinas en los aparatos. Estos componentes almacenan energía de la red
y la devuelven de nuevo varias veces por segundo. El resultado final
es que no consumen energía, pero aumentan la corriente eléctrica por
los cables.

Muchos aparatos conectados a la corriente alterna tienen este
comportamiento, de manera que la fórmula anterior deja de funcionar.

Por ejemplo, una bombilla de bajo consumo tiene una etiqueta con los
siguientes valores:

   Potencia 12W [#f1]_

   Intensidad 102mA

   Tensión 230V

Si multiplicamos la intensidad por la tensión el resultado es de 23.46
vatios (0.102A * 230V = 23.46W) que es mucho mayor que los 12 vatios
de potencia activa declarados. Esto se debe a que la bombilla "consume"
una potencia reactiva de 20 vatios.

La potencia reactiva no se paga en la factura eléctrica, pero aumenta
el consumo de corriente de los cables y puede hacer que el Interruptor
de Control de Potencia desconecte la instalación.


Consumos de potencia
--------------------
A continuación se presenta una tabla con consumos de potencia eléctrica
de aparatos comunes en el hogar.
Cuanto mayor sea la potencia de un aparato más energía consumirá cada
hora que esté encendido y más costará en la factura eléctrica.

Estos consumos de potencia son orientativos y pueden variar de un aparato
a otro.

.. list-table::
   :header-rows: 1

   * - Aparato
     - Potencia
   * - Bombilla de bajo consumo
     - 12 W
   * - Ordenador portátil
     - 30 W
   * - Ordenador de sobremesa
     - 80 W
   * - Ordenador gamer
     - 300 W
   * - Horno microondas
     - 900 W
   * - Zona de calor de una vitrocerámica
     - 500 W a 2500 W según tamaño
   * - Calefactor de aire
     - 2000 W
   * - Secador de pelo
     - 2000 W
   * - Taladro
     - 100 W a 500 W
   * - Televisión LED de 40 pulgadas
     - 80 W
   * - Frigorífico
     - 150 W
   * - Lavadora en frío
     - 100 W
   * - Lavadora con agua caliente
     - 1000 W
   * - Plancha eléctrica
     - 800 W
   * - Cargador de teléfono
     - 5 W a 20 W
   * - Aspiradora
     - 1000 W
   * - Aire acondicionado
     - 1000 W
   * - Horno eléctrico
     - 2000 W

Los **motores** son un caso especial dentro de los consumos de los
aparatos eléctricos.
Los demás aparatos consumen una cantidad fija de potencia, pero los
motores pueden consumir más o menos potencia dependiendo de la
carga mecánica que estén moviendo. Por ejemplo, un automóvil eléctrico
que tenga un motor de 85000 vatios en realidad solo consumirá unos
10000 vatios a velocidad de 100km/h en una carretera llana.
Esta potencia aumentará si el automóvil sube un puerto o mientras el
conductor acelera.

En el mercado se pueden encontrar con facilidad batidoras con motores
de 1000 vatios.
En realidad estas batidoras apenas gastarán 100 ó 200 vatios cuando estén
batiendo un líquido o un puré.


Interruptor de Control de Potencia
----------------------------------
El `IPC o Interruptor de Control de Potencia
<https://es.wikipedia.org/wiki/Interruptor_de_control_de_potencia>`__
es un aparato de control, obligatorio en todas las instalaciones
eléctricas. Su función es desconectar la instalación eléctrica si el
consumo total de todos los aparatos es mayor que la potencia contratada.

Las potencias máximas estándar que se pueden contratar en los hogares son
las siguientes:

.. list-table:: Límite de potencia máxima contratable  (a tensión de 230V)
   :header-rows: 1

   * - Potencia
     - Limitador
     - Costo mensual (aprox.)
   * - 2300 W
     - 10 A
     - 6 €/mes
   * - **3450 W**
     - **15 A**
     - 9 €/mes
   * - **4600 W**
     - **20 A**
     - 12 €/mes
   * - **5750 W**
     - **25 A**
     - 15 €/mes
   * - 6900 W
     - 30 A
     - 18 €/mes
   * - 8050 W
     - 35 A
     - 21 €/mes
   * - 9200 W
     - 40 A
     - 24 €/mes
   * - 10350 W
     - 45 A
     - 27 €/mes
   * - 11500 W
     - 50 A
     - 30 €/mes

Cuanto mayor sea la potencia contratada, más costará mensualmente el
término fijo que cobra la compañía eléctrica. Por esta razón es
recomendable contratar la menor cantidad de potencia que podamos.

Por otro lado, si vamos a conectar de forma simultánea aparatos de
mucha potencia, es recomendable aumentar el límite de potencia para
que el interruptor de control no corte continuamente la conexión
eléctrica por alto consumo.


Cuestionarios
-------------
Cuestionarios sobre la potencia eléctrica.

* `Cuestionario. Cálculos de potencia eléctrica.
  <../test/es-electric-power.html>`__


----

.. [#f1] La potencia en las etiquetas de los aparatos eléctricos se
         mide en vatios [W] y siempre se refiere a la potencia activa,
         es decir, a la potencia que consume energía.
