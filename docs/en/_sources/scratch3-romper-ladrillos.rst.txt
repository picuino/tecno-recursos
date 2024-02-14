:Date: 23/09/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch-romper-ladrillos:

Romper ladrillos
================

.. image:: scratch3/_images/scratch3-p07-screen.png
   :width: 360px


En esta práctica vamos a programar un juego que consiste en
romper ladrillos con una pelota que rebota en una barra.
Cada ladrillo roto nos dará un punto.

|br|


1. Iniciamos el |editor_de_Scratch|.

   |br|

#. Pulsamos el botón idioma |boton-idioma| en la barra
   superior y elegimos **Español**.

   |br|

#. Borramos el objeto gato presionando sobre el icono del
   cubo de basura.

   |borrar-gato|

   |br|

#. Añadimos un nuevo personaje, una **barra de control**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Todos**.

   y seleccionamos el objeto **Button2**.

   .. image:: scratch3/_images/scratch3-objeto-button2.png

   |br|

#. Realizamos el siguiente programa para la barra de control.

   .. image:: scratch3/_images/scratch3-p07-button2-01.png
      :width: 373px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   La barra debe moverse horizontalmente en la parte baja de
   la pantalla siguiendo la posición del ratón.

   |br|

#. Añadimos un nuevo personaje, un **ladrillo**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Todos**.

   y seleccionamos el objeto **Button3**.

   .. image:: scratch3/_images/scratch3-objeto-button3.png

   |br|

#. Añadimos un nuevo personaje, una **pelota de tenis**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Deportes**.

   y seleccionamos el objeto **Tennis ball**.

   .. image:: scratch3/_images/scratch3-objeto-tennisball.png

   |br|

#. Realizamos los siguientes programas para la pelota de tenis

   .. image:: scratch3/_images/scratch3-p07-tennisball-01.png
      :width: 463px

   .. image:: scratch3/_images/scratch3-p07-tennisball-02.png
      :width: 437px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Cada vez que pulsemos la barra espaciadora,
   debe aparecer una pelota de tenis que se mueve por la pantalla
   y rebota en las paredes y en la barra de control.

   Cuando la pelota llega a la parte inferior de la pantalla,
   esta desaparece.

   |br|

#. Ahora crearemos la variable **puntos** que va a almacenar
   los puntos que conseguimos rompiendo cada ladrillo.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **puntos**

   .. image:: scratch3/_images/scratch3-crear-variable-puntos.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. A continuación crearemos la variable **posicion** que
   va a almacenar la posición de cada ladrillo
   a la hora de colocar los ladrillos en la pantalla.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **posicion**

   |br|

#. Por último crearemos el programa de los ladrillos.

   .. image:: scratch3/_images/scratch3-p07-button3-01.png
      :width: 358px

   .. image:: scratch3/_images/scratch3-p07-button3-02.png
      :width: 382px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Al iniciarse el programa, aparecerán todos los ladrillos en
   la parte superior de la pantalla.
   Ahora podemos jugar con la pelota al pulsar la barra espaciadora.

   |br|


-----


Retos
-----

1. Modifica el programa para que aparezcan dos filas de ladrillos
   en la parte superior.

   Hay que duplicar el personaje de **ladrillo**, crear otra
   variable **posicion2** y cambiarla en el nuevo ladrillo.

   Por último hay que bajar la posición **Y** del nuevo ladrillo
   desde 130 hasta 80.

   |br|

#. Modifica el programa para que el juego se acabe después de
   que se pierdan tres pelotas por la parte inferior.

   |br|

#. Modifica el aspecto del los personajes para personalizarles
   a tu gusto.