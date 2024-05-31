:Date: 06/02/2020
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. include:: freecad-subs.rst

.. _freecad-restricciones:

Croquis con restricciones
=========================
En esta práctica vamos a crear croquis con restricciones para
formar figuras con mayor exactitud y con más facilidades.

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

#. A continuación vamos a dibujar un objeto sencillo, un cuadrado,
   con el icono polilínea |polilinea|.

   .. image:: freecad/_images/freecad-p15-imagen01.png

   Ahora no vamos a preocuparnos de la exactitud del cuadrado
   porque dibujando con el ratón es imposible conseguir un
   cuadrado perfecto.

   |br|

#. Con el método anterior, podemos crear un dibujo parecido a un
   cuadrado, pero al crear figuras **con el ratón el resultado
   siempre tendrá errores**.

   Para conseguir que nuestro cuadrado sea perfecto vamos a
   **crear restricciones** en las líneas que lo forman.

   Primero seleccionamos las dos líneas verticales y creamos
   una **restricción vertical** clicando |restriccion-vertical|.

   .. image:: freecad/_images/freecad-p15-imagen02.png

   Las líneas se volverán perfectamente verticales y aparecerán
   dos pequeños iconos que representan la restricción vertical.

   .. image:: freecad/_images/freecad-p15-imagen03.png

   |br|

#. A continuación seleccionamos las dos líneas horizontales para
   crear una **restricción horizontal**
   clicando |restriccion-horizontal|.

   .. image:: freecad/_images/freecad-p15-imagen04.png

   Ahora nuestro dibujo se parece mucho más a un cuadrado perfecto,
   pero aún no hemos terminado.

   |br|

#. En este punto vamos a hacer que un lado vertical tenga el
   mismo tamaño que un lado horizontal, como corresponde a un
   cuadrado.

   Seleccionamos un lado vertical y un lado horizontal y creamos
   una **restricción de igualdad** clicando |restriccion-igualdad|.

   .. image:: freecad/_images/freecad-p15-imagen05.png

   Ahora nuestra figura es un cuadrado perfecto.
   Si **movemos un punto** del cuadrado, este mantendrá las
   proporciones.

   .. image:: freecad/_images/freecad-p15-imagen06.png

   |br|

#. Para terminar vamos a dar un tamaño exacto al cuadrado.
   Primero **seleccionamos una línea vertical** y a continuación
   creamos una restricción de cota vertical
   clicando |restriccion-cota-vertical|,
   con el valor de **30 milímetros**.

   .. image:: freecad/_images/freecad-p15-imagen07.png

   Una vez creada la cota, podemos hacer doble clic sobre ella para
   editarla y cambiar su valor.

   |br|

#. A continuación vamos a **eliminar una restricción**.

   Clicamos sobre el icono de restricción horizontal en la
   línea inferior, este icono cambiará a color verde.

   .. image:: freecad/_images/freecad-p15-imagen08.png

   Presionamos la tecla de suprimir ``Supr`` en el teclado y
   la restricción desaparece, con lo que podremos mover la línea
   inferior y cambiar su inclinación.

   .. image:: freecad/_images/freecad-p15-imagen09.png

   |br|


-----


Ejercicios
----------

1. Crear un croquis como el de la imagen.

   .. image:: freecad/_images/freecad-p15-ejercicio01.png

   Con las siguientes restricciones.

   * Restricción horizontal en todas las líneas horizontales.

   * Restricción vertical en todas las líneas verticales.

   * Restricción de igualdad en todas las líneas de igual longitud.

   * Restricción de cota en las cuatro dimensiones que aparecen en
     el dibujo.

   Extrudir el dibujo 100 milímetros para generar una viga en H.

   .. image:: freecad/_images/freecad-p15-ejercicio01b.png


   |br|


-----

Videotutorial
-------------

Vídeo: `aplicando restricciones.
<https://www.youtube-nocookie.com/embed/dVg5uBciurs>`__
