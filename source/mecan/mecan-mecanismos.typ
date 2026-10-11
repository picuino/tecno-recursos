//
// CONFIGURACIÓN DE PÁGINA
//

#set page(
  paper: "a4",
  margin: ( top: 20mm, bottom: 10mm, left: 10mm, right: 10mm )
)

#set page(
  numbering: "1",
  footer: none,
  header: context {
    let numpage = counter(page).display()
    grid(
      columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto),
      text(size: 10pt, weight: "bold")[
      #link("https://www.picuino.com/es/mecan-maquinas-index.html")[Los Mecanismos]],
      [],
      text(size: 10pt, weight: "bold")[
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]],
      [],
      text(size: 10pt, weight: "bold")[
      #link("https://www.picuino.com/es/index.html")[*www.picuino.com*]],
      [],
      text(size: 10pt, weight: "bold")[Página #numpage],
    )
    v(2mm)
    place(center)[#line(length: 100%)]
    v(2mm)
  }
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 11pt,
  hyphenate: true
)

#set par(
  justify: true,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 13pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 11pt, weight: "bold")[#it]
  } else {
    it
  }
]

#show heading: set block(above: 2em)

#show math.equation: set text(size: 1.2em)

#set figure(supplement: none, numbering: none)
#show figure.caption: set text(size: 10pt, weight: "bold")
#show figure: set block(above: 2mm, below: 4mm)

#set terms(
  indent: 0mm,
  hanging-indent: 10mm, 
  separator: [],
  spacing: 1.2em     
)

//
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[LAS PALANCAS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

La *palanca* es una máquina simple formada por una *barra rígida*
que gira alrededor de un punto fijo llamado *fulcro* o
*punto de apoyo*.

Las palancas permiten *multiplicar fuerzas* o *aumentar desplazamientos*
aplicando el principio del equilibrio de momentos.

= Aplicaciones

Las palancas se pueden utilizar para realizar varias funciones:

1. *Transmitir una fuerza o un movimiento* desde un punto a otro.
   Es el caso de unas tijeras, que transmiten la fuerza y el movimiento
   desde unos dedales adaptados a la mano hasta las hojas de corte.
2. *Aumentar la fuerza* ejercida. Es el caso de un cascanueces o de unos
   alicates.
3. *Aumentar el desplazamiento* aplicado. Es el caso de un remo o el de
   una caña de pescar.

Dependiendo de la situación relativa de la *fuerza aplicada (F)*, de la
*resistencia o carga (R)* y *del fulcro (△)*, distinguimos tres tipos de
palancas.


= Palancas de primer grado

En las palancas de primer grado el fulcro está situado entre la fuerza
aplicada y la resistencia.

En este tipo de palanca, según las distancias, se puede ganar fuerza
o ganar desplazamiento.

#figure(
  image("_images/mecan-palancas-01.png", width: 52mm),
)

Ejemplos de este tipo de palanca son un balancín, unas tijeras o
unos alicates.
#figure(
  image("_images/mecan-palancas-04.png", width: 52mm),
)


= Palancas de segundo grado

En las palancas de segundo grado la resistencia se encuentra entre
el fulcro y la fuerza aplicada.

El fulcro se encuentra en un extremo de la barra.

Este tipo de palanca siempre multiplica la fuerza, es decir,
se necesita aplicar una fuerza menor que la resistencia.
#figure(
  image("_images/mecan-palancas-02.png", width: 52mm),
)

Ejemplos de este tipo de palanca son una carretilla, un cascanueces o
un sacacorchos.
#figure(
  image("_images/mecan-palancas-05.png", width: 52mm),
)

= Palancas de tercer grado

En las palancas de tercer grado la fuerza aplicada se sitúa entre el
fulcro y la resistencia.

El fulcro está situado en un extremo de la barra.

Este tipo de palanca no multiplica la fuerza, pero permite obtener
mayor desplazamiento y mayor velocidad en el extremo.
#figure(
  image("_images/mecan-palancas-03.png", width: 52mm),
)
Ejemplos de este tipo de palanca son unas pinzas de depilar,
nuestro antebrazo cuando sube la mano o una caña de pescar.
#figure(
  image("_images/mecan-palancas-06.png", width: 52mm),
)

]

#pagebreak()

//
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

= Cálculo de fuerzas y distancias

Para que una palanca esté en equilibrio, los *momentos de giro
(o torques)* respecto al punto de apoyo deben ser iguales.
El momento de giro es el producto de una fuerza por su distancia al fulcro.
#figure(
  image("_images/mecan-palancas-07.png", width: 52mm),
)

