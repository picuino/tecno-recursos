
.. include:: scratch3-subs.rst

.. _scratch-en-romper-ladrillos:

Breaking bricks
===============

.. image:: scratch3/_images/scratch3-p07-screen.png
   :width: 360px


En esta práctica vamos a programar un juego que consiste en
romper ladrillos con una pelota que rebota en una barra.
Cada ladrillo roto nos dará un punto.

|br|


1. We start the |editor_de_Scratch|.

   |br|

#. Click language button |boton-idioma| 
   upper menu bar and select **English**.

   |br|

#. Delete the cat sprite by pressing on the icon of the
   trash can.

   |borrar-gato|

   |br|

#. Añadimos un nuevo personaje, una **barra de control**.

   Press the button choose an object |seleccionar-objeto|.

   Search in the topic **Todos**.

   and select the object **Button2**.

   .. image:: scratch3/_images/scratch3-objeto-button2.png

   |br|

#. Realizamos el siguiente programa para la barra de control.

   .. image:: scratch3/_images/scratch3-p07-button2-01.png
      :width: 373px

   |br|

#. Press the green flag |bandera-verde|
   to test the operation of the program.

   La barra debe moverse horizontalmente en la parte baja de
   la pantalla siguiendo la posición del ratón.

   |br|

#. Añadimos un nuevo personaje, un **ladrillo**.

   Press the button choose an object |seleccionar-objeto|.

   Search in the topic **Todos**.

   and select the object **Button3**.

   .. image:: scratch3/_images/scratch3-objeto-button3.png

   |br|

#. Añadimos un nuevo personaje, una **pelota de tenis**.

   Press the button choose an object |seleccionar-objeto|.

   Search in the topic **Deportes**.

   and select the object **Tennis ball**.

   .. image:: scratch3/_images/scratch3-objeto-tennisball.png

   |br|

#. Realizamos los siguientes programas para la pelota de tenis

   .. image:: scratch3/_images/scratch3-p07-tennisball-01.png
      :width: 463px

   .. image:: scratch3/_images/scratch3-p07-tennisball-02.png
      :width: 437px

   |br|

#. Press the green flag |bandera-verde|
   to test the operation of the program.

   Cada vez que pulsemos la barra espaciadora,
   debe aparecer una pelota de tenis que se mueve por la pantalla
   y rebota en las paredes y en la barra de control.

   Cuando la pelota llega a la parte inferior de la pantalla,
   esta desaparece.

   |br|

#. Ahora crearemos la variable **puntos** que va a almacenar 
   los puntos que conseguimos rompiendo cada ladrillo.

   Press the variables button |boton-variables|,

   click on create a variable  |boton-crear-variable|.

   Change the name of the variable to **puntos**

   .. image:: scratch3/_images/scratch3-crear-variable-puntos.png
   

   Finally press the button **Ok**

   |br|

#. A continuación crearemos la variable **posicion** que
   va a almacenar la posición de cada ladrillo
   a la hora de colocar los ladrillos en la pantalla.

   Press the variables button |boton-variables|,

   click on create a variable  |boton-crear-variable|.

   Change the name of the variable to **posicion**

   |br|

#. Por último crearemos el programa de los ladrillos.

   .. image:: scratch3/_images/scratch3-p07-button3-01.png
      :width: 358px

   .. image:: scratch3/_images/scratch3-p07-button3-02.png
      :width: 382px

   |br|

#. Press the green flag |bandera-verde|
   to test the operation of the program.

   Al iniciarse el programa, aparecerán todos los ladrillos en
   la parte superior de la pantalla.
   Ahora podemos jugar con la pelota al pulsar la barra espaciadora.

   |br|


-----


Ejercicios
----------

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