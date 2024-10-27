:Date: 07/01/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: freecad-subs.rst

.. _freecad-tamanios:

Tamaño de piezas
================

En este tutorial vamos a aprender a
cambiar el tamaño de las piezas simples
para formar una pieza distinta a las piezas estándar.

|br|

1. Abrimos la aplicación **FreeCAD**
   y hacemos clic en el icono para crear un
   **nuevo documento** |icono-nuevo-documento|.

   Se abrirá una nueva pestaña con un documento vacío, donde
   podemos comenzar a diseñar.

   |br|

#. Seleccionamos el **banco de trabajo Part** para
   comenzar a diseñar objetos en 3 dimensiones.

   .. image:: freecad/_images/freecad-banco-part.png

   |br|

#. En este punto vamos a añadir los **ejes de referencia** para
   que nos ayuden a situar las piezas correctamente.

   En el menú ``Ver... Activar o desactivar cruz de los ejes.``

   En inglés ``View... Toggle axis cross``

   .. image:: freecad/_images/freecad-axis-cross.png

   |br|

#. Ahora **creamos un cubo** clicando el primer icono de la barra
   de objetos sólidos.

   .. image:: freecad/_images/freecad-barra-solidos.png

   Seleccionamos ver la pieza en vista isométrica.

   .. image:: freecad/_images/freecad-vista-isometrica.png

   La pieza se verá como en la siguiente imagen.

   .. image:: freecad/_images/freecad-cubo-isometrica.png

   |br|

#. Seleccionamos el cubo y en la pestaña de **Datos** abrimos el
   menú **Box** donde veremos la **Longitud, Anchura y Altura** del
   cubo (Lenght, Width, Height).

   En este menú podremos modificar el tamaño del cubo en los
   ejes x, y, z.

   .. image:: freecad/_images/freecad-pestania-datos-box.png

   |br|

#. Los tamaños del cubo se pueden cambiar tecleando un nuevo
   número o bien clicando el número y girando la **rueda del ratón**.

   Al mover la rueda del ratón se va viendo como cambia de tamaño
   el cubo en la pantalla.


-----


Ejercicios
----------

1. Abre FreeCAD y crea un nuevo documento con un cubo.
   Modifica el cubo para que tenga los siguientes tamaños.

   **Longitud (Lenght)** = 30

   **Ancho (Width)** = 30

   **Alto (Height)** = 5

   El resultado quedará igual que la siguiente figura.

   .. image:: freecad/_images/freecad-p04-ejercicio01.png

   |br|

#. Abre FreeCAD y crea varios cubos con una **Altura (Height)**
   de 10, 20 o 30 milímetros según corresponda.

   Traslada los cubos (en la pestaña Datos... Placement... Posición)
   para crear la siguiente figura.

   .. image:: freecad/_images/freecad-p04-ejercicio02.png


   Recuerda que es necesario seleccionar un cubo antes de poder
   trasladarle por la pantalla.

   .. image:: freecad/_images/freecad-p03-seleccionar-cubo.png

   |br|

#. Modifica la **Longitud (Lenght)** de las piezas anteriores para
   formar una escalera más ancha, de 30 milímetros,
   según la siguiente figura.

   .. image:: freecad/_images/freecad-p04-ejercicio03.png

   |br|

#. Crea tres piezas de Longitud (Lenght) y Anchura (Width) cada vez
   mayor.

   Traslada las piezas más pequeñas arriba para que quede
   la siguiente figura.

   .. image:: freecad/_images/freecad-p04-ejercicio04.png

   Las posiciones y tamaños serán los siguientes.

   **Cubo**: x=0, y=0, z=0, Lenght=30, Width=30, Height=10

   **Cubo001**: x=0, y=10, z=10, Lenght=20, Width=20, Height=10

   **Cubo002**: x=0, y=20, z=20, Lenght=10, Width=10, Height=10

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   cinco cubos.

   .. image:: freecad/_images/freecad-p04-ejercicio05.png

   Las posiciones y tamaños serán los siguientes.

   **Cubo**: x=0, y=0, z=0, Lenght=30, Width=30, Height=10

   **Cubo001**: x=0, y=0, z=10, Lenght=10, Width=10, Height=20

   **Cubo002**: x=0, y=20, z=10, Lenght=10, Width=10, Height=20

   **Cubo003**: x=20, y=0, z=10, Lenght=10, Width=10, Height=20

   **Cubo004**: x=20, y=20, z=10, Lenght=10, Width=10, Height=20

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p04-ejercicio06.png

   Pistas:
      * El tamaño de los peldaños es de 3 x 10 x 30 mm.
      * La altura de cada peldaño es de 8 mm más que el anterior.

   |br|

