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
   >>> print(f'El creador de Python es {nombre} {apellido}')
       El creador de Python es Guido van Rossum

   >>> num = 7
   >>> print(f'James Bond es el agente {num:03d}')
       James Bond es el agente 007


Ejercicios
----------

#. Repite el siguiente ejercicio cambiando el valor de la variable 
   'nombre' con tu propio nombre.

   Ejercicio::

      nombre = 'Anselmo'
      print(f'{nombre:>20}')    # Justificado a la derecha
      print(f'{nombre:<20}')    # Justificado a la izquierda
      print(f'{nombre:^20}')    # Centrado
      print(f'{nombre:_^20}')   # Centrado con relleno '_'

   Salida::

                   Anselmo
      Anselmo             
            Anselmo       
      ______Anselmo_______


#. Repite el siguiente ejercicio cambiando el valor de la variable
   ``num = 78``.
   En la última línea cambia el número por tu año de nacimiento.

   Ejercicio::

      num = 44
      print(f'{num:10d}')    # Formato decimal entero. Longitud 10
      print(f'{num:+10d}')   # Formato decimal entero con signo. Longitud 10
      print(f'{num:10X}')    # Formato hexadecimal en mayúsculas. Longitud 10
      print(f'{num:010b}')   # Formato binario con ceros a la izquierda. Longitud 10


   Salida::

              44
             +44
              2C
      0000101100

#. Repite el siguiente ejercicio con la variable ``e = 2.718281828``.
   Recuerda que en Python los decimales siempre se separan con un punto,
   no con una coma.

   Ejercicio::

      pi = 3.14159
      # Número de punto flotante que ocupa 10 espacios en total y tiene 3 decimales
      print(f'{pi:10.3f}')
      print(f'{pi:010.5f}') # Cinco decimales y ceros a la izquierda
      print(f'{pi:10.0f}')  # Igual que el primero, con cero decimales
      print(f'{pi:10.4e}')  # Igual que el primero, en notación científica


   Salida::

           3.142
      0003.14159
               3
       3.142e+00


#. Repite el siguiente ejercicio cambiando el valor de los números 
   utilizados para que aparezcan otros caracteres Unicode.

   Ejercicio::

      print(f'{78:c}')      # Formato de carácter Unicode
      print(f'{128520:c}')  # Formato de carácter Unicode
      print(f'{250:c}')     # Formato de carácter Unicode
      print(f'{2023:c}')    # Formato de carácter Unicode

   Salida::

      N
      😀
      ú
      ߧ


#. Escribe un programa que pida un carácter por el teclado y que devuelva
   los siguientes 20 caracteres Unicode.

   Utiliza la función ``ord()`` para convertir el carácter en su número
   Unicode.

   Pista::

       char = input('Introduce un carácter: ')
       num = ord(char[0])
       for code in range(num + 1, num + 21):
           print(f'Código: ...  carácter: ... ')


   Salida::

       Introduce un carácter: ñ
       Código: 242  carácter: ò
       Código: 243  carácter: ó
       Código: 244  carácter: ô
       Código: 245  carácter: õ
       Código: 246  carácter: ö
       Código: 247  carácter: ÷
       Código: 248  carácter: ø
       Código: 249  carácter: ù
       Código: 250  carácter: ú
       Código: 251  carácter: û
       Código: 252  carácter: ü
       Código: 253  carácter: ý
       Código: 254  carácter: þ
       Código: 255  carácter: ÿ
       Código: 256  carácter: Ā
       Código: 257  carácter: ā
       Código: 258  carácter: Ă
       Código: 259  carácter: ă
       Código: 260  carácter: Ą
       Código: 261  carácter: ą


   Prueba a introducir diferentes caracteres desde el teclado.
   Prueba a copiar de Internet y pegar símbolos, emojis, letras griegas y
   cirílicas, etc.


#. Escribe una función que imprima el valor de un color RGB en
   hexadecimal. Los tres parámetros de la función serán tres números
   decimales R, G y B (Red, Green y Blue) que deben estar en el rango
   de 0 a 255.

   Recuerda que los valores hexadecimales deben estar en mayúsculas y
   tener dos cifras obligatoriamente.
   La manera de convertir una variable a hexadecimal que tenga siempre
   dos cifras es añadir a la variable el siguiente formato: 
   ``f'{variable:02X}'``.


   Ejemplo::
      
      def color_hex(red, green, blue):
         print(f' ... ')


      color_hex(128, 196, 4)
      color_hex(250, 5, 64)


   Salida::

      #80C404
      #FA0540
