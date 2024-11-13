:Date: 13/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. _html-tags:

Resumen de etiquetas HTML
=========================

Etiquetas básicas
-----------------

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

``<!-- Comentario -->``
   Esta etiqueta es un comentario que no se verá en el navegador.
   Sirve para comentar aclarar el contenido HTML y facilitar su
   comprensión.


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



Etiquetas de contenido
----------------------

``<p> </p>``
   Etiqueta de párrafo. Engloba un párrafo de texto con varias
   frases consecutivas. Terminan en un punto y aparte.

``<h1> </h1>``
   Encabezado de primer nivel. Equivale a un título de capítulo.

``<h2> </h2>``
   Encabezado de segundo nivel. Equivale a un título de sección.

``<h3> </h3>``
   Encabezado de tercer nivel. Equivale a un título de subsección.

``<h4> </h4>``
   Encabezado de cuarto nivel.



Salto de línea
--------------

``<br>``
   Salto de línea. Lo que esté escrito a continuación aparecerá
   en la siguiente línea en el navegador.

``<hr>``
   Línea horizontal de separación.



Tipos de texto
--------------

``<em> </em>``
   Texto destacado con énfasis.
   El tipo de letra será *itálica*.

``<strong> </strong>``
   Texto importante con énfasis fuerte.
   El tipo de letra será **negrita**.

``<cite> </cite>``
   El texto interior es una cita de otra fuente o de otro autor.

``<blockquote cite="http://"> </blockquote>``
   Etiqueta que incluye una sección de texto que se ha
   copiado de otra página.
   La etiqueta blockquote contiene un atributo cite que
   describe la dirección de donde se ha tomado el texto.
   Normalmente esta sección aparece desplazada hacia la derecha.


``<pre> </pre>``
   Etiqueta de texto preformateado.
   Se preservan todos los espacios y saltos de línea.
   La fuente utilizada es de ancho fijo (monospaced).

``<code> </code>``
   Etiqueta para incluir código para ordenador.
   El tipo de letra será de ancho fijo.



Hipervínculos, imágenes y objetos
---------------------------------

``<a href="salto"> Texto </a>``
   Hipervínculo. En el navegador aparecerá el texto que se encuentra
   entre las etiquetas. Al pinchar sobre el texto, saltará a la
   referencia que contiene href.

``<img src="imagen">``
   Vínculo a una imagen que se insertará en el documento.

``<object data=""> </object>``
   Esta etiqueta inserta en la página HTML un elemento externo
   que puede ser un archivo de texto, un vídeo, sonidos,
   una página web, etc.
   El nombre y ruta del objeto se escribe dentro de el atributo data.

``id="nombre"``
   Este atributo aparece dentro de una etiqueta para darle nombre.
   el nombre tiene que ser único y no repetirse, para distinguir
   las etiquetas entre sí.



Listas y definiciones
---------------------

``<ol> </ol>``
   Etiqueta de lista numerada.

``<ul> </ul>``
   Etiqueta de lista no numerada.

``<li> </li>``
   Etiqueta que contiene un elemento de la lista.


``<dl> </dl>``
   Etiqueta de definición de palabras.

``<dt> </dt>``
   Palabra a definir.

``<dd> </dd>``
   Definición de una palabra.



Tablas de datos
---------------

``<table> </table>``
   Etiqueta de tabla.

``<tr> </tr>``
   Etiqueta una fila dentro de una tabla.

``<thead> </thead>``
   Etiqueta la cabecera de una tabla.
   Está en la primera fila de una tabla.

``<th> </th>``
   Etiqueta cada uno de los elementos de una cabecera de tabla.

``<tbody> </tbody>``
   Cuerpo de una tabla, donde se encuentran los contenidos de la
   tabla. Permite separar la cabecera de los contenidos.

``<td> </td>``
   Etiqueta un elemento de una tabla. Debe estar dentro de una fila.

``<td rowspan=2>``
   Este atributo aparece dentro de un elemento de tabla <td>.
   Permite unir la celda actual con las celdas de la derecha
   de la misma fila, para hacer una sola celda más grande.

``<td colspan=2>``
   Este atributo aparece dentro de un elemento de tabla <td>.
   Permite unir la celda actual con las celdas de abajo
   de la misma columna, para hacer una sola celda más grande.


Plantilla de tabla de datos sin cabecera.

.. code-block:: html

   <table border="1">
      <tbody>
         <tr>
            <td>Uno</td>  <td> 1 </td>
         </tr>
         <tr>
            <td>Dos</td>  <td> 2 </td>
         </tr>
      </tbody>
   </table>