La expresión matemática es la siguiente:

$ F_1 dot d_1 = F_2 dot d_2 $

#set terms(
  indent: 5mm,
  hanging-indent: 0mm,
  spacing: 1em,
)

Donde:
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$F_1$ =], [Fuerza aplicada 1])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$d_1$ =], [Distancia desde la fuerza 1 hasta el punto de apoyo])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$F_2$ =], [Resistencia o fuerza 2])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$d_2$ =], [Distancia desde la fuerza 2 hasta el punto de apoyo])

Las distancias pueden medirse en metros, centímetros, milímetros,
pulgadas, etc. Pero ambas distancias deben estar siempre
en la misma unidad al hacer los cálculos.

Las fuerzas pueden medirse en kilogramos-fuerza (kgf) o en Newton (N),
pero deben expresarse en la misma unidad en ambos lados de la ecuación.


= Ejercicio alicates

Como ejemplo, vamos a calcular la fuerza que realizan unos alicates a
los que aplicamos una fuerza de 10 kgf en el mango, con las siguientes
distancias:
#figure(
  image("_images/mecan-palancas-08.png", width: 52mm),
)

El primer paso será escribir los datos del problema y traducir los
valores de distancia a la misma unidad, por ejemplo, a milímetros.

$ d_1 = 5,6 "cm" = 56 "mm" $

$ F_1 = 10 "kgf" $

$ d_2 = 20 "mm" $

A continuación escribimos la fórmula y sustituimos los valores conocidos:
 
$ F_1 dot d_1 = F_2 dot d_2 $

$ 10 "kgf" dot 56 "mm" = F_2 dot 20 "mm" $

Por último, despejamos la ecuación y calculamos el valor de la incógnita
con las mismas unidades que tenía la fuerza conocida:
 
$ F_2 = ( 10 "kgf" dot 56 "mm" ) / ( 20 "mm" ) $

$ F_2 = 560 / 20 = 28 "kgf" $

 
= Ejercicio carretilla

En este ejercicio vamos a calcular la fuerza que hay que realizar para
levantar una carretilla que lleva en su interior un peso de 40 kgf.
Las dimensiones de la carretilla simplificada son las siguientes:
#figure(
  image("_images/mecan-palancas-09.png", width: 52mm),
)

El primer paso será escribir los datos del problema. En este caso no
es necesario convertir las unidades de distancia, pues ambas distancias
están dadas en centímetros.

$ F_2 = 10 "kgf" $

$ d_1 = 60 "cm" + 60 "cm" = 120 "cm" $

$ d_2 = 60 "cm" $

Como podemos ver, para calcular la distancia desde la fuerza 1 hasta el
punto de apoyo es necesario sumar las dos distancias que aparecen en el
dibujo.

A continuación escribimos la fórmula y sustituimos los valores conocidos:
 
$ F_1 dot d_1 = F_2 dot d_2 $

$ F_1 dot 120 "cm" = 40 "kgf" dot 60 "cm" $

Por último despejamos la ecuación y calculamos el valor de la incógnita
(F1) con las mismas unidades que tenía la fuerza conocida,
kilogramo-fuerza:

$ F_1 = ( 40 "kgf" dot 60 "cm" ) / ( 120 "cm" ) $

#colbreak()

$ F_1 = 2400 / 120  =  20 "kgf" $

]


//
// PÁGINA 3
//

#align(center)[
  #v(8mm)
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE PALANCAS]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 214mm) ]

#columns(2, gutter: 0.8cm)[

1. Un *martillo* se utiliza como palanca de primer grado para sacar un clavo.
   Se aplica una fuerza de 12 kgf en el extremo del mango. La distancia
   desde el punto de apoyo hasta la fuerza aplicada es de 30 cm, y la
   distancia desde el punto de apoyo hasta el clavo es de 30 mm.
   ¿Cuál es la fuerza que actúa sobre el clavo?

#v(1fr)

2. Unas *tijeras* funcionan como una palanca de primer grado. 
   Se aplica una fuerza de 8 kgf en cada mango. La distancia desde el
   eje hasta el punto donde se aplica la fuerza es de 9 cm, y la distancia
   desde el eje hasta el punto de corte es de 3 cm. 
   ¿Qué fuerza se ejerce en el punto de corte?

#v(1fr)

#colbreak()

3. Una *barra* se utiliza como palanca de primer grado para levantar una
   piedra de 120 kgf de peso. La distancia desde el punto de apoyo hasta
   la piedra es de 40 cm, y la distancia desde el punto de apoyo hasta
   donde se aplica la fuerza es de 160 cm.
   ¿Qué fuerza hay que aplicar para levantar la piedra?

