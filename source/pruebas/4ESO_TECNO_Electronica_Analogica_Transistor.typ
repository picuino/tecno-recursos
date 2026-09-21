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
  [Electrónica Analógica. El transistor]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja el símbolo de un transistor NPN y añade el nombre de sus terminales.], 1.0)
#v(40mm)


#pregunta([¿Qué función tiene un transistor bipolar?], 1.0)
#v(40mm)


#pregunta([¿Qué ocurre cuando un transistor bipolar está saturado?], 1.0)
#v(48mm)


#pregunta([Dibuja un esquema simplificado de un transistor NPN trabajando
en configuración de emisor común, mostrando por dónde llega la señal de
entrada y por dónde sale la señal amplificada.], 1.0)


#colbreak()


#pregunta([¿Cuál es la función principal de un transistor funcionando en configuración de emisor común?], 1.0)
#v(64mm)


#pregunta([Dibuja un esquema simplificado de un transistor NPN trabajando 
en configuración de colector común, mostrando por dónde llega la señal
de entrada y por dónde sale la señal amplificada.], 1.0)
#v(64mm)


#pregunta([¿Cuál es la función principal de un transistor funcionando en
configuración de colector común?], 1.0)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja un esquema simplificado de un transistor NPN trabajando 
en configuración de base común, mostrando por dónde llega la señal de
entrada y por dónde sale la señal amplificada.], 1.0)
#v(64mm)


#pregunta([¿Cuál es la función principal de un transistor funcionando en
configuración de base común?], 1.0)
#v(64mm)


#pregunta([¿En qué configuración está el siguiente circuito? Justifica
tu respuesta.], 0.5)

#align(center)[
  #image("_images/electronic-transistor-01.png", width: 70mm)
]


#colbreak()


#pregunta([¿Qué ocurrirá si aumentamos la resistencia R3 del circuito anterior
a 2k ohmios?], 0.5)

]

#test_puntos_acumulados()