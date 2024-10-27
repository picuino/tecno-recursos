:Date: 11/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-if-anidados:

Sentencias ``if`` anidadas
==========================
Una estructura de programación se dice que está anidada cuando se
encuentra dentro de otra.

Cada nivel extra con otra instrucción ``if`` habrá que escribir el código
con sangría, es decir, con espacios a la izquierda.

Este es un ejemplo con la instrucción ``if`` anidada en dos niveles::

    numero = input('Introduce un número: ')
    numero = int(numero)

    if numero % 3 == 0:
        if numero % 5 == 0:
            print('El número', numero, 'es divisible por 3 y por 5')
        else:
            print('El número', numero, 'es divisible por 3')


Anidar condiciones ``if`` puede ser útil, pero hay que intentar que no
se aniden muchos niveles para facilitar la lectura del código.

Este es otro ejemplo de ``if`` anidado en dos niveles::

    edad = input('Introduce tu edad: ')
    edad = int(edad)

    if edad >= 18:
        if edad >= 65:
            print("Eres un adulto mayor")
        else:
            print("Eres un adulto")
    else:
        if edad > 3:
            print("Eres menor de edad")
        else:
            print("Eres un bebé")


Ejercicios
----------

#. Escribe un programa que calcule el precio en la entrada de un cine
   dependiendo de la edad.

   El precio normal de la entrada es de 10 Euros.

   Si el cliente tiene una edad de 60 o más años, solo pagará 2 Euros.

   Si el cliente tiene una edad de 12 o menos años, solo pagará 4 Euros.

   Pista::

      edad = input('Escribe tu edad: ')
      edad = int(edad)

      if ... :


#. Escribe un programa para comprobar si una persona puede subir
   a las atracciones de un parque.

   Si la altura es menor de 140, no puedes subir a las atracciones

   En caso contrario:

       * Si la edad es menor de 12 años, puedes subir a las atracciones
         para niños.

       * Si la edad es mayor o igual a 12 años, puedes subir a todas
         las atracciones.

   Pista::

      altura = 120
      edad = 5
      if ....


#. Escribe un programa que pregunte la nota obtenida y que responda
   según las siguientes condiciones:

   Si la nota es mayor o igual a 5 -> Has aprobado

   Si la nota es mayor que 6 -> Has aprobado con buena nota

   Si la nota es menor que 5 -> Has suspendido

   Si la nota es menor que 4 -> Has suspendido con mala nota


#. Escribe un programa de ayuda para reparar objetos.

   El programa primero debe preguntar si el objeto se mueve.
   Después debe preguntar si el objeto debería moverse.
   A continuación el programa debe imprimir un mensaje
   en pantalla dependiendo de las opciones introducidas:

   Si el objeto se mueve y debería moverse -> No hace falta reparar.

   Si el objeto se mueve y no debería moverse -> Utilizar cinta americana.

   Si el objeto no se mueve y no debería moverse -> No hace falta reparar.

   Si el objeto no se mueve y debería moverse -> Utilizar aceite 3 en 1.

   Pista::

      # Pregunta para obtener una respuesta de tipo si/no
      # con una sola letra (s/n)
      se_mueve = input('El objeto se mueve? (s/n)')
      if se_mueve == 's':
          ...


#. Escribe un programa para identificar personajes del cómic Astérix y
   Obélix.

   Si el personaje es protagonista principal:

      * Si el personaje levanta menhires: es Obélix.
      * En caso contrario: es Astérix.

   En caso contrario:

      * Si el personaje prepara pociones: es Panorámix.
      * En caso contrario:

          * Si el personaje canta mal: es Asuracentúrix.
          * En caso contrario: el personaje no está identificado.

   Pista::

      # Pregunta para obtener una respuesta de tipo si/no
      # con una sola letra (s/n)
      opcion_1 = input('El personaje es protagonista principal? (s/n)')
      if opcion_1 == 's':