#v(1fr)

4. Un *cascanueces* puede modelarse como una palanca de segundo grado.
   La nuez ejerce una resistencia de 15 kgf. La distancia desde el punto
   de apoyo hasta la nuez es de 4 cm, y la distancia desde el punto de 
   apoyo hasta donde se aplica la fuerza es de 20 cm. 
   ¿Qué fuerza hay que aplicar para romper la nuez?

#v(1fr)

]

#pagebreak()

//
// PÁGINA 4
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

5. Un *abridor de botellas* actúa como una palanca de segundo grado.
   La fuerza necesaria para levantar la chapa es de 25 kgf.
   La distancia desde el punto de apoyo hasta la chapa es de 2 cm,
   y la distancia desde el punto de apoyo hasta la fuerza aplicada
   es de 10 cm. ¿Cuánta fuerza debemos aplicar?

#v(1fr)

6. Una *prensa manual* para poner corchos en botellas funciona como
   una palanca de segundo grado. La prensa tiene las siguientes
   dimensiones: 
   
   La distancia desde el punto de apoyo hasta el corcho (carga) es de 5 cm.
   La distancia desde el corcho hasta el punto donde el operario aplica la
   fuerza es de 50 cm.

   Si el operario aplica una fuerza de 11 kgf en el mango de la prensa,
   ¿cuál es la fuerza que ejerce la prensa sobre el corcho?

#v(1fr)

#colbreak()

7. Unas *pinzas* funcionan como una palanca de tercer grado.
   Se aplica una fuerza de 6 kgf con los dedos. La distancia desde
   el punto de apoyo hasta donde se aplica la fuerza es de 40 mm, y 
   la distancia desde el punto de apoyo hasta el extremo de las pinzas
   es de 80 mm. ¿Qué fuerza se ejerce en el extremo de las pinzas?

#v(1fr)

8. El *antebrazo* puede modelarse como una palanca de tercer grado.
   El bíceps aplica una fuerza de 300 kgf. La distancia desde el codo
   hasta el punto donde actúa el bíceps es de 50mm, y la distancia desde
   el codo hasta la mano es de 35 cm.
   ¿Con qué fuerza se puede levantar la mano?

#v(1fr)

9. Una *caña de pescar* funciona como una palanca de tercer grado.
   El pescador aplica una fuerza de 20 kgf con la mano tirando de la caña.
   La distancia desde el punto de apoyo (extremo de abajo de la caña,
   apoyado en el suelo) hasta el punto donde se aplica la fuerza es de
   50 cm, y la longitud total de la caña es de 200 cm.
   ¿Cuál es la fuerza que ejerce el pez sobre la caña?

#v(1fr)

]

#pagebreak()

//
// PÁGINA 5
//

#align(center)[
  #text(size: 16pt, weight: "bold")[LOS TORNILLOS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

Un tornillo es una *máquina simple* formada por un *plano inclinado*
que se encuentra *enrollado* alrededor de un eje cilíndrico.

#figure(
  image("_images/mecan-tornillo-01.jpg", width: 54mm),
  
  caption: [
    Tornillo y tuerca hexagonal. \
    #link("https://commons.wikimedia.org/wiki/File:M4_Inbusschraube_focusstacked.jpg")[Afrank99],
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]
  ]
)

= Partes de un tornillo

Las diferentes partes del tornillo reciben los siguientes nombres.

#figure(
  image("_images/mecan-tornillo-02.png", width: 70mm),
  
  caption: [ Partes de un tornillo y tuerca hexagonal. ]
)
#v(2mm)

/ Vástago:: Parte cilíndrica del tornillo donde se tallan los surcos de
  la rosca.
/ Cuello:: Parte del vástago del tornillo que no está roscada.
/ Rosca:: Plano inclinado enrollado de forma helicoidal alrededor del
  vástago.
/ Cabeza del tornillo: Parte extrema del tornillo que se utiliza para
  hacerlo girar. En tornillos grandes suele ser de forma cuadrada o hexagonal.
/ Filete:: Parte saliente del surco de la rosca.
/ Paso:: Distancia que hay entre dos crestas consecutivas de la rosca.
/ Tuerca:: Pieza mecánica con un orificio roscado que se acopla 
  al tornillo. Suele tener forma cuadrada o hexagonal para facilitar
  su giro mediante llaves de apriete.


= Aplicaciones de los tornillos

