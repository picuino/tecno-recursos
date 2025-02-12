:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _pc42-install:

Instalación del panel de control PC42
=====================================


Objetivos
---------
* Conectar el panel de control PC42 a una placa Arduino
* Instalar las :download:`librerías necesarias para programar el
  panel PC42 <_downloads/PC42.zip>`
* Instalar la :download:`herramienta Ardublock-Picuino
  <_downloads/ardublock-picuino.zip>`
  para programar con bloques gráficos
* Instalar otras `librerías auxiliares de Arduino.
  <../../_static/downloads/arduino-libraries.zip>`__


Instalación
-----------
Para instalar el panel de control Picuino PC42 es necesario realizar
dos operaciones:

* Conectar el panel PC42 a un Arduino mediante 4 cables macho-hembra
* Instalar la librería de control PC42

Además se puede añadir la herramienta Ardublock de programación por
bloques.


Conexión con Arduino UNO
------------------------

.. only:: html

   .. image:: _thumbs/img-0088.jpg
      :width: 480px
      :alt: Conexión Arduino UNO con Panel PC42 r3.
      :align: center

.. only:: latex

   .. figure:: _images/img-0088.jpg
      :width: 520px
      :alt: Conexión Arduino UNO con Panel PC42 r3.
      :align: center


Las conexiones necesarias para comunicar la placa Arduino UNO con
el panel PC42 se listan en la siguiente tabla:

   +-------+-----------+--------------------+--------------------+
   | Pin   | Color     | Panel PC42         | Arduino UNO        |
   +=======+===========+====================+====================+
   | 1     | Azul      |  Vdd  +5V          |  Vdd  +5V          |
   +-------+-----------+--------------------+--------------------+
   | 2     | Azul      |  SDA               |  A4                |
   +-------+-----------+--------------------+--------------------+
   | 3     | Azul      |  SCL               |  A5                |
   +-------+-----------+--------------------+--------------------+
   | 4     | Marrón    |  GND   0V          |  GND   0V          |
   +-------+-----------+--------------------+--------------------+

Las conexiones del panel PC42 están protegidas contra inversión de
polaridad, de manera que el panel no se dañará aunque se intercambien
los cables entre sí.
La única conexión que puede causar daños permanentes en el panel es
una alimentación por encima de 5 voltios, que se puede encontrar en
el pin "Vin" de Arduino cuando este es alimentado con batería externa.


Conexión con Arduino Nano
-------------------------

.. only:: html

   .. image:: _images/pc42-r3-to-nano.jpg
      :width: 480px
      :alt: Conexión Arduino Nano con Panel PC42 r3.
      :align: center

.. only:: latex

   .. figure:: _images/pc42-r3-to-nano.jpg
      :width: 520px
      :alt: Conexión Arduino Nano con Panel PC42 r3.
      :align: center


Las conexiones necesarias para comunicar la placa Arduino Nano con
el panel PC42 se listan en la siguiente tabla:

   +-------+-----------+--------------------+--------------------+
   | Pin   | Color     | Panel PC42         | Arduino Nano       |
   +=======+===========+====================+====================+
   | 1     | Azul      |  Vdd  +5V          |  Vdd  +5V          |
   +-------+-----------+--------------------+--------------------+
   | 2     | Azul      |  SDA               |  A4                |
   +-------+-----------+--------------------+--------------------+
   | 3     | Azul      |  SCL               |  A5                |
   +-------+-----------+--------------------+--------------------+
   | 4     | Marrón    |  GND   0V          |  GND   0V          |
   +-------+-----------+--------------------+--------------------+


Instalación del entorno Arduino
-------------------------------
Para poder trabajar con la placa Arduino es necesario instalar el
software de programación de Arduino y los drivers correspondientes.

En la sección de
:ref:`solución de problemas con Arduino <troubleshooting-arduino>`
se pueden encontrar todos los pasos para instalar el software de la
placa Arduino y resolver los errores de instalación más frecuentes.


Instalación de la librería para el panel PC42
---------------------------------------------

Para que el panel de control PC42 pueda funcionar es necesario
descargar e instalar una librería para Arduino.

  1. Descargar la librería del panel de control PC42 para Arduino.

     :download:`Librería PC42 r3 <_downloads/PC42.zip>`

  2. Seguir los pasos de instalación descritos en la siguiente página.

     :ref:`add-library`


Instalación de Ardublock
------------------------

Ardublock es una herramienta para Arduino que permite programar con
bloques gráficos. Está orientada para facilitar la programación a los
usuarios sin experiencia, simplificando mucho la tarea de realizar
programas con un sencillo entorno gráfico.

.. image:: _images/ardublock-1-4-2.png
   :width: 640px
   :alt: Ardublock Picuino versión 1.4.2.
   :align: center

La versión de Ardublock-Picuino es aún más simple que el proyecto
Ardublock original y contiene las instrucciones necesarias para la
programación del panel de control PC42.

Para instalar la última versión de Ardublock-Picuino hay que seguir
los siguentes pasos:

  1. Descargar la :download:`herramienta Ardublock-Picuino
     <_downloads/ardublock-picuino.zip>`
  2. Copiar el archivo en el directorio de Arduino.
     El directorio se puede encontrar en el entorno de Arduino,
     pulsando el menú:

     ``Archivo... Preferencias... Localización del proyecto``.
  3. Descomprir el archivo en el directorio de Arduino.
  4. Cerrar y volver a abrir el entorno de Arduino.
     La nueva herramienta debe aparecer en el menú:

     ``Herramientas... Ardublock``


Instalación de librerías auxiliares para Arduino
------------------------------------------------

Estas librerías permiten que la placa Arduino controle periféricos
tales como un un panel visualizador LCD o emisores y receptores
infrarrojos.

`Archivo de librerías para Arduino.
<../../_static/downloads/arduino-libraries.zip>`__

En este paquete se pueden encontrar juntas las siguientes librerías:

  * :download:`dht11 <_downloads/dht11.zip>`
    control del sensor de humedad y temperatura DHT11
  * :download:`IRremote <_downloads/IRremote.zip>`
    control de emisores y receptores de infrarrojos
  * :download:`LiquidCrystal <_downloads/LiquidCrystal.zip>`
    control de paneles visualizadores LCD
  * :download:`NewliquidCrystal <_downloads/NewliquidCrystal.zip>`
    control de paneles visualizadores LCD
  * :download:`SCoop <_downloads/SCoop.zip>`
    programación multitarea
  * :download:`SDPlus <_downloads/SDPlus.zip>`
    manejo de memorias SD
  * :download:`makeblock <_downloads/makeblock.zip>`
    manejo de robots y gadgets de Makeblock
  * :download:`PC42 <_downloads/PC42.zip>`
    manejo del panel de control Picuino PC42

Para **instalar todas las librerías a la vez**, hay que seguir los
siguientes pasos:

  1. Descargar el `archivo con las librerías para Arduino
     <../../_static/downloads/arduino-libraries.zip>`__
  2. Copiar el archivo en el directorio de Arduino.
     El directorio se puede encontrar en el entorno de Arduino,
     pulsando el menú:

     ``Archivo... Preferencias... Localización del proyecto``.
  3. Descomprir el archivo en el directorio de Arduino.
  4. Cerrar y volver a abrir el entorno de Arduino.
     Las nuevas librerías deben aparecer en el menú:

     ``Programa... Incluir librería...``


Para instalar librerías individuales utilizando el entorno Arduino,
se puede leer el siguiente enlace sobre
:ref:`cómo añadir una librería al entorno Arduino <add-library>`.
