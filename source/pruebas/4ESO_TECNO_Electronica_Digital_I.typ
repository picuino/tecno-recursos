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
  [Electrónica Digital I (1-4)]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja una señal analógica y una señal digital ¿En qué se
diferencian?], 0.8, sep: 5fr)


#pregunta([¿Qué ventajas presentan las señales digitales?], 0.8, sep: 5fr)


#pregunta([¿Qué es la cuantificación digital?], 0.8, sep: 5fr)



#pregunta([Escribe el bit de paridad correspondiente a los siguientes
números binarios:], 0.8)

`1 0 0 1 1 0 0 1   [___]`
#v(4mm)

`0 0 0 1 1 1 0 0   [___]`
#v(4mm)

`1 0 1 0 1 0 1 0   [___]`
#v(4mm)

`0 0 1 1 0 0 0 1   [___]`
#v(4mm)


#colbreak()


#pregunta([¿Qué es un código checksum? Enumera tres tipos de códigos
checksum distintos.], 0.8, sep: 5fr)



#pregunta([Escribe dos ejemplos de sistemas que utilicen el código
checksum.], 0.8, sep: 4fr)



#pregunta([Los siguientes bloques de datos con bits de paridad alrededor
tienen un error en un bit. Señala los errores de paridad con una flecha
y el bit erroneo dibujando un círculo sobre él.], 0.8)

#align(center)[
  #grid(
    columns: 2,
    gutter: 3mm,
    [#table( columns: 1, [0], [0], [1], [0], ) ],
    [#table( columns: 4,
      [0], [1], [0], [1], 
      [1], [0], [1], [0], 
      [0], [1], [0], [1], 
      [1], [0], [0], [1],) 
    ],
    [],
    [#table( columns: 4, [0], [0], [1], [0],) ],
  )
]
#v(10mm)

#align(center)[
  #grid(
    columns: 2,
    gutter: 3mm,
    [#table( columns: 1, [1], [0], [0], [1],) ],
    [#table( columns: 4,
      [1], [1], [1], [0], 
      [1], [0], [0], [1], 
      [1], [0], [0], [1], 
      [0], [1], [1], [1], )
    ],
    [],
    [#table( columns: 4, [1], [0], [1], [1], )],
  )
]
#v(10mm)


]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Escribe el nombre de tres códigos de corrección de errores
usados en sistemas reales y escribe dos aplicaciones de cada uno de
ellos.], 0.8, sep: 5fr)


#pregunta([Convierte los siguientes números de binario a decimal:], 1.8)

#raw("1 0 0 0 1 1 1 1")
#v(4fr)

#raw("0 1 0 1 0 1 1 0")
#v(4fr)

#raw("1 1 0 0 0 1 1 1")
#v(4fr)

#raw("1 1 1 0 0 1 0 0")
#v(4fr)

#raw("1 1 0 1 1 1 0 1")
#v(4fr)


#colbreak()


#pregunta([Convierte los siguientes números de decimal a binario:], 1.8)
#raw("79")
#v(4fr)

#raw("173")
#v(4fr)

#raw("79")
#v(4fr)

#raw("165")
#v(4fr)

#raw("239")
#v(4fr)


#raw("244")
#v(4fr)

]

#test_puntos_acumulados()