*Uniones desmontables:*

Una de las aplicaciones de los tornillos es realizar uniones desmontables,
es decir, uniones que se pueden montar y desmontar con facilidad.

Por ejemplo, la carcasa de un ordenador está unida con tornillos.

*Mecanismos que avanzan con precisión:*

Los tornillos permiten realizar movimientos muy precisos.

Por ejemplo, el tornillo de un grifo giratorio permite abrir o cerrar
el paso de agua con mucha precisión. Otro ejemplo son las sillas a
tornillo, que se pueden subir o bajar poco a poco dando vueltas al asiento.


*Mecanismos para mover con fuerza:*

Otra aplicación importante de los tornillos es la construcción de
mecanismos que avanzan con mucha fuerza.

Por ejemplo, el mecanismo de un gato mecánico está basado en un tornillo
que mueve un sistema de tijeras con suficiente fuerza como para levantar
un automóvil.

#figure(
  image("_images/mecan-tornillo-04.gif", width: 70mm),
  
  caption: [ Gato mecánico para levantar automóviles, 
  con un tornillo que mueve el mecanismo.\
  #link("https://commons.wikimedia.org/wiki/File:Jackscrew.gif")[Interiot],
  Public Domain.
  ]
)

]

#pagebreak()

//
// PÁGINA 7
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

= Cálculo de tornillos

Los principales parámetros de un tornillo son su *paso*, el número de
vueltas de *giro* y el *avance* lineal que se obtiene al girarlo.

La relación entre estas magnitudes se expresa mediante la siguiente
fórmula:

$ "Avance" = "Giro" dot "Paso" $
 
Donde:
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$"Avance"$ =], [Distancia lineal que recorre el tornillo en milímetros.])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$"Giro"$ =], [Número de vueltas que gira el tornillo.])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$"Paso"$ =], [Distancia que avanza el tornillo por cada vuelta que gira.])

Tanto el $"Avance"$ como el $"Paso"$ deben expresarse en las mismas
unidades de longitud, normalmente milímetros.

= Ejercicio silla

Una silla de taller se eleva mediante un tornillo con una rosca
de paso igual a 4 milímetros por vuelta.
Si queremos elevar la silla 6 centímetros
¿Cuántas vueltas será necesario dar al tornillo?

Para resolver el problema, escribimos primero los datos disponibles,
convirtiendo todas las distancias a la misma unidad.

$ "Avance" = 6 "cm" = 60 "mm" $

$ "Paso" = 4 "mm/vuelta" $
 
A continuación escribimos la fórmula y sustituimos las cantidades
conocidas:

$ "Avance" = "Giro" dot "Paso" $

$ 60 "mm" = "Giro" dot 4 "mm/vuelta" $

Para finalizar, despejamos la incógnita para hallar el resultado:
 
$ "Giro" = ( 60 "mm" ) / ( 4 "mm/vuelta" ) = 15 "vueltas" $

#colbreak()

= Ejercicio tornillo de banco

Un tornillo de banco se abre una distancia de 12 centímetros
tras girar la manivela un total de 40 vueltas.
¿Cuál es el paso del tornillo?

Para resolver el problema, escribimos primero los datos de los que
disponemos, convirtiendo todas las distancias a la misma unidad.

$ "Avance" = 12 "cm" = 120 "mm" $

$ "Giro" = 40 "vueltas" $

A continuación escribimos la fórmula y sustituimos las cantidades
conocidas.
 
$ "Avance" = "Giro" dot "Paso" $

$ 120 "mm" = 40 "vueltas" dot "Paso" $
 
Para finalizar, despejamos la incógnita para hallar el resultado.
 
$ "Paso" = 120 "mm" / 40 "vueltas" = 3 "mm/vuelta" $


= Ejercicio tornillo de microscopio

Un microscopio dispone de un tornillo para subir y bajar la platina
y poder enfocar correctamente el objeto que se desea observar.
Si el paso del tornillo es de 0,5 milímetros y realizamos un giro de
16 vueltas ¿cuánto avanzará la platina?

Para resolver el problema, escribimos primero los datos disponibles,
convirtiendo todas las distancias a la misma unidad.

$ "Paso" = 0,5 "mm/vuelta" $

$ "Giro" = 16 "vueltas" $

A continuación escribimos la fórmula y sustituimos las cantidades
conocidas:

$ "Avance" = "Giro" dot "Paso" $

$ "Avance" = 16 "vueltas" dot 0,5 "mm/vuelta" $

Para finalizar, no hace falta despejar y podemos calcular directamente
el resultado:

