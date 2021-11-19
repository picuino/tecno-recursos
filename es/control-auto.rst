
.. _control-auto:

Control Automático
==================

Los controladores o reguladores automáticos forman parte de todo tipo 
de dispositivos que nos rodean, muchas veces sin ser conscientes de 
ello.
Ejemplos de controladores los podemos encontrar en el termostato de la
calefacción o del aire acondicionado, en el control de temperatura del
horno o de la nevera, en el regulador de nivel de luz, en la dirección
asistida de los automóviles, el sistema de parada en un piso de los
ascensores de alta velocidad o, incluso, en el sistema de llenado de
agua de la cisterna del váter. Allí donde una velocidad, un movimiento, 
temperatura, presión o nivel se mantienen regulados, hay un controlador 
que realiza este trabajo.

Para referirse a este tipo de sistemas se utiliza la denominación de
controladores automáticos o reguladores automáticos.

En esta página se van a revisar los diferentes componentes de un sistema
de control automático y los diferentes tipos de control que existen,
de lazo abierto y de lazo cerrado.

Elementos de un sistema de control en lazo abierto
--------------------------------------------------
En la siguiente imagen se muestra un esquema del sistema de control más
sencillo, el control de lazo abierto.

.. image:: control/_images/img-0052.png
   :width: 480px
   :alt: Sistema de control en lazo abierto
   :align: center

En este esquema se pueden reconocer tres bloques:

**Sistema**
   También llamado en ocasiones planta, es aquello que se
   desea controlar. En un horno el sistema será la caja del horno en la que
   se desea controlar la temperatura. En el caso de un sevomecanismo, el
   sistema será el motor y la reductora cuya posición se desea controlar.

**Accionador** 
   Es el encargado de convertir la señal de control, que
   tiene poca potencia, en una acción sobre el sistema, que tiene mayor
   potencia. Volviendo al ejemplo del horno eléctrico, el accionador será
   la resistencia calefactora y el sistema de potencia que la enciende. En
   el caso de un servomecanismo, el accionador será el conjunto de
   transistores y el motor que mueven el mecanismo.

**Controlador** 
   está encargado de recibir una señal de consigna o señal
   de referencia y convertirla en una señal que consiga que el sistema alcance
   la referencia deseada.

En ocasiones el controlador, el accionador y el sistema no tienen límites
bien definidos o no existen en algún sistema. En cualquier caso es interesante
conocer los tres elementos a la hora de identificar las diferentes partes de
un sistema de control.


Ejemplos de sistemas de control en lazo abierto
-----------------------------------------------

Ejemplos de este tipo de control lo podemos encontrar en múltiples objetos
que nos rodean.
   
**Control de potencia de un horno microondas**. 

El controlador está formado por un dispositivo que enciende 
y apaga el horno a intervalos regulares para conseguir mayor 
o menor potencia dependiendo del tiempo que dure el encendido
del microondas. Este sistema es llamado PWM (Pulse Width Modulation)
El accionador es el magnetrón que produce las microondas y el 
sistema será el vaso de leche que se calienta en su interior.
  
**Control de potencia de un calentador eléctrico de aire**. 

El controlador es el interruptor que selecciona entre una o 
dos resistencias calefactoras.
El accionador está formado por las resistencias calefactoras y 
el ventilador.
El sistema es el aire caliente que sale y la habitación calentada.

**Control de intensidad de luz**. 

El controlador es el potenciómetro que se gira para conseguir 
mayor o menor luminosidad. 
El accionador es el circuito electrónico de potencia y la 
lámpara que produce luz. 
El sistema es la habitación iluminada.

**Control de nivel de sonido en un equipo de audio**. 

El controlador es el potenciómetro que se mueve para 
conseguir mayor o menor nivel de sonido.
El accionador es el amplificador y los altavoces del equipo de música.
El sistema es la habitación y el nivel de sonido que consigue.
   
Uno de los controladores en lazo abierto más habituales es el temporizador.
Este se puede encontrar en múltiples dispositivos como una puerta de garaje,
apagado automático de escaleras automáticas, temporizador de un horno, etc.

