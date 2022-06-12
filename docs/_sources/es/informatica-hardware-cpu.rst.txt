:Date: 08/06/2022
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-hardware-cpu:

Unidad Central de Proceso (:index:`CPU`)
========================================
Una `CPU o unidad central de procesamiento
<https://es.wikipedia.org/wiki/Unidad_central_de_procesamiento>`__
también llamado procesador, es un componente de un ordenador dedicado
a interpretar las instrucciones de los programas informáticos.
Pueden realizar operaciones lógicas, aritméticas y de movimiento de datos.

Es el componente más complejo de un ordenador. Una CPU actual puede
contener cerca de 10000 millones de transistores.

Las CPU más conocidas y usadas en la actualidad son las de
la empresa Intel (i3, i5, i7) para ordenadores personales y las
CPU basadas en ARM para los teléfonos inteligentes y tabletas.

.. figure:: informatica/_images/informatica-cpu-486dx2-b.jpg
   :align: center
   :width: 340px

   CPU 80486DX típica de los PC de mediados de los años 90.

   `Solipsist <https://commons.wikimedia.org/wiki/File:Intel_80486DX2_bottom.jpg>`__
   `CC BY-SA 2.0 Generic <https://creativecommons.org/licenses/by-sa/2.0/deed.en>`__
   via Wikimedia Commons.


Unidad de procesamiento gráfico (:index:`GPU`)
----------------------------------------------
Una `GPU o unidad de procesamiento gráfico
<https://es.wikipedia.org/wiki/Unidad_de_procesamiento_gr%C3%A1fico>`__
es un procesador especializado, dedicado a calcular gráficos de forma
intensiva para aligerar la carga del procesador central.
Es capaz de calcular muy rápido operaciones de dibujo en tres dimensiones
tales como el antialiasing (suavizar bordes de las figuras)
dibujar triángulos, cuadrados, elipses, etc.


:index:`Tarjeta gráfica`
   La mayoría de las CPUs actuales tienen ya integradas pequeñas GPUs
   con una capacidad limitada para manejar gráficos. Es suficiente para
   manejar programas ofimáticos o navegar por internet, pero no tienen
   suficiente capacidad para manejar videojuegos, programas de diseño, etc.
   Por esa razón en los ordenadores de mayor potencia se utilizan
   `tarjetas gráficas <https://es.wikipedia.org/wiki/Tarjeta_gr%C3%A1fica>`
   especializadas, que llegan a consumir mucha más potencia eléctrica que
   la propia CPU.


.. figure:: informatica/_images/informatica-tarjeta-video.jpg
   :align: center
   :width: 480px

   Tarjeta gráfica Radeon HD 5570.

   `Evan-Amos <https://commons.wikimedia.org/wiki/File:Sapphire-Radeon-HD-5570-Video-Card.jpg>`__
   Public Domain. Via Wikimedia Commons.


Unidad de procesamiento tensorial (:index:`TPU`)
------------------------------------------------
Una `TPU o unidad de procesamiento tensorial
<https://es.wikipedia.org/wiki/Unidad_de_procesamiento_tensorial>`__
es una unidad central de proceso dedicada a cálculo intensivo de
operaciones de redes neuronales, usadas en Inteligencia Artificial.

El término TPU se utiliza por Google para un circuito inventado por la
empresa, pero cada vez más circuitos traen añadidas capacidades semejantes
para el cálculo de redes neuronales.


Características de una CPU
--------------------------
A la hora de comparar entre sí varias CPUs hay una serie de
características que las diferencian y que se describen a continuación.

Consumo energético
   El consumo de una CPU es cada vez más importante.
   Por una parte, cuanto menor consumo tenga una CPU, más tiempo va a
   durar una batería del dispositivo. Por otro lado, en los ordenadores
   enchufados, cuanto menor sea el consumo de electricidad menor será
   el costo de mantener al ordenador funcionando. Este consumo es tan
   elevado para los ordenadores de alto rendimiento que la electricidad
   llega a costar anualmente más que el precio de la propia CPU.

   El consumo de potencia, también llamado TDP, se mide en vatios.
   Una CPU típica de un ordenador personal consume alrededor de 100 vatios
   en funcionamiento normal.
   Por el contrario una CPU típica de un teléfono inteligente
   consume alrededor de 5 vatios.


Frecuencia de reloj
   Es la frecuencia a la que funciona la CPU y determina la cantidad de
   instrucciones que podrá ejecutar en un segundo.
   Las frecuencias típicas de los procesadores actuales varían desde
   los 1000MHz hasta los 5000MHz. Cuanto mayor sea la velocidad de reloj,
   más rápida será una CPU, si el resto de parámetros es el mismo.

   El :index:`Overclocking` es una técnica que consiste en hacer funcionar
   una CPU a una frecuencia más elevada que la frecuencia para la que está
   diseñada. Muchas CPUs admiten trabajar a mayor frecuencia que la
   nominal, pero esta técnica conlleva un mayor consumo energético y
   la posibilidad de fallos en el sistema.

Número de núcleos
   Las CPU actuales en realidad están compuestas internamente por varias
   CPU individuales llamadas núcleos. Cuantos más núcleos tenga una CPU
   más operaciones podrá realizar en paralelo.

   Hay tareas que se pueden dividir entre varios núcleos y que serán más
   rápidas cuantos más núcleos tenga una CPU.
   Por otro lado, ciertas tareas no se pueden dividir entre varios núcleos
   y su velocidad no será mayor por muchos núcleos que tenga la CPU.

   En 2022 una CPU de tamaño medio suele tener de 4 a 8 núcleos.