$ "Avance" = 8 "mm" $

]

#pagebreak()

//
// PÁGINA 8
//

#align(center)[
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE TORNILLOS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[
10. ¿Qué es un tornillo?
#v(1fr)

11. Nombra las nueve diferentes partes de la siguiente imagen:

#figure(
  image("_images/mecan-tornillo-03.png", width: 100%),
)
#v(1fr)

12. ¿Qué es el paso de un tornillo?
#v(1fr)

#colbreak()

13. ¿Qué tres aplicaciones tienen los tornillos? Escribe un ejemplo de
    cada una de las aplicaciones.
#v(1fr)

14. ¿Por qué crees que los tornillos permiten producir movimientos de
    avance con mucha precisión?
#v(1fr)

15. Una prensa utiliza un tornillo para cerrar su mordaza.
    El tornillo tiene un paso de 6 mm por vuelta. Si queremos cerrar
    la prensa 18 cm, ¿cuántas vueltas debemos dar al tornillo?
#v(1fr)

16. Un elevador mecánico sube una plataforma 2 metros mediante un
    tornillo de paso 10 mm por vuelta. ¿Cuántas vueltas del tornillo
    son necesarias para subir la plataforma?
#v(1fr)

]

#pagebreak()


//
// PÁGINA 9
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

17. El tornillo que ajusta la altura de la aguja de una máquina de
    coser tiene un paso de 1 mm. Si queremos bajar la aguja 5 mm, 
    ¿cuántas vueltas hay que dar al tornillo?
#v(1fr)

18. Un tornillo de una prensa de laboratorio permite abrir 40 mm tras
    dar 25 vueltas. ¿Cuál es el paso del tornillo?
#v(1fr)

19. Un tornillo de una prensa hidráulica sube el pistón 0,75 m mediante
    150 vueltas. ¿Cuál es el paso del tornillo?
#v(1fr)

20. Una mordaza de banco se desplaza 15 centímetros tras girar la
    manivela 60 vueltas. ¿Cuál es el paso del tornillo?
#v(1fr)

#colbreak()

21. Una prensa de carpintero se ajusta mediante un tornillo con paso
    de 5 mm por vuelta. Si giramos la manivela 12 vueltas,
    ¿cuánto se desplazará la mordaza?
#v(1fr)

22. Una silla de laboratorio tiene un tornillo con paso de 2 mm por
    vuelta. Si se dan 25 vueltas al tornillo, ¿cuánto se eleva la silla?
#v(1fr)

23. Una sierra de banco tiene un tornillo de ajuste del soporte con
    paso de 1,5 mm por vuelta. Si giramos la manivela 40 vueltas,
    ¿cuánto se desplazará el soporte?
#v(1fr)

]


//
// PÁGINA 10
//

#align(center)[
  #text(size: 16pt, weight: "bold")[POLEAS Y POLIPASTOS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

Una *polea* es una *máquina simple* formada por una rueda con una ranura
alrededor por la que pasa una cuerda.

Las poleas se utilizan para *levantar objetos* o para cambiar la dirección
de una fuerza.

= Aplicaciones de las poleas

La *función de la polea* es desviar la dirección y la posición
de la cuerda y, por tanto, de la fuerza aplicada.

Por ejemplo:
- En un *pozo* una polea permite levantar un cubo de agua
  tirando hacia abajo, lejos del brocal, lo cual es más cómodo
  que tirar hacia arriba de la cuerda para levantar el cubo.
- En unas *cortinas* las poleas permiten moverlas tirando de las
  cuerdas a la altura de la mano, aunque el raíl esté mucho más alto en
  el techo.
  
En todos los ejemplos siguientes las poleas solo cambian la dirección de
la fuerza, pero no reducen la cantidad de fuerza necesaria para levantar
el peso.

Por lo tanto, para levantar un peso de 60 kgf (60 kilogramos-fuerza), hay
que estirar la cuerda con una fuerza de 60 kgf.

#figure(     
  grid(
    columns: (auto, 1fr, auto), align: horizon,
    [#image("_images/mecan-poleas-01.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-02.png", height: 50mm)],
  )
)
#figure(
  image("_images/mecan-poleas-09.png", height: 50mm)
)


 
= Polipastos
Un *polipasto* es un sistema formado por al menos una polea móvil,
unida al peso que queremos levantar.
El polipasto puede levantar pesos con ventaja mecánica, es decir,
que permite levantar un peso con menos fuerza.

