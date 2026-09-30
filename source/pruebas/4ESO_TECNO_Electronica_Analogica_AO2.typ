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
  [Electrónica Analógica. Amplificador Operacional II]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja el esquema de un Amplificador Operacional funcionando
como amplificador diferencial.], 0.6, sep: 5fr)

#pregunta([¿Cuál es la fórmula de la ganancia del amplificador
diferencial?], 0.6, sep: 5fr)

#pregunta([¿Cuánto vale la resistencia de entrada del amplificador
diferencial?], 0.6, sep: 5fr)

#pregunta([¿Qué función realiza un amplificador diferencial?], 0.6, sep: 5fr)

#pregunta([Dibuja el esquema de un detector de pico.], 0.6, sep: 5fr)


#colbreak()


#pregunta([¿Qué función realiza un circuito detector de pico?], 0.6, sep: 5fr)

#pregunta([¿Qué ocurre si cambiamos el sentido del diodo en el detector
de pico? ¿Cómo podríamos denominar a este nuevo circuito?], 0.6, sep: 5fr)

#pregunta([Dibuja el símbolo de un comparador.], 0.6, sep: 5fr)

#pregunta([Dibuja un circuito que utilice un comparador para detectar la
luminosidad ambiente y que encienda una lámpara cuando el ambiente sea
oscuro.], 1.0, sep: 8fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([En el circuito del ejercicio 9, ¿Qué tipo de realimentación
tiene el comparador? Justifica tu respuesta.], 0.6, sep: 5fr)

#pregunta([¿Qué es una resistencia de pull-up y para qué sirve?], 0.6, sep: 5fr)

#pregunta([¿Qué diferencias tiene un comparador respecto a un
amplificador operacional?], 0.6, sep: 5fr)

#pregunta([Dibuja el esquema simplificado de un comparador con
histéresis.], 0.6, sep: 5fr)


#colbreak()


#pregunta([¿Qué es la tensión de histéresis?], 0.6, sep: 5fr)

#pregunta([¿En qué se diferencia el comparador con histéresis del
comparador sin histéresis?], 0.6, sep: 5fr)


#pregunta([¿Qué ventajas y qué inconvenientes tiene utilizar una menor
histéresis en el circuito calentador?], 0.6, sep: 10fr)

]

#test_puntos_acumulados()