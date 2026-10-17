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
      #link("https://www.picuino.com/es/mecan-estructuras-index.html")[Las Estructuras]],
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
  size: 12pt,
  hyphenate: true
)

#set par(
  justify: true,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 14pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 12pt, weight: "bold")[#it]
  } else {
    it
  }
]

#show heading: set block(above: 2em)

#show math.equation: set text(size: 1.2em)

#set figure(supplement: none, numbering: none)
#show figure.caption: set text(size: 10pt, weight: "bold")
#show figure: set block(above: 3mm, below: 4mm)

#set terms(
  indent: 0mm,
  hanging-indent: 8mm, 
  separator: [],
  spacing: 1.2em     
)

// ***********************************************************************
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[INTRODUCCIÓN A LAS ESTRUCTURAS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

Una *estructura* es un conjunto de elementos destinados a soportar 
esfuerzos sin romperse ni deformarse.

*En la naturaleza* existen multitud de estructuras, desde el tronco que 
sostiene un árbol hasta nuestro esqueleto. Todas ellas soportan esfuerzos 
para superar la gravedad y, en el caso de los esqueletos, también permiten 
el movimiento.

*En el ámbito técnico* la construcción de estructuras para fabricar 
viviendas, barcos o vasijas es tan antigua como la propia civilización. 
Hoy en día las estructuras pueden ser muy complejas y permiten construir 
edificios, automóviles, aviones, puentes, torres de alta tensión, presas y 
un sinfín de aparatos sin los cuales el mundo actual, tal y como lo 
conocemos, no existiría.


= Origen de las estructuras

Las estructuras se pueden diferenciar dependiendo de su origen:

*Estructuras naturales:*
#pad(left: 8mm)[
  - Tronco de un árbol.
  - Caparazón de tortuga.
  - Esqueleto humano.
  - Conchas de moluscos.
  - Nido de pájaro.
]

*Estructuras artificiales:*
#pad(left: 8mm)[
  - Puente colgante.
  - Muralla.
  - Carcasa de ordenador.
  - Grúa de obra.
  - Estructura de un edificio. 
]

#colbreak()

= Clasificación de las estructuras

Dependiendo de sus elementos podemos clasificar las estructuras en los 
siguientes grupos:

== Masivas

Formadas por una gran masa de material sin apenas huecos.

Ejemplos: Presa de agua. Pirámide. Murallas.

#figure(
  image("_images/estructuras-presa.jpg", width: 70mm),
  
  caption: [
    Presa de agua de Hoover. \
    #link("https://commons.wikimedia.org/wiki/File:Hoover_Dam,_02.jpg")[Adam Kliczek],
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]
  ]
)


== Abovedadas

Formadas por arcos y bóvedas.

Ejemplos: Techo de catedral gótica. Puente romano. Acueducto. Panteón de Roma.
 
#figure(
  image("_images/estructuras-acueducto.jpg", width: 70mm),
  
  caption: [
    Arcos del acueducto de Segovia. \
    #link("https://commons.wikimedia.org/wiki/File:Acueducto_de_Segovia_-_21.jpg")[Carlos Delgado],
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]
  ]
)

]

#pagebreak()

// ***********************************************************************
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

== Trianguladas

Formadas por barras unidas entre sí en triángulos.

Ejemplos: Grúa de obra. Torre Eiffel. Torre de alta tensión.

#figure(
  image("_images/estructuras-puente-triangulado.jpg", width: 70mm),
  
  caption: [
    Puente con estructura triangulada. \
    #link("https://commons.wikimedia.org/wiki/File:Shelburne_Falls_-_truss_bridge_over_Deerfield_River.jpg")[Waz8],
    #link("https://creativecommons.org/publicdomain/zero/1.0/deed.en")[CC0 1.0]
  ]
)


== Entramadas

Formadas por elementos verticales y horizontales.

Ejemplos: Estructura de edificio. Sillas y mesas. Escalera de mano.

#figure(
  image("_images/estructuras-grua-portico.jpg", width: 65mm),
  
  caption: [
    Grúa en forma de pórtico. \
    #link("https://commons.wikimedia.org/wiki/File:Travelling_beam_crane_at_Tallington_concrete_works_-_geograph.org.uk_-_4292023.jpg")[Richard Humphrey],
    #link("https://creativecommons.org/licenses/by-sa/2.0/deed.en")[CC BY-SA 2.0]
  ]
)

