:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. |buzzmem| replace:: 16

.. _pc42-buzzer:

Zumbador
========

.. only:: html

   .. image:: _thumbs/img-0094.jpg
      :width: 300px
      :alt: Zumbador electromagnético.
      :align: center

.. only:: latex

   .. figure:: _images/img-0094.jpg
      :width: 200px
      :alt: Zumbador electromagnético.
      :align: center



Objetivos
---------
* Emitir un tono de una frecuencia determinada con el zumbador
* Controlar el tiempo de emisión de sonido
* Emitir notas musicales con el zumbador


Zumbador o Buzzer emisor de sonidos
-----------------------------------

El zumbador (en inglés buzzer) es un pequeño altavoz con forma cilíndrica y
de color negro, situado entre el teclado y el display.
Su función es hacer señales acústicas para llamar la atención, por esa razón
tiene un sonido especialmente agudo y penetrante.
La calidad del sonido emitido es pobre. El zumbador no tiene control sobre
la intensidad del sonido ni sobre su timbre (sonoridad).
Por otro lado, el zumbador sí que tiene la capacidad de reproducir diferentes
notas musicales controlando la frecuencia (tono) y la duración (figura) del
sonido emitido. Esto le permite reproducir partituras de una forma simple.

Las unidades utilizadas para medir frecuencia serán los **hercios**,
o su símbolo **Hz**.

Un hercio equivale a una oscilación por segundo. Otra unidad común es
el kilohercio o kHz que equivale a 1000 Hz ó mil oscilaciones por
segundo.

Las unidades utilizadas para medir tiempo serán los **milisegundos**
o su símbolo **ms**

Mil milisegundos equivalen a un segundo.

El oido humano es más sensible al rango de frecuencias que va desde
500 Hz (graves) hasta los 2000 Hz (agudos). Este rango lo cubre
aproximadamente las octavas 5ª y 6ª (octavas musicales segunda y
tercera)



La función :cpp:func:`buzzFreq`
-------------------------------

.. cpp:function:: buzzFreq(int Frequency)

   Esta función emite un sonido por el zumbador con una frecuencia determinada.

   ``Frequency``: este parámetro establece la frecuencia del sonido que se va a
   emitir por el zumbador.
   Una frecuencia cero apaga el oscilador interno y mantiene al zumbador en silencio.
   El rango de frecuencias válidas va desde 15 hercios hasta 32767 hercios.

El oído humano puede llegar a percibir sonidos de una frecuencia hasta
20000 hercios en el mejor de los casos. Por encima de 20000 Hz, comienzan
los ultrasonidos, que los humanos no pueden percibir.
A medida que una persona se hace mayor, su sensibilidad a las altas
frecuencias decrece, de forma que, en la práctica, la mayoría de las
personas no son capaces de distinguir sonidos con frecuencias por
encima de 16000 Hz.

En el siguiente ejemplo, al presionar el pulsador 1, el zumbador emitirá un
sonido de 2000 Hz durante un tiempo de 62 milisegundos y permanecerá apagado
durante un tiempo de 62 milisegundos. El sonido se repetirá mientras el pulsador 1
permanezca pulsado.

.. literalinclude:: sourcecode/buzzer/buzzFreq_alarm1/buzzFreq_alarm1.ino
   :language: Arduino
   :linenos:
   :name: buzzer-buzzFreq_alarm1


La función :cpp:func:`buzzTone`
-------------------------------

