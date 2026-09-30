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
  [Cableados y Circuitos]
)

#pregunta([Realiza el cableado de los siguientes circuitos eléctricos:], 4.0)

#image("_images/electric-cableado-03.png", width: 100%)
#line(length: 100%, stroke: (thickness: 0.4mm))

#image("_images/electric-cableado-04.png", width: 100%)
#line(length: 100%, stroke: (thickness: 0.4mm))

#image("_images/electric-cableado-01.png", width: 100%)
#line(length: 100%, stroke: (thickness: 0.4mm))

#image("_images/electric-cableado-02.png", width: 100%)


#pagebreak()

#pregunta([Resuelve todas las magnitudes de los siguientes circuitos:], 6.0)

#image("_images/electric-circuito-calculos-01.png", width: 100mm)
#v(-3mm)
#place(line(length: 100%, stroke: (thickness: 0.4mm)))
#v(1mm)
#image("_images/electric-circuito-calculos-04.png", width: 100mm)
#v(-3mm)
#place(line(length: 100%, stroke: (thickness: 0.4mm)))
#v(1mm)
#image("_images/electric-circuito-calculos-02.png", width: 100mm)
#v(-3mm)
#place(line(length: 100%, stroke: (thickness: 0.4mm)))
#v(1mm)
#image("_images/electric-circuito-calculos-03.png", width: 100mm)
#v(-3mm)
#place(line(length: 100%, stroke: (thickness: 0.4mm)))
#v(1mm)
#image("_images/electric-circuito-calculos-05.png", width: 100mm)



#test_puntos_acumulados()