== Colgantes

Formadas por cables que soportan las cargas.

Ejemplos: Teleférico. Puente atirantado o puente colgante. Tirolina.

#figure(
  image("_images/estructuras-puente-colgante.jpg", width: 70mm),
  
  caption: [
    Puente colgante de San Francisco. \
    #link("https://commons.wikimedia.org/wiki/File:San_Francisco%E2%80%93Oakland_Bay_Bridge_at_Night.jpg")[Mikebhuang],
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]
  ]
)


#colbreak()

== Laminares

Formadas por una lámina o pared delgada.

Ejemplos: Cuenco. Caparazón de tortuga. Casco para moto. Depósito de agua.

#figure(
  image("_images/estructuras-casco.jpg", width: 70mm),
  
  caption: [
    Casco para motorista. \
    #link("https://commons.wikimedia.org/wiki/File:Moto_Days_2013.jpg")[Stefania Anghelea],
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]
  ]
)

= Movimiento en las estructuras

La mayoría de las estructuras se construyen para que no puedan moverse.
Sin embargo, algunas estructuras deben permitir el movimiento para poder
funcionar correctamente. Estas estructuras seguirán resistiendo los
esfuerzos y su propio peso sin romperse, pero permitirán el movimiento
de alguna de sus partes.

*Estructuras móviles:*

Se pueden desplazar o están articuladas. Soportan cargas mientras
permiten el movimiento.

Ejemplos: Puerta con bisagra. Puente levadizo. Silla con ruedas. Grúa.

*Estructuras fijas:*

No se desplazan ni se pueden mover.

Ejemplos: Puente. Edificio. Torre de alta tensión. Cuenco.

]


// ***********************************************************************
// PÁGINA 3
//

#align(center)[
  #v(8mm)
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE INTRODUCCIÓN A LAS ESTRUCTURAS]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

1. Enumera cuatro estructuras naturales y cinco artificiales.
#v(2fr)

2. Escribe cuatro estructuras masivas.
#v(1fr)

3. Escribe cuatro estructuras abovedadas.
#v(1fr)

4. Escribe cuatro estructuras trianguladas.
#v(1fr)

5. Escribe cuatro estructuras entramadas.
#v(1fr)

6. Escribe cuatro estructuras colgantes.
#v(1fr)

7. Escribe cuatro estructuras laminadas.
#v(1fr)

8. Indica las diferencias entre las estructuras trianguladas y entramadas
#v(1fr)

9. Indica a qué tipo de estructura se refiere cada una de las siguientes
   frases:
Formada por cables que soportan las cargas.
#v(6mm)
Formada por elementos verticales y horizontales.
#v(6mm)
Formada por arcos y bóvedas.
#v(6mm)
Formada por una gran masa de material sin apenas huecos.
#v(6mm)
Formada por una lámina o pared delgada.
#v(6mm)
Formada por barras unidas entre sí en triángulos.
#v(6mm)

#colbreak()
10. Clasifica las siguientes estructuras:
Acueducto.
#v(1fr)
Caparazón de tortuga.
#v(1fr)
Carcasa de ordenador.
#v(1fr)
Casco.
#v(1fr)
Conchas de moluscos.
#v(1fr)
Cuenco.
#v(1fr)
Esqueleto humano.
#v(1fr)
Estructura de edificio.
#v(1fr)
Grúa de obra.
#v(1fr)
Iglesia.
#v(1fr)
Mesa.
#v(1fr)
Muralla china.
#v(1fr)
Pirámide.
#v(1fr)
Presa de agua.
#v(1fr)
Puente atirantado.
#v(1fr)
Puente colgante.
#v(1fr)
Puente romano.
#v(1fr)
Silla.
#v(1fr)
Teleférico.
#v(1fr)
Torre de alta tensión.
#v(1fr)
Torre Eiffel.
#v(1fr)
Tronco de un árbol.
#v(1fr)

]

#pagebreak()


// ***********************************************************************
// PÁGINA 4
//

#align(center)[
  #text(size: 16pt, weight: "bold")[ESFUERZOS EN LAS ESTRUCTURAS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

Las estructuras están diseñadas para soportar cargas externas sin
deformarse ni romperse. Como consecuencia de estas cargas, las
estructuras experimentan fuerzas internas llamadas *esfuerzos*.


= Cargas y esfuerzos

