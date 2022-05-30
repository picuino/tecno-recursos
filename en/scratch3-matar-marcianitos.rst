:Date: 12/01/2022
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch3-en-matar-marcianitos:

Killing Martians
================

En esta práctica vamos a programar un juego que consiste en matar,
con el láser de una nave espacial, a marcianos que caen desde la
parte superior de la pantalla.


.. image:: scratch3/_images/scratch3-p09-screen.png
   :width: 360px

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

#. Ahora escogemos un fondo adecuado para nuestro juego.
   Cambiamos el fondo de escenario por un **cielo con estrellas**.

   Press the button choose a backdrop |seleccionar-fondo|.

   Search in the topic **Espacio**.

   and select the backdrop **Stars**.

   .. image:: scratch3/_images/scratch3-fondo-stars.png

   |br|

#. Añadimos un nuevo personaje, una **nave espacial**.

   Press the button choose an object |seleccionar-objeto|.

   Search in the topic **Todos**.

   and select the object **Rocketship**.

   .. image:: scratch3/_images/scratch3-objeto-rocketship.png

   |br|

#. Añadimos una nueva variable **x** que guardará la posición de
   la nave espacial.

   Press the variables button |boton-variables|,

   click on create a variable  |boton-crear-variable|.

   Change the name of the variable to **x**

   |br|


#. Realizamos el programa para iniciar la nave en la parte
   inferior de la pantalla y que se mueva a derecha y a izquierda.

   .. image:: scratch3/_images/scratch3-p09-rocket-01.png
      :width: 446px

#. Press the green flag |bandera-verde|
   to test the operation of the program.

   |br|

#. Ahora añadimos un nuevo objeto, un **botón** que hará de
   **rayo laser** azul.

   Press the button choose an object |seleccionar-objeto|.

   Search in the topic **Todos**.

   and select the object **Button2**.

   .. image:: scratch3/_images/scratch3-objeto-button2.png

   |br|

#. Programamos el botón para que se comporte como un rayo láser.
   al comenzar giraremos al botón hacia arriba con tamaño pequeño.

   Cada vez que se pulse la tecla **espacio** aparecerá un nuevo
   rayo láser.

   .. image:: scratch3/_images/scratch3-p09-button-01.png
      :width: 230px

   Cada rayo láser se desplazará hacia arriba desde la posición
   actual de la nave hasta la parte alta de la pantalla donde
   desaparecerá.

   .. image:: scratch3/_images/scratch3-p09-button-02.png
      :width: 326px


#. Press the green flag |bandera-verde|
   to test the operation of the program.

   |br|


#. Añadimos un nuevo objeto, un **marciano**.

   Press the button choose an object |seleccionar-objeto|.

   Search in the topic **Animales**.

   and select the object **Starfish**.

   .. image:: scratch3/_images/scratch3-objeto-starfish.png

   |br|

#. Realizamos el programa necesario para que aparezcan clones
   de los marcianos cada poco tiempo en la parte alta de la pantalla.

   .. image:: scratch3/_images/scratch3-p09-starfish-01.png
      :width: 230px

   |br|

#. Ahora completamos el programa para cada clon.
   Cada clon aparecerá en una posición horizontal aleatoria.
   a continuación el clon se moverá hacia abajo poco a poco
   hasta que llegue abajo o hasta que le toque un rayo laser.
   En ese momento desaparece.

   .. image:: scratch3/_images/scratch3-p09-starfish-02.png
      :width: 410px


   |br|

#. Press the green flag |bandera-verde|
   to test the operation of the program.

   |br|


-----


Ejercicios
----------

1. Añade una condición para que la nave desaparezca cuando la
   toque un marciano y el juego terminará.

#. Cambia los parámetros del programa para ajustar su dificultad
   haciendo que aparezcan más marcianos por segundo y que bajen
   más rápido.

#. Añade una función de disparo doble para la nave espacial al
   pulsar la tecla "flecha arriba"

#. Inventa otra modificación original para el programa.