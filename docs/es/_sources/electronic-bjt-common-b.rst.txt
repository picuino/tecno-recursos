:Date: 07/10/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-bjt-common-b:

El transistor en base común
===========================
En esta configuración el transistor tiene la base conectada a una tensión
fija. La señal de entrada llega por el emisor del transistor
y la señal amplificada sale por el colector del transistor.

.. figure:: electronic/_images/electronic-analog-common-b.png
   :width: 200px
   :align: center
   :alt: Esquema simplificado de un transistor NPN en base común.

   Esquema simplificado de un transistor NPN en base común.

Esta configuración permite amplificar la tensión de entrada
manteniendo la corriente igual.
Este funcionamiento es útil en etapas de entrada de señal desde un
componente que genere poca tensión, pero con corrientes relativamente altas.

Un ejemplo de aplicación práctica es amplificar la señal inducida en una
bobina. Por ejemplo, amplificar el sonido captado por un altavoz,
convirtiendo el altavoz en un micrófono.

A continuación puede verse una simulación de un transistor NPN en
configuración de base común. El transistor amplifica una señal que entra
por el emisor generando una señal con mucha mayor tensión que sale por el
colector.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=bjt-common-b.txt"></iframe>
   </div>


La función de cada uno de los componentes es la siguiente:

* El **generador de señal alterna** genera una pequeña señal de entrada
  de 0.1 voltios de pico.

* Las **resistencias R1 y R2** mantienen una tensión fija en la base
  que **polariza al transistor** para que funcione siempre con corrientes
  positivas, a pesar de que la tensión de entrada sea tanto positiva
  como negativa.

* El **transistor NPN** recibe una señal de pequeña tensión por
  el emisor, que produce una corriente en el emisor.
  El transistor transfiere esa corriente del emisor al colector, donde
  una resistencia convierte la corriente en una tensión mayor que la
  tensión de entrada.

  En esta etapa no hay amplificación de corriente, solo de tensión.

* La **resistencia R3** recibe la corriente del colector y la convierte
  en tensión de salida. Cuanto mayor sea esta resistencia, mayor
  será la tensión de salida y, por lo tanto, la amplificación de tensión
  de la etapa.


Ejercicios
----------

#. Dibuja un esquema simplificado de un transistor NPN trabajando en
   configuración de base común, mostrando por dónde llega
   la señal de entrada y por dónde sale la señal amplificada.

#. Dibuja un esquema realista de un transistor NPN trabajando en
   configuración de base común.

#. ¿Cuál es la función principal de un transistor funcionando en
   configuración de base común?

#. ¿Para qué sirven las resistencias R1 y R2?

#. ¿Para qué sirve la resistencia R3?

#. ¿Qué ganancia de tensión tiene la etapa simulada?

   Para calcular la ganancia de tensión es necesario dividir la variación
   de tensión en la salida entre la variación de la tensión en la entrada.

   .. math::

      Ganancia\_V = \cfrac{V_{out\_max} - V_{out\_min}}{ V_{in\_max} - V_{in\_min}}
   
   Puedes obtener los valores de tensión necesarios de los osciloscopios
   que se encuentran en la parte inferior del simulador.


#. Si modificamos R3 con un valor de 2kOhm y R1 con un valor de 70kOhm,
   ¿Qué le ocurre a la señal de salida del circuito?
   ¿Por qué crees que ocurre esto?
