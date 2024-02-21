:Date: 10/01/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: freecad-subs.rst

.. _freecad-diferencia:

Diferencia de piezas
====================

En este tutorial vamos a aprender a realizar transformaciones en las
piezas mediante la operación de sustracción.
Esto consiste en eliminar material de un objeto utilizando la forma de
otro.
Esta operación es muy importante porque permite realizar taladros,
vaciados, recortes, etc.

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


#. Ahora **creamos un cubo** clicando el primer icono de la barra
   de objetos sólidos.

   .. image:: freecad/_images/freecad-barra-solidos.png

   y cambiamos el tamaño del cubo según las siguientes dimensiones.

   **Longitud (Lenght)** = 30

   **Anchura (Width)** = 30

   **Altura (Height)** = 30

   Seleccionamos ver la pieza en vista isométrica.

   .. image:: freecad/_images/freecad-vista-isometrica.png

   |br|

#. Una vez creado el cubo anterior, vamos a sustraerle varios cubos
   pequeños para crear una figura nueva.

   **Creamos un nuevo cubo** clicando en el icono correspondiente.

   Trasladamos el nuevo cubo a la posición x = 20, y = 0, z = 20

   .. image:: freecad/_images/freecad-p07-imagen01.png

   Con lo que la pantalla de trabajo nos mostrará lo siguiente.

   .. image:: freecad/_images/freecad-p07-imagen02.png

   |br|

#. Ahora vamos a seleccionar primero el **Cubo** grande y,
   manteniendo la tecla **Control** apretada,
   seleccionamos también el **Cubo001** pequeño.

   El orden a la hora de seleccionar los cubos es importante para
   que la sustracción funcione correctamente. Primero se selecciona
   la pieza base y luego la pieza que se va a sustraer.

   Clicamos el icono de **sustracción** (Hacer un corte de dos formas)
   en la barra de herramientas booleano.

   .. image:: freecad/_images/freecad-diferencia-piezas.png

   El resultado será como la siguiente imagen.

   .. image:: freecad/_images/freecad-p07-imagen04.png

   |br|

#. La nueva pieza puede manejarse como pieza base para seguir
   sustrayendo más piezas aún.

   Si creamos un nuevo cubo y lo trasladamos a la posición
   x = 20, y = 20, z = 20

   Sustraemos el nuevo cubo y el resultado será el siguiente.

   .. image:: freecad/_images/freecad-p07-imagen05.png


-----


Ejercicios
----------

1. Crear una caja de 30mm de lado con un hueco interior de 24mm
   de lado, tal y como aparece en la siguiente figura.

   .. image:: freecad/_images/freecad-p07-ejercicio01.png

   Cambia la transparencia del cubo exterior al 25% para que se pueda
   ver el hueco interior.

   .. image:: freecad/_images/freecad-p07-ejercicio01b.png

   |br|

#. Crear un porta-pendrives como el de la figura.

   .. image:: freecad/_images/freecad-p07-ejercicio02.png


-----

Videotutorial
-------------

Vídeo: `marcando la diferencia.
<https://www.youtube-nocookie.com/embed/3LsHR57grk0>`__
