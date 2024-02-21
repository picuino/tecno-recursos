:Date: 07/01/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: freecad-subs.rst

.. _freecad-union:

Unión de piezas
===============

En este tutorial vamos a aprender a
unir piezas para formar un solo objeto compuesto
por otros más pequeños

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

   En inglés ``View... Toggle axis cross``

   .. image:: freecad/_images/freecad-axis-cross.png

   |br|

#. Ahora **creamos dos cubos** clicando el primer icono de la barra
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

   Modificamos el tamaño de los dos cubos para conseguir la pieza
   que puede verse en la siguiente figura.

   .. image:: freecad/_images/freecad-p05-ejemplo01.png

   Las posiciones y tamaños serán los siguientes.

   **Cubo**: x=0, y=0, z=0, Lenght=10, Width=15, Height=15

   **Cubo001**: x=10, y=0, z=0, Lenght=10, Width=10, Height=10

   |br|

#. Ahora vamos a unir las dos piezas creadas.

   Primero seleccionamos los dos cubos clicando sobre ellos mientras
   presionamos la letra **Control**

   .. image:: freecad/_images/freecad-p05-seleccionar-formas.png

   A continuación clicamos el icono **Hacer unión de varias formas**
   de la barra de herramientas Booleano.

   .. image:: freecad/_images/freecad-p05-icono-unir-formas.png

   O bien seleccionamos en el menú ``Pieza... Booleano... Unión``.

   Se creará una nueva **Fusión** compuesta por las dos piezas
   anteriores.

   .. image:: freecad/_images/freecad-p05-piezas-fusionadas.png

   |br|

#. El objeto **Fusión** se comportará como un objeto único,
   de manera que si cambiamos su posición, todas sus piezas cambian
   de posición unidas entre sí.

   Prueba a cambiar la posición del objeto **Fusión** para ver como
   se mueve.

   Por ejemplo, cambiando la posición  x = 5, y = 5, z = 0

   .. image:: freecad/_images/freecad-p05-ejemplo04.png

   |br|

#. Ahora vamos a simplificar las caras del objeto para que parezca
   una sola pieza y no varias piezas unidas.

   Para conseguirlo, **seleccionamos el objeto Fusión**
   En la pestaña Datos, dentro de Boolean, el valor **Refine**
   lo cambiamos a **true**

   .. image:: freecad/_images/freecad-p05-refine-true.png

   Con esta opción cambiada, ahora las distintas piezas se habrán
   unido en un solo sólido.

   .. image:: freecad/_images/freecad-p05-ejemplo02.png

   .. image:: freecad/_images/freecad-p05-ejemplo03.png

   Otra forma de conseguir simplificar las caras del objeto es
   seleccionar todas las piezas y utilizar el menú
   ``Pieza... Refinar la forma``

   |br|

#. Si ahora seleccionamos **Fusión** y la borramos
   (tecla Supr o menú ``Editar... Borrar``)
   desaparecerá la unión de las dos piezas, pero las piezas seguirán
   existiendo como elementos separados.

   |br|

-----


Ejercicios
----------

1. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p05-ejercicio03.png

   Las posiciones y tamaños serán los siguientes.

   **Cubo**: x=0, y=0, z=0, Lenght=10, Width=20, Height=20

   **Cubo001**: x=10, y=0, z=0, Lenght=10, Width=10, Height=10

   Por último combina los diferentes cubos para formar una sola pieza.

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p05-ejercicio01.png

   Combina los diferentes cubos para formar una sola pieza.

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p05-ejercicio02.png

   Combina los diferentes cubos para formar una sola pieza.

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p05-ejercicio04.png

   Combina los diferentes cubos para formar una sola pieza.

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p05-ejercicio05.png

   Combina los diferentes cubos para formar una sola pieza.

   |br|

#. Crea la siguiente figura cambiando el tamaño y posición de
   varios cubos.

   .. image:: freecad/_images/freecad-p05-ejercicio06.png

   Combina los diferentes cubos para formar una sola pieza.

   |br|


-----

Videotutorial
-------------

Vídeo: `la unión hace la fuerza.
<https://www.youtube-nocookie.com/embed/mntnhxidqoA>`__