#. Escribe un programa que pregunte el usuario y luego la contraseña.
   Si el usuario es igual a 'admin' entonces comprueba la contraseña, que
   debe ser igual a 'secreta'. En caso de escribir la contraseña correcta
   se debe imprimir 'inicio de sesión correcto'.

   Si la contraseña está equivocada se debe escribir 'Contraseña incorrecta'

   Si el usuario no es 'admin' se debe escribir 'Usuario incorrecto'


#. Escribe un programa para clasificar triángulos.

   Primero se deben definir en el programa las longitudes de los lados::

       lado1 = 5
       lado2 = 3
       lado3 = 4

   A continuación se deben comprobar las longitudes de los lados e
   imprimir en pantalla el tipo de triángulo:

      * Si lado1 == lado2 and si lado2 == lado3: es equilátero
      * Si lado1 == lado2 or lado1 == lado3 or lado2 == lado3: es isósceles
      * En caso contrario: es escaleno.


#. Escribe un programa que verifique si un año es bisiesto.
   Un año es bisiesto si es divisible por 4 (year % 4 == 0).

   De estos años bisiestos hay que eliminar los que son divisibles por
   100 y añadir los que son divisibles por 400.

   Pista::

       year = input('Escribe el año: ')
       year = int(year)

       if year % 4 == 0:
           if year % 100 == 0:
               if year % 400 == 0:
                   print('...')
               else:
                   print('...')
           else:
               print('...')
       else:
           print('...')

   La lista de años bisiestos entre 1600 y 2400 es::

       1600, 1604, 1608, 1612, 1616,
       1620, 1624, 1628, 1632, 1636,
       1640, 1644, 1648, 1652, 1656,
       1660, 1664, 1668, 1672, 1676,
       1680, 1684, 1688, 1692, 1696,
       1704, 1708, 1712, 1716, 1720,
       1724, 1728, 1732, 1736, 1740,
       1744, 1748, 1752, 1756, 1760,
       1764, 1768, 1772, 1776, 1780,
       1784, 1788, 1792, 1796, 1804,
       1808, 1812, 1816, 1820, 1824,
       1828, 1832, 1836, 1840, 1844,
       1848, 1852, 1856, 1860, 1864,
       1868, 1872, 1876, 1880, 1884,
       1888, 1892, 1896, 1904, 1908,
       1912, 1916, 1920, 1924, 1928,
       1932, 1936, 1940, 1944, 1948,
       1952, 1956, 1960, 1964, 1968,
       1972, 1976, 1980, 1984, 1988,
       1992, 1996, 2000, 2004, 2008,
       2012, 2016, 2020, 2024, 2028,
       2032, 2036, 2040, 2044, 2048,
       2052, 2056, 2060, 2064, 2068,
       2072, 2076, 2080, 2084, 2088,
       2092, 2096, 2104, 2108, 2112,
       2116, 2120, 2124, 2128, 2132,
       2136, 2140, 2144, 2148, 2152,
       2156, 2160, 2164, 2168, 2172,
       2176, 2180, 2184, 2188, 2192,
       2196, 2204, 2208, 2212, 2216,
       2220, 2224, 2228, 2232, 2236,
       2240, 2244, 2248, 2252, 2256,
       2260, 2264, 2268, 2272, 2276,
       2280, 2284, 2288, 2292, 2296,
       2304, 2308, 2312, 2316, 2320,
       2324, 2328, 2332, 2336, 2340,
       2344, 2348, 2352, 2356, 2360,
       2364, 2368, 2372, 2376, 2380,
       2384, 2388, 2392, 2396, 2400

   En la lista no deben salir los años
   1700, 1800, 1900, 2100, 2200, 2300 porque son divisibles por 100.

   En la lista sí deben salir los años 1600, 2000 y 2400 porque,
   aunque son divisibles por 100, también son divisibles por 400.


