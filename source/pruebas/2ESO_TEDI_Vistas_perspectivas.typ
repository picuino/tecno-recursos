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
  [Vistas y Perspectivas]
)


#pregunta([Dibuja las vistas de las siguientes figuras en perspectiva.], 6)
#v(-0.2cm)
#align(center)[
  #grid(
    columns: (9cm, 9cm),
    gutter: 0.05cm,
    image("_images/dibujo-persp-der-01-f3.png", width: 100%),
    image("_images/dibujo-persp-der-01-f4.png", width: 100%),
    image("_images/dibujo-persp-der-02-f2.png", width: 100%),
    image("_images/dibujo-persp-der-02-f3.png", width: 100%),
    image("_images/dibujo-persp-der-03-f3.png", width: 100%),
    image("_images/dibujo-persp-der-03-f4.png", width: 100%)
  )
]


#pregunta([Dibuja las figuras en perspectiva a partir de sus vistas.], 4)
#v(-0.2cm)
#align(center)[
  #grid(
    columns: (9cm, 9cm),
    gutter: 0.05cm,
    image("_images/dibujo-vistas-der-01-f5.png", width: 100%),
    image("_images/dibujo-vistas-der-02-f4.png", width: 100%),
    image("_images/dibujo-vistas-der-03-f2.png", width: 100%),
    image("_images/dibujo-vistas-der-03-f6.png", width: 100%),
  )
]
