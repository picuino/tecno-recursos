:Date: 26/01/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-variables:

Las variables
=============
Las variables en un lenguaje de programación son contenedores que sirven
para almacenar información con un nombre descriptivo.
La forma de asignar un valor a una variable es escribir el nombre de
la variable, un igual y el valor asignado::

   pi = 3.1415927
   altura = 176
   peso = 72

El valor de una variable se puede mantener igual a lo largo del programa
o puede cambiar::

   altura = 170
   ...
   ...
   altura = 180


Números mágicos
---------------
Lo más correcto a la hora de escribir un programa es almacenar todos los
números dentro de variables y utilizar a continuación solo las variables.
Esto evita utilizar los llamados números mágicos, que son indeseables.

Los números que aparecen en un programa y no están dentro de una variable
se llaman números mágicos.
El programador comprende estos números en el momento de
escribir el código, pero es frecuente que otras personas no puedan
entender su significado.
Incluso el propio programador, con el paso del tiempo, puede olvidar el
significado de un número concreto que escribió en el código.

Las variables nos permiten dar un nombre significativo a un número,
lo que facilita la lectura y la comprensión del código, evitando así
los números mágicos.

Por ejemplo, en lugar de tener que escribir en cada ocasión el número π
(3.1416), debemos almacenarlo en una variable que se llame 'pi',
de manera que el código sea más comprensible.

Si algún día queremos cambiar el valor de esta constante,
por ejemplo, para darle más dígitos de precisión (3.141592653589793),
solo se tendrá que cambiar una línea de todo el código, en la
definición de pi.

En definitiva, las variables son una herramienta esencial en la
programación ya que nos permiten almacenar y acceder a información
de manera organizada y fácil de entender.


Nombrar variables
-----------------
A la hora de buscar un nombre para las variables es importante seguir
algunas reglas para asegurar que el código sea fácil de entender y
fácil de modificar posteriormente.

**Utiliza nombres significativos**
  El nombre de una variable debe reflejar su contenido o su propósito
  en el código. Por ejemplo, en lugar de usar una variable llamada
  "x" o "temp", es mejor usar un nombre como "calificaciones" o
  "promedio".

**Utiliza nombres cortos pero descriptivos**
  Aunque es importante usar nombres significativos, también es importante
  evitar nombres demasiado largos o complejos. Un nombre corto pero
  descriptivo es más fácil de leer y escribir.

**No utilices caracteres especiales**
  Los caracteres especiales (acentos, eñe, diéresis, etc) y los espacios
  pueden causar problemas en algunos lenguajes de programación o con
  otros programadores. Es mejor acostumbrarse a no utilizarlos nunca.

**Usa la notación snake_case**
  Este es un estilo de escritura en el cual las palabras en el nombre
  de la variable están separadas por el carácter subrayado "_".
  Ejemplos de esta notación son "numero_de_alumnos", "longitud_de_piscina",
  etc.

  Si vamos a crear varias variables relacionadas, es preferible que
  su primera palabra coincida en todas ellas::

     persona_altura = 175
     persona_peso = 68
     persona_nombre = 'Juan'
     persona_apellido = 'Gómez'

     piscina_longitud = 30
     piscina_anchura = 15
     piscina_profundidad = 2.5

**No utilices palabras reservadas**
  Las palabras reservadas del lenguaje como
  "print", "input", "for", "while", "break", "continue", "True", "False",
  etc. no deben utilizarse como nombres de variable.

Siguiendo estas reglas, podrás nombrar tus variables de manera clara y
organizada, lo que te ayudará a escribir un código más fácil de entender
y mantener.


Ejercicios
----------
Escribe un programa o macro para cada ejercicio propuesto.
Guarda los programas con los nombres propuestos en los ejercicios.

#. Realiza un programa para calcular el perímetro de un círculo.
   El programa debe pedir al usuario que ingrese el radio del círculo,
   y luego calcular el perímetro utilizando la fórmula "2 * pi * radio".
   Nombra las variables para almacenar el radio, el número pi y el
   perímetro del círculo.

   Imprime el resultado en la pantalla.

   Recuerda convertir a float() todos los números ingresados por el
   teclado.

   Recuerda nombrar las variables con estilo snake_case.

   Solución al ejercicio::

      pi = 3.141592653589793

      radio = input("Introduce el radio del círculo: ")

      radio = float(radio)

      perimetro = 2.0 * pi * radio

      print("Perímetro del círculo = ", perimetro)

   Guarda el programa con el nombre ``tema_03_ejercicio_01.py``

   Observa que el número 2.0 que aparece en el programa es un número
   mágico.
   Se ha mantenido así porque es parte de la fórmula del perímetro,
   conocida por todos.

#. Escribe un programa para calcular el sueldo de un empleado.
   El programa debe pedir al usuario que escriba las horas trabajadas.
   El sueldo por hora será de 15 Euros y se debe almacenar en una variable.
   Calcular el sueldo total multiplicando las horas por el sueldo por hora.

   Imprime el resultado en la pantalla.

   Pista: utiliza el programa anterior como modelo, cambiando el nombre
   de las variables y los valores numéricos.

   Guarda el programa con el nombre ``tema_03_ejercicio_02.py``


#. Escribe un programa para calcular el volumen de un cubo.
   El programa debe pedir al usuario que escriba la longitud de un lado.
   El volumen del cubo se calculará elevando a la tercera potencia
   (** 3) la longitud del lado.

   Imprime el resultado en la pantalla.

   Guarda el programa con el nombre ``tema_03_ejercicio_03.py``


#. Realiza un programa para calcular el cambio de una compra.
   El programa debe pedir al usuario que escriba el costo total de la
   compra y el dinero recibido.
   Calcular a continuación el cambio que se debe devolver realizando
   una resta.

   Imprime el resultado en la pantalla.

   Guarda el programa con el nombre ``tema_03_ejercicio_04.py``


#. Realiza un programa para calcular el precio final de un producto
   con descuento del 25%.

   El porcentaje de descuento se debe almacenar en una variable.

   El programa debe pedir al usuario que escriba el costo del producto.
   Calcular a continuación el precio con descuento con la siguiente
   fórmula::

      precio_final = precio_inicial * (100 - descuento) / 100

   Imprime el resultado en la pantalla.

   Guarda el programa con el nombre ``tema_03_ejercicio_05.py``
