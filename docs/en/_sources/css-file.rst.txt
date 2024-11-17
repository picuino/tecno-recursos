:Date: 12/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. css-file:

Ficheros CSS
============

La mayoría de las páginas web utilizan un fichero separado para
los estilos. Esto permite que varios documentos HTML puedan tener
la misma hoja de estilo CSS. De esta manera las diferentes páginas
tendrán una presentación semejante. Además, en el momento que se
quiera cambiar un estilo, solo será necesario hacerlo en un fichero
CSS y todos los documentos HTML que dependen de este fichero
cambiarán a la vez.

En este ejercicio se separará la hoja de estilo CSS del fichero HTML.
Para vincular las dos hojas se utiliza la etiqueta <link>.


Etiquetas utilizadas
--------------------
Link a hoja de estilo css:

.. code-block:: html

   <link rel="stylesheet" type="text/css"
         href="file.css" >

Hay que sustituir file.css por la hoja de estilo
que se quiera utilizar.



Ejercicio
---------

Fichero **css-file.html**

.. literalinclude:: css/css-file.html
   :language: html
   :linenos:
   :name: css-file


Fichero **css-file.css**

.. image:: css/_images/css-file-css.png
   :alt: Código del fichero css-file.css


Resultado
---------

.. image:: css/_images/css-file-web.png
   :alt: Resultado de visualizar los ficheros css-file.html y css-file.css
         en un navegador



