:Date: 11/01/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: freecad-subs.rst

.. _freecad-cilindros:

Piezas cilíndricas
==================

En este tutorial vamos a aprender a trabajar con otro tipo
de piezas sólidas, los **cilindros**.

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


#. Ahora **creamos un cilindro** clicando el segundo icono de
   la barra de objetos sólidos.

   .. image:: freecad/_images/freecad-barra-solidos.png

   Seleccionamos ver la pieza en vista isométrica.

   .. image:: freecad/_images/freecad-vista-isometrica.png

   La pieza se verá como en la siguiente imagen.

   .. image:: freecad/_images/freecad-p08-imagen01.png

   |br|

#. Vamos a crear un personaje de Pac-Man a partir de dos cilindros.

   Primero debemos modificar el tamaño del cilindro, en la
   pestaña de datos, según las siguientes dimensiones.

   **Radio (Radius)**: 20 mm

   **Altura (Height)**: 5 mm

   **Ángulo (Angle)**: 270º

   Con lo que nuestro cilindro habrá cambiado como en la
   siguiente imagen.

   .. image:: freecad/_images/freecad-p08-imagen02.png

   |br|

#. Ahora crearemos un **nuevo cilindro** y lo desplazaremos
   (Pestaña Datos... Placement... Posición...)
   a la nueva posición.

   x = 5

   y = 10

   z = 0

   Con lo que las piezas quedarán como en la figura.

   .. image:: freecad/_images/freecad-p08-imagen03.png

   |br|

#. En esta nueva posición seleccionamos el primer cilindro,
   **Cilindro**, mantenemos pulsada la tecla **Control**
   y seleccionamos el segundo cilindro **Cilindro001**.

   Seleccionamos la operación de corte de piezas.

   .. image:: freecad/_images/freecad-diferencia-piezas.png

   Como resultado obtendremos, en vista en planta,
   la siguiente figura.

   .. image:: freecad/_images/freecad-p08-imagen04.png

   |br|

#. Para terminar cambiaremos el color de la figura al amarillo
   en la pestaña de **Vista**.

   .. image:: freecad/_images/freecad-p08-imagen05.png

   y giraremos la figura 45º sobre el eje z en la pestaña **Datos**.

   .. image:: freecad/_images/freecad-p08-imagen06.png

   Para obtener la siguiente figura.

   .. image:: freecad/_images/freecad-p08-imagen07.png

   |br|


-----


Ejercicios
----------

1. Abre FreeCAD y crea un ladrillo como el de la figura
   a partir de un cubo y 6 cilindros.

   .. image:: freecad/_images/freecad-p08-ejercicio01.png

   El tamaño de los cilindros será el tamaño por defecto.

   El tamaño del cubo será el siguiente.

   **Longitud (Lenght)** = 20

   **Anchura (Width)** = 14

   **Altura (Height)** = 10

   |br|

#. Crear un porta quesitos y un quesito como los de la figura.

   .. image:: freecad/_images/freecad-p08-ejercicio02.png

   El porta quesitos tiene un radio exterior de 40mm y
   un radio interior de 36mm. La altura total será de 12mm
   con un hueco de 10mm de altura.
   Se construye con una diferencia de dos cilindros.
   Hay que desplazar el cilindro interior hacia arriba 2mm
   para que no atraviese al cilindro exterior y se pueda ver
   el suelo.

   El quesito tiene un radio de 35mm y un ángulo de 58º
   para que puedan caber 6 quesitos en total en el portaquesitos.

   |br|


-----

Videotutorial
-------------

Vídeo: `cilindros y pacman.
<https://www.youtube-nocookie.com/embed/jDaJpLadCjE>`__
