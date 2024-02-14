:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. meta::
   :keywords: Arduino, Librería, Añadir librería, Instalar librería

.. _add-library:

Añadir una librería a Arduino
=============================

El entorno de Arduino viene por defecto con las librerías más
habituales.
Pero, en ocasiones, es necesario añadir una nueva librería para que
Arduino pueda manejar otros dispositivos tales como paneles TFT o
emisores y receptores infrarrojos.
En esta página se explica paso a paso cómo añadir una nueva librería
o cómo actualizar una librería ya existente en el entorno gráfico
de Arduino.



Añadir una nueva librería a Arduino
-----------------------------------

1. Copiar la librería en formato \*.zip a un directorio conocido del
   disco duro.
2. Abrir el entorno gráfico de Arduino.
3. En el menú de Arduino, seleccionar
   ``Programa... Incluir Librería... Añadir Librería .ZIP...``

   .. only:: html

      .. image:: _images/img-0026.png
         :alt: Menú Sketch... Importar Librería... Add Library

   .. only:: latex

      .. figure:: _images/img-0026.png
         :alt: Menú Sketch... Importar Librería... Add Library
         :width: 400px

4. Buscar el directorio del disco duro donde se encuentra la librería
5. Seleccionar el archivo \*.zip con la librería y pulsar [Abrir]

   .. only:: html

      .. image:: _images/img-0027.png
         :alt: Seleccionar el archivo \*.zip de la librería

   .. only:: latex

      .. figure:: _images/img-0027.png
         :alt: Seleccionar el archivo \*.zip de la librería
         :width: 125mm

6. Si la librería se ha importado correctamente aparecerá un mensaje
   informando de ello. 'Library added to your libraries.'

   .. only:: html

      .. image:: _images/img-0028.png
         :alt: Librería importada correctamente

   .. only:: latex

      .. figure:: _images/img-0028.png
         :alt: Librería importada correctamente
         :width: 400px

7. En el caso de que la librería estuviera ya instalada aparecerá un
   mensaje de error con color naranja indicando que la librería ya
   existe. 'A library name _ _ _ already exists'.

   Si se quiere actualizar la librería es necesario primero
   `eliminar la librería antigua`_.

   .. only:: html

      .. image:: _images/img-0030.png
         :alt: Mensaje de error: librería ya existente.

   .. only:: latex

      .. figure:: _images/img-0030.png
         :alt: Mensaje de error: librería ya existente.
         :width: 400px

8. Comprobar que Arduino dispone de la nueva librería en el listado
   de librerías instaladas.

   ``Programa... Incluir Librería...``

   .. only:: html

      .. image:: _images/img-0029.png
         :alt: Listado de librerías instaladas

   .. only:: latex

      .. figure:: _images/img-0029.png
         :alt: Listado de librerías instaladas
         :width: 400px

.. _eliminar la librería antigua:


Eliminar una librería de Arduino
--------------------------------

Para actualizar una librería que ya está instalada en el entorno de
Arduino, es necesario borrar antes la librería antigua.
Estos son los pasos a seguir:

1. Seleccionar en el menú ``Archivo... Preferencias...``

   También se puede pulsar las teclas [Ctrl] + Coma

2. Copiar la ruta de la 'Ubicación del Sketchbook'
   pulsando [Ctrl] + c

   .. only:: html

      .. image:: _images/img-0031.png
         :alt: Copiar la ruta de Sketchbood de Arduino

   .. only:: latex

      .. figure:: _images/img-0031.png
         :alt: Copiar la ruta de Sketchbood de Arduino
         :width: 400px

3. En el explorador de archivos, pegar la ruta copiada y
   pulsar enter.

   .. only:: html

      .. image:: _images/img-0032.png
         :alt: Pegar la ruta en el explorador de archivos

   .. only:: latex

      .. figure:: _images/img-0032.png
         :alt: Pegar la ruta en el explorador de archivos
         :width: 480px

4. En el explorador, dentro de la ruta del Sketchbook
   seleccionar la carpeta Arduino... libraries...

   En esta ubicación se pueden ver las librerías actualmente instaladas.

   .. only:: html

      .. image:: _images/img-0033.png
         :alt: Contenido de la carpeta libraries de Arduino

   .. only:: latex

      .. figure:: _images/img-0033.png
         :alt: Contenido de la carpeta libraries de Arduino
         :width: 92mm

5. Seleccionar la librería que se desee borrar y pulsar la tecla de
   suprimir o pulsar el botón derecho del ratón y 'Eliminar'


Ver las librerías instaladas en Arduino
---------------------------------------

Para ver qué librerías tiene ya instaladas Arduino es necesario
seleccionar en el menú.

``Programa... Incluir Librería...``

.. only:: html

   .. image:: _images/img-0029.png
      :alt: Listado de librerías instaladas

.. only:: latex

   .. figure:: _images/img-0029.png
      :alt: Listado de librerías instaladas
      :width: 400px
