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
  [Serie paralelo. Código colores.]
)

#pregunta([Identifica cada circuito como conexión serie, paralelo,
cortocircuito de pila o cortocircuito de bombilla.], 3.4)

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 0mm,
  rows: 36mm,
  align: center + horizon,
  image("_images/electric-serie-paralelo-c27.png", height: 100%), 
  image("_images/electric-serie-paralelo-c39.png", height: 100%),
  image("_images/electric-serie-paralelo-c37.png", height: 100%),
  image("_images/electric-serie-paralelo-c31.png", height: 100%),

  image("_images/electric-serie-paralelo-c19.png", height: 100%),
  image("_images/electric-serie-paralelo-c25.png", height: 100%),
  image("_images/electric-serie-paralelo-c36.png", height: 100%),
  image("_images/electric-serie-paralelo-c20.png", height: 100%),

  image("_images/electric-serie-paralelo-c35.png", height: 100%),
  image("_images/electric-serie-paralelo-c10.png", height: 100%),
  image("_images/electric-serie-paralelo-c30.png", height: 100%),
  image("_images/electric-serie-paralelo-c15.png", height: 100%),

  image("_images/electric-serie-paralelo-c18.png", height: 100%),
  image("_images/electric-serie-paralelo-c40.png", height: 100%),
  image("_images/electric-serie-paralelo-c16.png", height: 100%),
  image("_images/electric-serie-paralelo-c34.png", height: 100%),

  image("_images/electric-serie-paralelo-c04.png", height: 100%),
  image("_images/electric-serie-paralelo-c33.png", height: 100%),
  image("_images/electric-serie-paralelo-c17.png", height: 100%),
  image("_images/electric-serie-paralelo-c32.png", height: 100%),
)


#pregunta([¿Cuál es el valor de las resistencias con los siguientes
colores?], 1.6)

#align(center)[
  0=Negro, 1=Marrón, 2=Rojo, 3=Naranja, 4=Amarillo,
  5=Verde, 6=Azul, 7=Violeta, 8=Gris, 9=Blanco
]
#table(
  columns: (1fr, 1fr),
  inset: 2mm,
  rows: 12mm,
  align: left + top,
  [NARANJA, BLANCO, NEGRO, ORO],
  [MARRÓN, ROJO, NARANJA, ORO],
  [AMARILLO, VIOLETA, ROJO, ORO],
  [GRIS, ROJO, MARRÓN, ORO],
  [ROJO, NEGRO, AMARILLO, ORO],
  [MARRÓN, VERDE, VERDE, ORO],
  [GRIS, ROJO, ORO, ORO],
  [MARRÓN, NEGRO, NARANJA, ORO],
)

#pagebreak()

#pregunta([¿Qué colores deben tener las resistencias con los siguientes
valores?], 1.6)

#align(center)[
  0=Negro, 1=Marrón, 2=Rojo, 3=Naranja, 4=Amarillo,
  5=Verde, 6=Azul, 7=Violeta, 8=Gris, 9=Blanco
]
#table(
  columns: (1fr, 1fr),
  inset: 2mm,
  rows: 12mm,
  align: left + top,
  [12 Ω],
  [100 Ω],
  [2,7 kΩ],
  [3,3 MΩ],
  [470 kΩ],
  [15 kΩ],
  [220 Ω],
  [1,8 Ω],
)


#pregunta([Calcula la resistencia equivalente de los siguientes circuitos.], 3.4)

#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 0mm,
  rows: 50mm,
  align: center + top,
  image("_images/electric-resistencias-serie-paralelo-c03.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c06.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c10.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c11.png", width: 100%), 

  image("_images/electric-resistencias-serie-paralelo-c20.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c22.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c23.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c24.png", width: 100%), 

  image("_images/electric-resistencias-serie-paralelo-c14.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c15.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c16.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c18.png", width: 100%), 

  image("_images/electric-resistencias-serie-paralelo-c25.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c27.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c28.png", width: 100%), 
  image("_images/electric-resistencias-serie-paralelo-c30.png", width: 100%), 
)


#test_puntos_acumulados()