Para calcular la fuerza necesaria para levantar el peso, hay que dividir
el peso entre el número de tramos de cuerda que están tirando del peso
hacia arriba.

En los siguientes polipastos hay *2 tramos de cuerda* que tiran del
peso hacia arriba y, por lo tanto, la fuerza que hay que realizar para
levantar el peso se divide entre los dos tramos, con un resultado de
30 kgf:
 
#figure(
  grid(
    columns: (auto, 1fr, auto), align: horizon,
    [#image("_images/mecan-poleas-03.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-04.png", height: 50mm)],
  )
)

En los siguientes polipastos hay *3 tramos de cuerda* que tiran del
peso hacia arriba y, por lo tanto, la fuerza que hay que realizar para
levantar el peso se divide entre tres, con un resultado de 20 kgf.

#figure(
  grid(
    columns: (auto, 1fr, auto), align: horizon,
    [#image("_images/mecan-poleas-05.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-07.png", height: 50mm)],
  )
)

]


#pagebreak()

//
// PÁGINA 11
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

En los siguientes polipastos hay *4 tramos de cuerda* que tiran del
peso hacia arriba y, por lo tanto, la fuerza que hay que realizar para
levantar el peso se divide entre cuatro, con un resultado de 15 kgf.

#figure(
  image("_images/mecan-poleas-06.png", height: 50mm),
)
#figure(
  image("_images/mecan-poleas-08.png", height: 50mm),
)
 
Hay que tener en cuenta que, a veces, las poleas de no están enganchadas
al peso y, por lo tanto, no se cuentan a la hora de calcular la fuerza
con la que hay que tirar de la cuerda.

En el siguiente polipasto hay *2 tramos de cuerda* que tiran del peso
hacia arriba y, por lo tanto, la fuerza que hay que realizar para
levantar el peso se divide entre las dos, con un resultado de 30 kgf.

#figure(
  image("_images/mecan-poleas-10.png", height: 50mm),
)

#colbreak()

En el siguiente polipasto hay *3 tramos de cuerda* que tiran del peso
hacia arriba y, por lo tanto, la fuerza que hay que realizar para
levantar el peso se divide entre tres, con un resultado de 20 kgf.

#figure(
  image("_images/mecan-poleas-11.png", height: 50mm),
)


= Polipastos anidados
Un polipasto está anidado cuando un polipasto tira de la cuerda de
otro polipasto.

En este caso, cada uno divide la fuerza del otro, consiguiendo aún más
ventaja mecánica.

En el siguiente polipasto, la polea de abajo divide entre *dos tramos de
cuerda* el peso de 60 kgf, por lo que la primera cuerda tendrá una tensión
de solo 30 kgf.

La polea de arriba vuelve a dividir entre *dos tramos de cuerda* la fuerza
de la primera cuerda, por lo que la tensión será de 15 kgf.
Esta será la fuerza F que hay que realizar para subir el peso.
 
#figure(
  image("_images/mecan-poleas-12.png", height: 58mm),
)

]

#pagebreak()

//
// PÁGINA 11
//

24. *Ejercicio:* Calcula la fuerza que hay que realizar para levantar los
    siguientes pesos. En cada imagen, señala con una línea horizontal todos
    los tramos de cuerda están tirando hacia arriba del peso.

#v(1fr)

#figure(
  grid(
    columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto), align: horizon,
    [#image("_images/mecan-poleas-01b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-02b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-03b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-04b.png", height: 50mm)],
  )
)
#v(1fr)

#figure(
  grid(
    columns: (auto, 1fr, auto, 1fr, auto), align: horizon,
    [#image("_images/mecan-poleas-05b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-06b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-07b.png", height: 50mm)],
  )
)
#v(1fr)

#figure(
  grid(
    columns: (auto, 1fr, auto, 1fr, auto), align: horizon,
    [#image("_images/mecan-poleas-08b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-09b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-10b.png", height: 50mm)],
  )
)
#v(1fr)

#figure(
  grid(
    columns: (1fr, auto, 1fr, auto, 1fr), align: horizon,
    [],
    [#image("_images/mecan-poleas-11b.png", height: 50mm)],
    [],
    [#image("_images/mecan-poleas-12b.png", height: 58mm)],
    [],
  )
)
#v(1fr)


#pagebreak()

//
// PÁGINA 12
//


#align(center)[
  #text(size: 16pt, weight: "bold")[LOS ENGRANAJES]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

Un engranaje es un *mecanismo* compuesto por dos o más *ruedas dentadas*
que encajan entre sí. Su función principal es *transmitir movimiento*
circular y transformar la velocidad y la fuerza de giro.

Cuando las ruedas tienen distinto tamaño, la rueda más grande se llama
*corona* y la más pequeña, *piñón*.

#figure(
  image("_images/mecan-gears-01.png", width: 70mm),
  
  caption: [ Engranaje de corona y piñón con flechas de sentido de giro. ]
)

