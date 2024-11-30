:Date: 12/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bjt-pushpull:

El esquema push-pull
====================
El `esquema push-pull <https://es.wikipedia.org/wiki/Salida_en_contrafase>`__,
también llamado en contrafase, es un circuito utilizado en las etapas de
salida de circuitos electrónicos para entregar tanto tensión y corriente
positivas como tensión y corriente negativas.

El esquema utiliza un transistor NPN para entregar corriente y tensión
positiva y utiliza un transistor PNP para absorber corriente y entregar
tensión negativa.

Ambos transistores están en colector común o "seguidor de emisor" que,
como recordaremos, es una configuración que amplifica la corriente de
salida, pero no amplifica la tensión.

.. figure:: electronic/_images/electronic-analog-pushpull.png
   :width: 200px
   :align: center
   :alt: Esquema de dos transistores bipolares en montaje push-pull.

   Esquema de dos transistores bipolares en montaje push-pull.

Los dos diodos en las bases de los transistores sirven para mantener una
tensión de 1.2 voltios entre las bases, que coincide con la tensión de
polarización de los dos transistores.


Simulación
----------
A continuación podemos ver una simulación de un circuito push-pull
que consigue alimentar una carga con corrientes positivas y negativas.
La parte superior del circuito es simétrica respecto a la parte inferior.
Cada uno de los transistores se encarga de conducir una parte de la
corriente. El transistor NPN superior conduce la corriente positiva y
el transistor PNP inferior conduce la corriente negativa.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-pushpull.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja un esquema simplificado de dos transistores bipolares trabajando
   en configuración push-pull.

#. Dibuja un esquema realista de dos transistores bipolares trabajando en
   configuración push-pull o contrafase.

#. ¿Qué función realiza una etapa push-pull y dónde se pueden encontrar?

#. ¿Qué tipo de amplificación realiza una etapa push-pull?

#. ¿Qué ganancia de tensión tiene la etapa push-pull simulada?
 
   Recuerda parar la simulación del circuito para poder medir con 
   facilidad el valor máximo y el valor mínimo de tensión de entrada y 
   de tensión de salida. 
   
   La fórmula de la ganancia de tensión es:
   
   .. math::

      Ganancia\_V = \cfrac{V_{out\_max} - V_{out\_min}}{ V_{in\_max} - V_{in\_min}}
   
   
#. ¿Qué ganancia de corriente tiene la etapa push-pull simulada?

   La fórmula de la ganancia de corriente es:

   .. math::

      Ganancia\_I = \cfrac{I_{out\_max} - I_{out\_min}}{ I_{in\_max} - I_{in\_min}}

#. Busca en Internet la hoja de datos del popular amplificador operacional
   `LM321 <https://www.ti.com/lit/ds/symlink/lm321.pdf>`__.
   Dibuja la etapa de salida, basada en un circuito push-pull.
