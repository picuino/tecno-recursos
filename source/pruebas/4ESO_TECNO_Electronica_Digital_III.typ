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
  [Electrónica Digital III (13-16)]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[


#pregunta([¿Qué tipo de circuito digital es un biestable RS y para
qué sirve?], 0.8, sep: 5fr)


#pregunta([¿Cuántas entradas tiene un biestable RS y qué función
cumple cada una?], 0.8, sep: 5fr)


#pregunta([Dibuja el circuito de un biestable RS con puertas NOR. \
La entrada SET debe valer 1 y la entrada RESET debe valer cero.
Dibuja los valores correctos de las salidas Q y /Q.], 0.8, sep: 5fr)


#colbreak()


#pregunta([Dibuja el circuito de un biestable D con el nombre de
sus entradas y salidas.], 0.8, sep: 5fr)


#pregunta([Explica qué función tienen cada una de las entradas y
salidas del biestable D], 0.8, sep: 5fr)


#pregunta([Dibuja la tabla de verdad de un biestable D y explica
brevemente su funcionamiento normal.], 1.0, sep: 5fr)


]


#pagebreak()


#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[


#pregunta([Dibuja el circuito de un biestable JK con el nombre de
sus entradas y de sus salidas.], 0.8, sep: 5fr)


#pregunta([Dibuja la tabla de verdad de un biestable JK y explica
brevemente su funcionamiento normal.], 1.0, sep: 5fr)


#pregunta([¿Puede tener el biestable JK una entrada prohibida o
indeterminada? \
¿Qué se puede construir con el biestable JK gracias a ese
funcionamiento?], 0.8, sep: 5fr)


#colbreak()

#pregunta([¿Qué es un biestable T, por qué se llama así y para
qué sirve?], 0.8, sep: 5fr)


#pregunta([Dibuja el circuito de un biestable T con el nombre de
sus entradas y de sus salidas.], 0.8, sep: 5fr)


#pregunta([¿Tienen el biestable T alguna semejanza con el
biestable JK? Explica la respuesta], 0.8, sep: 5fr)


]

#test_puntos_acumulados()