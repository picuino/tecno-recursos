:Date: 07/10/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch3-dibujar-flores:

Dibujar flores
==============

En esta práctica vamos a programar varios bloques de usuario
para que dibujen flores en la pantalla al presionar las teclas
de dirección.

.. image:: scratch3/_images/scratch3-p11-screen.png
   :width: 360px

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

#. Pulsamos el botón idioma |boton-idioma| en la barra
   superior y elegimos **Español**.

   |br|

#. Añadimos una nueva extensión con el botón **añadir extensión**
   |aniadir-extension| abajo a la izquierda.

   Seleccionamos la extensión **Lápiz** para poder dibujar.

   .. image:: scratch3/_images/scratch3-extension-lapiz.png

   En la barra de código aparecerá un nuevo icono, el Lápiz
   |boton-lapiz|, con instrucciones de color verde oscuro.

   |br|

#. Creamos un nuevo bloque llamado **inicio**.

   Primero pulsamos en el botón mis bloques  |boton-misbloques|

   A continuación pulsamos en crear un bloque |boton-crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **inicio**

   |br|

#. El bloque **inicio** servirá para iniciar el programa.
   Borrará la pantalla, subirá el lápiz con color cero,
   y colocará al gato en el centro con tamaño pequeño.

   .. image:: scratch3/_images/scratch3-p11-inicio.png
      :width: 286px

   |br|

#. Creamos un nuevo bloque llamado **Punto**.

   Primero pulsamos en el botón mis bloques  |boton-misbloques|

   A continuación pulsamos en crear un bloque |boton-crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Punto**

   Pulsamos en **Añadir una entrada número o texto** y le damos
   el nombre **Radio**

   .. image:: scratch3/_images/scratch3-p11-crear-bloque-punto.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. El bloque **Punto** servirá para
   dibujar un punto en la pantalla con un tamaño que depende del
   parámetro Radio.

   .. image:: scratch3/_images/scratch3-p11-punto.png
      :width: 279px

   |br|

#. Creamos un nuevo bloque llamado **Flor**.

   Primero pulsamos en el botón mis bloques  |boton-misbloques|

   A continuación pulsamos en crear un bloque |boton-crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Flor**

   Pulsamos en **Añadir una entrada número o texto** y le damos
   el nombre **Radio**

   |br|

#. El bloque **Flor** servirá para
   dibujar 12 puntos en círculo, alrededor del gato, con un tamaño
   que depende del parámetro Radio.

   .. image:: scratch3/_images/scratch3-p11-flor.png
      :width: 336px

   |br|

#. Ahora programamos un pequeño código para probar el bloque
   flor.

   .. image:: scratch3/_images/scratch3-p11-upkey.png
      :width: 262px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Al pulsar la tecla de **Flecha arriba** en el teclado, el gato
   dibujará una flor de círculos de colores en la pantalla.

   |br|

#. A continuación realizamos un programa para dibujar una flor
   compuesta de varios círculos de puntos.

   .. image:: scratch3/_images/scratch3-p11-downkey.png
      :width: 260px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Al pulsar la tecla de **Flecha abajo** en el teclado, el gato
   dibujará una flor de varios círculos de colores en la pantalla.

   |br|

#. Para terminar realizamos un programa para dibujar flores en
   varios lugares de la pantalla.

   Para definir los números de la instrucción **ir a x y** podemos
   mover al gato allí donde queremos que aparezca la flor.

   .. image:: scratch3/_images/scratch3-p11-rightkey.png
      :width: 276px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Al pulsar la tecla de **Flecha derecha** en el teclado,
   el gato dibujará cuatro flores en cuatro posiciones
   distintas de la pantalla.

   .. image:: scratch3/_images/scratch3-p11-screen.png

   |br|


-----


Retos
-----

1. Modifica el programa para que la función flor no cambie el
   color de los puntos y todos tengan el mismo color.
   Dibuja una flor compuesta por un anillo de puntos grandes rojos
   en la parte exterior y un anillo pequeño de puntos verdes en la
   parte interior.

   |br|

#. Realiza un programa que dibuje cinco flores situadas
   como en el logotipo de los juegos olímpicos.

   .. image:: scratch3/_images/scratch3-p11-olympic-flag.png
      :width: 360px



