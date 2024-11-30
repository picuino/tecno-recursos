:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

:orphan:

.. arduino-faq-misconceptions:

Arduino, dudas y conceptos erróneos
===================================
Aparecen aquí agrupadas respuestas a diversas dudas sobre Arduino
así como explicaciones a conceptos erróneos bastante extendidos.


¿Qué es Arduino?
----------------
Arduino es una marca registrada. Al igual que IBM, Apple o Samsung,
Arduino fabrica y distribuye varios productos tecnológicos bajo
su marca [#arduino_trademark]_.
Cuando una tienda o distribuidor elige vender o distribuir
productos Arduino, debe firmar un acuerdo exclusivo con la empresa,
que le impide vender placas iguales a Arduino fabricadas por terceros.
De esta forma Arduino protege sus ventas porque todos sus
productos son de hardware y software libre y por lo tanto es legal
realizar copias exactas de sus productos y de hecho existen muchos
ejemplos en el mercado a precios más bajos.

Por lo tanto, es legal fabricar y distribuir copias los productos
Arduino tanto en hardware como en software.
Pero no es legal utilizar la marca Arduino para referirse a esos
productos.
Tampoco se podrán distribuir esas copias en tiendas y distribuidores
que hayan firmado acuerdos exclusivos de distribución con Arduino.
Por último, el número identificador de USB utilizado por los productos
Arduino, pertenece a la empresa de Arduino y no se puede utilizar
en productos copiados.

Debido a ciertas disputas por la marca entre los diseñadores
originales de Arduino, parte de estos han utilizado la marca Genuino
para nombrar a los productos Arduino.


¿Qué productos engloba la marca Arduino?
----------------------------------------
El producto más conocido de Arduino es una placa de desarrollo
denominada Arduino UNO.
Esta placa hardware está basada en un microcontrolador de 8 bit
Atmega328A e incluye una conexión USB para conectar la placa con un
ordenador.

Para dar soporte a esta placa se programó un entorno de desarrollo de
manejo sencillo y de código abierto, basado en el proyecto
`Wiring <https://es.wikipedia.org/wiki/Wiring>`__.

Esta placa Arduino puede ampliarse mediante otras placas, denominadas
Shield porque van conectadas sobre la placa de desarrollo tapándola.
Estos Shield añaden nuevas funciones a la placa original, como
conexión a Ethernet, control de motores DC o paso a paso, conexión
a tarjetas de memoria, etc.

Hoy en día `la oferta se ha ampliado bastante
<https://www.arduino.cc/en/Main/Products>`__ y podemos encontrar muchos
productos distintos:

* Placas de desarrollo de 8 bit
   * Arduino Uno
   * Arduino Leonardo
   * Arduino Mega
   * Arduino Nano
   * Arduino Esplora
   * Lilypad USB

* Placas de desarrollo de 32 bits
   * Arduino DUE
   * Arduino Zero
   * Arduino Yun

* Shields
   * Motor Shield
   * Proto Shield
   * Relay Shield
   * Wireless Shield
   * Ethernet Shield
   * GSM Shield
   * Yun Shield

* Kits de desarrollo
   * Starter kit
   * CTC 101
   * MKR IoT Bundle

* Entorno de programación Arduino IDE

* Librerías de programación


¿Todos los productos Arduino deben utilizarse juntos?
-----------------------------------------------------
No es obligatorio. Cuando se realiza un desarrollo típico con
una placa Arduino UNO, en realidad se están utilizando muchos
elementos distintos, todos ellos de marca Arduino, pero que
pueden sustituirse sin problema por elementos distintos.

Primero vamos a ver qué elementos se utilizan en un proyecto
típico de Arduino:

  1 Placa de desarrollo Arduino UNO
  2 Entorno de programación Arduino IDE
  3 Librerías de Arduino para la placa Arduino UNO
  4 Compilador C++ (AVR-GCC)
  5 Comunicación USB
  6 Bootloader de Arduino
  7 Shield Arduino
  8 Librerias Arduino

   * Teensy
   * ChipKIT UNO32



.. [#arduino_trademark] https://www.arduino.cc/en/Trademark/HomePage



