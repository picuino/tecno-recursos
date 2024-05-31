:Date: 02/02/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. include:: freecad-subs.rst

.. _freecad-croquis-anidados:

Extrusión de croquis anidados
=============================
En esta práctica vamos a crear croquis para extrudirlos, colocando
unos croquis sobre otros y así formar figuras más complejas.

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

#. A continuación vamos a dibujar un objeto sencillo, un octógono.

   Primero ajustamos los controles de edición en la pestaña de
   Tareas, para que el dibujo se ajuste a la cuadrícula.

   .. image:: freecad/_images/freecad-croquis-control-edicion.png

   Ahora crearemos un octógono con el icono polilínea |polilinea|.

   .. image:: freecad/_images/freecad-p14-imagen01.png

   Si nos equivocamos al colocar los puntos, una vez terminado
   el dibujo podemos clicar sobre los puntos y arrastrarlos con
   el ratón hasta su posición correcta.

   Una vez que hayamos terminado, clicamos en la pestaña de
   **Tareas** y presionamos en el botón ``Close``.
   Nuestro dibujo se verá en vista en planta como en la
   siguiente figura.

   .. image:: freecad/_images/freecad-p14-imagen02.png

   Si no puedes ver el dibujo, Clica en el icono de
   'Ajustar contenido completo a la pantalla'
   |icono-ajustar-contenido|.

   |br|

#. Para conseguir una pieza en tres dimensiones vamos a extrudir
   nuestro croquis seleccionando el icono correspondiente.

   .. image:: freecad/_images/freecad-croquis-extruir.png

   O bien seleccionando en el Menú ``Part Design... Extruir``

   En los parámetros de extrusión elegimos la cota o altura que
   deseamos para la pieza, en este caso **50 milímetros**.

   Si cambiamos a vista en perspectiva, podremos ver
   nuestro octógono en tres dimensiones.

   .. image:: freecad/_images/freecad-p14-imagen03.png

   |br|

#. Ahora vamos a seleccionar el área superior del octógono clicando
   sobre ella. El área cambiará a color verde.

   .. image:: freecad/_images/freecad-p14-imagen04.png

   Una vez seleccionada la cara superior, volvemos a clicar sobre
   el icono de crear croquis.

   .. image:: freecad/_images/freecad-crear-nuevo-croquis.png

   Esta vez, el croquis se dibujará sobre la cara seleccionada,
   no sobre el suelo.

   Volvemos a ajustar los controles de edición para que se ajusten
   a la cuadrícula.

   .. image:: freecad/_images/freecad-croquis-control-edicion.png

   Y dibujamos otro octógono más pequeño sobre el primer octógono.

   .. image:: freecad/_images/freecad-p14-imagen05.png

   Una vez que hayamos terminado, clicamos en la pestaña de
   **Tareas** y presionamos en el botón ``Close``.
   Nuestro dibujo se verá como en la siguiente figura.

   .. image:: freecad/_images/freecad-p14-imagen06.png

   |br|

#. A continuación extrudimos el nuevo croquis para formar una nueva
   figura sobre la primera. Pulsamos el icono correspondiente.

   .. image:: freecad/_images/freecad-croquis-extruir.png

   O bien seleccionamos en el Menú ``Part Design... Extruir``

   En los parámetros de extrusión elegimos la cota o altura que
   deseamos para la pieza, en este caso **50 milímetros**.

   La pieza se verá como en la siguiente imagen.

   .. image:: freecad/_images/freecad-p14-imagen07.png

   |br|

#. Ahora vamos a **generar un vaciado** en la pieza creada.
   Comenzamos seleccionando la cara superior de nuestro objeto en
   tres dimensiones.

   Una vez seleccionada la cara superior, creamos un nuevo croquis.

   .. image:: freecad/_images/freecad-crear-nuevo-croquis.png

   Volvemos a ajustar los controles de edición para que se ajusten
   a la cuadrícula.

   .. image:: freecad/_images/freecad-croquis-control-edicion.png

   Y dibujamos un cuadrado en el centro de la pieza.

   .. image:: freecad/_images/freecad-p14-imagen08.png

   Una vez que hayamos terminado, clicamos en la pestaña de
   **Tareas** y presionamos en el botón ``Close``.
   Nuestro dibujo se verá como en la siguiente figura.

   .. image:: freecad/_images/freecad-p14-imagen09.png

   |br|

#. A continuación **generamos un agujero** a partir del croquis
   dibujado clicando en el **icono de vaciado**.

   .. image:: freecad/_images/freecad-croquis-vaciado.png

   O seleccionando en el Menú ``Part Design... Vaciado``

   Una vez pulsado, cambiamos los parámetros de vaciado para que
   el agujero **atraviese a todos los objetos**.

   .. image:: freecad/_images/freecad-p14-imagen10.png

   Clicando el botón de ``OK`` la pieza quedará agujereada como se
   puede ver en la siguiente figura.

   .. image:: freecad/_images/freecad-p14-imagen11.png

   |br|

#. Hasta ahora hemos creado croquis siempre en vertical, de abajo
   hacia arriba,  pero los croquis se pueden colocar en
   **cualquier superficie** como puede verse en la siguiente figura.

   .. image:: freecad/_images/freecad-p14-imagen12.png

   |br|

-----


Ejercicios
----------

1. Crear una máscara en 3 dimensiones como la de la figura.

   .. image:: freecad/_images/freecad-p14-ejercicio01.png

   |br|

#. Crear una casa como la de la figura.

   .. image:: freecad/_images/freecad-p14-ejercicio02.png

   El primer croquis con el cuerpo de la casa se colocará
   en el **Plano XZ** y se extrude en el plano Y.

   Los siguientes croquis servirán para hacer agujeros en el
   cuerpo principal.

   .. image:: freecad/_images/freecad-p14-ejercicio02b.png

   Para dar colores a la casa seguiremos este procedimiento.

   1. Seleccionamos la casa completa en la pestaña de **Modelo**.

   2. Con el botón derecho del ratón sobre el modelo,
      seleccionamos **ajustar colores**.

   .. image:: freecad/_images/freecad-p14-ejercicio02c.png

   3. Seleccionamos con el ratón la cara del objeto que
      queremos cambiar de color.

   4. Seleccionamos el color en el cuadro de diálogo de **Tareas**.

   .. image:: freecad/_images/freecad-p14-ejercicio02d.png

   5. Clicamos en ``OK``.

   |br|

#. Crear un juego de laberinto con bola como el de la figura.

   .. image:: freecad/_images/freecad-p14-ejercicio03.png

   A partir de los siguientes croquis.

   .. image:: freecad/_images/freecad-p14-ejercicio03b.png

   Añade una esfera con el banco de trabajo **Part** y traslada
   la esfera como se puede ver en la primera figura.

   Por último cambia el color de las caras del objeto y de la esfera.

   |br|

-----

Videotutorial
-------------

Vídeo: `extrusiones y vaciados de bocetos.
<https://www.youtube-nocookie.com/embed/dSSEbTNAGts>`__
