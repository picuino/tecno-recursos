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
  [3º ESO Tecnología y Digitalización],
  [Simulador Eléctrico 7-11]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([¿Qué es la resistencia eléctrica?], 0.5)
#v(24mm)


#pregunta([¿Qué aplicaciones puede tener una resistencia eléctrica?], 0.5)
#v(40mm)


#pregunta([¿En qué unidades se mide la resistencia eléctrica?
Nombra 3 elementos cotidianos y su resistencia eléctrica.], 0.5)
#v(40mm)


#pregunta([¿Cómo se llama el aparato que mide la resistencia eléctrica?], 0.5)
#v(16mm)


#pregunta([¿Qué es la potencia eléctrica?], 0.5)
#v(32mm)


#pregunta([¿Cómo se relaciona la potencia eléctrica con la tensión y con
la corriente eléctrica?], 0.5)


#colbreak()


#pregunta([¿En qué unidades se mide la potencia eléctrica?
Nombra al menos tres elementos comunes de nuestro entorno y escribe
la potencia eléctrica que consumen.], 0.5)
#v(48mm)


#pregunta([Dibuja un vatímetro conectado para medir la potencia que
entrega una pila a una lámpara.], 0.5)
#v(40mm)



#pregunta([¿Cuál es la fórmula de la ley de Ohm?], 0.5)
#v(40mm)



#pregunta([¿Cuáles son las magnitudes y las unidades de la ley de Ohm?], 0.5)
#v(40mm)

]

#pagebreak()


//
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[


#pregunta([Rellena los huecos que faltan con ayuda de la ley de Ohm.], 1.0)
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 1mm,
  rows: 7mm,
  align: center + horizon,
  [*Tensión \[V\]*], [*Resistencia \[Ω\]*], [*Intensidad \[A\]*],
  [40 V], [50 Ω], [],
  [10 V], [], [0,005 A],
  [], [5000 Ω], [0,15 A],
  [6 voltios], [200 Ω], [],
)

#pregunta([Dibuja una señal de tensión alterna y dibuja sobre ella sus
principales parámetros.], 0.5)
#v(40mm)


#pregunta([¿Qué es la tensión eficaz de un generador de tensión alterna y
cómo se calcula a partir de la tensión de pico?], 0.5)
#v(40mm)


#pregunta([Completa la siguiente tabla.], 0.5)
#table(
  columns: (1fr, 1fr),
  inset: 1mm,
  rows: 7mm,
  align: center + horizon,
  [*Tensión eficaz \[V\]*], [*Tensión de pico \[V\]*],
  [230 V], [],
  [], [17 V],
  [125 V], [],
  [], [29 V],
  [5 V], [],
)


#pregunta([Dibuja un circuito oscilador con un condensador.], 0.5)
#v(40mm)


#colbreak()


#pregunta([Completa la siguiente tabla.], 0.5)
#table(
  columns: (1fr, 1fr),
  inset: 1mm,
  rows: 7mm,
  align: center + horizon,
  [*Frecuencia \[Hz\]*], [*Período \[s\]*],
  [50 Hz], [],
  [60 Hz], [],
  [400 Hz], [],
  [], [0,100 s],
  [], [0,012 s],
)


#pregunta([¿Qué es un condensador? ¿En qué se parece y en qué se
diferencia de una pila recargable?], 0.5)
#v(32mm)


#pregunta([Escribe tres aplicaciones prácticas de los condensadores.], 0.5)
#v(48mm)


#pregunta([Dibuja un circuito con un condensador que suavice los picos de
tensión de salida de un transformador.], 0.5)

]

#test_puntos_acumulados()