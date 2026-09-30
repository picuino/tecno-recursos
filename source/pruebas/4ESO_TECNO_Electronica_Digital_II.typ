//
// CONFIGURACIÓN DE PÁGINA
//

#set page(
  paper: "a4",
  margin: ( top: 0.8cm, bottom: 0.6cm, left: 1cm, right: 1cm )
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

#show raw.where(block: false): set text(
  font: "Liberation Mono",
  size: 10pt,
  weight: "bold"
)
 
#import "_plantilla_examen.typ": *


//
// EXAMEN
// 

#cabecera(
  [4º ESO Tecnología],
  [Electrónica Digital II (5-10)]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([¿Qué es una puerta lógica? ¿Qué se puede llegar a construir con las puertas lógicas?], 0.8, sep: 5fr)


#pregunta([Dibuja el símbolo de la puerta NOT y escribe debajo su
función lógica y sus tres diferentes nombres.], 0.8, sep: 5fr)


#pregunta([Dibuja la tabla de verdad de la puerta NOT con valores
numéricos 0 y 1 y otra tabla con valores lógicos L y H.], 0.8,
sep: 5fr)


#colbreak()


#pregunta([¿Cómo se comportan tres puertas NOT conectadas en serie?],
0.8, sep: 5fr)


#pregunta([Dibuja el símbolo de la puerta lógica NOR, su función
lógica y su tabla de verdad.], 0.8, sep: 5fr)



#pregunta([Dibuja una puerta lógica OR de tres entradas y su tabla
de verdad.], 0.8, sep: 5fr)

]


#pagebreak()


#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja el símbolo de la puerta lógica NAND, su función
lógica y su tabla de verdad.], 0.8, sep: 8fr)


#pregunta([Dibuja una puerta lógica AND de tres entradas y su
tabla de verdad.], 0.8, sep: 8fr)


#pregunta([Transforma las siguientes puertas lógicas para que
utilicen la puerta alternativa según las leyes de De Morgan.], 1.0)
#v(-3mm)
#image("_images/electronic-digital-01.png", width: 40mm)
#v(-5mm)
#image("_images/electronic-digital-02.png", width: 40mm)


#colbreak()


#pregunta([Dibuja el símbolo de la puerta lógica XOR, su función
lógica y su tabla de verdad.], 0.8, sep: 5fr)


#pregunta([Dibuja el símbolo de la puerta lógica XOR de tres
entradas y su tabla de verdad.], 0.8, sep: 8fr)


#pregunta([Dibuja la tabla de verdad del siguiente circuito.], 1.0)
#v(-3mm)
#image("_images/electronic-digital-03.png", width: 50mm)
#v(5fr)

]

#test_puntos_acumulados()