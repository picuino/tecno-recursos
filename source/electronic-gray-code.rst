:Date: 21/02/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-gray-code:

Código Gray
===========
El `código Gray <https://es.wikipedia.org/wiki/C%C3%B3digo_Gray>`__,
también llamado código binario reflejado, es un sistema de numeración
binario que destaca porque dos números consecutivos se diferencian 
en un solo dígito.
Esta propiedad le da ventajas a la hora de evitar falsos cambios 
en aplicaciones electromecánicas o de corrección de errores.


Aplicaciones del código Gray
----------------------------

Encoder absolutos
   Los encoder son aparatos que detectan el giro que ha realizado un eje.
   Para detectar el giro se utiliza un disco transparente en algunos
   puntos y opaco en otros puntos.
   Unos sensores ópticos son capaces de reconocer la posición del eje
   según el código Gray que están leyendo.
   
   En esta aplicación se utiliza el código Gray para evitar cambios
   bruscos de varios puntos del disco al girar el eje.
   Gracias a la propiedad del código Gray de cambiar solo un bit a la vez,
   se consiguen evitar combinaciones transitorias que den lecturas falsas.
   
   .. figure:: electronic/_images/electronic-encoder-gray.png
      :align: center
      :width: 320px

      Disco de encoder absoluto, que utiliza código Gray para evitar
      falsas lecturas durante el giro. Las zonas oscuras equivalen a
      un cero binario y las zonas claras equivalen a un uno binario.


Mapas de Karnaugh
   Más adelante estudiaremos la simplificación de funciones lógicas con
   mapas de Karnaugh. Estos mapas utilizan el código Gray para representar
   la tabla de verdad de una función lógica, de manera que aparezcan juntos
   los cambios de un solo bit.


Otras aplicaciones
   * Resolver puzles matemáticos, como las torres de Hanoi.
   * Códigos de telegrafía.
   * Conversión de Analógico a Digital.
   * Corrección de errores en comunicaciones digitales.


Tablas de código Gray
---------------------
La tabla de código gray de **1 bit** es inmediata:

   .. list-table::
      :widths: auto
      :header-rows: 1

      * - Número
        - Código Gray
      * - 0
        - 0
      * - 1
        - 1

La tabla de código gray de **2 bits** se forma copiando la tabla anterior
de manera que los bits de menor peso estén "reflejados" verticalmente y 
los bits de mayor peso (a la izquierda) serán el número 0 en la primera
mitad superior de la tabla y el número 1 en la mitad inferior de la tabla:

   .. list-table::
      :widths: auto
      :header-rows: 1

      * - Número
        - Código Gray
      * - 0
        - 0 0
      * - 1
        - 0 1
      * - 2
        - 1 1
      * - 3
        - 1 0

Para formar la tabla, por lo tanto, reflejamos verticalmente los valores
binarios y añadimos 0 arriba y 1 debajo::

   0  0
   0  1
     ---  // Reflejo vertical
   1  1
   1  0
   

La tabla de código Gray de **3 bits** se forma de igual manera, a partir
de la tabla de 2 bits "reflejada" verticalmente y añadiendo 0 en el bit
de mayor peso de la mitad superior y añadiendo 1 al bit de mayor peso de
la mitad inferior:

   .. list-table::
      :widths: auto
      :header-rows: 1

      * - Número
        - Código Gray
      * - 0
        - 0 0 0
      * - 1
        - 0 0 1
      * - 2
        - 0 1 1
      * - 3
        - 0 1 0
      * - 4
        - 1 1 0
      * - 5
        - 1 1 1
      * - 6
        - 1 0 1
      * - 7
        - 1 0 0

Para formar la tabla, por lo tanto, reflejamos verticalmente los valores
binarios de la tabla de 2 bits y añadimos 0 arriba y 1 debajo::

   0   0  0
   0   0  1
   0   1  1
   0   1  0
      ------  // Reflejo vertical
   1   1  0
   1   1  1
   1   0  1
   1   0  0


Tabla de código Gray de **4 bits**:

   .. list-table::
      :widths: auto
      :header-rows: 1
   
      * - Número
        - Código Gray
      * - 0
        - 0 0 0 0
      * - 1
        - 0 0 0 1
      * - 2
        - 0 0 1 1
      * - 3
        - 0 0 1 0
      * - 4
        - 0 1 1 0
      * - 5
        - 0 1 1 1
      * - 6
        - 0 1 0 1
      * - 7
        - 0 1 0 0
      * - 8
        - 1 1 0 0
      * - 9
        - 1 1 0 1
      * - 10
        - 1 1 1 1
      * - 11
        - 1 1 1 0
      * - 12
        - 1 0 1 0
      * - 13
        - 1 0 1 1
      * - 14
        - 1 0 0 1
      * - 15
        - 1 0 0 0


Ejercicios
----------

#. ¿Qué es el código Gray?

#. ¿Qué aplicaciones tiene el código Gray?

#. Dibuja el disco de un encoder absoluto con código Gray de 3 bits.

#. ¿Por qué se utiliza el código Gray y no un código binario estándar
   en los discos de los encoder absolutos?

#. Dibuja una tabla de código Gray de 4 bits (desde 0 hasta 16), 
   junto a código binario estándar.

#. Dibuja una tabla de código Gray de 5 bits (desde 0 hasta 31).


