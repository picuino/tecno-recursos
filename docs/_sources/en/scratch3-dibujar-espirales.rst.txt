:Date: 28/12/2021
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch3-en-dibujar-espirales:

Drawing spirals
===============

En esta práctica vamos a mover a un personaje por la
pantalla para que dibuje varias espirales con colores.

.. image:: scratch3/_images/scratch3-p10-screen-cuadrado.png
   :width: 360px

|br|

1. We start the |editor_de_Scratch|.

   |br|

#. Click language button |boton-idioma| 
   upper menu bar and select **English**.

   |br|

#. Añadimos una nueva variable **Lado** que guardará
   el tamaño del lado que se está dibujando en este momento.

   Press the variables button |boton-variables|,

   click on create a variable  |boton-crear-variable|.

   Change the name of the variable to **Lado**

   |br|

#. Añadimos una nueva extensión con el botón **añadir extensión**
   |aniadir-extension| abajo a la izquierda.

   Seleccionamos la extensión **Lápiz** para poder dibujar.

   .. image:: scratch3/_images/scratch3-extension-lapiz.png

   En la barra de código aparecerá un nuevo icono, el Lápiz
   |boton-lapiz|, con instrucciones de color verde oscuro.

   |br|

#. Creamos un nuevo bloque llamado **inicio**.

   First we click on the button my blocks  |boton-misbloques|

   Then click on create a block |boton-crear-bloque|

   Then we change the name of the new block to **inicio**

   |br|

#. El bloque **inicio** servirá para iniciar el programa.
   Moverá al gato al centro de la pantalla con tamaño pequeño.
   Esconde la variable Lado, baja el lápiz para que pinte,
   establece el grosor y color del lápiz y borra la pantalla.

   .. image:: scratch3/_images/scratch3-p10-inicio.png
      :width: 284px

   |br|

#. Creamos un nuevo bloque llamado **cuadrado**.

   First we click on the button my blocks  |boton-misbloques|

   Then click on create a block |boton-crear-bloque|

   Then we change the name of the new block to **cuadrado**

   |br|

#. El bloque **cuadrado** servirá para dibujar una espiral
   cuadrada en la pantalla.

   El tamaño del lado se inicia con el valor 5 y va creciendo
   de 4 en 4 hasta que valga igual o más que 340.

   En cada paso se dibuja una linea de tamaño "Lado",
   aumenta el tamaño del lado, gira 90º y 
   aumenta el color del lápiz.

   .. image:: scratch3/_images/scratch3-p10-cuadrado.png
      :width: 338px

   |br|

#. Si hacemos clic sobre el bloque **"definir cuadrado"**, 
   en la pantalla aparecerá la espiral cuadrada.
   
   .. image:: scratch3/_images/scratch3-p10-screen-cuadrado.png

   |br|

#. Ahora vamos a crear un nuevo bloque llamado **triangulo**.

   First we click on the button my blocks  |boton-misbloques|

   Then click on create a block |boton-crear-bloque|

   Then we change the name of the new block to **triangulo**

   |br|

#. El bloque **triángulo** es muy parecido al bloque **cuadrado**,
   solo cambia el ángulo de giro.

   Para aprovechar el programa ya realizado, vamos a pulsar
   con el botón derecho del ratón sobre las instrucciones
   de **cuadrado** y elegimos la opción duplicar.

   .. image:: scratch3/_images/scratch3-p10-duplicar.png

   una vez duplicado el programa, lo enganchamos en el bloque
   triángulo y cambiamos el ángulo de giro.

   .. image:: scratch3/_images/scratch3-p10-triangulo.png
      :width: 337px


#. Si hacemos clic sobre el bloque **"definir triangulo"**, 
   en la pantalla aparecerá la espiral triangular.

   .. image:: scratch3/_images/scratch3-p10-screen-triangulo.png
   

-----


Ejercicios
----------

1. Haz un nuevo bloque que dibuje una espiral en estrella.
   Modifica los parámetros del nuevo bloque para girar 150 grados.

   .. image:: scratch3/_images/scratch3-p10-screen-estrella.png

   |br|

#. Crea un nuevo bloque para dibujar una espiral octogonal.
   Los giros deben ser de 45 grados. 
   El lado debe sumar 1 en cada repetición y 
   se debe repetir hasta que el lado sea mayor que 150.

   .. image:: scratch3/_images/scratch3-p10-screen-octogono.png
   
   |br|

#. Experimenta con el programa para crear nuevos dibujos originales.