= Aplicaciones de los engranajes

Una de las aplicaciones más importantes de los engranajes es la
transformación de la velocidad de giro desde un motor, generalmente
rápido y con poco par de giro, hasta la aplicación que ha de realizar
trabajo, generalmente más lenta y con mayor par de giro.

Por ejemplo, en un *automóvil*, los engranajes convierten la alta 
velocidad del motor (que gira muy rápido pero con poca fuerza)
en una velocidad de giro más baja, pero con mayor fuerza para mover
las ruedas.

= Par motor

El par motor es la *fuerza de giro* que tiene un eje.

La denominación fuerza de empuje se suele reservar para el caso de
una fuerza que actúa en línea recta. En el caso de ejes giratorios,
el par motor podemos imaginarlo como la fuerza que haría falta aplicar
con una palanca de un metro de largo para conseguir el mismo efecto de
giro.

Por ejemplo, si un motor de automóvil tiene un par motor de 
$250 "Newton" dot "metro"$, es como si empujáramos un eje giratorio
con una palanca de un metro de longitud aplicando en el extremo 250 Newton
(unos 25 kilogramos de fuerza).

Los engranajes pueden aumentar el par motor (la fuerza de giro),
pero al hacerlo disminuyen la velocidad de giro.

Del mismo modo, si un engranaje aumenta la velocidad de giro, el par motor
disminuye en la misma proporción.

Esto ocurre en todos los mecanismos que transforman el movimiento:
si ganamos fuerza, perdemos velocidad y viceversa.


= Cálculo de engranajes

La *velocidad de giro* de cada rueda dentada de un engranaje depende del
número de dientes que tiene.

La relación entre ambas ruedas se puede calcular con esta fórmula:

$ Z_1 dot N_1 = Z_2 dot N_2  $

Donde:
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$Z_1$ =], [Dientes de la primera rueda dentada.])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$N_1$ =], [Velocidad de giro de la primera rueda dentada.])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$Z_2$ =], [Dientes de la segunda rueda dentada.])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$N_2$ =], [Velocidad de giro de la segunda rueda dentada.])

Es decir, que el número de dientes de una rueda multiplicado por su 
velocidad de giro es constante e igual para todas las ruedas.

La velocidad angular se suele medir en *revoluciones por minuto* también
escrito como *rpm*, que significa el número de vueltas completas que gira
la rueda en un minuto.
Un motor típico suele tener una velocidad angular en un rango que va 
desde las 600 rpm hasta las 6000 rpm.
]

#pagebreak()


//
// PÁGINA 13
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

= Ejercicio aerogenerador

Queremos calcular un engranaje que multiplique la velocidad de giro del
eje de un aerogenerador.

Las aspas de un aerogenerador giran a una velocidad de 20 rpm, pero
el generador eléctrico necesita girar a 1000 rpm.
Si el *piñón* conectado al generador tiene *15 dientes*
¿Cuántos dientes tendrá la corona conectada a las aspas?

El primer paso será escribir los datos del problema:

$ N_1 = 20 "rpm" $

$ N_2 = 1000 "rpm" $

$ Z_2 = 15 "dientes" $

A continuación escribimos la fórmula y sustituimos los valores conocidos:

$ Z_1 dot N_1 = Z_2 dot N_2  $
 
$ Z_1 dot 20 "rpm" = 15 "dientes" dot 1000 "rpm"  $

Por último despejamos la ecuación y calculamos el valor de la incógnita:
 
$ Z_1 = ( 15 "dientes" dot 1000 "rpm" ) / ( 20 "rpm" ) $

$ Z_1 = 750 "dientes" $
 
En la práctica, cuando la relación entre los dientes es tan grande,
se suelen utilizar trenes de engranajes con más de dos ruedas conectadas
entre sí para reducir o aumentar la velocidad de giro en varias etapas.

#figure(
  image("_images/mecan-gears-02.png", width: 70mm),
  
  caption: [ Tren de engranajes que reduce mucho la velocidad de giro del piñón. ]
)

#colbreak()

= Ejercicio automóvil eléctrico

Un automóvil eléctrico tiene el motor conectado mediante un *engranaje
reductor* a las ruedas. Sabemos que la velocidad máxima del motor eléctrico
es de 9000 rpm y que la velocidad máxima de las ruedas es de 1500 rpm.