.. cpp:function:: buzzTone(int Tone)

   Esta función es semejante a la función :cpp:func:`buzzFreq`, produce un sonido de
   una frecuencia determinada por el parámetro ``Tone``

   ``Tone``: Nota musical que sonará en el zumbador.
   La nota se puede expresa con un número del 0 al 127 o con una constante.
   La nota 0 (``Silence``) es especial y sirve para silenciar el generador de sonido.

   La siguiente tabla representa las constantes, el valor equivalente y las notas
   que representan para la primera octava musical (cuarta octava en la notación científica).

   +-----------+-------+------------+-----------------+------------------------+
   | Constante | Valor | Frecuencia | Nota Científica | Nota                   |
   +===========+=======+============+=================+========================+
   |  Do4      |  49   |   261 Hz   |   C\ :sub:`4`\  | Do                     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Do_4     |  50   |   277 Hz   |   C#\ :sub:`4`\ | Do sostenido (Do#)     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Re4      |  51   |   294 Hz   |   D\ :sub:`4`\  | Re                     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Re_4     |  52   |   311 Hz   |   D#\ :sub:`4`\ | Re sostenido (Re#)     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Mi4      |  53   |   330 Hz   |   E\ :sub:`4`\  | Mi                     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Fa4      |  54   |   349 Hz   |   F\ :sub:`4`\  | Fa                     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Fa_4     |  55   |   370 Hz   |   F#\ :sub:`4`\ | Fa sostenido (Fa#)     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Sol4     |  56   |   392 Hz   |   G\ :sub:`4`\  | Sol                    |
   +-----------+-------+------------+-----------------+------------------------+
   |  Sol_4    |  57   |   415 Hz   |   G#\ :sub:`4`\ | Sol sostenido (Sol#)   |
   +-----------+-------+------------+-----------------+------------------------+
   |  La4      |  58   |   440 Hz   |   A\ :sub:`4`\  | La                     |
   +-----------+-------+------------+-----------------+------------------------+
   |  La_4     |  59   |   466 Hz   |   A#\ :sub:`4`\ | La sostenido (La#)     |
   +-----------+-------+------------+-----------------+------------------------+
   |  Si4      |  60   |   494 Hz   |   B\ :sub:`4`\  | Si                     |
   +-----------+-------+------------+-----------------+------------------------+


   El resto de octavas tienen la misma denominación para las notas,
   cambiando solo el número final para designar la octava.
   Para cambiar una octava, se puede añadir o restar el número 12:

   |  ``Do4`` + 12  = ``Do5``
   |  ``Do4`` - 12  = ``Do3``

   La siguiente tabla muestra el valor y la frecuencia de la nota Do de cada
   una de las octavas:

   +-----------+-------+------------+------------------+-------------------------+
   | Constante | Valor | Frecuencia | Nota Científica  | Nota                    |
   +===========+=======+============+==================+=========================+
   |  Silence  |    0  |      0 Hz  |                  | Sin sonido (silencio)   |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do0      |    1  |  16,35 Hz  |   C\ :sub:`0`\   | Do Subcontraoctava      |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do1      |   13  |  32,70 Hz  |   C\ :sub:`1`\   | Do Contraoctava         |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do2      |   25  |  65,41 Hz  |   C\ :sub:`2`\   | Do Gran octava          |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do3      |   37  |  130,8 Hz  |   C\ :sub:`3`\   | Do Pequeña octava       |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do4      |   49  |  261,6 Hz  |   C\ :sub:`4`\   | Do Octava prima         |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do5      |   61  |  523,2 Hz  |   C\ :sub:`5`\   | Do Octava segunda       |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do6      |   73  |  1046 Hz   |   C\ :sub:`6`\   | Do Octava tercera       |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do7      |   85  |  2093 Hz   |   C\ :sub:`7`\   | Do Octava cuarta        |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do8      |   97  |  4186 Hz   |   C\ :sub:`8`\   | Do Octava quinta        |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do9      |  109  |  8372 Hz   |   C\ :sub:`9`\   | Do Octava sexta         |
   +-----------+-------+------------+------------------+-------------------------+
   |  Do10     |  121  | 16744 Hz   |   C\ :sub:`10`\  | Do Octava séptima       |
   +-----------+-------+------------+------------------+-------------------------+
   |  Fa10     |  127  | 23679 Hz   |   F\ :sub:`10`\  | Fa Octava séptima       |
   +-----------+-------+------------+------------------+-------------------------+

En el siguiente ejemplo, al presionar el pulsador 1 sonará una nota más grave y al
presionar el pulsador 2, sonará una nota más aguda.
La nota inicial será el ``La`` de la primera octava (``La4``) que es el tono que se utiliza
habitualmente para afinar instrumentos.

.. literalinclude:: sourcecode/buzzer/buzzTone_scale/buzzTone_scale.ino
   :language: Arduino
   :linenos:
   :name: buzzer-buzzTone_scale


El siguiente programa de ejemplo toca la canción de cumpleaños feliz cada
vez que se presiona el pulsador 1.
El programa es flexible y permite cambiar el tempo a otro más rápido o más lento,
cambiando la duración de la nota más corta en la variable 'tempo' de la línea 15).
También se puede cambiar la octava de la canción a una más aguda o una más grave,
cambiando el valor de la variable 'octave' en la línea 18.

