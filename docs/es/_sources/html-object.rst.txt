:Date: 13/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. _html-object:

Objetos externos
================


Etiquetas utilizadas
--------------------

``<object data=""> </object>``
   Esta etiqueta inserta en la página HTML un elemento externo
   que puede ser un archivo de texto, un vídeo, sonidos,
   una página web, etc.
   El nombre y ruta del objeto se escribe dentro de el atributo data.

``<iframe src=""> </object>``
   Esta etiqueta inserta un documento externo en la página
   HTML actual.
   Para insertar un vídeo de Youtube, hay que pinchar sobre el
   vídeo con el botón derecho del ratón y seleccionar la opción
   'Copiar código de inserción'.
   Por último se pega ese código dentro del documento HTML.


| Descargas:
| :download:`Página HTML a insertar. <html/html-object2.html>`

Código Youtube.

.. code-block:: html

   <!-- Vídeo de Youtube insertado -->
   <iframe width="320" height="180"
   src="https://www.youtube.com/embed/cqMfPS8jPys"
   frameborder="0" allow="accelerometer; autoplay;
   encrypted-media; gyroscope; picture-in-picture"
   allowfullscreen></iframe>


Código de la página
-------------------

.. image:: html/_thumbs/html-object-html.png


.. `Editor online de código HTML <https://html5-editor.net/>`__



Resultado
---------

.. image:: html/_thumbs/html-object-youtube-web.png
