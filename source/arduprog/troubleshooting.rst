:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _troubleshooting:

Solución de problemas
=====================

Lo más habitual es que los programas y circuitos no funcionen en el
primer intento.
Esto le ocurre hasta a los más experimentados, nadie se libra de la
`ley de Murphy <https://es.wikipedia.org/wiki/Ley_de_Murphy>`__.

Los fallos más frecuentes y también los más difíciles de encontrar,
suelen ser a su vez los más simples.
Son fallos del tipo ¿por qué no funciona esta televisión? sin darse
cuenta de que no está conectada.

A continuación se presenta una lista de los errores más comunes para
que pueda servir de guía para encontrar esos fallos que se resisten y
tanto trabajo dan.

¿Está Conectado?
----------------
Hay múltiples versiones de este fallo tan común.
En este punto hay que destacar que la comprobación debe hacerse de
forma que se asegure la buena conexión con total fiabilidad.
No basta con mirar si el cable está en su sitio. También hay que
comprobar que existe continuidad, se debe comprobar con un polímetro
que llega la señal y que no hay otras conexiones indeseadas, como un
cortocircuito.
Antes de continuar buscando fallos más complejos debe quedar
completamente comprobado que la conexión es correcta.
A continuación se encuentra una lista con versiones muy comunes de
este problema.


¿Está conectada la alimentación y tiene la tensión correcta?
------------------------------------------------------------
La comprobación más sencilla y más segura consiste en medir la
tensión de alimentación del circuito con un polímetro.
Si el circuito dispone de un led para comprobar la presencia de
alimentación también servirá de ayuda, pero con un led no se puede
asegurar que la tensión es la correcta.

En general no es suficiente saber que el circuito está conectado,
porque esto puede despistar.
Imaginemos una placa conectada a un cable USB que la alimenta.
Evidentemente la placa está conectada, pero
¿Está conectado el otro extremo del cable?
¿El hub al que está conectado el cable está a su vez conectado al
ordenador?
¿El ordenador está en marcha?
¿Alguno de los cables está cortado?
¿Alguno de los interruptores de encendido no está en posición
encendido o se ha quedado a medio camino?
Lo más seguro es comprobar la tensión de alimentación en el circuito
final.


¿Está conectada la señal analógica?
-----------------------------------
Al igual que en el punto anterior, lo más seguro es medir con un
polímetro el nivel de señal que llega al circuito.
Al intentar medir una señal analógica, siempre mide lo mismo o solo
se recibe ruido.
En este caso hay que comprobar varias conexiones:

 * ¿Está conectada la masa?
 * ¿Están conectadas las señales de referencia de tensión V+ y V-?
 * ¿Tiene continuidad el cable que va desde el sensor hasta el
   microcontrolador?
 * ¿Hay algún cortocircuito que no permite que llegue la señal?


¿Está conectada la señal a la patilla correcta?
-----------------------------------------------
La primera entrada del puerto RA es RA0 y la segunda RA1 esto puede
llevar a confusión en alguna ocasión ¿Está la señal conectada a su
entrada?
Si hay una confusión en el puerto de entrada/salida comienzan los
problemas ¿Está conectada a RA o a RB?
En algunos microcontroladores es posible asignar las entradas/salidas
a las patillas por software ¿Está bien configurada la patilla de
entrada/salida?

¿Está conectada la resistencia de Pull-Up o Pull-Down?
------------------------------------------------------
Ciertas salidas necesitan tener una resistencia conectada a la
alimentación para que la salida pueda dar señal. Es el caso de
algunos circuitos comparadores como el LM311 (salida en colector
abierto) o algunas salidas especiales de microcontroladores
(salida en drenador abierto).
La mejor forma de comprobar el funcionamiento correcto es comprobar
la tensión en la patilla con un polímetro.
En estos casos una lectura detallada de la hoja de características
(datasheet) puede evitar cometer este fallo.


¿Está configurada la patilla como entrada o como salida?
--------------------------------------------------------
Una confusión en la configuración y podemos pasar horas buscando el
problema.
Lo más sencillo es comprobar primero la configuración de los pines de
entrada y salida.

 * ¿Está correctamente configurado el pin MCLR?
 * ¿Está correctamente configurado el pin LVP para programación con
   bajo voltaje?


