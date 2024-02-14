:Date: 15/09/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. include:: scratch3-subs.rst

.. _scratch3-jugar-futbol:

Jugar al fútbol
===============

En esta práctica vamos a programar a dos personajes que
jugarán al fútbol pasándose un balón de uno a otro.

.. image:: scratch3/_images/scratch3-p02-futbol.png
   :width: 360px

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

#. Pulsamos el botón idioma |boton-idioma| en la barra
   superior y elegimos **Español**.

   |br|

#. Pulsamos el botón de tutoriales |boton-tutoriales| y
   luego el botón de animación |boton-animacion|.

   Seleccionamos el tutorial "Deslizarse" y lo visualizamos.

   Después seleccionamos el tutorial "Animar un objeto" y lo
   visualizamos.

   En estos dos tutoriales veremos el funcionamiento básico
   del programa.
   Una vez terminados los tutoriales vamos a crear un programa
   en el que dos personajes dan patadas a un balón que se
   desplaza por la pantalla.

   |br|

#. Borramos el objeto gato presionando sobre el icono del
   cubo de basura.

   |borrar-gato|

   |br|

#. Ahora escogemos un fondo adecuado para nuestro juego.
   Cambiamos el fondo de escenario a un **campo de futbol**.

   Pulsamos el botón elige un fondo |seleccionar-fondo|.

   Buscamos en la sección **Exteriores**.

   y seleccionamos el fondo **Playing Field**.

   .. image:: scratch3/_images/scratch3-fondo-playingfield.png

   |br|

#. A continuación añadimos un nuevo personaje, un **niño**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Gente**.

   y seleccionamos el objeto **Ben**.

   .. image:: scratch3/_images/scratch3-objeto-ben.png

   |br|

#. Vamos a programar la posición inicial del niño.
   Movemos al niño a la posición deseada y en el
   botón movimiento |boton-movimiento| elegimos la instrucción
   |instruccion-iraxy|.

   En el botón apariencia |boton-apariencia| elegimos el disfraz
   inicial del niño.

   .. image:: scratch3/_images/scratch3-p02-ben-inicio.png
      :width: 240px


#. Añadimos un nuevo personaje, una **niña**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Gente**.

   y seleccionamos el objeto **Jordyn**.

   .. image:: scratch3/_images/scratch3-objeto-jordyn.png

   |br|

#. Vamos a programar la posición inicial de la niña.
   Movemos a la niña a la posición deseada y en el
   botón movimiento |boton-movimiento| elegimos la instrucción
   |instruccion-iraxy|.

   En el botón apariencia |boton-apariencia| elegimos el disfraz
   inicial de la niña.

   .. image:: scratch3/_images/scratch3-p02-jordyn-inicio.png
      :width: 252px

   Por último, dentro del objeto Jordyn, pulsamos en la opción
   de dirección y fijamos el giro a -90 grados y de izquierda a
   derecha pulsando en las dos flechas enfrentadas.
   De esta manera la niña no quedará boca arriba al girar en
   sentido contrario.

   .. image:: scratch3/_images/scratch3-direccion-derecha-izquierda.png

   |br|

#. Añadimos un nuevo personaje, un **balón de futbol**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Deportes**.

   y seleccionamos el objeto **Soccer Ball**.

   .. image:: scratch3/_images/scratch3-objeto-soccerball.png

   |br|

#. Programamos el movimiento del balón con dos deslizamientos
   a la izquierda y dos deslizamientos a la derecha, siguiendo
   las instrucciones del tutorial.
   Los dos movimientos a cada lado se utilizan para que parezca
   que el balón sube y baja de un lado a otro.

   .. image:: scratch3/_images/scratch3-p02-pelota-desliza.png
      :width: 384px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   El balón debe moverse a un lado y a otro entre las piernas
   de los dos personajes.

   |br|


#. Ahora vamos a coordinar a todos los objetos mediante mensajes
   para que los niños golpeen el balón cuando les llegue a los pies.

   Primero modificamos el código del balón para que envíe mensajes
   al llegar a cada uno de los extremos.

   .. image:: scratch3/_images/scratch3-p02-pelota-desliza-juega.png
      :width: 378px

   El **mensaje2** se consigue pulsando en nuevo mensaje
   para crearlo.

   .. image:: scratch3/_images/scratch3-nuevo-mensaje.png
      :width: 229px

   .. image:: scratch3/_images/scratch3-nuevo-mensaje2.png

   |br|

#. Seleccionamos al **objeto Ben** para añadir el siguiente programa.

   .. image:: scratch3/_images/scratch3-p02-ben-juega.png
      :width: 401px

   |br|

#. Seleccionamos al **objeto Jordyn** para añadir el siguiente programa.

   .. image:: scratch3/_images/scratch3-p02-jordyn-juega.png
      :width: 395px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.


-----


Retos
-----

#. Añade un nuevo personaje que se mueva dando vueltas
   pasando por las cuatro esquinas del campo de futbol.

   Utiliza la orden deslizar en 1 segundo hasta una posición.

   |br|

#. Añade un nuevo personaje, Casey, para que juegue al balón con los
   otros dos. El balón debe ir desde un personaje hasta el siguiente
   hasta que pase por los tres personajes y el ciclo vuelva a comenzar.

   |br|

#. Añade otros dos personajes al juego desde la pestaña Deportes.
   Uno debe ser un lanzador (Pitcher) y el otro un bateador (Batter).
   El lanzador lanzará una pelota de baseball al bateador.
   El bateador dará un golpe a la pelota, que volverá al lanzador.
