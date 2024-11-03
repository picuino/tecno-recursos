:Date: 31/10/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _electronic-gate-xor:

La puerta lógica XOR
====================
La puerta lógica XOR tiene dos o más entradas y una salida.
Su símbolo es el siguiente:

.. figure:: electronic/_images/electronic-simbolo-puerta-xor.png
   :width: 180px
   :align: center
   :alt: Puerta lógica XOR de dos entradas.
   
   Símbolo de la puerta lógica XOR de dos entradas.

La salida tiene un valor lógico alto (1) si la suma de las entradas
es un valor impar.
Es decir, si la entrada A **o** la entrada B están a nivel alto, pero
no las dos a la vez, la salida estará a nivel alto.
De ahí el nombre de **eXclusive OR** en inglés.

La función lógica XOR se representa mediante un símbolo de suma rodeado
de un círculo, de manera que la salida de la puerta será la suma lógica
exclusiva de las entradas:

.. math::

   Out = A \oplus B

Si las dos entradas valen cero, la salida valdrá cero,
si alguna entrada vale uno, la salida valdrá uno
y si las dos entradas valen uno, la salida volverá a valer cero.

La tabla de verdad de la función lógica XOR es la siguiente:

.. figure:: electronic/_images/electronic-puerta-xor-02.png
   :width: 160px
   :align: center
   :alt: Tabla de verdad de la puerta lógica XOR de dos entradas.
   
   Tabla de verdad de la puerta lógica XOR de dos entradas.


Aplicaciones de la puerta XOR
-----------------------------
1. La puerta XOR puede utilizarse para calcular el valor de paridad de
   todas sus entradas, de manera que las entradas junto a la salida siempre
   tendrán un valor par de unos.

2. Otra aplicación de la puerta XOR es hacer sumas aritméticas de bits.
   La puerta XOR calcula la suma aritmética de dos bits y la puerta AND 
   calcula el acarreo de sumar dos bits.

3. Otra aplicación de la puerta XOR es invertir o no invertir el valor de la
   entrada B en función de la entrada A:

   * Si la entrada A vale cero, la entrada B se copia igual en la salida.
   
   * Si la entrada A  vale uno, la entrada B se copia **invertida** en la
     salida.


Simulación
----------
En la siguiente simulación podemos ver el funcionamiento de
la puerta lógica XOR.

.. raw:: html

   <div class="video-center">
   <iframe src="/circuits/index.html?startCircuit=digital-puerta-xor.txt"></iframe>
   </div>


Ejercicios
----------

#. Dibuja el símbolo de la puerta lógica XOR,
   su función lógica y su tabla de verdad.


#. Comprueba gracias al simulador que
   la tabla de verdad de la función XOR es correcta.
   
#. En el simulador copia el circuito que aparece en la siguiente imagen
   para emular el funcionamiento de la puerta XOR mediante 
   puertas NOT, OR y AND:

   .. figure:: electronic/_images/electronic-puerta-xor-03.png
      :width: 480px
      :align: center
      :alt: Puerta XOR simulada con puertas NOT, OR y AND.
      
   Comprueba que su funcionamiento es igual al de la puerta XOR.

#. Dibuja una puerta lógica XOR de tres entradas y su tabla de verdad.

   Para realizar la tabla de verdad de la puerta recuerda que la salida
   vale uno si los bits de entrada a uno son impares.
