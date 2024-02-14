:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _chart-flowchart:

Diagramas de flujo
==================

Un diagrama de flujo es un dibujo que representa un proceso
detallando sus tareas y decisiones.
Su finalidad es expresar de manera simple y visual lo que ocurre en
un proceso o en un programa, de manera que sea fácil de comprender.

Los diagramas de flujo se pueden presentar al programador para que
éste comprenda mejor lo que el cliente quiere realizar. Posteriormente
el programador desarrolla el programa basándose en los diagramas de flujo.

También se dibujan diagramas de flujo para documentar un programa
de ordenador una vez terminado, para comunicar lo que hace el programa
de una manera visual y comprensible.

Los diagramas de flujo no se limitan a representar el funcionamiento
de los programas, también pueden informarnos de las tareas que debemos
realizar en una situación determinada.

Este es el aspecto que tiene un diagrama de flujo:

.. image:: prog/_images/flowchart-estudiar.png
   :align: center
   :width: 240px


Símbolos
--------
A continuación se presentan los principales símbolos utilizados
para dibujar diagramas de flujo.


**Comienzo y final**

Todos los diagramas de flujo deben tener un símbolo de comienzo
y un símbolo de finalización, que se representan con rectángulos
redondeados en los extremos.

.. figure:: prog/_images/flowchart-inicio.png
   :align: center
   :width: 240px

   Símbolos de comienzo y finalización del programa.

**Tareas**

Las tareas que realiza el programa se representan con rectángulos.
Dentro del rectángulo se debe escribir en qué consiste la tarea.
Por ejemplo, sumar dos números o enviar un mensaje.

.. figure:: prog/_images/flowchart-tarea.png
   :align: center
   :width: 240px

   Símbolo de tarea.


**Entrada y salida de datos**

Cuando la tarea consiste en una entrada o salida de datos tal como
escribir en la pantalla, pedir que el usuario escriba un texto,
imprimir una hoja de papel, etc. En ese caso la tarea tendrá una
forma de rectángulo inclinado.

.. figure:: prog/_images/flowchart-entrada.png
   :align: center
   :width: 240px

   Símbolo de entrada y de salida.


**Decisiones**

Un símbolo muy especial es el símbolo de decisión. Con este símbolo
el programa puede seguir dos caminos distintos, dependiendo de
que la condición se cumpla o que no se cumpla.

.. figure:: prog/_images/flowchart-decision.png
   :align: center
   :width: 240px

   Símbolo de decisión.
   El camino a seguir depende de la condición.


**Flechas de flujo**

Todos los símbolos deben ir enlazados entre sí por flechas que
indican cómo se realiza la secuencia.
Las flechas indican el camino o flujo que sigue el ordenador desde
el comienzo hasta la finalización del programa, a través de todas las
tareas.

.. figure:: prog/_images/flowchart-flecha.png
   :align: center
   :width: 240px

   Flecha de unión de las tareas.

**Conectores de flechas**

Cuando las dos tareas a unir están demasiado lejos o cuando
resulta confuso cruzar muchas flechas, entonces se utilizan
dos círculos con un mismo número, para indicar el comienzo y
el final de la flecha:

Cada flecha debe tener un número diferente, de forma que
debe haber solo 2 círculos con un mismo número: un círculo de
comienzo y otro de finalización.

.. figure:: prog/_images/flowchart-conector.png
   :align: center
   :width: 240px

   Flecha larga, separada por conectores circulares.

**Otros símbolos**

Hasta ahora hemos visto los símbolos más importantes.
Con ellos se pueden representar todos los diagramas con los que
vamos a trabajar.
También existen otros símbolos especializados que permiten
representar tareas con más detalle, pero utilizarlos solo
complicaría más los diagramas, de manera que no los usaremos.


Diagramas de ejemplo
--------------------

**Diagrama secuencial**

En este diagrama las tareas se suceden una a otra, sin ninguna
decisión. Este tipo de diagrama es útil para conocer el orden en
el que hay que realizar una tarea.

.. figure:: prog/_images/flowchart-huevo.png
   :align: center
   :width: 240px

   Diagrama de flujo que describe cómo hacer un huevo frito.


**Diagrama con condiciones**

En este tipo de diagrama, el flujo de la tarea no es secuencial
y se desvía dependiendo de las condiciones que se cumplan.

.. figure:: prog/_images/flowchart-mueve.png
   :align: center
   :width: 320px

   Cómo mover un personaje con el teclado.


Recursos
--------
Web para dibujar diagramas de flujo online:

   `app.diagrams.net <https://app.diagrams.net/>`__


-----


Ejercicios
----------

1. Dibuja un diagrama de flujo que describa las tareas más
   importantes que tienes que realizar por las mañanas desde que te
   despiertas hasta que llegas al instituto. Debe haber entre 5 y
   8 tareas.

#. Dibuja el diagrama de flujo de un semáforo que enciende una luz
   verde 10 segundos, luego apaga la luz verde y enciende una luz
   ámbar dos segundos, luego apaga la luz ámbar y enciende una luz
   roja 10 segundos. Por último apaga la luz roja y vuelve a
   comenzar el ciclo.

#. Dibuja un diagrama de flujo que explique cómo arreglar una
   lámpara. Primero debes comprobar si hay luz en la casa.
   Después comprobarás si la lámpara está conectada.
   Por último comprobarás que la bombilla no está fundida.
   Se debe dar solución a cada una de las situaciones anteriores.
   Si no se da ninguna de las situaciones anteriores, llamarás al servicio
   de reparación.

#. Dibuja un diagrama de flujo que describa un método para ordenar
   cartas numeradas, de menor a mayor.

   Hay dos montones de cartas, uno desordenado y otro ordenado.
   Primero hay que tomar una carta del montón desordenado.
   A continuación, se compara con la primera carta del montón
   ordenado.
   Si la nueva carta es más pequeña, se coloca sobre el montón
   ordenado.

   Si la nueva carta es mayor que la primera carta ordenada,
   buscamos la siguiente carta del montón ordenado y volvemos a
   comparar qué carta es mayor. Repetimos esto hasta que la nueva
   carta esté colocada en su sitio.

   Una vez colocada la nueva carta, volvemos a tomar otra carta del
   montón desordenado.

   Cuando se termine el montón de cartas desordenadas, el programa
   termina.

#. Dibuja un diagrama de flujo con ayuda del ordenador y con el
   programa Libre Office Draw. En la siguiente sección puedes
   descargar una plantilla de Libre Office Draw para dibujar
   diagramas de flujo.


Descargas
---------

:download:`Plantilla para realizar diagramas de flujo.
Formato Libre Office Draw. <prog/prog-flowcharts-template.odg>`

:download:`Diagramas de flujo. Formato Libre Office Draw.
<prog/prog-flowcharts.odg>`

:download:`Tema diagramas de flujo en formato Microsoft Word.
<prog/prog-diagramas-de-flujo.doc>`

:download:`Tema diagramas de flujo en formato PDF.
<prog/prog-diagramas-de-flujo.pdf>`
