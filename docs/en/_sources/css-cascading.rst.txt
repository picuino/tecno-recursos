:Date: 13/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. css-cascading:

Estilos en cascada
==================
CSS son las siglas de Hoja de Estilos en Cascada
(Cascading Style Sheet).
Esto significa que los estilos se heredan en cascada desde las
secciones superiores hasta los elementos que se encuentran dentro
de ellas.

Por ejemplo, si hay un párrafo dentro de una lista:
``<li> <p>Párrafo</p> </li>``
El párrafo heredará los estilos que se han aplicado a la lista.


En este ejercicio vamos a introducir un bloque dentro de otro como en
una 'matrioska' o muñeca rusa, de manera que los bloques interiores
van a ir heredando todos los estilos del bloque donde se
encuentran.


Ejercicio
---------

Fichero **css-cascading.html**

.. literalinclude:: css/css-cascading.html
   :language: html
   :linenos:
   :name: css-cascading


Fichero **css-cascading.css**

.. image:: css/_images/css-cascading-css.png
   :alt: Código del fichero css-cascading.css


Resultado
---------

.. image:: css/_images/css-cascading-web.png
   :alt: Resultado de visualizar los ficheros css-cascading.html y css-cascading.css
         en un navegador



