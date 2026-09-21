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
  [Electrónica Analógica. Las etapas de transistores]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja un esquema simplificado de dos transistores NPN 
trabajando en configuración Darlington.], 1.0)
#v(8fr)


#pregunta([Enumera una ventaja y un inconveniente del esquema Darlington 
frente a un transistor individual.], 1.0)
#v(8fr)


#pregunta([Dibuja un esquema simplificado de dos transistores bipolares
trabajando en configuración push-pull.], 1.0)
#v(8fr)


#colbreak()


#pregunta([¿Qué función realiza una etapa push-pull y dónde se puede 
encontrar?], 1.0)
#v(8fr)


#pregunta([Dibuja un esquema simplificado de dos transistores NPN
trabajando en configuración de par diferencial.], 1.0)
#v(8fr)


#pregunta([¿Cuál es la función principal que tiene un par diferencial?], 1.0)
#v(8fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja un esquema realista de una fuente de corriente constante
basada en transistores NPN, que alimente a una resistencia de 500 ohmios.], 1.0)
#v(8fr)


#pregunta([Calcula aproximadamente la resistencia de base necesaria para
que la fuente de corriente anterior entregue 15 miliamperios.], 1.0)
#v(8fr)


#pregunta([Dibuja un esquema realista de un transistor MOSFET trabajando
como interruptor controlado por tensión que enciende y apaga una lámpara.], 1.0)
#v(1fr)
#align(left)[
  #image("_images/electronic-etapas-01.png", width: 50mm)
]
#v(1fr)


#colbreak()


#pregunta([Enumera tres ventajas de los transistores MOSFET respecto de
los transistores bipolares.], 1.0)

]

#test_puntos_acumulados()