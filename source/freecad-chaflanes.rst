:Date: 11/01/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: freecad-subs.rst

.. _freecad-chaflanes:

Chaflanes y redondeos
=====================

En este tutorial vamos a aprender a realizar chaflanes y redondeos
en las aristas de las piezas creadas con FreeCAD.

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

   Seleccionamos ver la pieza en vista isométrica.

   .. image:: freecad/_images/freecad-vista-isometrica.png

   La pieza se verá como en la siguiente imagen.

   .. image:: freecad/_images/freecad-cubo-isometrica.png

   |br|

#. Una vez creado el cubo hay que **seleccionar las aristas**
   superiores clicando sobre ellas mientras se mantiene la
   tecla **Control** presionada.

   Las aristas seleccionadas cambiarán a color verde.

   .. image:: freecad/_images/freecad-p09-imagen01.png

   En esta imagen se ha cambiado el valor de **Ancho de línea
   (Line Width)** al valor 4, en la pestaña **Vista**, para que
   se pueda visualizar mejor.

   |br|

#. Una vez seleccionadas las aristas vamos a realizar el chaflán
   con la herramienta **Crear chaflán para el borde seleccionado**

   .. image:: freecad/_images/freecad-crear-chaflan.png

   Aparecerá una ventana de trabajo como la siguiente imagen.

   .. image:: freecad/_images/freecad-p09-imagen02.png

   En esa ventana de trabajo podemos seleccionar los lados (Aristas)
   que queramos achaflanar y la longitud del chaflán,
   que vamos a cambiar a 2 milímetros.

   Por último clicamos **OK** para terminar el chaflán.

   La pieza se verá como la siguiente figura.

   .. image:: freecad/_images/freecad-p09-imagen03.png

   |br|

#. Podemos realizar la misma operación con otro cubo, pero esta vez
   utilizaremos la herramienta **Redondea bordes**.

   .. image:: freecad/_images/freecad-redondea-bordes.png

   Con lo que el nuevo cubo tendrá los bordes redondeados,
   en vez de cortes rectos del achaflanado.

   .. image:: freecad/_images/freecad-p09-imagen04.png

   |br|


-----


Ejercicios
----------

1. Realizar una tableta de chocolate como la de la figura.

   .. image:: freecad/_images/freecad-p09-ejercicio01.png

   Primero crearemos un cubo y le daremos las siguientes dimensiones.

   **Longitud (Lenght)** = 20

   **Ancho (Width)** = 10

   **Alto (Height)** = 2

   A continuación crearemos un **chaflán de 1,9 milímetros** en los
   cuatro lados superiores.

   .. image:: freecad/_images/freecad-p09-ejercicio01b.png

   Copiaremos la nueva pieza y la pegaremos ``Editar... Pegar.``
   ocho veces en total.

   Desplazaremos todas las piezas para que estén a 2 milímetros
   de distancia unas de otras.

   .. image:: freecad/_images/freecad-p09-ejercicio01c.png

   Ahora crearemos un nuevo cubo y le daremos las siguientes
   dimensiones.

   **Longitud (Lenght)** = 64

   **Ancho (Width)** = 34

   **Alto (Height)** = 2

   Trasladaremos este último cubo 2 milímetros hacia abajo.

   Por último seleccionamos todas las piezas y las fusionamos en un
   solo objeto Menú ``Pieza... Booleano... Unión.``.

   |br|

#. Realizar la pieza de la figura a partir de cilindros y un cubo.

   .. image:: freecad/_images/freecad-p09-ejercicio02.png

   Los tres cilindros tienen el tamaño estándar,
   con un chaflán superior de 1,9 milímetros.

   El cubo se modifica el tamaño y posición según los valores de la
   imagen.

   .. image:: freecad/_images/freecad-p09-ejercicio02b.png

   |br|

#. Realizar la pieza de la figura a partir de un cilindro
   achaflanado.

   .. image:: freecad/_images/freecad-p09-ejercicio03.png

   El chaflán debe ser de longitud variable, tal y como muestra
   la siguiente figura.

   .. image:: freecad/_images/freecad-p09-ejercicio03b.png

   |br|


-----

Videotutorial
-------------

Vídeo: `redondeos, chaflanes y refuerzos.
<https://www.youtube-nocookie.com/embed/jdCREzRmiro>`__
