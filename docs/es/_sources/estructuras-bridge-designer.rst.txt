:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _estructuras-bridge-designer:


Diseño de puentes
=================

.. image:: mecan/_images/mecan-bridge-designer-01tb.jpg
   :align: center
   :width: 640px

El programa para diseño de puentes "Bridge Designer" proporciona una
introducción práctica a la ingeniería a través de una experiencia
de diseño auténtica y realista.

Este software proporciona las herramientas para diseñar, probar
y optimizar un puente de acero para autopista, basado en
especificaciones, restricciones y criterios de rendimiento realistas.

Uno de los objetivos del programa es minimizar la cantidad de
material utilizada en la construcción, como corresponde a un criterio
ecológico.

The Bridge Designer es un software para Windows y Mac OS X,
gratuito y de dominio público.
Se proporciona y está destinado únicamente para uso educativo.


Enlaces
-------
* `The Bridge Designer. Página principal.
  <http://bridgedesigner.org/>`__
* `The Bridge Designer. Download
  <http://bridgedesigner.org/download/>`__
* `Instalador para Windows desde la página de Source Forge.
  <https://sourceforge.net/projects/wpbdc/files/Current%20Release/jre/setupbdv16j.exe/download>`__
* `Instalador Bridge Designer 1.6
  <../_static/downloads/setup-bridge-designer-v16j.zip>`__


Tutorial
--------

Tutorial en Inglés de 19 minutos de duración.

* Vídeo: `Bridge Designer 2016 Tutorial.
  <https://www.youtube-nocookie.com/embed/9w9fTC4eh3w>`__


|br|

-----


Ejercicios
----------

1. Diseñar un puente con el código **BRI02A**
   y plantilla **Through Truss - Warren**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri02a.png

   .. image:: mecan/_images/mecan_bridge_bri02a_warren.png

   |br|

#. Diseñar un puente con el código **BRI02A**
   y plantilla **Through Truss - Howe**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri02a_howe.png

   |br|

#. Diseñar un puente con el código **BRI23A**
   y plantilla **Continuous Arch - Warren**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri23a_warren.png

   |br|

#. Diseñar un puente con el código **BRI23A**
   y plantilla **Continuous Arch - Pratt**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri23a_pratt.png

   |br|

#. Diseñar un puente con el código **BRI12C**
   y plantilla **Cable Stayed Warren Truss**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri12c_stayed.png

   |br|

#. Diseñar un puente con el código **BRI15A**
   y plantilla **Cable Stayed Warren Truss**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri15a_stayed.png

   |br|

#. Diseñar un puente con el código **BRI15A**
   y plantilla **Suspended Warren Truss**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri15a_suspended.png

   |br|

#. Diseñar un puente con el código **BRI54A**
   y plantilla **Continuous Deck Truss**
   para que tenga el menor coste posible.

   .. image:: mecan/_images/mecan_bridge_bri54a_deck.png

   |br|

#. Diseñar un puente con el código **BRI02A**
   y sin plantilla (elegir plantilla <none>).
   A continuación se diseñará el puente con
   la forma de la siguiente imagen.

   .. image:: mecan/_images/mecan_bridge_bri02a_mountain.png

   |br|

   El puente debe tener el menor coste posible.

#. Diseñar un puente con el código **BRI76A**
   y forma libre.
   Se pueden utilizar cables de suspensión y
   el apoyo central.

   .. image:: mecan/_images/mecan_bridge_bri76a.png

   El puente debe tener el menor coste posible.


Puntuación
----------

.. raw:: html

   <script>
   function calc() {
      precio_min = idtonum("precio_min");
      precio_actual = idtonum("precio_actual");
      porcentaje_aumento_para_aprobado = 30;
      nota_max = 100.0;
      nota_aprobado = 50.0;
      k = - ( Math.log(nota_max) - Math.log(nota_aprobado) ) / ( Math.log(100) - Math.log(100 + porcentaje_aumento_para_aprobado) );
      puntuacion = nota_max * Math.pow(precio_min / precio_actual, k);
      puntuacion = Math.round(puntuacion);
      if (Number.isFinite(puntuacion) && puntuacion <= nota_max) {
         console.log(precio_min, precio_actual, puntuacion);
         document.getElementById("precio_puntuacion").value = puntuacion;
      }
      else {
         document.getElementById("precio_puntuacion").value = "";
      };
   }

   function idtonum(id) {
      val = document.getElementById(id).value.replace(',', '.');
      if (isNaN(val)) return '';
      return val * 1.0;
   }
   </script>

   <div class="calc_row">
      <div class="calc_sname">Precio más bajo</div>
      <div class="calc_sval"> <form> <input type="text" id="precio_min" onkeyup="calc()"> </form> </div>
      <div class="calc_sunit">k$</div>
   </div>
   <div class="calc_row">
      <div class="calc_sname">Precio conseguido</div>
      <div class="calc_sval"> <form> <input type="text" id="precio_actual" onkeyup="calc()"> </form> </div>
      <div class="calc_sunit">k$</div>
   </div>
   <div class="calc_row">
      <div class="calc_sname">Puntuación obtenida</div>
      <div class="calc_scalc"> <form> <input disabled="disabled" type="text" id="precio_puntuacion"> </form> </div>
      <div class="calc_sunit">%</div>
   </div>


.. |br| raw:: html

   <br />