.. literalinclude:: sourcecode/buzzer/buzzTone_song/buzzTone_song.ino
   :language: Arduino
   :linenos:
   :name: buzzer-buzzTone_song


La función :cpp:func:`buzzPlay`
-------------------------------

.. cpp:function:: buzzPlay(int Tone, int milliseconds)

   Esta función permite hacer sonar en el zumbador una o más notas
   musicales durante un tiempo determinado.
   Los parámetros de la función son los siguientes:

   ``Tone``: Nota musical que sonará en el zumbador.
   Para más detalles, ver :ref:buzzTone

   ``milliseconds``: Tiempo en milisegundos que sonará la
   nota musical. Debe estar en un rango de 1 a 2000.

   La función se ejecuta inmediatamente y el programa de Arduino
   continúa con la siguiente instrucción mientras el zumbador suena.
   Esto permite enviar instantáneamente hasta |buzzmem| notas, que se memorizan
   y van sonando una a una.
   Esta función permite que suene una partitura mientras el programa
   de Arduino continúa ejecutándose.


.. cpp:function:: int buzzPlay()

   La función :cpp:func:`buzzPlay` sin argumentos, devuelve el número de notas
   que aún no han terminado de sonar de la partitura enviada al zumbador.
   La memoria de partitura puede almacenar hasta |buzzmem| notas. Si se envían
   más notas, las últimas enviadas no se almacenarán.
   Si es necesario enviar más de |buzzmem| notas, antes hay que esperar hasta que
   haya sitio libre en la memoria de partitura.

   Esta función devuelve cero si todas las notas han terminado de sonar.


Programa de ejemplo en el que suena una alarma de despertador utilizando la
función :cpp:func:`buzzPlay` para enviar las notas.

.. literalinclude:: sourcecode/buzzer/buzzPlay_alarm/buzzPlay_alarm.ino
   :language: Arduino
   :linenos:
   :name: buzzer-buzzPlay_alarm


Programa de ejemplo en el que suena una música de reloj utilizando la
función :cpp:func:`buzzPlay`. En este ejemplo se muestra en el display el número
de notas que aún no han terminado de sonar.

.. literalinclude:: sourcecode/buzzer/buzzPlay_carrillon/buzzPlay_carrillon.ino
   :language: Arduino
   :linenos:
   :name: buzzer-buzzPlay_carrillon


Las funciónes :cpp:func:`buzzOff` y :cpp:func:`buzzOn`
------------------------------------------------------

.. cpp:function:: buzzOff()

   Desconecta el generador de sonido del zumbador.
   Como resultado, el zumbador deja de emitir sonido.
   Si el generador de sonido está funcionando en ese momento, continuará haciéndolo,
   de manera que si se vuelve a conectar el zumbador con la función :cpp:func:`buzzOn`,
   este volverá a emitir sonido.


.. cpp:function:: buzzOn()

   Conecta el generador de sonido con el zumbador.
   Si en ese momento el generador de sonido está generando un tono, el zumbador comenzará
   a emitir sonido.

Ejemplo de funcionamiento de BuzzOn y BuzzOff. En el siguiente programa se genera una
melodía que suena de forma continua.
Presionando el pulsador 1, el sonido se desconecta.
Presionando el pulsador 2, el sonido volverá a conectarse.

.. literalinclude:: sourcecode/buzzer/buzzOnOff/buzzOnOff.ino
   :language: Arduino
   :linenos:
   :name: buzzer-buzzOnOff


La función :cpp:func:`buzzBegin`
--------------------------------

.. cpp:function:: buzzBegin()

   Esta función inicializa el sistema generador de sonidos.
   Conecta el generador de sonido al zumbador y vacía la memoria de
   notas musicales enviadas por la función :cpp:func:`buzzPlay`.
   Al ejecutar esta función, el zumbador deja de emitir sonido y se encuentra
   preparado para emitir un nuevo tono cuando reciba la orden.

   No es necesario ejecutar esta función al comienzo de cada programa porque la
   función más general ``begin`` ya inicializa todos los sistemas, incluyendo el
   zumbador.


Intensidad del sonido
---------------------