/ Carga:: \ Fuerza externa que actúa sobre una estructura. Puede ser un peso,
          un empuje, una dilatación térmica, etc.

/ Esfuerzo:: \ Tensión o fuerza interna que aparece en una estructura como
             resultado de las cargas externas.

Por ejemplo, una persona sentada en una silla es una carga para la silla.
Debido a esta carga, las patas de la silla soportan un esfuerzo de
compresión.

/*
Otro ejemplo sería el de una ráfaga de viento que supone una carga para un
árbol. Debido a esta carga, el tronco del árbol soporta un esfuerzo de
flexión.
*/

Existen 5 tipos de esfuerzos. A continuación se explica cada uno.

= Tracción

El esfuerzo de tracción tiende a estirar la estructura:

#figure(
  image("_images/esfuerzo-traccion.png", width: 85mm),
)

Ejemplos de elementos que soportan este esfuerzo:
#pad(left: 8mm)[
  - Cadenas de un columpio.
  - Cable de una grúa.
]

= Compresión

El esfuerzo de compresión tiende a comprimir la estructura:

#figure(
  image("_images/esfuerzo-compresion.png", width: 80mm),
)

Ejemplos de elementos que soportan este esfuerzo:
#pad(left: 8mm)[
  - Patas de una silla.
  - Columnas de un edificio.
]


= Flexión

El esfuerzo de flexión tiende a doblar la estructura:

#figure(
  image("_images/esfuerzo-flexion.png", width: 70mm),
)

Ejemplos de elementos que soportan este esfuerzo:
#pad(left: 8mm)[
  - Tablero de una silla.
  - Suelos de edificios.
  - Brazo de una grúa.
]


= Torsión

El esfuerzo de torsión tiende a retorcer la estructura:

#figure(
  image("_images/esfuerzo-torsion.png", width: 70mm),
)

Ejemplos de elementos que soportan este esfuerzo:
#pad(left: 8mm)[
  - Eje de un destornillador.
  - Llave al girar.
  - Eje de un grifo.
]

]

#pagebreak()

// ***********************************************************************
// PÁGINA 5
//

#place(center)[ #line(angle: 90deg, length: 63mm) ]

#columns(2, gutter: 0.8cm)[

= Corte o cizalla
El esfuerzo de corte o cizalla tiende a cortar o deslizar una parte de
la estructura respecto a la otra:

#figure(
  image("_images/esfuerzo-cortante.png", width: 55mm),
)

#colbreak()

Ejemplos de elementos que soportan este esfuerzo:
#pad(left: 8mm)[
  - Papel cortado con tijeras.
  - Viga horizontal que apoya sobre viga vertical.
  - Tornillo que sujeta un cuadro.
]

]


#align(center)[
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE ESFUERZOS EN LAS ESTRUCTURAS]
]

#place(center)[ #line(angle: 90deg, length: 186mm) ]

#columns(2, gutter: 0.8cm)[

11. ¿Qué diferencia existe entre carga y esfuerzo?
#v(1fr)

12. Escribe tres ejemplos de esfuerzos de tracción.
#v(1fr)

13. Escribe tres ejemplos de esfuerzos de compresión.
#v(1fr)

14. Escribe tres ejemplos de esfuerzos de flexión.
#v(1fr)

15. Escribe tres ejemplos de esfuerzos de torsión.
#v(1fr)

16. Escribe tres ejemplos de esfuerzos de corte o cizalla.
#v(1fr)

#colbreak()

17. Analiza los esfuerzos que aparecen en una mesa cuando se coloca un
    peso encima de ella.
#v(1fr)

18. Dibuja y nombra los esfuerzos que aparecen en un columpio cuando se
    sube un niño sobre el asiento.
#figure(
  image("_images/mecan-columpio.png", width: 60mm),
)

19. Analiza los esfuerzos que aparecen en la siguiente grúa cuando
    levanta una carga.
#figure(
  image("_images/mecan-jib-crane.jpg", width: 60mm),
)

]


// ***********************************************************************
// PÁGINA 6
//

#align(center)[
  #text(size: 16pt, weight: "bold")[ESTABILIDAD DE LAS ESTRUCTURAS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

Las estructuras que estamos estudiando, además de ser *rígidas* para
soportar cargas sin romperse ni deformarse, deben ser estables para
no volcar, doblarse u oscilar ante las fuerzas externas.
Existen varios problemas que pueden aparecer en una estructura
cuando no es suficientemente estable. A continuación se explican
los más comunes.

