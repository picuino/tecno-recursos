
{%- import 'html-macros.txt' as macros -%}

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

{{ macros.tag('html') }}
{{ macros.tag('head') }}
{{ macros.tag('title') }}
{{ macros.tag('body') }}
{{ macros.tag('p') }}


Código de la página
-------------------

.. image:: html/_thumbs/html-body-html.png

{{ macros.tag('html_template') }}

{{ macros.editor_online() }}


Resultado
---------

.. image:: html/_thumbs/html-body-web.png

