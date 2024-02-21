:Date: 25/01/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: freecad-subs.rst

.. _freecad-esferas:

Piezas esféricas
================

En este tutorial vamos a aprender a utilizar otro tipo de
piezas sólidas, las **esferas**.

|br|

1. Abrimos la aplicación **FreeCAD**
   y hacemos clic en el icono para crear un
   **nuevo documento** |icono-nuevo-documento|.

   Seleccionamos el **banco de trabajo Part** para
   comenzar a diseñar objetos en 3 dimensiones.

   |br|

#. En este punto vamos a añadir los **ejes de referencia** para
   que nos ayuden a situar las piezas correctamente.

   En el menú ``Ver... Activar o desactivar cruz de los ejes.``

   .. image:: freecad/_images/freecad-axis-cross.png

   |br|

#. Ahora **creamos una esfera** clicando el tercer icono
   de la barra de objetos sólidos.

   .. image:: freecad/_images/freecad-barra-solidos.png

   Seleccionamos ver la pieza en vista isométrica.

   .. image:: freecad/_images/freecad-vista-isometrica.png

   La pieza se verá como en la siguiente imagen.

   .. image:: freecad/_images/freecad-p10-imagen01.png

   |br|

#. Una vez creada la esfera vamos a cambiar su tamaño editando
   en la pestaña de datos el **Radio (Radius)** para que tenga
   el tamaño de una canica.

   **Radio (Radius)** = 5 mm

   Con ayuda de de esta esfera vamos a crear un portacanicas.

   |br|

   .. note::
      Para actualizar la imagen de la pieza en pantalla
      presionamos la tecla de función ``F5`` o bien en el
      Menú ``Editar... Actualizar pantalla``.

   |br|

#. Copiamos y pegamos la esfera ocho veces más.
   A continuación vamos a trasladar las esferas para formar
   una matriz de 3 x 3 esferas como en la vista en planta
   de la siguiente figura.

   .. image:: freecad/_images/freecad-p10-imagen02.png

   |br|

#. Una vez trasladadas las esferas una a una,
   uniremos todas las esferas en un solo objeto
   para poder trasladarlo con facilidad.

   Seleccionamos todas las esferas y clicamos en el icono de unión
   de piezas:

   .. image:: freecad/_images/freecad-union-piezas.png

   |br|

#. Seleccionamos la **Fusión** de piezas y elegimos la vista
   en **Alzado**. Menú ``Ver... Vistas estándar... Alzado``

   .. image:: freecad/_images/freecad-p10-imagen03.png

   Ahora trasladamos el conjunto de esferas a la nueva posición

   x = 6 mm

   y = 6 mm

   z = 6 mm

   para que queden como en la figura.

   |br|

#. A continuación creamos un cubo y le daremos las siguientes
   dimensiones.

   **Longitud (Lenght)** = 32 mm

   **Anchura (Width)** = 32 mm

   **Altura (Height)** = 6 mm

   En vista isométrica tendrá el siguiente aspecto.

   .. image:: freecad/_images/freecad-p10-imagen04.png

   |br|

#. Por último solo tendremos que seleccionar el **cubo**,
   manteniendo la tecla **Control** seleccionamos la
   **Fusión** de esferas y
   clicamos en el icono de diferencia de piezas.

   .. image:: freecad/_images/freecad-diferencia-piezas.png

   Con lo que obtendremos nuestro portacanicas terminado.

   .. image:: freecad/_images/freecad-p10-imagen05.png

   |br|


-----


Ejercicios
----------

1. Crear un cubo con una esfera atrapada en su interior
   como la que puede verse en la siguiente figura.

   .. image:: freecad/_images/freecad-p10-ejercicio01.png

   Las dimensiones del cubo serán las de un cuadrado de
   30 milímetros de lado

   Las dimensiones del hueco interior (una esfera) serán de
   18 milímetros de radio y la esfera habrá que trasladarla al centro
   del cuadrado.

   x = 15 mm

   y = 15 mm

   z = 15 mm

   Por último la pequeña esfera interior tendrá un radio de
   12 milímetros y habrá que trasladarla a la siguiente posición.

   x = 15 mm

   y = 15 mm

   z = 12 mm

   |br|

#. Crear una ficha de dominó como la de la figura.

   .. image:: freecad/_images/freecad-p10-ejercicio02.png

   La base inferior se creará a partir de un cubo al que daremos
   las siguientes dimensiones.

   **Longitud (Lenght)** = 41 mm

   **Anchura (Width)** = 20 mm

   **Altura (Height)** = 5 mm

   Posteriormente redondearemos todos sus lados con un radio de
   1 milímetro.

   La lámina de separación en el medio será otro cubo,
   al que daremos las siguientes dimensiones.

   **Longitud (Lenght)** = 1 mm

   **Anchura (Width)** = 18 mm

   **Altura (Height)** = 6 mm

   Posteriormente lo trasladaremos a su posición en el centro de la
   base.

   .. image:: freecad/_images/freecad-p10-ejercicio02b.png

   A continuación crearemos 1 esfera con un radio de 2 milímetros
   y la trasladaremos a una altura **z** de 5 mm.

   Duplicaremos la esfera 6 veces con el Menú
   ``Editar... Duplicar la selección``
   y trasladaremos las esferas a las posiciones **x** e **y** que pueden
   verse en la siguiente figura.

   .. image:: freecad/_images/freecad-p10-ejercicio02c.png

   Por último uniremos todas las esferas en un solo objeto y
   restamos la fusion de todas las esferas de la pieza
   inferior.

   |br|


-----

Videotutorial
-------------

Vídeo: `con un par de esferas
<https://www.youtube-nocookie.com/embed/FChk-69h8SY>`__
