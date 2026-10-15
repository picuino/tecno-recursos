//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 15mm, bottom: 20mm, left: 12mm, right: 12mm )
)

#set page(
  footer: [
    #v(2mm) 
    #grid(
      columns: (1fr, 1fr),
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]]],
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://www.picuino.com/es/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 10pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 12pt,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 12pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 12pt, weight: "bold")[#it]
  } else {
    it
  }
]

#set figure(supplement: none, numbering: none)

#show figure.caption: set text(size: 10pt, weight: "bold")


//
// PÁGINA
//

#align(center)[
  #text(size: 16pt, weight: "bold")[BOCETOS EN PERSPECTIVA ISOMÉTRICA]
  #v(2mm)
]

#place(
  top + left,
  dy: 15mm,
  stack(
    dir: ttb,
    spacing: 8mm,
    image("_images/dibujo-boceto-01.png", width: 82mm),
    image("_images/dibujo-boceto-05.png", width: 81.7mm),
    image("_images/dibujo-boceto-07.png", width: 73.7mm),
  )
)

#place(
  top + right,
  dy: 15mm,
  stack(
    dir: ttb,
    spacing: 8mm,
    image("_images/dibujo-boceto-06.png", width: 89.6mm),
    image("_images/dibujo-boceto-02.png", width: 86.1mm),
    image("_images/dibujo-boceto-03.png", width: 69.6mm),
    image("_images/dibujo-boceto-04.png", width: 97.9mm),
  )
)
