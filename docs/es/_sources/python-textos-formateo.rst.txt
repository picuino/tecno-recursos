:Date: 20/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-textos-formateo:


Formateo de cadenas de texto
============================

`Un literal de cadena de texto con formateo
<https://docs.python.org/es/3/reference/lexical_analysis.html#f-strings>`__
es una cadena de texto que comienza por la letra ``'F'`` o ``'f'``
y que contiene campos de reemplazo delimitados por llaves ``{ }``.
Los campos de reemplazo contienen variables de Python y, opcionalmente,
el formato que se debe dar al contenido de la variable.

Si se quiere imprimir una llave, es necesario duplicarla: ``{{`` o bien
``}}``.


Ejemplo::

   >>> nombre = 'Guido'
   >>> apellido = 'van Rossum'
   >>> f'El creador de Python es {nombre} {apellido}'
       'El creador de Python es Guido van Rossum'

   >>> numero = 7
   >>> f'James Bond es el agente {numero:03d}'
       'James Bond es el agente 007'


Ejercicios
----------

#. Repite el siguiente ejercicio con tu propio nombre.

   Ejercicio::

      >>> nombre = 'Anselmo'
      >>> f'{nombre:>20}'    # Justificado a la derecha
          '             Anselmo'
      >>> f'{nombre:<20}'    # Justificado a la izquierda
          'Anselmo             '
      >>> f'{nombre:^20}'    # Centrado
          '      Anselmo       '
      >>> f'{nombre:_^20}'   # Centrado con relleno '_'
          '______Anselmo_______'


#. Repite el siguiente ejercicio con la variable número ``numero = 72``.
   En la última línea cambia el número por tu año de nacimiento.

   Ejercicio::

      >>> nmr = 44
      >>> f'{nmr:10d}'    # Formato decimal entero. Longitud 10
          '        44'
      >>> f'{nmr:+10d}'   # Formato decimal entero con signo. Longitud 10
          '       +44'
      >>> f'{nmr:10X}'    # Formato hexadecimal en mayúsculas. Longitud 10
          '        2C'
      >>> f'{nmr:010b}'   # Formato binario con ceros a la izquierda. Longitud 10
          '0000101100'
      >>> f'{nmr:c}'      # Formato de número a Unicode
          ','
      >>> f'{128512:c}'   # Formato de número a Unicode
          '😀'
      >>> f'{2023:c}'     # Formato de número a Unicode
          'ߧ'


#. Repite el siguiente ejercicio con la variable ``e = 2,71828``.
   Recuerda que en Python los decimales siempre se separan con un punto,
   no con una coma.

   Ejercicio::

      >>> pi = 3.14159
      >>> # Número de punto flotante con 10 espacios en total y 3 decimales
      >>> f'{pi:10.3f}'
          '     3.142'
      >>> f'{pi:010.3f}' # Igual que el primero, con ceros a la izquierda
          '000003.142'
      >>> f'{pi:10.0f}'  # Igual que el primero, con cero decimales
          '         3'
      >>> f'{pi:10.4e}'  # Igual que el primero, en notación científica
          ' 3.142e+00'


#. Escribe un programa que pida un carácter por el teclado y que devuelva
   los siguientes 10 caracteres Unicode.

   Utiliza la función ``ord()`` para convertir el carácter en su número
   Unicode.

   Pista::

       caracter = input('Introduce un caracter: ')
       numero = ord(caracter[0])
       for code in range(numero + 1, numero + 11):
           print(f'Código: ...  caracter: ... ')


   Salida::

      Introduce un caracter: ç
      Código: 0x000E8 caracter: è
      Código: 0x000E9 caracter: é
      Código: 0x000EA caracter: ê
      Código: 0x000EB caracter: ë
      Código: 0x000EC caracter: ì
      Código: 0x000ED caracter: í
      Código: 0x000EE caracter: î
      Código: 0x000EF caracter: ï
      Código: 0x000F0 caracter: ð
      Código: 0x000F1 caracter: ñ


   Prueba a introducir diferentes caracteres desde el teclado.
   Prueba a copiar de Internet y pegar símbolos, emojis, letras griegas y
   cirílicas, etc.


#. Escribe una función que devuelva el valor de un color RGB en
   Hexadecimal. Los tres parámetros de la función serán tres números
   decimales R, G y B (Red, Green y Blue) que deben estar en el rango
   de 0 a 255.
   Si algún número es mayor de 255 o menor de 0 se debe recortar al valor
   permitido.

   Pista: define una función que limite el valor de cada número y lo
   formatee a formato hexadecimal. Luego puedes definir una segunda
   función que llame tres veces a la primera función con los valores
   de los tres colores.

   Recuerda que los valores hexadecimales deben estar en mayúsculas y
   tener dos cifras obligatoriamente.
   La manera de convertir una variable a hexadecimal con dos cifras es
   añadir a la variable el siguiente formato: ``f'{variable:02X}'``.


   Ejemplo::

      rgb(128, 196, 4)
      rgb(500, -5, 64)

   Salida::

      80C404
      FF0040
