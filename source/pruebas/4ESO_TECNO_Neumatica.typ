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
  
#import "_plantilla_examen.typ": *


//
// EXAMEN
// 

#cabecera(
  [4º ESO Tecnología],
  [Neumática]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja un esquema de un cilindro de simple efecto en reposo,
comandado por una válvula 3/2.], 1.5)
#v(8fr)


#pregunta([Explica las características principales de un cilindro de
doble efecto.], 1.0)
#v(8fr)


#pregunta([Dibuja un esquema de un cilindro de doble efecto en reposo,
con el vástago dentro, comandado por una válvula 5/2.], 1.5)
#v(8fr)


#colbreak()


#pregunta([Explica el funcionamiento de la válvula selectora (OR) y
dibuja su tabla de verdad.], 1.0)
#v(8fr)


#pregunta([¿Qué diferencias hay entre una válvula selectora (OR)
neumática y una unión de tubos neumáticos?], 1.0)
#v(8fr)


#pregunta([Explica el funcionamiento de la válvula de simultaneidad
(AND) neumática y dibuja su tabla de verdad.], 1.0)
#v(8fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Explica con detalle el funcionamiento del siguiente circuito.], 1.5)

#image("_images/mecan-neumatic-01.png", width: 80mm)


#colbreak()


#pregunta([Explica con detalle el funcionamiento del siguiente circuito.], 1.5)

#image("_images/mecan-neumatic-02.png", width: 100%)

]

#test_puntos_acumulados()