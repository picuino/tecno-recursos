:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch-subs.rst

.. _scratch-espiral:

Dibujar una espiral
===================

.. image:: scratch/_images/scratch-p01-espiral.png
   :width: 240px


En esta práctica vamos a mover a un personaje para que dibuje
en la pantalla una espiral con colores.

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

2. Borramos el gato presionando sobre él con el botón derecho
   del ratón y luego pulsamos borrar.

   |borrar-gato|

   |br|

#. Añadimos un nuevo personaje, un **oso polar**.

   Pulsamos el botón de nuevo objeto |nuevo-objeto|

   A continuación pulsamos en **Categoría Animales**.

   Luego seleccionamos el objeto **bear2**.

   .. image:: scratch/_images/scratch-bear2.png

   |br|


#. En la pestaña de Programas creamos una nueva función
   llamada **Inicio**.

   Primero pulsamos en el botón más bloques

   |mas-bloques|

   A continuación pulsamos en crear un bloque |crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Inicio**

   .. image:: scratch/_images/scratch-bloque-inicio.png

   Por último pulsamos el botón **OK**

   |br|


#. Programamos la función Inicio con las siguientes instrucciones

   .. image:: scratch/_images/scratch-p01-programa-inicio.png
      :width: 272px

   Con este programa inicial, el oso polar se colocará en el centro
   de la pantalla a tamaño pequeño y se borrarán todos los dibujos
   anteriores.
   De esta forma todo comenzará en blanco cada vez que ejecutemos
   el programa.

   |br|

#. Ahora crearemos la variable **Lado** que guardará el
   tamaño del lado de la espiral.

   Dentro de la pestaña Datos |datos|,

   pulsamos crear una variable  |crear-variable|

   Cambiamos el nombre de la variable a **Lado**

   .. image:: scratch/_images/scratch-p01-variable-lado.png

   Por último pulsamos el botón **OK**

   |br|

#. Por último crearemos el programa que dibuja una espiral.

   .. image:: scratch/_images/scratch-p01-programa-espiral.png
      :width: 346px

   |br|

#. Por último pulsaremos en la bandera verde |bandera-verde|
   para ver el resultado:

   .. image:: scratch/_images/scratch-p01-espiral.png



-----


Ejercicios
----------

1. Modifica el programa para que dibuje una espiral octogonal.
   Los giros deberán ser de 45 grados y en cada giro el Lado
   deberá cambiar 1.
   La espiral deberá parar cuando el tamaño del Lado sea mayor
   que 147.

   |br|

#. Modifica el programa para que dibuje una espiral hexagonal
   (con giros de 60 grados)