= Vuelco

El vuelco de una estructura se produce cuando su centro de gravedad cae
fuera de la base de apoyo.
/ Centro de gravedad:: \ Es el punto donde se concentra toda la masa de
  la estructura. Es el lugar donde, si la apoyamos, no caerá hacia ningún
  lado.
  
  En el caso de un martillo, por ejemplo, el centro de gravedad está en
  el mango, muy cerca de la cabeza, que es la parte más pesada.

En el camión de las siguientes figuras, el centro de gravedad está marcado
con un punto rojo y se encuentra bastante alto.

En la primera imagen, el centro de gravedad cae dentro de la base de 
apoyo, por lo que el camión es estable:

#figure(
  image("_images/centro-gravedad-02.png", width: 50mm),
)

#colbreak()

En la segunda imagen, el camión está inclinado y el centro de gravedad 
está a punto de salir de la base. Está cerca de volcar:

#figure(
  image("_images/centro-gravedad-03.png", width: 50mm),
)

En la tercera imagen, el centro de gravedad ya no está sobre la base de
apoyo. En este caso el camión es inestable y volcará:

#figure(
  image("_images/centro-gravedad-04.png", width: 50mm),
)

Para que se produzca el *vuelco*, el *centro de gravedad* debe caer fuera
de la zona de apoyo de la estructura sobre el suelo.
]

#pagebreak()


// ***********************************************************************
// PÁGINA 7
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

= Soluciones al vuelco

Existen varias formas de evitar que una estructura vuelque.

== Añadir un contrapeso

Cuando una estructura se inclina demasiado hacia un lado, un contrapeso 
colocado en el lado contrario puede equilibrarla.

Ejemplo: Contrapesos en las grúas de obra o en los camiones-grúa.

#figure(
  image("_images/mecan-grua-obra.jpg", width: 80mm),
  
  caption: [
    Grúa de obra con contrapeso a la izquierda. \
    Imagen de #link("https://pixabay.com/es/users/photomix-company-1546875/")[Photomix] en
    #link("https://pixabay.com/es/photos/edificio-grua-sitio-de-construcci%C3%B3n-1804030/")[Pixabay]
  ]
)

== Ampliar la base de apoyo

Cuanto mayor sea la base de apoyo, más difícil será que el centro de 
gravedad salga de ella.

Ejemplos: Camiones grúa con apoyos extensibles. Coches deportivos muy 
anchos. Las personas separan los pies para aumentar su estabilidad cuando 
el suelo se mueve.

#figure(
  image("_images/mecan-camion-grua-bomberos.jpg", width: 70mm),
  
  caption: [
    Camión de bomberos con grúa y apoyos extensibles. \
    Imagen de #link("https://pixabay.com/es/users/kollinger-15617407/")[Hermann Kollinger] en
    #link("https://pixabay.com/es/photos/bomberos-pesado-r%C3%BCstfahrzeug-srf-5211377/")[Pixabay]
  ]
)

#colbreak()

== Bajar el centro de gravedad

Cuanto más bajo esté el centro de gravedad, más difícil será que salga de 
la base de apoyo.

Ejemplos: En un camión, colocar los objetos pesados abajo y los ligeros 
arriba. Los coches deportivos son bajos para tener un centro de gravedad 
bajo y ser más estables.

#figure(
  image("_images/mecan-coche-carreras.jpg", width: 70mm),
  
  caption: [
    Fórmula 1 con centro de gravedad muy bajo. \
    Imagen de #link("https://pixabay.com/es/users/cozmicphotos-2999334/")[Nathan Wright] en
    #link("https://pixabay.com/es/photos/f1-coche-carreras-raza-velocidad-2722971/")[Pixabay]
  ]
)


== Anclar la estructura al suelo

Esta solución consiste en unir la estructura al suelo para aumentar su 
estabilidad.

Ejemplos: Vientos de una tienda de campaña. Cables de anclaje de una 
antena. Farolas o mástiles fijados al suelo.

#figure(
  image("_images/mecan-antenas-radio.jpg", width: 70mm),
  
  caption: [
    Antenas de radio con vientos para anclarlas al suelo. \
    Imagen de #link("https://pixabay.com/es/users/loggawiggler-15/")[LoggaWiggler] en
    #link("https://pixabay.com/es/photos/antenas-parab%C3%B3licas-inal%C3%A1mbrico-43232/")[Pixabay]
  ]
)

]

