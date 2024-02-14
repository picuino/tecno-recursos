:Date: 29/10/2022
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch3-recorrer-laberintos:

Recorrer laberintos
===================

En esta práctica vamos a programar un juego que consiste en
recorrer varios laberintos desde su comienzo hasta el punto final
antes de que a nuestro personaje se le termine su energía.

.. image:: scratch3/_images/scratch3-p14-screen.png
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

#. A continuación añadimos un nuevo personaje, una pelota
   de **basketball**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Deportes**.

   y seleccionamos el objeto **Basketball**.

   .. image:: scratch3/_images/scratch3-objeto-basketball.png

   |br|

#. Ahora crearemos la variable **Fase** que va a contar el
   número de laberintos que vamos recorriendo.
   Cuando esta variable supere los cinco laberintos,
   el programa terminará.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **Fase**

   .. image:: scratch3/_images/scratch3-p14-variable-fase.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. Crearemos también la variable **Energía** que va a contar la
   energía de que disponemos para recorrer todos los laberintos.
   Si la variable energía se vacía, perderemos el juego y el
   programa terminará.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **Energía**

   .. image:: scratch3/_images/scratch3-p14-variable-energia.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. Creamos dos nuevos bloques llamados **mueve_x** y **mueve_y**
   que van a mover la pelota por la pantalla.

   Primero pulsamos en el botón mis bloques  |boton-misbloques|

   A continuación pulsamos en crear un bloque |boton-crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **mueve_x**

   Primero pulsamos en el botón mis bloques  |boton-misbloques|

   A continuación pulsamos en crear un bloque |boton-crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **mueve_y**

   |br|

#. Realizamos un programa que mueve la pelota en las cuatro
   direcciones, consumiendo energía y rebotando en las paredes
   del laberinto para que no las pueda atravesar.

   .. image:: scratch3/_images/scratch3-p14-basketball-3.png
      :width: 444px

   .. image:: scratch3/_images/scratch3-p14-basketball-4.png
      :width: 423px

   La pelota aún no se moverá porque necesitamos que otra rutina
   llame a las funciones que hemos creado.

   |br|

#. Ahora creamos un nuevo bloque, **Inicia**, que mostrará la
   pelota con tamaño pequeño al comienzo del laberinto.

   .. image:: scratch3/_images/scratch3-p14-basketball-2.png
      :width: 212px

   |br|

#. Para continuar programaremos la rutina principal que llama
   a todos los bloques que hemos creado anteriormente.

   Todavía no podremos cambiar el fondo a "Sin_energía" porque
   este fondo no ha sido creado aún. Recuerda cambiarlo después de
   crear el fondo.

   .. image:: scratch3/_images/scratch3-p14-basketball-1.png
      :width: 393px

   |br|

#. Para terminar el programa de la pelota, programaremos el
   comportamiento cuando recibe los mensajes de **Comenzar** y
   de **Terminar**.

   .. image:: scratch3/_images/scratch3-p14-basketball-5.png
      :width: 207px

   |br|

#. Ahora cambiaremos al **Escenario** y dentro de la pestaña de
   fondos vamos a crear los mensajes del juego.

   Primero seleccionamos en fondos, pintar un fondo.

   .. image:: scratch3/_images/scratch3-p14-pinta-un-fondo.png

   A continuación, con la herramienta **Texto** escribimos
   en la pantalla el siguiente mensaje.

   .. image:: scratch3/_images/scratch3-p14-fondo-perdido.png
      :width: 442px

   Cambia el nombre del disfraz a "Sin_energía".

   .. image:: scratch3/_images/scratch3-p14-disfraz-sin-energia.png

   Recuerda modificar el programa de la pelota de basketball
   ahora que este fondo ya está creado.

   |br|

#. Ahora cambiaremos de nuevo al **Escenario** y dentro de la
   pestaña de fondos vamos a crear más mensajes del juego.

   Seleccionamos en fondos, pintar un fondo.

   .. image:: scratch3/_images/scratch3-p14-pinta-un-fondo.png

   A continuación, con la herramienta **Texto** escribimos
   en la pantalla el siguiente mensaje.

   .. image:: scratch3/_images/scratch3-p14-fondo-terminado.png
      :width: 449px

   Cambiamos el nombre del disfraz a "Terminado".

   |br|

