:Date: 22/09/2019
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch3-subs.rst

.. _scratch3-atrapar-bichos:

Atrapar bichos
==============

En esta práctica vamos a programar un juego que consiste en
atrapar todos los escarabajos que aparecen en la pantalla.
Una vez atrapados, ganamos el juego y un personaje nos avisa
de ello.

.. image:: scratch3/_images/scratch3-p06-screen.png
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
   Cambiamos el fondo de escenario a una pared de una **calle**.

   Pulsamos el botón elige un fondo |seleccionar-fondo|.

   Buscamos en la sección **Exteriores**.

   y seleccionamos el fondo **Wall 1**.

   .. image:: scratch3/_images/scratch3-fondo-wall1.png

   |br|

#. A continuación añadimos un nuevo personaje, un **escarabajo**.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Animales**.

   y seleccionamos el objeto **Ladybug2**.

   .. image:: scratch3/_images/scratch3-objeto-ladybug2.png

   |br|

#. Ahora crearemos la variable **clones** que va a contar el
   número de escarabajos que hay en la pantalla.
   Cuando esta variable valga cero, el programa terminará.

   Pulsamos el botón de variables |boton-variables|,

   pulsamos en crear una variable  |boton-crear-variable|.

   Cambiamos el nombre de la variable a **clones**

   .. image:: scratch3/_images/scratch3-crear-variable-clones.png

   Por último pulsamos el botón **Aceptar**

   |br|

#. Realizamos un programa que
   esconde el escarabajo, reduce su tamaño,
   inicia el número de clones a cero y
   coloca diez clones del escarabajo en la pantalla.

   .. image:: scratch3/_images/scratch3-p06-ladybug-01.png
      :width: 245px

   |br|

#. En este punto añadimos las instrucciones para que cada clon
   del escarabajo aparezca en un lugar aleatorio en la pantalla
   y se aumenta el número de escarabajos en uno.

   Cuando el puntero del ratón toque el escarabajo,
   se resta uno al contador de escarabajos y
   el escarabajo desaparece.

   .. image:: scratch3/_images/scratch3-p06-ladybug-02.png
      :width: 414px

   |br|

#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Deben aparecer diez escarabajos en la pantalla.
   Los escarabajos deben desaparecer cuando el puntero del ratón
   les toque, sin hacer clic.

   |br|

#. Para que el juego funcione normalmente, programamos la función
   que hará aparecer nuevos escarabajos cada cierto tiempo.
   Cuando el número de escarabajos en pantalla sea cero, el juego
   termina y el programa se detiene.

   .. image:: scratch3/_images/scratch3-p06-ladybug-03.png
      :width: 426px

   |br|


#. Por último vamos a programar un personaje que avise del final
   del juego. En este caso podemos escoger a Casey.

   Pulsamos el botón elige un objeto |seleccionar-objeto|.

   Buscamos en la sección **Gente**.

   y seleccionamos el objeto **Casey**.

   .. image:: scratch3/_images/scratch3-objeto-casey.png

   |br|

#. Seleccionamos el nuevo personaje

   .. image:: scratch3/_images/scratch3-p06-selecciona-casey.png

   y añadimos las siguientes instrucciones.

   .. image:: scratch3/_images/scratch3-p06-casey-01.png
      :width: 393px


#. Pulsamos la bandera verde |bandera-verde|
   para probar el funcionamiento del programa.

   Ahora, al finalizar el programa, aparecerá Casey bailando
   para felicitarnos por haber ganado.

   |br|


-----


Retos
-----

1. Añade una nueva regla al juego. Si el número de escarabajos es
   mayor que 25, entonces perdemos el juego.
   El programa se detiene y un personaje nuevo nos avisa de que
   hemos perdido.

#. Añade más disfraces al personaje del escarabajo, de manera que
   con cada clon aparezca un disfraz distinto,
   utilizando la instrucción "siguiente disfraz" en el lugar
   adecuado.

