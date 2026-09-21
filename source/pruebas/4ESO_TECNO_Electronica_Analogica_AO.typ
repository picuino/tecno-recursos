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
  [Electrónica Analógica. Amplificador Operacional I]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja el símbolo de un Amplificador Operacional ideal.], 0.5, 
sep: 4fr)

#pregunta([Describe brevemente el funcionamiento de un Amplificador 
Operacional.], 0.6, sep: 7fr)


#pregunta([¿Cuántos terminales tiene un Amplificador Operacional real y 
cómo se llaman?], 0.5, sep: 6fr)


#pregunta([Escribe tres ventajas y una desventaja del Amplificador 
Operacional respecto a las etapas de transistores discretos.], 0.6,
sep: 9fr)


#colbreak()


#pregunta([Añade al circuito de la figura un Amplificador Operacional 
seguidor.], 0.6)

#image("_images/electronic-ao-01.png", width: 100%)


#pregunta([¿Para qué sirve el Amplificador Operacional del circuito 
anterior?], 0.6, sep: 7fr)


#pregunta([Dibuja el esquema de un Amplificador Operacional inversor.], 
0.6, sep: 5fr)


#pregunta([Escribe la fórmula de la ganancia del amplificador anterior.],
0.6, sep: 4fr)


#pregunta([¿Qué resistencia de entrada tiene el Amplificador Operacional 
inversor?], 0.6, sep: 3fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([En la siguiente gráfica se representan la señal de entrada 
(pequeña) y la señal de salida (grande) de un amplificador. ¿Qué ganancia 
tiene el amplificador?], 0.6)

#align(center)[
  #image("_images/electronic-ao-02.png", width: 60mm)
  #v(2fr)
]

#pregunta([El amplificador anterior ¿Es inversor o no inversor? Explica la 
respuesta.], 0.6, sep: 4fr)


#pregunta([Dibuja el esquema de un Amplificador Operacional sumador.], 
0.6, sep: 5fr)


#pregunta([¿Qué tipo de realimentación tiene el circuito anterior y cómo 
lo sabes?], 0.6, sep: 5fr)


#pregunta([Dibuja el esquema de un Amplificador Operacional no inversor.],
0.6, sep: 6fr)


#colbreak()


#pregunta([¿Qué ganancia tiene el circuito anterior?], 0.6, sep: 32mm)


#pregunta([¿Qué resistencia de entrada tiene el Amplificador Operacional 
no inversor?], 0.6, sep: 48mm)


#pregunta([Dibuja una señal triangular de entrada y la señal de salida 
correspondiente de un amplificador no inversor de ganancia 3.], 0.6)

#align(center)[
  #image("_images/electronic-ao-03.png", width: 100%, height: 50mm, fit: "stretch")
  #v(1fr)
]

]

#test_puntos_acumulados()