#. Seleccionamos de nuevo pintar un fondo.

   A continuación, con la herramienta **Texto** escribimos
   en la pantalla el siguiente mensaje.

   .. image:: scratch3/_images/scratch3-p14-fondo-finalizado.png
      :width: 443px

   Cambiamos el nombre del disfraz a "Finalizado".

   |br|

#. Para completar los fondos, vamos a descargar el siguiente
   archivo comprimido que contiene varios laberintos en su interior.

   :download:`Laberintos para recorrer. Formato ZIP.
   <scratch3/scratch3-laberintos.zip>`

   Una vez descargado, abrimos el archivo Zip y extraemos todos los
   archivos de laberinto que tiene en su interior en una carpeta
   conocida.

   Se pueden extraer todos los archivos pinchando con el botón
   derecho del ratón en el archivo Zip y seleccionando la
   opción ``Extraer todo...`` y pulsando luego el botón ``Extraer``.

   |br|

#. De nuevo en el **Escenario**, dentro de la pestaña de fondos,
   vamos a importar los distintos laberintos.

   Primero seleccionamos en fondos, **carga un fondo**.

   .. image:: scratch3/_images/scratch3-p14-carga-un-fondo.png

   Elegimos la carpeta donde se ha descargado el archivo Zip
   anterior y la carpeta donde se han extraído los laberintos.
   Pregunta a tu profesor si no sabes cómo seguir en este paso.

   Una vez en la carpeta de los laberintos, pincha en el primer
   laberinto y pulsa el botón ``Abrir``.

   .. image:: scratch3/_images/scratch3-p14-carga-de-archivos.png

   |br|

#. Repetimos el paso anterior con los cinco primeros laberintos.

   |br|

#. Para continuar, vamos a programar el comportamiento del Escenario
   en la pestaña de Código.

   Al comenzar el programa establecemos el valor de la variable Fase
   en 1 (el número del laberinto) y mostramos el primer laberinto.

   .. image:: scratch3/_images/scratch3-p14-escenario-1.png
      :width: 404px

   Cada vez que reciba el mensaje de **Comenzar** un nuevo laberinto,
   sumamos uno a la variable Fase y mostramos el laberinto que
   corresponda. Una vez llegado al valor 6 los laberintos se habrán
   acabado y podemos finalizar el programa con un mensaje ganador.

   .. image:: scratch3/_images/scratch3-p14-escenario-2.png
      :width: 306px

   |br|

#. Llegado este punto, solo hace falta definir cuándo se termina
   cada laberinto. Para conseguirlo vamos a añadir un nuevo objeto,
   una flecha, que va a enviar el mensaje de laberinto terminado
   cuando toque la pelota de basketball.

   Añadimos un nuevo personaje, **una flecha**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Todos**.

   y seleccionamos el objeto **Arrow1**.

   .. image:: scratch3/_images/scratch3-objeto-arrow1.png

   |br|

#. Realizamos un programa que muestre la flecha en la esquina
   inferior derecha al comenzar el programa.
   También debe estar siempre detectando si toca a la pelota
   de basketball, para terminar el laberinto y comenzar uno nuevo.

   .. image:: scratch3/_images/scratch3-p14-arrow-1.png
      :width: 381px


   Además programaremos que la flecha se esconda desde que se termine
   un laberinto hasta que comience el siguiente laberinto.

   .. image:: scratch3/_images/scratch3-p14-arrow-2.png
      :width: 208px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   |br|


-----


Retos
-----

#. Añade un rastro de color azul claro al movimiento de la pelota
   para que sepamos en todo momento qué recorrido ha realizado la
   pelota.

   |br|

#. Mide cuánta energía consume la pelota para recorrer cada laberinto
   y establece al comienzo un valor de energía que sea justo el necesario
   para pasar el juego.

   |br|

#. Al comenzar cada laberinto, añade pequeñas frutas esparcidas de
   manera aleatoria. Cuando la pelota toque una de estas frutas,
   la fruta debe desaparecer y añadir energía a la pelota.

   Las frutas se añadirán como clones de una fruta que debe permanecer
   escondida.

   Establece para la pelota un valor de energía inicial menor, de
   manera que sea necesario recoger varias frutas para poder terminar
   todos los laberintos con suficiente energía.

   Ajusta el número de frutas y la energía que añade cada fruta para
   que el juego sea difícil, pero que se pueda terminar.