La intensidad del sonido emitido por el zumbador no es igual para todas las frecuencias.
A frecuencias bajas, la intensidad del sonido emitido es menor. A medida que se aumenta la
frecuencia, la intensidad del sonido aumenta.

En torno a los **2000 Hz** el zumbador resuena y produce un sonido de una intensidad mucho
mayor que en otras frecuencias. El típico sonido de los despertadores tiene este tono.
La frecuencia de 2000 Hz se encuentra entre una nota ``Si`` de la octava tercera
(``Si6``  = 1975,53 Hz) y una nota ``Do`` de la octava cuarta (``Do7`` = 2093,00 Hz).
Este es un tono bastante agudo que el oído humano percibe muy bien porque
se encuentra en la zona de mayor sensibilidad auditiva, desde 500 Hz hasta los 2000 Hz.

En torno a los 4000 Hz el zumbador también resuena produciendo un sonido de más intensidad,
pero a esta frecuencia el oído humano tiene menos sensibilidad que a la frecuencia de 2000 Hz
y el sonido no se percibe con tanta intensidad.


Precisión y exactitud de la frecuencia
--------------------------------------

La **precisión** de la frecuencia tiene un error de +-1%.
Esto significa que la frecuencia realmente obtenida siempre
se desvía hacia los graves o hacia los agudos en cierta cantidad.
La mayoría de las frecuencias tienen una desviación menor del 0,4%,
mientras que solo algunas frecuencias puntuales sufren una
desviación hasta del 1%.
La desviación de frecuencia es siempre la misma para el mismo tono.
Este error se puede percibir como un pequeño desafino en la frecuencia.
Un oído bien entrenado percibe diferencias de frecuencia hasta del 0,2%.

El error de **exactitud** de la frecuencia depende de la calibración que se haya realizado.
Este error produce una variación de frecuencia igual en todas las frecuencias emitidas.
El error de exactitud depende de la temperatura y del tiempo de funcionamiento
del panel y se encuentra en torno al +-2%.
Este error no se notará al emitir varios sonidos, porque afecta por igual a todas
las frecuencias y el oído solo detecta notas desafinadas en el caso de que una
frecuencia se desvíe respecto a otra.
Sin embargo, si dos paneles intentan emitir un sonido de igual frecuencia,
se puede distinguir entre ellos una diferencia de frecuencia debido al error de exactitud.


Ejercicios
----------
1. Cambiar el siguiente programa para que suene el pitido de un despertador.
   La secuencia de sonidos será de cuatro pitidos de 2000 Hercios con una
   duración cada uno de 64 milisegundos y un espacio sin sonido de 64 milisegundos
   después de cada pitido.
   Al final de la secuencia se debe esperar un tiempo de 500 milisegundos sin sonido.

   .. literalinclude:: sourcecode/buzzer/buzzTone_array_song/buzzTone_array_song.ino
      :language: Arduino
      :linenos:
      :name: buzzTone_array_song


2. El siguiente programa ejecuta la partitura almacenada en el array ``song``,
   la música de un carrillón. Cambiar la partitura por la de otra canción.

   .. literalinclude:: sourcecode/buzzer/buzzTone_array_song/buzzTone_array_song.ino
      :language: Arduino
      :linenos:
      :name: buzzer-buzzTone_array_song

   Notas de 'la cucaracha':

     |  ``Do4 Do4 Do4 Fa4 La4``
     |  ``Do4 Do4 Do4 Fa4 La4``
     |  ``Fa4 Fa4 Mi4 Mi4 Re4 Re4 Do4``
     |  ``Do4 Do4 Do4 Mi4 Sol4``
     |  ``Do4 Do4 Do4 Mi4 Sol4``
     |  ``Do5 Re5 Do5 Si4 La4 Sol4 Fa4``


   Notas de 'cumpleaños feliz':

     |  ``Do4 Do4 Re4 Do4 Fa4 Mi4``
     |  ``Do4 Do4 Re4 Do4 Sol4 Fa4``
     |  ``Do4 Do4 Do5 La4 Fa4 Mi4 Re4``
     |  ``Do5 Do5 La4 Fa4 Sol4 Fa4``

   A cada una de las notas anteriores hay que añadirle el tiempo de cada nota
   (figura) para completar la partitura.
   Este tiempo será de 200, 400 o de 800 milisegundos.


