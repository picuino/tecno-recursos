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
  [Circuito eléctrico]
)

#pregunta([Nombra en el esquema los cuatro *tipos de elementos* que
podemos encontrar en cualquier circuito eléctrico y su *nombre concreto*.], 0.8)
#align(center)[
  #image("_images/electric-circuit-3.png", width: 60mm)
]


#pregunta([Define qué es un circuito eléctrico y escribe un ejemplo cotidiano.], 0.6)
#v(32mm)


#pregunta([Escribe tres ejemplos distintos de generadores eléctricos.], 0.6)
#v(16mm)


#pregunta([¿Para qué se utilizan los siguientes metales en los circuitos eléctricos?], 0.8)
#table(
  columns: (1fr),
  inset: 2mm,
  rows: 7mm,
  align: left + top,
  [COBRE:],
  [ALUMINIO Y ACERO:],
  [ORO, NIQUEL Y CROMO:],
  [ESTAÑO, PLOMO Y PLATA:]
)


#pregunta([Escribe cuatro ejemplos de receptores que tengan distintos
efectos útiles y escribe el efecto de cada uno de ellos.], 0.8)
#v(24mm)


#pregunta([¿De qué tipo es cada uno de los siguientes elementos de control?], 0.6)
#table(
  columns: (1fr),
  inset: 2mm,
  rows: 7mm,
  align: left + top,
  [Interruptores y pulsadores:],
  [Fusibles y diferenciales:],
  [Luz de una escalera que se apaga sola:],
)


#pregunta([¿Qué es un motor eléctrico y para qué sirve?], 0.6)


#pagebreak()


#pregunta([Nombra los distintos elementos de un motor eléctrico de inducción.], 1.6)

#grid(
  columns: (auto, 1fr),
  align: left + horizon,
  column-gutter: 10mm,
  image("_images/electric-motor-induccion-num.jpg", width: 90mm),
  block(height: 70mm)[
    #grid(
      columns: 1,
      rows: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
      [1 =], [2 y 3 =], [4 =], [5 =], [6 =], [7 =], [8 =], [9 =]
    )
  ]
)  


#pregunta([¿Qué es y para qué sirve un variador de frecuencia para motor?
Escribe un ejemplo de aplicación.], 0.6)
#v(24mm)


#pregunta([¿Qué es un relé y para qué sirve?], 0.6)
#v(16mm)


#pregunta([Dibuja el esquema de un relé que encienda una bombilla de 125
Voltios desde un pulsador alimentado a 24V.], 0.9)
#v(1fr)


#pregunta([¿Qué usos ha tenido el relé a lo largo de la historia?
¿Para qué se utiliza en la actualidad?], 0.6)
#v(24mm)


#pregunta([Dibuja el esquema de un contactor que haga funcionar un motor
trifásico de 230 voltios cuando se pulse un contacto normalmente abierto.
La tensión continua de maniobra será de 12 voltios.], 0.9)
#v(1fr)


#test_puntos_acumulados()