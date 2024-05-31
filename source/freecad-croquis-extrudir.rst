:Date: 02/02/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. include:: freecad-subs.rst

.. _freecad-croquis-extrudir:

Extrusión de croquis
====================
Hasta este momento hemos trabajado con el banco de trabajo **Part**
que sirve para crear directamente objetos en 3 dimensiones. Estos
objetos, posteriormente se les puede unir, restar o intersectar.
Este paradigma se llama geometría constructiva.

A partir de ahora vamos a utilizar un método distinto.
Primero crearemos objetos en dos dimensiones (croquis)
con el banco de trabajo **Part Design**
y después vamos a extrudir ese dibujo para crear el objeto final
en tres dimensiones.

|br|

1. Abrimos la aplicación **FreeCAD**
   y hacemos clic en el icono para crear un
   **nuevo documento** |icono-nuevo-documento|.

   Seleccionamos el **banco de trabajo Part Design**

   .. image:: freecad/_images/freecad-workbench-part-design.png

   A continuación seleccionamos crear un nuevo croquis.

   .. image:: freecad/_images/freecad-crear-nuevo-croquis.png

   Y elegimos el plano XY como plano base para situar
   el nuevo croquis.

   .. image:: freecad/_images/freecad-croquis-xy.png

   En la pantalla aparecerá una rejilla donde poder dibujar en dos
   dimensiones.

   .. image:: freecad/_images/freecad-croquis-rejilla.png

   |br|

#. A continuación vamos a dibujar un objeto sencillo, una estrella.

   Primero ajustamos los controles de edición en la pestaña de
   Tareas, para que el dibujo se ajuste a la cuadrícula.

   .. image:: freecad/_images/freecad-croquis-control-edicion.png

   Ahora crearemos una estrella con el icono polilínea |polilinea|.

   .. image:: freecad/_images/freecad-p13-imagen01.png

   Pinchando sobre los puntos, podemos arrastrarlos con el ratón
   para afinar mejor las dimensiones de nuestro dibujo.

   Una vez que hayamos terminado, clicamos en la pestaña de
   **Tareas** y presionamos en el botón ``Close``.
   Nuestro dibujo se verá en vista en planta como en la
   siguiente figura.

   .. image:: freecad/_images/freecad-p13-imagen02.png

   .. note:
      Si no puedes ver el dibujo, Clica en el icono de
      'Ajustar contenido completo a la pantalla'
      |icono-ajustar-contenido|.

   |br|

#. Para conseguir una pieza en tres dimensiones vamos a extrudir
   nuestro croquis seleccionando el icono correspondiente.

   .. image:: freecad/_images/freecad-croquis-extruir.png

   O bien seleccionando en el Menú ``Part Design... Extruir``

   En los parámetros de extrusión elegimos la cota o altura que
   deseamos para la pieza, en este caso 15 milímetros.

   .. image:: freecad/_images/freecad-p13-imagen03.png

   Si cambiamos a vista en perspectiva, podremos ver
   nuestra estrella en tres dimensiones.

   .. image:: freecad/_images/freecad-p13-imagen04.png

   |br|

#. Si ahora queremos **editar el objeto**, solo tendremos que hacer
   doble clic sobre el croquis para que aparezca el dibujo en
   la pantalla, con todos los puntos que hemos puesto al comienzo.

   Este boceto se puede editar arrastrando los puntos a un nuevo
   lugar y la estrella en tres dimensiones cambiará.

   Si queremos mover la estrella o girarla, tendremos que
   hacer esa operación sobre el croquis o sketch.

   Para cambiar la **altura de la estrella**, tendremos que hacer
   doble clic sobre el objeto **Pad** y se abrirá nuevamente el
   diálogo de los parámetros de extrusión, con la cota
   correspondiente.

   |br|


-----


Ejercicios
----------

1. Crear una pieza en 3D en forma de flecha.

   .. image:: freecad/_images/freecad-p13-ejercicio01.png

   |br|

#. Crear un lingote a partir de un trapecio.

   El trapecio se dibujará con un croquis en el eje YZ.

   .. image:: freecad/_images/freecad-p13-ejercicio02b.png

   Y luego se extrude en el eje X.

   .. image:: freecad/_images/freecad-p13-ejercicio02.png

   |br|

#. Crear el símbolo de un rayo en tres dimensiones.

   El croquis se dibujará como la siguiente figura.

   .. image:: freecad/_images/freecad-p13-ejercicio03.png

   Después de extrudir la figura se verá como
   la siguiente imagen.

   .. image:: freecad/_images/freecad-p13-ejercicio03b.png

   |br|


-----

Videotutorial
-------------

Vídeo: `boceto hola mundo.
<https://www.youtube-nocookie.com/embed/5fK9_Ux6t8k>`__
