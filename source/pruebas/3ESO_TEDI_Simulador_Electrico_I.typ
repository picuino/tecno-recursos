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
  [Simulador Eléctrico 1-6]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Enumera dos aplicaciones típicas de un interruptor y
dos aplicaciones típicas de un pulsador.], 0.5)
#v(6cm)

#pregunta([¿Qué es una conexión en serie?], 0.5)
#v(2.5cm)

#pregunta([¿Qué propiedades tiene una conexión en serie?], 0.5)
#v(6.5cm)

#pregunta([Dibuja un circuito con tres pilas de 4 voltios en
serie conectadas a dos lámparas en serie.], 0.5)


#colbreak()


#pregunta([¿Qué tensión tendrá cada una de las lámparas del
circuito anterior? Justifica cómo has llegado a ese valor.], 0.5)
#v(4.0cm)

#pregunta([¿Qué es una conexión en paralelo?], 0.5)
#v(2.5cm)

#pregunta([¿Qué propiedades tiene una conexión en paralelo?], 0.5)
#v(5.0cm)

#pregunta([¿Por qué se conectan los generadores de las
centrales eléctricas en paralelo?], 0.5)
#v(4.0cm)

#pregunta([Dibuja tres bombillas conectadas en paralelo a una pila.], 0.5)

]

#pagebreak()


//
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([¿Qué es un circuito mixto?], 0.5)
#v(2.5cm)

#pregunta([Dibuja un circuito con una pila, un interruptor
general que encienda y apague todo y con dos interruptores que enciendan
cada uno una lámpara distinta, de forma independiente.], 0.5)
#v(6.0cm)

#pregunta([Dibuja un circuito que encienda dos lámparas con un
interruptor. Si una de las lámparas se funde o se retira, la otra lámpara
debe seguir encendida.], 0.5)
#v(5.0cm)

#pregunta([¿Qué es la tensión o voltaje eléctrico?], 0.5)
#v(3.0cm)

#pregunta([¿Qué tensión en voltios tienen las pilas y baterías
típicas?], 0.5)
#colbreak()


#pregunta([¿Qué es un voltímetro?], 0.5)
#v(3.0cm)

#pregunta([¿Cómo se debe conectar un voltímetro para medir
tensión? Dibuja un ejemplo.], 0.5)
#v(4.0cm)

#pregunta([¿Qué es la intensidad de corriente eléctrica?], 0.5)
#v(3.0cm)

#pregunta([¿Cómo se relaciona la intensidad de corriente
con la tensión eléctrica?], 0.5)
#v(3.0cm)

#pregunta([¿Qué es un amperímetro?], 0.5)
#v(3.0cm)

#pregunta([¿Cómo se debe conectar un amperímetro para
medir corriente? Dibuja un ejemplo.], 0.5)

]

#test_puntos_acumulados()