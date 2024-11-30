:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _component-kit:

Componentes para realizar proyectos con Arduino
===============================================

En esta página se van a recopilar los principales componentes
electrónicos necesarios para realizar proyectos con Arduino.

Al confeccionar esta lista se ha intentado abarcar los componentes
necesarios para que se puedan realizar la mayor cantidad y variedad
de proyectos con la menor cantidad de componentes posible.
Muchos proyectos se pueden realizar con menos componentes y
algunos componentes de cierta relevancia no están en esta lista.
El objetivo es llegar a un buen compromiso para que este kit
consiga la mejor relación calidad/precio posible.


Componentes electrónicos para Arduino
-------------------------------------

+----------+------------------------------------------------------------------------------------------------------------+
| Cantidad | Componente                                                                                                 |
+==========+============================================================================================================+
| **Controlador**                                                                                                       |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Placa `Arduino UNO <https://store.arduino.cc/products/arduino-uno-rev3>`__                                 |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Cable de comunicaciones `USB con terminaciones A y B                                                       |
|          | <../_downloads/arduino-uno-cable-usb.jpg>`__                                                               |
+----------+------------------------------------------------------------------------------------------------------------+
| **Digital**                                                                                                           |
+----------+------------------------------------------------------------------------------------------------------------+
| 5        | Ledes de varios colores, de alta luminosidad.                                                              |
|          | Rojo, Verde, Amarillo, Azul, Blanco.                                                                       |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Led tricolor  RGB de tipo ánodo común.                                                                     |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Display led de 7 segmentos.                                                                                |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | | Visualizador LCD alfanumérico 16x2.                                                                      |
|          | | Conversor de comunicación I2C a display LCD                                                              |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Panel de control Picuino PC42.                                                                             |
+----------+------------------------------------------------------------------------------------------------------------+
| 5        | Pulsadores normalmente abiertos para montaje sobre                                                         |
|          | circuito impreso.                                                                                          |
+----------+------------------------------------------------------------------------------------------------------------+
| **Actuadores**                                                                                                        |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Zumbador piezoeléctrico o electromecánico.                                                                 |
+----------+------------------------------------------------------------------------------------------------------------+
| 2        | Servomotor Tower-Pro SG90 9G.                                                                              |
+----------+------------------------------------------------------------------------------------------------------------+
| 2        | Transistor de potencia BD135-16                                                                            |
+----------+------------------------------------------------------------------------------------------------------------+
| 2        | Diodo 1N4007.                                                                                              |
+----------+------------------------------------------------------------------------------------------------------------+
| 2        | Motor de corriente continua con reductora.                                                                 |
+----------+------------------------------------------------------------------------------------------------------------+
| **Sensores**                                                                                                          |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Sensor de distancia por ultrasonidos SR-04,                                                                |
|          | SRF-05 o similar                                                                                           |
+----------+------------------------------------------------------------------------------------------------------------+
| 2        | | Resistencia LDR detectora de luz con resistencia                                                         |
|          |   nominal de 10k Ohmios.                                                                                   |
|          | | Fotodiodo (necesita electrónica añadida para                                                             |
|          |   acondicionar la señal)                                                                                   |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Resistencia NTC detectora de temperatura con                                                               |
|          | resistencia nominal de 10k Ohmios.                                                                         |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Potenciómetro giratorio de 10k Ohmios.                                                                     |
+----------+------------------------------------------------------------------------------------------------------------+
| **Comunicaciones**                                                                                                    |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Sensor de infrarrojos TSOP4838 o similar.                                                                  |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Diodo emisor de infrarrojos.                                                                               |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Mando a distancia de infrarrojos.                                                                          |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Módulo de comunicaciones Bluetooth                                                                         |
|          | con adaptador para 5 voltios                                                                               |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Módulo de comunicaciones WiFi ESP8266.                                                                     |
|          | (necesita regulador de tensión a 3,3v)                                                                     |
+----------+------------------------------------------------------------------------------------------------------------+
| **Otros componentes**                                                                                                 |
+----------+------------------------------------------------------------------------------------------------------------+
| 1        | Placa de prototipos (Breadboard) de 400 o más contactos                                                    |
+----------+------------------------------------------------------------------------------------------------------------+
| 20       | Cables flexibles tipo dupont macho-macho.                                                                  |
+----------+------------------------------------------------------------------------------------------------------------+
| 10       | Cables flexibles tipo dupont macho-hembra.                                                                 |
+----------+------------------------------------------------------------------------------------------------------------+
| 10       | Resistencias de polarización de 220 Ohmios.                                                                |
+----------+------------------------------------------------------------------------------------------------------------+
| 10       | Resistencias de polarización de 10k Ohmios.                                                                |
+----------+------------------------------------------------------------------------------------------------------------+
| 5        | Condensadores sin polaridad de 1uF y 16 voltios.                                                           |
+----------+------------------------------------------------------------------------------------------------------------+
| 2        | Condensadores electrolíticos de 100uF y 16 voltios.                                                        |
+----------+------------------------------------------------------------------------------------------------------------+


1. Las resistencias de polarización para los led pueden valer entre
   180 Ohm y 680 Ohm.
   No convienen utilizar valores menores para que en ningún caso se
   sobrepasen los 20 miliamperios que soporta como máximo un led típico
   sin fundirse.
   Valores de resistencia mayores, producen poca luz.

2. La placa de control **Arduino Nano** es más barata, más pequeña y puede
   insertarse en una placa de prototipos simplificando el montaje del
   circuito completo.

   Los inconvenientes de esta placa son que tiene menor capacidad de
   corriente de alimentación en el regulador de 3,3 voltios y que la
   alimentación de 5v desde el USB tiene caída de tensión, menor capacidad
   de corriente (0,5A del MBR0520)y no tiene fusible reseteable.

   Cuando la placa Arduino Nano se alimenta desde el USB y hay una
   sobrecarga, **el diodo interno se funde** y la placa deja de funcionar
   con alimentación desde el USB.
   La placa seguirá funcionando solo si se alimenta externamente con pilas.

3. Los sensores de luz más sencillos de utilizar son las resistencias LDR.
   Por desgracia, estas resistencias contienen un metal muy contaminante,
   el cadmio. Esta es la razón de que muchos suministradores de componentes
   electrónicos no las incluyan ya en su catálogo. El sustituto de este sensor
   es el fotodiodo, pero su linealidad hace que sea más difícil de manejar
   en entornos con cambios grandes de luminosidad. Además los fotodiodos
   entregan una señal de muy baja corriente que es necesario amplificar
   con un circuito electrónico añadido.


Proyectos y componentes necesarios
----------------------------------

Se presentan a continuación algunos proyectos de ejemplo y los
componentes electrónicos necesarios para realizarlos.

1. Robot sigue-líneas.

   Dos motores de corriente continua con reductora.

   Dos sensores de luz (LDR) para detectar la línea del suelo.

En todos los casos será necesario añadir el controlador (Arduino UNO)


Downloads
---------
:download:`Cable USB para Arduino Uno <_images/arduino-uno-cable-usb.jpg>`
