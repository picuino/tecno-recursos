//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 0.8cm, bottom: 0.6cm, left: 1.5cm, right: 1.5cm )
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 11pt,
  hyphenate: true
)

#set par(
  justify: true
)

#show raw: set text(size: 11pt)

#import "_plantilla_examen.typ": *


//
// EXAMEN
// 

#cabecera(
  [4º ESO Digitalización],
  [Programación en Python I]
)


#pregunta([Escribe un programa que pida dos números en coma flotante por
pantalla y luego imprima cada uno de los números y la suma de ambos.
La ejecución del programa se verá así:], 1)

```text
Escribe un número: 12.5
Escribe un número: 5.23
La suma de 12.5 más 5.23 es igual a 17.73
```
#v(3.5cm)


#pregunta([Escribe un programa que compruebe si un número es positivo o
negativo y que imprima en pantalla el resultado.], 1)

```text
num = input('Escribe un número: ')
num = int(num)
```
#v(3.5cm)


#pregunta([Una persona puede subir a una montaña rusa si su altura en
centímetros es mayor o igual a 150 y también debe ser menor o igual a 200.
Escribe un programa que pida tu altura en centímetros e imprima en
pantalla si puedes subir o no puedes subir a la montaña rusa.],1)

```text
altura = input('Escribe tu altura en centímetros: ')
altura = int(altura)
```


#pagebreak()


#pregunta([Escribe un programa para clasificar triángulos.
Primero se deben definir en el programa las longitudes de los lados.
A continuación, se deben comprobar las longitudes de los lados e imprimir
en pantalla el tipo de triángulo: Si los lados 1 y 2 son iguales y los
lados 2 y 3 son iguales, es equilátero.
En caso contrario, si dos lados cualesquiera son iguales (1 y 2 o 2 y 
3 ó 1 y 3) es isósceles. En caso contrario es escaleno.], 1)
#v(6.4cm)


#pregunta([Escribe un programa que clasifique un número entero como
positivo, negativo o cero, utilizando la sentencia elif.], 1)

```text
num = input('Introduce un número: ')
num = int(num)
```
#v(4.0cm)


#pregunta([Escribe un programa que imprima la tabla del 8 con un bucle for.], 1)

```text
8 x 0 = 0
8 x 1 = 8
...
```
#v(4.0cm)


#pregunta([Escribe un programa que imprima el siguiente listado utilizando
un bucle for.], 1)

```text
50
45
40
35
30
25
20
```


#pagebreak()


#pregunta([Escribe un programa que imprima todos los números del 1 hasta
el 10 excepto el 3 y el 7, con un bucle for y la sentencia continue.], 1)
#v(5.0cm)


#pregunta([Escribe un programa que vaya sumando todos los números
enteros desde el 1 hasta el 100 y que se detenga cuando la suma sea
mayor que 1000. El programa debe indicar hasta qué número ha sumado
y cual es el resultado de la suma.], 1)
#v(5.0cm)


#pregunta([Escribe un programa con la sentencia while que vaya imprimiendo
todos los números desde el 0 hasta el 10.], 1)

```text
contador = 0
while





    contador =
```


#test_puntos_acumulados()