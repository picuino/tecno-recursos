:Date: 13/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. _html-body:

Estructura de una página HTML
=============================
Una página HTML es un documento de texto que está estructurado con
etiquetas. Las etiquetas definen lo que significa cada bloque de
texto y realizan divisiones entre unos bloques de texto y otros.

En esta primera práctica vamos a crear una simple página HTML
con una estructura mínima.


Etiquetas utilizadas
--------------------

``<!doctype html>``
   Etiqueta inicial que informa al navegador de que a continuación
   viene un documento de tipo HTML.

``<html> </html>``
   Etiqueta inicial y final de todos los documentos de tipo HTML.

``<head> </head>``
   Sección de cabecera del documento.
   En esta sección se define el título de la página, los estilos, etc.

``<title> </title>``
   Título de la página HTML. Debe aparecer en la sección <head>.

``<body> </body>``
   Cuerpo del documento. En esta sección estarán todos los contenidos
   que aparecen en la página web. Textos, imágenes, listas, tablas,
   etc.

``<p> </p>``
   Etiqueta de párrafo. Engloba un párrafo de texto con varias
   frases consecutivas. Terminan en un punto y aparte.



Código de la página
-------------------

.. image:: html/_thumbs/html-body-html.png

Plantilla de documento HTML.

.. code-block:: html

   <!doctype html>
   <html>

   <!-- Cabecera -->
   <head>
      <title> </title>
   </head>

   <!-- Cuerpo -->
   <body>

   </body>

   </html>



.. `Editor online de código HTML <https://html5-editor.net/>`__



Resultado
---------

.. image:: html/_thumbs/html-body-web.png
