:Date: 23/09/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. include:: scratch3-subs.rst

.. _scratch3-comer-peces:

Comer peces
===========

En esta práctica vamos a realizar un juego que consiste
en perseguir peces con un pingüino para que se los coma.

.. image:: scratch3/_images/scratch3-p05-comiendo-peces.png
   :width: 360px

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

#. Pulsamos el botón idioma |boton-idioma| en la barra
   superior y elegimos **Español**.

   |br|


#. Pulsamos el botón de tutoriales |boton-tutoriales| y
   luego el botón de "Juegos".

   Seleccionamos el tutorial "Crear un juego de persecución"
   y lo visualizamos.

   En este tutorial veremos el funcionamiento básico del programa.

   |br|

#. Borramos el objeto gato presionando sobre el icono del
   cubo de basura.

   |borrar-gato|

   |br|

#. Ahora vamos a realizar el programa.
   Primero seleccionamos un fondo para nuestro juego.
   En el botón seleccionar fondo |seleccionar-fondo| escogemos
   uno del fondo del mar "Underwater".

   |br|

#. A continuación añadimos un pez. Pulsando seleccionar
   objeto |seleccionar-objeto| en la pestaña de Animales
   seleccionamos un pez que nos guste.

   |br|

#. Ahora vamos a mover el pez por la pantalla de forma
   aleatoria. Para conseguirlo programamos las siguientes
   instrucciones.

   .. image:: scratch3/_images/scratch3-p05-pez-mover.png
      :width: 364px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   |br|

#. Añadimos un nuevo personaje que va a perseguir al pez
   para comérselo.
   Pulsando seleccionar objeto |seleccionar-objeto| en
   la pestaña de Animales seleccionamos un pingüino.

   |br|

#. Creamos una nueva variable. En el botón variables
   |boton-variables| pulsamos "crear una variable"
   y la llamamos puntos.

   .. image:: scratch3/_images/scratch3-crear-variable-puntos.png

   |br|

#. Las siguientes instrucciones
   inician los puntos a cero,
   reducen el tamaño del pingüino para hacer más difícil el juego y
   escogen uno de los disfraces disponibles para el pingüino.

   .. image:: scratch3/_images/scratch3-p05-pinguino-iniciar.png
      :width: 256px

   |br|

#. Por último vamos a añadir movimiento al pingüino.
   Cada vez que se pulse una tecla de flecha, la posición del
   pingüino cambiará en un paso.

   .. image:: scratch3/_images/scratch3-p05-pinguino-mover.png
      :width: 452px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

#. Como podemos comprobar, el pingüino puede perseguir al pez
   pero todavía no se lo puede comer. Para que pueda comerse
   al pez será necesario añadir algunas instrucciones más.

   Seleccionamos al pingüino y en la pestaña de código añadimos
   el siguiente programa.

   .. image:: scratch3/_images/scratch3-p05-pinguino-comer.png
      :width: 359px

   Ahora seleccionamos al pez y en la pestaña de código añadimos
   el siguiente programa.

   .. image:: scratch3/_images/scratch3-p05-pez-reaparecer.png
      :width: 385px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.


-----


Retos
-----

1. Añade más disfraces de peces al pez actual.
   Cada vez que el pingüino se coma al pez, aparecerá un pez
   distinto.

   Para conseguirlo utiliza la instrucción "siguiente disfraz"
   en el lugar adecuado.

   |br|

#. Añade un personaje nuevo que reste puntos al comérselo.
   Por ejemplo, puede ser una medusa o "jellyfish".

   El programa será similar al de comer un pez, pero en esta
   ocasión restará puntos en vez de sumar.

   El nuevo personaje que resta puntos debe aparecer cuando
   hayan pasado 10 segundos desde el inicio de la partida.

   |br|

#. Añade un nuevo personaje, por ejemplo, un tiburón que se
   coma al pingüino al tocarle.
   En este caso el pingüino desaparece y la partida se acaba.

   El nuevo personaje que resta puntos debe aparecer cuando
   hayan pasado 20 segundos desde el inicio de la partida.

   |br|