Número de hilos de ejecución
   Los hilos de ejecución son la cantidad de programas diferentes
   que se pueden ejecutar a la vez por parte de la CPU.
   En realidad una CPU solo podrá ejecutar un programa por núcleo,
   pero los hilos permiten duplicar de forma virtual el número de
   tareas y acelerar un poco más la velocidad de ejecución.

   En 2022 una CPU suele tener dos hilos de ejecución por núcleo.
   Es decir, una CPU de 6 núcleos tendrá 12 hilos de ejecución.


Memoria caché
   Es una memoria interna a la CPU que permite acceder a los datos y
   programas de manera rápida.

   Las CPUs deben leer información de la memoria RAM para realizar su
   tarea, tanto información del programa a ejecutar como de los datos a
   procesar. La velocidad de transferencia de la memoria RAM suele ser más
   lenta que la velocidad de proceso de la CPU, de manera que la memoria
   caché se utiliza como una memoria intermedia que almacena los contenidos
   de la memoria RAM mientras se están procesando.

   Cuanto mayor sea el tamaño de la caché mayor será la velocidad final
   de la CPU.

   La mayoría de las CPU tienen varios niveles de memoria caché, cada
   uno de ellos más lento que el anterior, pero de mayor tamaño.
   Se suele dar el valor del mayor de ellos. Una CPU típica de un
   ordenador personal suele tener un tamaño de memoria caché de 6 Mbytes.

Número de Bits
   Las CPU más simples, como la que incorpora un teclado de ordenador o
   un horno microondas, son de 8 bits.

   Por encima de ellas están las CPU de 32 bits, mucho más potentes y
   rápidas. Son las utilizadas en smartphones, smartTV, impresoras, etc.

   Los ordenadores personales actuales utilizan, en la mayoría de los
   casos, procesadores y software de 64 bits.

Tipo de Buses
   Es el tipo de comunicación con el que se transfiere información entre
   la CPU y el exterior. Cuantos más buses tenga una CPU y más rápidos
   sean, mayor será el rendimiento del procesador.

   Actualmente los procesadores de ordenador personal tienen tres
   buses de comunicaciones con el exterior, para mejorar la velocidad
   de transferencia:

   * Bus con la memoria RAM.
   * Bus con los puertos PCI express.
   * Bus DMI para conectar con el resto de dispositivos
     (USB, PCI, Sata, Ethernet, etc).


Pruebas de rendimiento
----------------------
Las pruebas de rendimiento, también llamadas
`benchmark <https://es.wikipedia.org/wiki/Benchmark_(inform%C3%A1tica)>`__,
son una técnica para medir el rendimiento de un sistema informático o
de sus componentes.
Son muy útiles a la hora de comparar CPUs dado el gran número de
parámetros que tienen estas y dado que el rendimiento final no está claro
teniendo en cuenta solo estos parámetros.

Uno de los test comerciales más conocidos para ordenadores personales
es el `Test PassMark <https://www.cpubenchmark.net/>`__

Otros test clásicos muy conocidos son los siguientes.

.. glossary::

   MIPS
      Los `MIPS <https://es.wikipedia.org/wiki/Millones_de_instrucciones_por_segundo>`__
      o millones de instrucciones por segundo.
      Es un test con ciertos problemas a la hora de comparar diferentes
      arquitecturas, por lo que ha caído en desuso. A pesar de todo, es
      muy útil para comparar de forma relativa procesadores a lo largo de
      la historia y ver cómo crece la potencia de cómputo de forma
      exponencial con el tiempo.

      Un ordenador personal típico de 2022 tiene aproximadamente 200 000
      MIPS.

   FLOPS
      Los `FLOPS <https://es.wikipedia.org/wiki/Operaciones_de_coma_flotante_por_segundo>`__
      u operaciones de coma flotante por segundo, mide cuántas operaciones
      matemáticas con decimales es capaz de realizar un ordenador.
      Son habituales los múltiplos, así un GFLOPS es igual a 1000 millones
      de operaciones por segundo.

      Esta medida es útil para conocer cómo es de rápida una máquina
      para resolver problemas científicos y de cálculo intensivo.

      Un ordenador personal típico de 2022 tiene aproximadamente 50 000
      MFLOPS.


:index:`Placa base`
-------------------
Una `placa base
<https://es.wikipedia.org/wiki/Placa_base>`__
también conocida como placa madre o motherboard
es una tarjeta de circuito impreso que sirve de soporte y de conexión
de los componentes internos de un ordenador.

Elementos típicos de una placa base de ordenador personal

   Conectores traseros de entrada/salida:
      * Conectores USB
      * Conector RJ-45 para Ethernet
      * Conector HDMI y/o DVI para el monitor
      * Conectores de audio analógico

   Elementos de proceso:
      * CPUs y sus zócalos
      * Memoria RAM y sus zócalos
      * Memoria BIOS
      * Chipset de entrada/salida

   Conectores internos de entrada/salida:
      * Conectores PCI Express
      * Conectores SATA
      * Conectores

.. figure:: informatica/_images/informatica-placa-base-02.jpg
   :align: center
   :width: 480px

   Placa base ASRock A70GXH-128M de 2012.

   `Evan-Amos <https://commons.wikimedia.org/wiki/File:A790GXH-128M-Motherboard.jpg>`__
   `CC BY-SA 3.0 Unported <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__
   via Wikimedia Commons.
