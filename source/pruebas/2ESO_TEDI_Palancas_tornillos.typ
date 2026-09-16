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
  [Palancas y tornillos]
)


#pregunta([En las siguientes palancas dibuja el Fulcro con un triángulo,
dibuja la Fuerza aplicada con una flecha y la letra F y dibuja la 
Resistencia con un cuadrado. Indica de qué género es cada palanca.], 2.4)
#v(-2mm)
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 1mm,
  rows: 52mm,
  align: center + horizon,
  image("_images/mecan-palancas-img09.png",  width: 58mm, height: 50mm, fit: "contain"), // Tijeras
  image("_images/mecan-palancas-img14.jpeg", width: 58mm, height: 50mm, fit: "contain"), // Pie
  image("_images/mecan-palancas-img07.png",  width: 58mm, height: 50mm, fit: "contain"), // Pinzas depilar
  image("_images/mecan-palancas-img13.jpeg", width: 58mm, height: 50mm, fit: "contain"), // Cascanueces
  image("_images/mecan-palancas-img08.png",  width: 58mm, height: 50mm, fit: "contain"), // Antebrazo
  image("_images/mecan-palancas-img11.jpeg", width: 58mm, height: 50mm, fit: "contain"), // Balancín

/*
  image("_images/mecan-palancas-img01.jpeg", width: 58mm, height: 50mm, fit: "contain"), // Barrera
  image("_images/mecan-palancas-img02.png",  width: 58mm, height: 50mm, fit: "contain"), // Alicates
  image("_images/mecan-palancas-img03.png",  width: 58mm, height: 50mm, fit: "contain"), // Quitagrapas
  image("_images/mecan-palancas-img04.png",  width: 58mm, height: 50mm, fit: "contain"), // Pinzas ropa
  image("_images/mecan-palancas-img05.png",  width: 58mm, height: 50mm, fit: "contain"), // Sacacorchos
  image("_images/mecan-palancas-img06.png",  width: 58mm, height: 50mm, fit: "contain"), // Grúa
  image("_images/mecan-palancas-img10.png",  width: 58mm, height: 50mm, fit: "contain"), // Carretilla
  image("_images/mecan-palancas-img12.jpeg", width: 58mm, height: 50mm, fit: "contain"), // Remo
  image("_images/mecan-palancas-img15.png",  width: 58mm, height: 50mm, fit: "contain"), // Abrebotellas
*/
)

#pregunta([¿Qué es una palanca?], 0.4)
#v(16mm)

#pregunta([Escribe tres funciones que pueden tener las palancas y un
ejemplo de cada una.], 0.9)
#v(32mm)

#pregunta([¿Qué fuerza que hay que realizar para levantar una
carretilla con las dimensiones que aparecen a continuación y
que lleva en su interior un peso de 40kgf?], 1.2)

#image("_images/mecan-palancas-09.png",  width: 6cm)


#pagebreak()

#pregunta([Nombra las nueve partes del siguiente tornillo.], 1.8)

#align(center)[
  #image("_images/mecan-tornillo-03.png",  width: 7.5cm)
]

#pregunta([Escribe tres funciones que pueden tener los tornillos y
escribe un ejemplo de cada una.], 0.9)
#v(40mm)

#pregunta([Una silla de taller se eleva mediante un tornillo con una
rosca de paso igual a 5 milímetros por vuelta. Si queremos elevar la
silla 10 centímetros ¿Cuántas vueltas será necesario dar al tornillo?], 1.2)
#v(56mm)

#pregunta([Un tornillo de banco se abre una distancia de 12 centímetros
tras girar la manivela un total de 24 vueltas.
¿Cuál es el paso del tornillo?], 1.2)


#test_puntos_acumulados()