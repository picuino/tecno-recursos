:Date: 08/10/2022
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch3-aterrizar-cohete:

Aterrizar cohete
================

En esta práctica vamos a programar un juego que consiste en
aterrizar en la luna un cohete que tendrá un movimiento realista
con la gravedad y con el encendido de los motores.
El objetivo consiste en encender los motores en el momento correcto
para que el cohete aterrize a baja velocidad y no se estrelle.

.. image:: scratch3/_images/scratch3-p13-screen.png
   :width: 360px

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

#. Pulsamos el botón idioma |boton-idioma| en la barra
   superior y elegimos **Español**.

   |br|

#. Borramos el objeto gato presionando sobre el icono del
   cubo de basura.

   |borrar-gato|

   |br|

#. Ahora escogemos un fondo adecuado para nuestro juego.
   Cambiamos el fondo de escenario a la **luna**.

   Pulsamos el botón elige un fondo |seleccionar-fondo|.

   Buscamos en la sección **Espacio**.

   y seleccionamos el fondo **Moon**.

   .. image:: scratch3/_images/scratch3-fondo-moon.png

   |br|

#. A continuación añadimos un nuevo personaje, un **cohete**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Todos**.

   y seleccionamos el objeto **Rocketship**.

   .. image:: scratch3/_images/scratch3-objeto-rocketship.png

   |br|

#. Ahora crearemos la variable **velocidad** que va a almacenar
   la velocidad de caída del cohete sobre la luna.
   Si esta variable es muy alta cuando el cohete choque con la luna,
   el cohete se destruirá.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **velocidad**

   .. image:: scratch3/_images/scratch3-crear-variable-velocidad.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. Ahora crearemos la variable **combustible** que va a almacenar
   la cantidad de combustible que tiene el cohete para poder
   encender los motores y frenar la caída sobre la luna.
   Si el combustible se acaba, el cohete no podrá frenar la caída.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **combustible**

   .. image:: scratch3/_images/scratch3-crear-variable-combustible.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. Realizamos una subrutina que inicializa la posición y tamaño del
   cohete al iniciarse el programa.
   También establecerá los valores iniciales de las variables.

   .. image:: scratch3/_images/scratch3-p13-inicio.png
      :width: 288px

   |br|

#. Realizamos una subrutina que mueva el cohete durante el vuelo.
   La velocidad aumentará hacia arriba cuando encendamos los motores
   y aumentará hacia abajo con los motores apagados.

   .. image:: scratch3/_images/scratch3-p13-vuelo.png
      :width: 399px

   |br|

#. Realizamos una subrutina que detiene el cohete al llegar al suelo
   y determina si la velocidad es demasiado alta o es correcta para
   dar por bueno el aterrizaje.

   .. image:: scratch3/_images/scratch3-p13-aterrizaje.png
      :width: 375px

   |br|

#. Programamos el programa principal que reune todas las subrutinas.

   .. image:: scratch3/_images/scratch3-p13-programa.png
      :width: 365px

   |br|

#. A continuación añadimos un nuevo personaje, un **botón** que nos
   servirá de plataforma de aterrizaje.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Todos**.

   y seleccionamos el objeto **Button2**.

   .. image:: scratch3/_images/scratch3-objeto-button2.png

   |br|

#. Añadimos el programa de inicialización del Botón.

   .. image:: scratch3/_images/scratch3-p13-button2-init.png
      :width: 388px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.


-----


Retos
-----

1. Añade meteoritos que se muevan de lado a lado lentamente
   para que el cohete tenga que sortearlos.


#. Juega varias veces para establecer la mejor marca de combustible
   sobrante una vez aterrizado el cohete.
   A partir de ahí puedes bajar en el programa el combustible inicial
   para hacer el juego más difícil.