¿Hay alguna entrada al aire que recoja ruido ambiente?
------------------------------------------------------
Se debe asegurar que todas las entradas digitales y las entradas
analógicas estén por defecto conectadas a masa.
Las entradas al aire pueden provocar fallos intermitentes muy
difíciles de encontrar y mayor consumo del circuito.
En especial los pines MCLR y LPV pueden provocar fallos que provocan
el reset del microcontrolador si no están correctamente configurados
y conectados a Vdd o GND.


¿Está la polaridad cambiada?
----------------------------
Ciertos conectores obligan a conectar una polaridad concreta.
En otros casos, un conector tiene una sola posición pero los cables
están cambiados de lugar.
Una alimentación invertida puede destruir el circuito y una señal
analógica con polaridad invertida no funcionará. ¿La polaridad es
correcta?

Las entradas digitales pueden estar activas a nivel alto o a nivel
bajo.
¿Es el nivel lógico correcto?

Si la patilla de reset /MCLR está conectada con una resistencia a
masa y un pulsador al positivo (al revés de su conexión normal) a
partir de ahí no funcionará nada.
No es frecuente cometer ese error y por la misma razón se puede
perder mucho tiempo intentando encontrar este fallo.

Si un puerto del microcontrolador está configurado con entradas en
Pull-up (resistencias a positivo) y se conectan los pulsadores
externos al positivo de la alimentación... no funcionará ninguno.


¿Hay cortocircuito?
-------------------
Puede que el polímetro señale continuidad en los cables, pero si hay
un cortocircuito entre medias entonces el circuito no funcionará.
Para comprobar la continuidad de un componente, hay que desconectar
el componente del circuito. Hay que comprobar que no existen
cortocircuitos antes de comprobar si existe continuidad.

Si este error es frecuente, hay aparatos específicos para comprobar
cortocircuitos.
Desde un sencillo milióhmetro hasta un complejo
`reflectómetro de dominio de tiempo
<https://es.wikipedia.org/wiki/Reflect%C3%B3metro_de_dominio_de_tiempo>`__


¿Se ha comprobado con seguridad?
--------------------------------
Vale la pena insistir de nuevo en este punto. En muchas ocasiones se
da por supuesto que existe conexión solo porque vemos el cable en su
sitio.
Esto no es suficiente. La comprobación puede llevar muy poco tiempo y
ahorrar bastante esfuerzo y algún dolor de cabeza.

Es fácil "ver" que dos bornas roja y negra están correctamente
conectadas al polímetro... hasta que una mirada más atenta permite
ver que las bornas están conectadas en modo tensión, mientras se
intenta medir corriente.


¿Las variables y constantes están correctamente configuradas?
-------------------------------------------------------------

Este es un apartado que genera fallos frecuentes y difíciles de
encontrar porque se da por supuesto que debería funcionar
correctamente.
El lenguaje por defecto que se tratará es el C, porque es el lenguaje
de alto nivel más frecuentemente utilizado para programar
microcontroladores.


¿Las variables pueden contener el dato?
---------------------------------------
Un bucle de 1000 repeticiones no podrá hacerse con una variable
de 8 bits.
Una variable de 8 bits con signo solo podrá contar hasta 127.
Los valores mayores confundirán al bucle al pasar a valer negativo::

   signed char i;
   for(i=130; i>0; i++) print i;

Este código no imprimirá nada, puesto que i se inicializa con un
valor menor que cero (i = 130 = -126 en formato de 8 bit con signo).

¿La base de numeración es correcta?
Se debe comprobar que estamos utilizando una base de numeración
adecuada::

   a = 0x11001100;   // Se está utilizando base hexadecimal, aunque parezca binario


¿Hay definiciones repetidas o fuera de contexto?
------------------------------------------------
Si hay una definición de una constante "#define" en un punto del
programa y se vuelve a definir en otro punto, esto puede dar lugar a
confusión a la hora de programar. Las definiciones deben aparecer
solo una vez.

Las variables locales de una función se superponen a las variables
globales.
Hay que llamar a las variables globales de forma que no coincidan con
las variables locales.


¿Las condiciones están correctamente escritas?
----------------------------------------------
Las condiciones son una frecuente fuente de errores. Algunos de los
más frecuentes son:

Escribir un solo igual  es incorrecto::

   if (a = 1)     // Incorrecto. Se asigna 1 a la variable 'a'
   if (a == 1)    // Correcto

   if (0xF0 & 0x0F);    // Incorrecto, resultado falso
   if (0xF0 && 0x0F);   // Correcto, resultado verdadero
   if ((0xF0 != 0) && (0x0F != 0));   // Más correcto aún, la condición aparece explícita
