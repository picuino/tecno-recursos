:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch-subs.rst

.. _scratch-atrapa-bichos:

Atrapar bichos
==============

.. image:: scratch/_images/scratch-p04-juego.png
   :width: 240px



En esta práctica vamos a programar un juego que consiste en atrapar
todos los escarabajos que aparecen en la pantalla.
Una vez atrapados, ganamos el juego y un personaje nos avisa de ello.

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

#. Borramos el gato presionando sobre él con el botón derecho
   del ratón y luego pulsamos borrar.

   |borrar-gato|

   |br|

#. A continuación añadimos un nuevo personaje, un **escarabajo**.

   Pulsamos el botón de nuevo objeto |nuevo-objeto|

   A continuación pulsamos en **Categoría Animales**.

   Luego seleccionamos el objeto **Ladybug2**.

   .. image:: scratch/_images/scratch-ladybug2.png

   |br|


#. Ahora crearemos la variable **Clones**

   Dentro de la pestaña Datos |datos|,

   pulsamos crear una variable  |crear-variable|

   Cambiamos el nombre de la variable a **Clones**

   .. image:: scratch/_images/scratch-p04-variable-clones.png

   Por último pulsamos el botón **OK**

   Esta variable contará el número de escarabajos que hay en la
   pantalla. Cuando esta variable valga cero, el juego terminará.

   |br|


#. En la pestaña de programa crearemos una nueva función llamada
   **Inicio**

   Primero pulsamos en el botón más bloques

   |mas-bloques|

   A continuación pulsamos en crear un bloque |crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Inicio**

   .. image:: scratch/_images/scratch-bloque-inicio.png

   Por último pulsamos el botón **OK**

   |br|

#. Ahora programamos la función **Inicio** con las siguientes
   órdenes.

   .. image:: scratch/_images/scratch-p04-bicho-prog1.png
      :width: 279px

   Este programa esconde el escarabajo, borra la pantalla y
   coloca cinco clones del escarabajo en la pantalla.

   |br|

#. En este punto añadimos las instrucciones para que cada clon
   del escarabajo aparezca en un lugar distinto de la pantalla
   con tamaño pequeño.
   Cuando el puntero del ratón toque a un escarabajo, este
   desaparecerá.

   .. image:: scratch/_images/scratch-p04-bicho-prog2.png
      :width: 796px

   |br|

#. Para comprobar que todo funciona correctamente, pulsamos inicio
   con doble clic y aparecerán cinco escarabajos en la pantalla.
   Los escarabajos deben desaparecer cuando el puntero del ratón
   les toque.

   |br|

#. Para que el juego funcione normalmente, programamos la función
   que hará aparecer escarabajos cada cierto tiempo hasta que
   termine el juego.

   .. image:: scratch/_images/scratch-p04-bicho-prog3.png
      :width: 508px

   |br|

#. Ahora tenemos que escoger un fondo adecuado para el juego.
   Cambiamos el fondo de escenario a una pared de una **calle**.

   Pulsamos el botón de Fondo nuevo.

   |cambia-escenario|

   A continuación pulsamos en **Tema Ciudad**.

   Luego seleccionamos el fondo **brick wall 1**.

   La pantalla quedará de la siguiente manera.

   .. image:: scratch/_images/scratch-p04-06.png

   |br|

#. Por último vamos a programar un personaje que avise del final
   del juego. En este caso se ha escogido a una **bailarina**.

   Pulsamos el botón de nuevo objeto |nuevo-objeto|

   A continuación pulsamos en **Categoría Gente**.

   Luego seleccionamos el objeto **Ballerina**.

   .. image:: scratch/_images/scratch-ballerina.png

   |br|

#. En la pestaña de programa del nuevo personaje

   .. image:: scratch/_images/scratch-p04-ballerina.png

   añadimos las siguientes instrucciones.

   .. image:: scratch/_images/scratch-p04-bicho-prog4.png
      :width: 550px

   Ahora al finalizar el programa aparecerá la bailarina para
   felicitarnos.

   |br|


-----


Ejercicios
----------

1. Añade una nueva regla al juego. Si el número de escarabajos es
   mayor que 25, entonces perdemos el juego.
   El programa se detiene y un personaje nuevo nos avisa de que
   hemos perdido.


