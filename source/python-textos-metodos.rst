:Date: 17/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-textos-metodos:


Métodos de cadenas de texto
===========================
Los `métodos de las cadenas de texto
<https://docs.python.org/es/3/library/stdtypes.html#string-methods>`__
son funciones que trabajan asociadas a las cadenas de texto,
que se usan como argumento.

Al estar asociadas a las cadenas de texto, se las llama añadiendo un punto
y el nombre detrás de la cadena de texto o detrás de la variable que
contiene la cadena de texto. El argumento de la función será la cadena de
texto que precede al punto.

Esta es una nueva forma de usar funciones, que se estudiará con mayor
profundidad en el apartado dedicado a las Clases en Python y a
la programación orientada a objetos.

Ejemplos::

   >>> 'PaLaBrA'.upper()    # Mayúsculas
       'PALABRA'

   >>> 'PaLaBrA'.lower()    # Minúsculas
       'palabra'

   >>> 'PALAbra'.swapcase() # Cambia mayúsculas por minúsculas y viceversa
       'palaBRA'

   >>> cadena = 'En un lugar de la Mancha'
   >>> cadena.title()       # Mayúsculas tipo título
       'En Un Lugar De La Mancha'

   >>> cadena.find('lugar') # Busca el texto 'lugar' dentro de la cadena
       6

   >>> '  Borra espacios iniciales y finales  '.strip()
       'Borra espacios iniciales y finales'

   >>> 'Hola nombre'.replace('nombre', 'Miguel')
       'Hola Miguel'

   >>> 'Divide la cadena'.split(' ') # Divide por los espacios
       ['Divide', 'la', 'cadena']

Hay muchos más métodos de cadena de texto, pero por ahora con estos
que se han listado podremos hacer la mayoría de las operaciones que
necesitamos.


Sentencia ``in``
----------------
La sentencia ``in`` sirve para conocer si un texto se encuentra dentro
de otro texto::

   >>> # ¿Se encuentra el texto 'Hola' en 'Hola, mundo'?
   >>> 'Hola' in 'Hola, mundo'
       True
   >>> 'á' in 'aeiouáéíóú'
       True
   >>> 'n' in 'aeiou'
       False

La sentencia es sensible a mayúsculas y minúsculas, por lo que a veces
puede ser interesante utilizar el método ``.lower()`` para transformar
todas las frases a minúsculas y que las cadenas de texto coincidan::

   >>> # Falso porque no coinciden las letras 'h' y 'H'
   >>> 'hola' in 'Hola, mundo'
       False

   >>> # Verdadero porque convertimos el texto a minúsculas
   >>> 'hola' in 'Hola, mundo'.lower()
       True


Ejercicios
----------

#. Escribe una función que acepte una cadena de texto como argumento
   y que retorne la cadena de texto en mayúsculas y en minúsculas alternas.
   La primera letra debe ser mayúscula, la segunda minúscula
   la tercera mayúscula, la cuarta minúscula y seguir así la secuencia
   hasta el final del texto.

   Ejemplo::

      >>> MayusculaMinuscula('Este es un texto de ejemplo')
          'EsTe eS Un tExTo dE EjEmPlO'

   Pista::

      def MayusculaMinuscula(texto):
          texto_nuevo = ''
          mayuscula = True
          for letra in texto:
              if mayuscula == True:
                  mayuscula = ...
                  texto_nuevo = texto_nuevo + ...
              else:
                  mayuscula = ...
                  texto_nuevo = texto_nuevo + ...
          print(...)

   La variable 'mayuscula' debe cambiar de valor de True a False y
   viceversa cada vez que se añada una nueva letra a la variable
   'texto_nuevo'.


#. Modifica el programa anterior para que solo sean mayúsculas la
   primera letra y las letras que estén en un índice múltiplo de 3.

   Ejemplo::

      >>> MayusculaMinuscula('Este es un texto de ejemplo')
          'EstE eS uN tExtO dE eJemPlo'

   Pista::

      def MayusculaMinuscula(texto):
          texto_nuevo = ''
          for i in range(len(texto)):
              if i % 3 ... :
                  texto_nuevo = texto_nuevo + texto[i]...
              else:
                  ...

#. Escribe un programa que pida una frase al usuario que describa a
   Lionel Messi sin escribir en esa frase ninguna palabra tabú.

   Las palabras tabú son Argentina, Barcelona, futbol.

   El programa debe detectar si se ha escrito alguna palabra tabú
   independientemente de las mayúsculas o minúsculas.


   Pista::

       print('Describe a Lionel Messi sin escribir ninguna palabra tabú.')
       print('Las palabras tabú son: Argentina, Barcelona, futbol, PSG')
       descripcion = input('Descripción: ')
       descripcion = ....                    # Transforma en minúsculas

       if descripcion.find(...) >= 0:
           print('Error, he encontrado la palabra tabú ... en la descripción')
       elif ... :
           ...


#. Escribe una función que acepte una cadena de texto como argumento y
   que imprima la cadena de texto con todas las vocales reemplazadas
   por otra vocal que establezcamos en el segundo argumento.
   Llama a la función con varias frases de ejemplo para probar su
   funcionamiento.

   Por defecto la vocal de reemplazo será la 'e'.

   Para facilitar el programa transformaremos el texto a minúsculas.

   Pista::

      def reemplaza_vocales(texto, vocal='e'):
          # Transforma en minúsculas
          texto = texto...

          # Reemplaza todas las vocales
          texto = texto.replace('a', vocal)
          ...
          ...
          ...
          ...
          print(texto)
      
      reemplaza_vocales('En un lugar de la mancha')
