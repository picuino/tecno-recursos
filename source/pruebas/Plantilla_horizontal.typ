#set page(
  paper: "a4",
  margin: ( top: 12mm, bottom: 2mm, left: 15mm, right: 15mm )
)

#place(left)[ #line(angle: 90deg, stroke: (thickness: 0.8mm, cap: "round"), length: 276mm) ]
#place(right)[ #line(angle: 90deg, stroke: (thickness: 0.8mm, cap: "round"), length: 276mm) ]

#for i in range(24) [
  #place(line(length: 100%, stroke: (thickness: 0.8mm)))
  #v(12mm)
]

#pagebreak()

#place(left)[ #line(angle: 90deg, stroke: (thickness: 0.8mm, cap: "round"), length: 280mm) ]
#place(right)[ #line(angle: 90deg, stroke: (thickness: 0.8mm, cap: "round"), length: 280mm) ]

#for i in range(29) [
  #place(line(length: 100%, stroke: (thickness: 0.8mm)))
  #v(10mm)
]

