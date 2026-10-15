//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 10mm, bottom: 10mm, left: 15mm, right: 15mm )
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

//
// DOCUMENTO
// 

#align(center)[= MEMORIA DE TRABAJO DE TALLER]
#v(6mm)

#grid(
  columns: (auto, 1fr, auto, 1.5cm, auto, 2.5cm),
  gutter: 0.2cm,
  align: left + bottom,
  [*Nombre:*], box(width: 100%, line(length: 100%)),
  [*Curso:*], box(width: 100%, line(length: 100%)),
  [*Fecha:*], box(width: 100%, line(length: 100%)),
)
#v(2mm)

*Robot construido:*
#v(8mm)

*Listado de materiales:*
#v(4fr)

*Listado de herramientas:*
#v(4fr)

*Plano eléctrico:*
#v(6fr)

*Plano de cableado:*
#v(6fr)

#pagebreak()

*Planos mecánicos:*
#v(1fr)

*Operaciones realizadas por el alumno/a:*
#v(1fr)
