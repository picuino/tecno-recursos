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
  [3º ESO Tecnología y Digitalización],
  [Vistas y Perspectivas]
)


#pregunta([Dibuja las vistas de las siguientes figuras en perspectiva.], 5)
#v(-0.2cm)
#align(center)[
  #grid(
    columns: (9cm, 9cm),
    gutter: 0.05cm,
    image("_images/dibujo-persp-der-04-f4.png", width: 100%),
    image("_images/dibujo-persp-der-04-f5.png", width: 100%),
    image("_images/dibujo-persp-der-04-f6.png", width: 100%),
    image("_images/dibujo-persp-der-05-f1.png", width: 100%),
    image("_images/dibujo-persp-der-05-f5.png", width: 100%)
  )
]


#pregunta([Dibuja las figuras en perspectiva a partir de sus vistas.], 3)
#align(center)[
  #grid(
    columns: (9cm, 9cm),
    gutter: 0.05cm,
    image("_images/dibujo-vistas-der-04-f1.png", width: 100%),
    image("_images/dibujo-vistas-der-04-f2.png", width: 100%),
    image("_images/dibujo-vistas-der-05-f2.png", width: 100%),
  )
]

#pregunta([Copia los siguientes dibujos en perspectiva.], 2)
#v(0.5cm)
#place(dx: 0cm, dy: 0cm)[
  #place(dx: 0cm, dy: 0cm)[#image("_images/dibujo-boceto-isometrica.png", width: 16.2cm)]
  #place(dx: 0.3cm, dy: 0cm)[#image("_images/dibujo-boceto-02.png", width: 6.3cm)]
  #place(dx: 0.33cm, dy: 4.15cm)[#image("_images/dibujo-boceto-03.png", width: 5.1cm)]
]
