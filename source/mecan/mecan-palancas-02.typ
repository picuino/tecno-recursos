//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 10mm, bottom: 16mm, left: 10mm, right: 10mm )
)

#set page(
  footer: [
    #v(2mm) 
    #grid(
      columns: (1fr, 1fr),
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]]],
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://picuino.com/es/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 12pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 14pt,
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
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[LAS PALANCAS]
  #v(2mm)
]

*En las siguientes palancas dibuja el Fulcro con un triángulo, dibuja la
Fuerza con una flecha y la letra F y dibuja la Resistencia con un cuadrado.
Indica el género de cada palanca.*

#table(
  columns: 3,
  inset: 1mm,
  rows: 49mm,
  image("_images/mecan-palancas-img01.jpeg", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img02.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img03.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img04.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img05.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img06.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img07.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img08.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img09.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img10.png", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img11.jpeg", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img12.jpeg", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img13.jpeg", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img14.jpeg", width: 100%, height: 100%, fit: "contain"),
  image("_images/mecan-palancas-img15.png", width: 100%, height: 100%, fit: "contain"),
)