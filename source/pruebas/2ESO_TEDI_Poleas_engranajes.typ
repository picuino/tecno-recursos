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
  [Poleas y engranajes]
)


#pregunta([¿Qué es una polea?], 0.5)
#v(1.2cm)


#pregunta([¿Cuál es la función de una polea?
Escribe un ejemplo de aplicación.], 0.5)
#v(1.2cm)


#pregunta([¿Qué es un polipasto y para qué sirve?], 0.5)
#v(1.2cm)


#pregunta([Calcula la fuerza necesaria para levantar cada uno de
los siguientes pesos.], 3.6)
#v(-0.3cm)

#grid(
  columns: (1fr),
  gutter: 0cm,
  grid(
    columns: (auto, auto, auto, auto),
    gutter: 1fr,
    align: center,
    box(image("_images/mecan-poleas-01b.png", width: 3.8cm)),
    box(image("_images/mecan-poleas-12b.png", width: 4.4cm)),
    box(image("_images/mecan-poleas-02b.png", width: 4.0cm)),
    box(image("_images/mecan-poleas-05b.png", width: 4.0cm)),
  ),
  grid(
    columns: (auto, auto, auto),
    gutter: 1fr,
    align: center,
    box(image("_images/mecan-poleas-03b.png", width: 4.4cm)),
    box(image("_images/mecan-poleas-04b.png", width: 4.4cm)),
    box(image("_images/mecan-poleas-06b.png", width: 4.4cm)),
  ),
  grid(
    columns: (auto, auto, auto),
    gutter: 1fr,
    align: center,
    box(image("_images/mecan-poleas-07b.png", width: 4.9cm)),
    box(image("_images/mecan-poleas-08b.png", width: 5.5cm)),
    box(image("_images/mecan-poleas-09b.png", width: 5.4cm)),
  ),
  grid(
    columns: (auto, auto),
    gutter: 1fr,
    align: center,
    box(image("_images/mecan-poleas-10b.png", width: 5.5cm)),
    box(image("_images/mecan-poleas-11b.png", width: 6.0cm)),
  )
)


#pregunta([¿Qué es un engranaje y para qué sirve?], 0.6)
#v(1.2cm)


#pregunta([Nombra los elementos del siguiente engranaje y dibuja las
flechas del sentido de giro.], 0.5)
#align(center)[
  #image("_images/mecan-gears-01b.png", width: 7.5cm)
]


#pregunta([¿Cuál es el engranaje que gira más rápido?
¿Por qué es útil que el otro engranaje gire más lento?], 0.6)
#v(1.8cm)


#pregunta([Un taladro tiene un motor que gira a 8000 revoluciones por
minuto y tiene un engranaje con 12 dientes. Se quiere reducir esa
velocidad a las 2000 revoluciones por minuto a la que gira la broca.
¿Cuántos dientes tendrá el engranaje de la broca?], 1.4)
#v(6.0cm)


#pregunta([Un motor de automóvil eléctrico gira a una velocidad
de 9000 rpm. Las ruedas deben girar a una velocidad de 1500 rpm.
Sabiendo que un engranaje debe tener 8 ó más dientes, calcula el
número de dientes que deben tener el engranaje conectado al motor
y el engranaje conectado a las ruedas.], 1.8)



#test_puntos_acumulados()