Si el número de dientes del engranaje más pequeño debe ser de 8 o más
dientes ¿Cuantos dientes debe tener cada engranaje?

Este ejercicio permite varias soluciones válidas porque no especifica
el tamaño del piñón.

El primer paso será escribir los datos del problema. El motor estará
conectado al primer engranaje y las ruedas al segundo engranaje.
 

$ N_1 = 9000 "rpm" $

$ N_2 = 1500 "rpm" $

El engranaje 1, conectado al motor, es el que gira más rápido y,
por lo tanto, es el engranaje más pequeño de los dos.
Ahora vamos a escoger un tamaño para este engranaje pequeño, que sea igual
o mayor a 8 dientes:

$ Z_1 = 10 "dientes" $
 
A continuación escribimos la fórmula y sustituimos los valores conocidos:

$ Z_1 dot N_1 = Z_2 dot N_2  $
 
$ 10 "dientes" dot 9000 "rpm" = Z_2 dot 1500 "rpm"  $
 
Por último despejamos la ecuación y calculamos el valor de la incógnita:

$ Z_2 = ( 10 "dientes" dot 9000 "rpm" ) / ( 1500 "rpm" )  $

$ Z_2 = 60 "dientes" $
 
El número de dientes del segundo engranaje conectado a la rueda será de
60 dientes.

]

#pagebreak()

//
// PÁGINA 14
//

#align(center)[
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE ENGRANAJES]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

25. ¿Qué es un engranaje? ¿Qué función tiene?
#v(1fr)

26. ¿Cómo se llaman los distintos engranajes y qué les distingue?
#v(1fr)

27. ¿Cuál es una de las aplicaciones más importantes de los engranajes?
#v(1fr)

28. ¿Qué es el par motor y en qué unidades se mide?
#v(1fr)

29. ¿Qué relación hay entre la velocidad y el par motor en un engranaje?
#v(1fr)

#colbreak()

30. Un taladro eléctrico tiene un motor que gira a 12000 rpm.
    Mediante un engranaje reductor se quiere que la broca gire a 3000 rpm.
    Si el piñón conectado al motor tiene 12 dientes,
    ¿cuántos dientes debe tener la corona conectada a la broca?

31. Una cinta transportadora industrial se mueve gracias a un motor que 
    gira a 1800 rpm. La cinta debe girar a 300 rpm. Si la corona 
    conectada a la cinta tiene 72 dientes, ¿cuántos dientes debe tener el 
    piñón conectado al motor?

32. En una bicicleta estática, el eje de los pedales gira a 60 rpm y está 
    conectado mediante engranajes al volante de inercia, que gira a 360 
    rpm. Si el engranaje de los pedales tiene 40 dientes, ¿cuántos 
    dientes tiene el engranaje del volante?

33. En un reloj mecánico, un engranaje gira a 120 rpm y mueve otro 
    engranaje que gira a 10 rpm. Si el engranaje rápido tiene 12 dientes, 
    ¿cuántos dientes tiene el engranaje lento?

34. Un ventilador industrial utiliza un motor que gira a 3000 rpm. Para 
    reducir el ruido, el eje del ventilador debe girar a 750 rpm. Si el 
    engranaje del motor debe tener entre 12 y 20 dientes, ¿cuántos 
    dientes debe tener el engranaje del ventilador?

35. Un motor eléctrico gira a una velocidad de 1800 rpm y está conectado 
    mediante engranajes a un eje secundario. El engranaje del motor tiene 
    12 dientes y el engranaje del eje secundario tiene 48 dientes. ¿A qué 
    velocidad gira el eje secundario?

36. En una máquina herramienta, un eje gira a 600 rpm y transmite el 
    movimiento a otro eje mediante un engranaje. El primer engranaje 
    tiene 30 dientes y el segundo engranaje tiene 15 dientes. ¿Cuál es la 
    velocidad de giro del segundo eje?

37. Un sistema reductor está formado por dos engranajes. El engranaje de 
    entrada gira a 3000 rpm y tiene 20 dientes. El engranaje de salida 
    tiene 80 dientes. ¿A qué velocidad gira el engranaje de salida?

38. Una mezcladora industrial utiliza un motor que gira a 1200 rpm. El 
    motor está conectado a las palas mediante un engranaje reductor. El 
    engranaje del motor tiene 16 dientes y el engranaje de las palas 
    tiene 64 dientes. ¿Cuál es la velocidad de giro de las palas?
]