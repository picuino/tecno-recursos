:Date: 23/01/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-digital-signals:

Las señales digitales
=====================

Hasta ahora se han estudiado las señales analógicas, que son señales de
tensión o de corriente que pueden tomar cualquier valor dentro de un rango.

Este es el aspecto que puede tener una señal analógica:

.. figure:: electronic/_images/electronic-analog-signal.png
   :align: center
   :alt: Ejemplo de señal analógica.

   Ejemplo de señal analógica.

Las `señales digitales <https://es.wikipedia.org/wiki/Se%C3%B1al_digital>`__,
por otro lado, son señales que solo toman valores discretos, por ejemplo
0 voltios y 5 voltios. Todos los demás valores de tensión son ignorados
como no válidos.

Este es el aspecto que puede tener una señal digital con algo de ruido
añadido:

.. figure:: electronic/_images/electronic-digital-signal.png
   :align: center
   :alt: Ejemplo de señal digital con ruido.

   Ejemplo de señal digital con ruido añadido.

Las señales digitales se pueden convertir a valores binarios y manejar
esos números binarios matemáticamente gracias a los
`circuitos digitales <https://es.wikipedia.org/wiki/Circuito_digital>`__.
Esto proporciona muchas ventajas a las señales digitales.


Ventajas de la señal digital
----------------------------

1. **Inmunidad al ruido.**

   El ruido de pequeño valor no produce errores en la información de la
   señal.

#. **Duplicación sin pérdidas.**

   Las señales digitales se pueden duplicar sin perder calidad, porque
   el ruido que se introduce en el sistema digital puede ser eliminado.

#. **Detección y corrección de errores.**

   Se puede calcular si una señal digital se ha degradado por el ruido
   (detección de errores) y se pueden corregir los errores que se hayan
   producido mediante técnicas matemáticas.

#. **Facilidad de procesamiento de la señal.**

   La señal digital se puede procesar fácilmente con software adecuado,
   que es capaz de lograr más efectos que el procesamiento analógico.
   Un ejemplo de este procesado digital es el conocido
   `Auto-Tune <https://es.wikipedia.org/wiki/Auto-Tune>`__.


Cuantificación digital
----------------------
La cuantificación digital es el proceso mediante el cual una señal
se convierte en valores binarios.

.. figure:: electronic/_images/electronic-digital-levels.png
   :width: 600px
   :align: center
   :alt: Definición de valores lógicos en una señal con ruido.

   Definición de valores lógicos en una señal con ruido.


Simulación
----------
A continuación puede verse la simulación de una señal de datos digital
con tensiones entre 0 y 5 voltios, que se deteriora al añadir ruido
en la transmisión y que por último se vuelve a recuperar eliminando el
ruido con un simple comparador con histéresis (Trigger Schmitt).

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-ruido.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja una señal analógica y una señal digital.

   ¿En qué se diferencian?

#. ¿Qué ventajas presentan las señales digitales?

#. ¿Qué es la cuantificación digital?

#. Explica con tus palabras qué ocurre en el circuito simulado.

#. Modifica en el simulador la señal de FM para que tenga 3 voltios de
   tensión máxima. ¿Qué le ocurre a la señal digital recuperada?

   Dibuja la forma de la señal digital recuperada y señala en el gráfico
   el problema.

