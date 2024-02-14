:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. include:: scratch-subs.rst

.. _scratch-flor:

Dibujar una flor
================

.. image:: scratch/_images/scratch-p02-cuatro-flores.png
   :width: 240px


En esta práctica vamos a programar una serie de funciones
que dibujen varios tipos de flores en pantalla.

|br|

1. Iniciamos el |editor_de_Scratch|.

   |br|

2. Creamos una nueva función llamada **Inicio**.

   Primero pulsamos en el botón más bloques

   |mas-bloques|

   A continuación pulsamos en crear un bloque |crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Inicio**

   .. image:: scratch/_images/scratch-bloque-inicio.png

   Por último pulsamos el botón **OK**

   |br|

3. Programamos la función Inicio con los siguientes bloques.

   .. image:: scratch/_images/scratch-p02-programa-inicio.png
      :width: 278px

   Este programa coloca al gato en el centro de la pantalla,
   prepara el lápiz y borra cualquier dibujo anterior.

   |br|

4. Crearemos una nueva función llamada **Punto**.

   Primero pulsamos en el botón más bloques

   |mas-bloques|

   A continuación pulsamos en crear un bloque |crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Punto**

   Ahora añadiremos la variable **Radio**.

   Dentro de opciones, añadimos una entrada numérica

   |entrada-numerica|

   A la nueva entrada la llamaremos **Radio**

   .. image:: scratch/_images/scratch-p02-punto-radio.png

   Por último pulsamos el botón **OK**

   |br|

5. Ahora programaremos la función que dibuja un punto en la pantalla
   (bajar lápiz y subir lápiz).

   .. image:: scratch/_images/scratch-p02-programa-punto.png
      :width: 338px

   Este programa dibujará un punto de un tamaño que dependerá de la
   variable radio. Si el radio es muy grande, el punto será muy
   grande y si el valor de radio es pequeño, el punto dibujado
   será pequeño.

   |br|

6. A continuación crearemos un pequeño programa de prueba para
   comprobar que se dibuja el punto en la pantalla.

   .. image:: scratch/_images/scratch-p02-programa-prueba1.png
      :width: 184px

   Al ejecutar el programa, pulsando la bandera verde |bandera-verde|,
   aparecerá en la pantalla el siguiente dibujo.

   .. image:: scratch/_images/scratch-p02-punto-rojo.png

   El gato ha dibujado un punto de tamaño 50 a una distancia de
   100 pasos

   Una vez que todo funcione bien, borraremos el programa de prueba.

   |br|

#. Ahora que podemos dibujar puntos, vamos a programar el dibujo
   de una flor.

   Primero crearemos una nueva función llamada **Flor**.

   Primero pulsamos en el botón más bloques

   |mas-bloques|

   A continuación pulsamos en crear un bloque |crear-bloque|

   Luego cambiamos el nombre del nuevo bloque a **Flor**

   Ahora añadiremos la variable **Tamaño**.

   Dentro de opciones, añadimos una entrada numérica

   |entrada-numerica|

   A la nueva entrada la llamaremos **Tamaño**

   .. image:: scratch/_images/scratch-p02-nuevo-bloque-flor.png

   Por último pulsamos el botón **OK**

   |br|

#. A continuación programaremos la función que dibujará una flor
   en la pantalla.

   .. image:: scratch/_images/scratch-p02-programa-flor.png
      :width: 340px

   |br|

#. Para probar que la función está bien escrita, vamos a crear
   un pequeño programa de prueba que dibuje la flor en pantalla.

   .. image:: scratch/_images/scratch-p02-programa-prueba2.png
      :width: 188px

   Después de pulsar la bandera verde |bandera-verde|,
   en la pantalla aparecerá una flor hecha con puntos de colores
   alrededor del gato como muestra la siguiente imagen.

   .. image:: scratch/_images/scratch-p02-circulo-puntos.png

   Una vez que todo funcione bien, borraremos el programa de prueba.

   |br|

#. Por último vamos a jugar con la función flor para que aparezcan
   en pantalla dibujos formados por flores de diferentes tamaños.

   .. image:: scratch/_images/scratch-p02-programa-cuatro-anillos.png
      :width: 182px

   El programa anterior dibuja en pantalla una imagen
   formada por varios anillos de colores alrededor del gato.

   Pulsaremos en la bandera verde |bandera-verde| para ver
   el resultado.

   .. image:: scratch/_images/scratch-p02-cuatro-anillos.png

   Una vez que todo funcione bien, borraremos el programa de prueba.

   |br|

#. Con el siguiente programa, se dibujarán en distintos puntos de
   la pantalla varias flores. Al final el gato estará en medio
   de todas.

   .. image:: scratch/_images/scratch-p02-programa-cuatro-flores.png
      :width: 188px

   Pulsaremos en la bandera verde |bandera-verde| para ver
   el resultado.

   .. image:: scratch/_images/scratch-p02-cuatro-flores.png


-----


Ejercicios
----------

1. Modifica el programa para que todos los puntos de la función
   flor tengan el mismo color.
   Dibuja una flor compuesta por anillos grandes rojos en la
   parte exterior y anillos pequeños y verdes en la parte interior.

#. Realiza un programa que dibuje cinco anillos situados
   como el logotipo de los juegos olímpicos.
