//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 8mm, bottom: 12mm, left: 10mm, right: 10mm )
)

#set page(
  footer: [ 
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
  size: 12pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 12pt,
)

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 16pt, weight: "bold")[#it]
  } else {
    it
  }
]

#set figure(supplement: none, numbering: none)


//
// PÁGINA 1
//

#align(center)[= MEDIDAS CON EL CALIBRE]

#table(
  columns: (1fr, 1fr),
  gutter: 0mm,
  inset: 1mm,

  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[01])
    #image("calibre-nonio/mecan-calibre-0090n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[02])
    #image("calibre-nonio/mecan-calibre-0164n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[03])
    #image("calibre-nonio/mecan-calibre-0225n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[04])
    #image("calibre-nonio/mecan-calibre-0029n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[05])
    #image("calibre-nonio/mecan-calibre-0183n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[06])
    #image("calibre-nonio/mecan-calibre-0140n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[07])
    #image("calibre-nonio/mecan-calibre-0158n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[08])
    #image("calibre-nonio/mecan-calibre-0036n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[09])
    #image("calibre-nonio/mecan-calibre-0267n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[10])
    #image("calibre-nonio/mecan-calibre-0207n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[11])
    #image("calibre-nonio/mecan-calibre-0210n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[12])
    #image("calibre-nonio/mecan-calibre-0142n.png")],
)

#pagebreak()

//
// PÁGINA 2
//

#align(center)[= MEDIDAS CON EL CALIBRE]

#table(
  columns: (1fr, 1fr),
  gutter: 0mm,
  inset: 1mm,

  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[13])
    #image("calibre-nonio/mecan-calibre-0261n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[14])
    #image("calibre-nonio/mecan-calibre-0279n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[15])
    #image("calibre-nonio/mecan-calibre-0228n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[16])
    #image("calibre-nonio/mecan-calibre-0248n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[17])
    #image("calibre-nonio/mecan-calibre-0164n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[18])
    #image("calibre-nonio/mecan-calibre-0009n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[19])
    #image("calibre-nonio/mecan-calibre-0140n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[20])
    #image("calibre-nonio/mecan-calibre-0269n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[21])
    #image("calibre-nonio/mecan-calibre-0221n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[22])
    #image("calibre-nonio/mecan-calibre-0129n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[23])
    #image("calibre-nonio/mecan-calibre-0031n.png")],
  [ #place(top + right, dx: -8pt, dy: 8pt, text(weight: "bold", size: 14pt)[24])
    #image("calibre-nonio/mecan-calibre-0272n.png")],
)