En los sistemas en lazo abierto se puede controlar que el
sistema reciba más o menos accionamiento, pero no se puede controlar con
exactitud el punto en el que se encontrará el sistema controlado. 
Por ejemplo en el caso del horno microondas, no se puede estar seguro 
de que la leche no hervirá. 
Tampoco con el calentador eléctrico de aire se puede conocer con exactitud 
la temperatura que alcanzará la habitación. 
En ambos casos el resultado final dependerá del tamaño del vaso o de la 
habitación, de la temperatura ambiente, el aislamiento, la potencia total
del calentador, etc. 
Esta desventaja de los sistemas en lazo abierto no impide que se utilicen 
con mucha frecuencia por su gran sencillez y por ser muy robustos.


Elementos de un sistema de control en lazo cerrado
--------------------------------------------------

En la siguiente imagen se muestra un esquema de un sistema de control
en lazo cerrado.

.. image:: control/_images/img-0053.png
   :width: 480px
   :alt: Sistema de control en lazo cerrado
   :align: center

Este tipo de sistema de control soluciona el problema de los sistemas
en lazo abierto, que dependen de las condiciones ambientales. El nombre
de lazo cerrado proviene de la señal del sensor que vuelve al controlador,
cerrando el lazo de control. Los elementos del sistema de control en lazo
cerrado son los mismos que los del sistema en lazo abierto con dos añadidos:

El sensor mide el estado o variable a controlar en el sistema
(posición, temperatura, humedad, etc.) Esto permite conocer el estado
del sistema y corregir las desviaciones para que se pueda conseguir la
respuesta deseada.

El comparador. Este elemento está representado por un círculo en el esquema.
Su función es comparar la señal de referencia r(t) y la señal de
realimentación h(t) y calcular el error e(t) que existe entre la respuesta
deseada y el estado real del sistema. A partir de ese error se puede conseguir
llevar al sistema al estado deseado.

Este tipo de control conseguirá que el sistema se encuentre en el estado
deseado, independientemente de las condiciones ambientales.

Las señales del sistema de control son las siguientes:

   ========   ==================  ===========================================
   Señal      Nombre                 Función
   ========   ==================  ===========================================
   **r(t)**   **Referencia**      Es el estado que se desea alcanzar en 
                                  el sistema.
   **e(t)**   **Error**           Es la diferencia entre el estado deseado y
                                  el estado real del sistema a controlar.
   **c(t)**   **Control**         Es la señal que genera el controlador.
              
   **u(t)**   **Accionamiento**   Es la acción que se ejerce sobre el 
                                  sistema para controlarle.        
   **y(t)**   **Salida**          Es el estado real que ha alcanzado el 
                                  sistema a controlar.          
   **h(t)**   **Realimentación**  Es la medida del estado del sistema.       
   ========   ==================  ===========================================


Ejemplos de sistemas de control en lazo cerrado
-----------------------------------------------

Al igual que en el caso de los controladores en lazo abierto, también
existen múltiples aparatos cotidianos que tienen sistemas de control
en lazo cerrado. Estos se caracterizan por tener un sensor que permite
medir el estado del sistema y controlarle con precisión.

Control de temperatura de un **frigorífico**.

Control de temperatura en un **horno eléctrico**.

Control de posición de un **servomecanismo**.

.. image:: control/_images/img-0054.jpg
   :width: 360px
   :alt: Servomotor
   :align: center


Referencias
-----------

Wikipedia: `Sistema de control 
<https://es.wikipedia.org/wiki/Sistema_de_control>`_

Wikipedia: `Servomotor 
<https://es.wikipedia.org/wiki/Servomotor>`_

[1] Ogata, Katsuhiko. Ingeniería de Control Moderna. Tercera edición. 
Editorial Prentice Hall.

[2] Ogata, Katsuhiko. Sistemas de control en tiempo discreto. 
Segunda edición. Editorial Prentice Hall.
