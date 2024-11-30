:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _troubleshooting-arduino:

Solución de problemas con Arduino
=================================

¿Está conectada la placa Arduino?
---------------------------------
El cable USB debe estar conectado al ordenador y a la placa Arduino.
El ordenador debe estar encendido.

Si todo ha salido bien, la placa Arduino muestra un led encendido
llamado led de **Power ON**:


.. only:: html

   .. image:: _images/img-0099.jpg
      :width: 400px
      :alt: Ledes de la placa Arduino UNO.
      :align: center

.. only:: latex

   .. figure:: _images/img-0099.jpg
      :alt: Ledes de la placa Arduino UNO.
      :width: 400px
      :align: center


¿Está instalado el entorno de Arduino?
--------------------------------------
El entorno Arduino IDE se puede descargar desde la página oficial del
proyecto en la pestaña 'software', pulsando el sistema operativo
adecuado en el apartado 'Download the Arduino IDE':

  https://www.arduino.cc/es/Software

Una vez descargado el programa, se debe instalar en el ordenador.
También es necesario instalar los drivers para que el ordenador
reconozca la placa Arduino cuando se conecte a un puerto USB.

.. image:: _images/arduino-desktop-icon.png
   :alt: Icono del entorno IDE de Arduino.
   :align: center


¿Está configurada la placa correcta?
--------------------------------------
En el menú ``Herramientas... Placa:`` o en las versiones antiguas
``Herramientas... Tarjeta...`` hay que configurar la misma placa
Arduino que esté conectada al ordenador.
El modelo más habitual es `Arduino Uno`, pero depende de la placa que
se conecte.

Tanto la placa como el puerto seleccionados pueden verse
la esquina inferior derecha del entorno Arduino:

.. only:: html

   .. image:: _images/img-0037_board.png
      :align: center
      :alt: Configuración de placa y puerto de comunicación serie.

.. only:: latex

   .. figure:: _images/img-0037_board.png
      :width: 400px
      :align: center
      :alt: Configuración de placa y puerto de comunicación serie.


¿Está configurado el puerto correcto?
-------------------------------------
En el ordenador existen varios puertos serie.
Solo uno de esos puertos serie pertenece a la placa Arduino y ese es
el que debemos configurar.

El puerto de comunicaciones seleccionado puede verse en
la esquina inferior derecha del entorno Arduino:

.. only:: html

   .. image:: _images/img-0037_port.png
      :align: center
      :alt: Configuración de placa y puerto de comunicación serie.

.. only:: latex

   .. figure:: _images/img-0037_port.png
      :width: 400px
      :align: center
      :alt: Configuración de placa y puerto de comunicación serie.

Para cambiarlo hay que pulsar el puerto adecuado el menú
``Herramientas... Puerto...``

Para comprobar que el puerto está bien configurado, se puede abrir
el monitor serie, y los ledes de comunicaciones de la placa Arduino
deben parpadear.
Otra prueba consiste en intentar enviar un programa.
Mientras carga el programa, los ledes de comunicaciones deben
parpadear.


¿Están instalados los drivers adecuados?
----------------------------------------
Si el entorno de Arduino ya está instalado y el ordenador no reconoce
la placa Arduino al conectarla, el problema puede resolverse
instalando los drivers que vienen con el software del entorno Arduino.

A continuación se ofrecen varias versiones de los drivers para
Arduino.
Después de descargar el archivo, se debe descomprimir y ejecutar el
software de instalación.

   :download:`Arduino 1.8.1 Drivers para Windows
   <_downloads/arduino-1813-win-drivers.zip>`

   :download:`Arduino 1.0.6 Drivers para Windows
   <_downloads/arduino-106-win-drivers.zip>`


Si se utiliza una placa compatible con Arduino con un chip de
comunicaciones **CH340**, es necesario instalar otro driver diferente
al estándar:

   :download:`Chip de comunicaciones CH340. Driver para Windows
   <_downloads/CH340-win-driver-v31.zip>`

   `Página de Microsoft para descargar el driver CH340
   <http://catalog.update.microsoft.com/v7/site/ScopedViewRedirect.aspx?updateid=be9c8169-b12b-475f-81b8-3d3e69181e8c>`__


¿Existe un cortocircuito?
-------------------------
Si la placa Arduino parece estar correctamente conectada y a pesar de
ello el led de encendido permanece apagado, es posible que los cables
conectados a Arduino estén mal conectados y provoquen un
cortocircuito.
Para comprobar este error se debe desconectar el cable conectado al
terminal de '5v' y el cable conectado al terminal 'Vin'.


¿Funcionan las comunicaciones del cable USB?
--------------------------------------------
Otro problema que puede surgir con el cable USB consiste en que los
hilos de comunicaciones estén cortados mientras que los hilos de
alimentación funcionen correctamente.
En este caso el led de la placa Arduino se encenderá, pero el
ordenador no reconocerá la placa y no funcionarán las comunicaciones.

La forma más sencilla de comprobar que no existen problemas con
el cable USB es conectar este cable a otro aparato que funcione
correctamente o cambiar el cable por otro y comprobar que todo
funciona bien.


Comprobar si la placa Arduino está bien instalada
-------------------------------------------------
Para asegurar que la placa Arduino está bien instalada y todo
funciona correctamente, se seguirán los siguientes pasos:

1. Abrir el entorno IDE de Arduino pulsando sobre su icono:

   .. image:: _images/arduino-desktop-icon.png
      :alt: Icono del entorno IDE de Arduino.

2. Abrir un programa de ejemplo pulsando en el menú
   ``Archivo... Ejemplos... 01.Basics... Blink``.

   También se puede copiar y pegar el siguiente programa en el
   entorno de Arduino.

   .. code-block:: Arduino
      :linenos:

      // Blink Program
      void setup() { pinMode(LED_BUILTIN, OUTPUT); }

      void loop() {
        digitalWrite(LED_BUILTIN, HIGH); // turn the LED On
        delay(1000);                     // wait for a second
        digitalWrite(LED_BUILTIN, LOW);  // turn the LED Off
        delay(1000);                     // wait for a second
      }

3. Por último, pulsar en el menú ``Programa... Subir (CTRL+U)``
   para transferir el programa a la placa Arduino.

Si todo ha funcionado correctamente, el led de la placa Arduino
comenzará a parpadear con un tiempo encendido de un segundo y
un tiempo apagado de otro segundo.
