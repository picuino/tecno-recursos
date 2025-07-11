:Date: 04/07/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. _electric-simulador-resistencia:


:index:`Resistencia eléctrica`
==============================
La resistencia eléctrica es la oposición que muestran ciertos componentes
(las resistencias) al paso de la corriente eléctrica.
Cuanto mayor es el valor de la resistencia de un componente, menos
corriente pasará a través de él.

Las resistencias tienen tres grandes aplicaciones:

* **Generar calor.** Es una de las aplicaciones principales.
  Por ejemplo las resistencias de una tostadora producen calor hasta
  tostar el pan. Las resistencias de un horno, de una lavadora o de
  una manta eléctrica son otros ejemplos cotidianos.

  .. figure:: electric/_images/electric-resistencia-calentamiento.jpg
     :align: center
     :width: 320px

     Resistencia de calentamiento de una máquina de café.

     `Acosta.eu <https://en.wikipedia.org/wiki/File:Heizstab-heatingelement-espressomachine.jpg>`__,
     `CC BY-SA 3.0 Unported <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
     via Wikimedia Commons.

* **Reducir la corriente.** Es el caso de las resistencias que se colocan
  en serie con los ledes para que estos no se quemen al conectarlos a la
  tensión directamente. Otro ejemplo se encuentra en las resistencias que
  se conectan en serie con las bornas de un motor eléctrico para que el
  arranque del motor se produzca suavemente, sin brusquedad.

* **Conseguir tensiones intermedias.** En electrónica esta es una de las
  principales aplicaciones de las resistencias. A partir de una fuente de
  tensión de 5 voltios se pueden conseguir tensiones desde 0 voltios
  hasta 5 voltios pasando por todo el rango intermedio.

En el siguiente circuito simulado se han conectado dos resistencias en
serie para conseguir una tensión menor que la tensión de la pila.
Modifica el valor de las resistencias para poder conseguir una tensión
de salida exacta de 3.5 voltios.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=electric-simulador-resistencia-1.txt"></iframe>
   </div>


:index:`Ohmios`
---------------
El valor de resistencia eléctrica se mide en **ohmios**, abreviado con
la letra griega omega [Ω].
En la siguiente tabla aparecen valores típicos de varios componentes
comunes en nuestro entorno basados en resistencias:

.. list-table::
   :widths: 60 30
   :header-rows: 1

   * - Componente
     - Resistencia [Ω]
   * - Lámpara de automóvil de 15 vatios de potencia.
     - 10 ohmios
   * - Calentador eléctrico de aire.
     - 22 ohmios
   * - Resistencia de limitación de corriente de un led indicador.
     - 220 ohmios
   * - Resistencia de entrada de un amplificador de audio.
     - 10 000 ohmios
   * - Resistencia de entrada de un polímetro.
     - 10 000 000 ohmios


:index:`Ohmímetro`
------------------
Un **ohmímetro** es un aparato que permite medir la resistencia de un
circuito compuesto por resistencias. El ohmímetro inyecta en el circuito
una cierta cantidad de corriente para poder hacer la medición. Por esta
razón, hay que desconectar todas las pilas del circuito antes de medir
la resistencia eléctrica con este aparato.

Para simular un ohmímetro debemos escogerlo desde el menú ``Dibujar``...
``Medidores y Etiquetas``... ``Añadir Ohmímetro``.

En la siguiente simulación, añade los ohmímetros necesarios para medir
el valor de resistencia de R1 en serie con R2 y el valor de resistencia
de R1 en paralelo con R2.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=electric-simulador-resistencia-2.txt"></iframe>
   </div>


Ejercicios
----------

#. ¿Qué es la resistencia eléctrica?
#. ¿Qué aplicaciones puede tener una resistencia eléctrica?
#. ¿En qué unidades se mide la resistencia eléctrica?
   Nombra 3 elementos cotidianos y su resistencia eléctrica.
#. ¿Cómo se llama el aparato que mide la resistencia eléctrica?
   ¿Cómo se debe conectar a las resistencias?