#pagebreak()


// ***********************************************************************
// PÁGINA 8
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

= Pandeo
#grid(
  columns: (1.7fr, 1fr),
  gutter: 8mm,
  [El pandeo es una *inestabilidad* que se produce en barras y columnas 
  *esbeltas* sometidas a *compresión*.
  
  Cuando una barra es muy larga y estrecha (esbelta), corre el riesgo de 
  doblarse y perder resistencia. Si el pandeo continúa, la barra puede 
  llegar a partirse y fallar.],
  [#image("_images/mecan-pandeo-01.png", width: 100%)],
)

= Soluciones al pandeo

== Hacer el perfil más grueso

Si aumentamos el grosor del perfil de la barra o columna, dejará de ser 
esbelta y no pandeará.

Por ejemplo, un tubo grueso con paredes finas puede ser más resistente al 
pandeo que una barra maciza del mismo peso. Por eso las bicicletas usan 
barras tubulares y las torres eléctricas emplean barras en forma de L.

== Sujetar el centro de la barra

Si se sujeta la barra por el centro para impedir que se mueva, el pandeo 
no llegará a producirse.

Por ejemplo, una torre de alta tensión tiene cuatro barras verticales 
esbeltas y otras barras horizontales y oblicuas que las unen y evitan que 
puedan pandear.

#colbreak()

= Oscilaciones

Las oscilaciones o vibraciones de una estructura pueden ser beneficiosas o 
perjudiciales.

En algunos casos conviene que la estructura no sea completamente *rígida*. 
Si puede flexionarse y oscilar ante una carga externa, evita romperse. 
Esto ocurre en los rascacielos durante un terremoto o con vientos fuertes. 
Los mástiles de los barcos y las alas de los aviones también oscilan para 
adaptarse a los esfuerzos.

En otros casos, las oscilaciones pueden aumentar poco a poco, como en un 
columpio, hasta que la estructura se desmorona. Esto ocurrió en el famoso 
puente de *Tacoma Narrows*, apodado Gallopin' Gertie por sus grandes 
oscilaciones. Un viento de solo 64 km/h lo derribó pocos meses después de 
su inauguración, sin causar víctimas.

Las oscilaciones también pueden producir ruidos y vibraciones molestas, 
especialmente cuando coinciden con la *frecuencia de resonancia* de la 
estructura. Si una vibración se repite a esa frecuencia, la oscilación 
puede aumentar mucho.


= Soluciones a las oscilaciones

== Evitar las cargas oscilantes

Esta solución la aplican los soldados al cruzar un puente poco rígido: 
dejan de caminar al mismo ritmo para evitar que el puente entre en 
resonancia.

== Amortiguar la estructura

En vehículos y en edificios resistentes a terremotos se utilizan 
amortiguadores, que absorben la energía de las oscilaciones y reducen la 
resonancia.

]

#pagebreak()


// ***********************************************************************
// PÁGINA 9
//

#align(center)[
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE ESTABILIDAD DE LAS ESTRUCTURAS]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[
20. Explica con tus palabras qué diferencia hay entre estabilidad y
    rigidez en una estructura.
#v(1fr)

21. ¿Qué problemas de estabilidad pueden tener las estructuras?
#v(1fr)

22. ¿Cuándo vuelca una estructura? ¿Qué es el centro de gravedad de una
    estructura?
#v(1fr)

23. Dibuja una estructura poco estable al vuelco y otra que sea muy
    estable al vuelco.
#v(1fr)

24. ¿Qué soluciones hay para evitar que una estructura vuelque?
    Escribe un ejemplo de cada una.
#v(1fr)

25. Piensa en una estantería alta y estrecha. Enumera todos los
    problemas de estabilidad que puede tener y cómo los puedes solucionar.
#v(1fr)

#colbreak()

26. ¿Qué es el pandeo?
#v(1fr)

27. ¿Qué soluciones hay para evitar el pandeo?
    Escribe un ejemplo de cada una.
#v(1fr)

28. En una torre de alta tensión, identifica qué elementos evitan
    el pandeo y cuáles evitan el vuelco.
#v(1fr)

29. ¿Cómo se pueden evitar las oscilaciones perjudiciales en una
    estructura?
#v(1fr)

30. ¿Qué es un amortiguador y para qué sirve?
#v(1fr)

]