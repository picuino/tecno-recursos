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
  [Estructuras]
)


#pregunta([Escribe tres ejemplos de estructuras de cada tipo:], 1.8)
Masivas: #v(0.8cm)
Abovedadas: #v(0.8cm)
Trianguladas: #v(0.8cm)
Entramadas: #v(0.8cm)
Colgantes: #v(0.8cm)
Laminares: #v(0.8cm)


#pregunta([Indica la diferencia e indica el parecido entre las estructuras
laminares y las trianguladas.], 0.8)
#v(2.4cm)


#pregunta([¿Qué diferencia hay entre carga y esfuerzo?
Escribe dos ejemplos de cada uno de ellos.], 0.8)
#v(2.4cm)


#pregunta([Escribe tres ejemplos de esfuerzos de cada tipo:], 1.5)
Tracción: #v(0.8cm)
Compresión: #v(0.8cm)
Flexión: #v(0.8cm)
Torsión: #v(0.8cm)
Corte o cizalla: #v(0.8cm)


#pregunta([¿Cuándo se produce el vuelco de una estructura?], 0.5)

#pagebreak()


#pregunta([Dibuja una barra sometida a esfuerzo de tracción y otra barra
sometida a esfuerzo de flexión, añadiendo las fuerzas que participan en
forma de flechas.], 1.0)
#v(4.0cm)


#pregunta([Dibuja y nombra los esfuerzos que aparecen en un columpio
cuando se sube un niño sobre el asiento.], 0.8)

#align(center)[
  #image("_images/mecan-columpio.png", width: 9.0cm)
]

#pregunta([Escribe cuatro soluciones al vuelco y escribe un
ejemplo de cada solución.], 1.2)
- #v(0.8cm)
- #v(0.8cm)
- #v(0.8cm)
- #v(0.8cm)


#pregunta([¿Qué es y en qué consiste el pandeo?], 0.8)
#v(2.4cm)

#pregunta([¿Qué soluciones se pueden tomar contra las oscilaciones en
las estructuras? Escribe un ejemplo de cada una de ellas.], 0.8)


#test_puntos_acumulados()