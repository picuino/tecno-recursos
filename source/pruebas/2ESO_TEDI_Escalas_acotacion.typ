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
  
#import "_plantilla_examen.typ": *


//
// EXAMEN
// 

#cabecera(
  [2º ESO Tecnología y Digitalización],
  [Escalas y acotación]
)


#pregunta([Dibuja las siguientes figuras en escala de ampliación (2:1)
y de reducción (1:2).], 6)
#v(-0.2cm)
#align(center)[
  #image("_images/dibujo-escalas-ejercicios.png", width: 19cm)
]

#pagebreak()

#pregunta([Acota las siguientes figuras siguiendo las normas de dibujo.], 4)
#v(-0.2cm)
#align(center)[
  #grid(
    columns: (6.45cm, 6.45cm),
    column-gutter: 1cm,
    row-gutter: 0.1cm,
    image("_images/dibujo-acotacion-01-f2.png", width: 100%),
    image("_images/dibujo-acotacion-01-f3.png", width: 100%),
    image("_images/dibujo-acotacion-01-f5.png", width: 100%),
    image("_images/dibujo-acotacion-01-f6.png", width: 100%),
    image("_images/dibujo-acotacion-01-f8.png", width: 100%),
    image("_images/dibujo-acotacion-01-f9.png", width: 100%),
    image("_images/dibujo-acotacion-01-f10.png", width: 100%),
    image("_images/dibujo-acotacion-01-f11.png", width: 100%),
  )
]
