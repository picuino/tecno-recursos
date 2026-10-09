//
// PAGE CONFIGURATION
//
#set page(
  paper: "a4",
  margin: ( top: 10mm, bottom: 14mm, left: 10mm, right: 10mm )
)

#set page(
  footer: [
    #v(2mm)
    #grid(
      columns: (1fr, 1fr),
      align(center)[#text(size: 10pt, weight: "bold")[
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[*CC BY-SA 4.0 License*]]],
      align(center)[#text(size: 10pt, weight: "bold")[
      #link("https://www.picuino.com/en/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "en",
  size: 10.5pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 12pt,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 13pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 11pt, weight: "bold")[#it]
  } else {
    it
  }
]

#set figure(supplement: none, numbering: none)

#show figure.caption: set text(size: 10pt, weight: "bold")


//
// PAGE 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[SEMICONDUCTORS]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[

= Semiconductors

Insulating materials such as plastic or wood do not allow electric current 
to flow through them. Conductive materials such as copper or aluminium 
allow electric current to flow very easily. On the other hand, 
*semiconductor* materials such as *silicon* or *germanium* can behave as 
insulators or conductors depending on the voltage applied to them.

This behaviour can be used to manufacture circuits with very fast, 
electronically controlled semiconductor switches.

For semiconductors to conduct current, they must be doped with trace 
amounts of elements that provide positive charge carriers (boron, indium) 
or negative charge carriers (phosphorus, arsenic). A semiconductor doped 
in this way is called *P-type* (positive) or *N-type* (negative).


= The diode

A diode is the simplest electronic component that can be made from 
semiconductor materials, and it has two terminals. Internally, it consists 
of a junction between a block of *P-type* silicon and a block of *N-type* 
silicon. This junction allows current to flow in one direction but 
prevents it from flowing in the opposite direction.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 2mm,
    [#image("electronic-diodo-01.png")],
    [#image("electronic-diodo-02.jpg")],
  ),
)

The image above shows the diode symbol, with an arrow indicating the 
direction in which current can flow, and the names of its two terminals. A 
diode conducts only when the anode has a positive voltage and the cathode 
has a negative voltage. On the right is a photograph of several types of 
diodes.

Diodes have many applications. For example, they can rectify alternating 
current, regulate voltages, or emit light (LEDs).

#grid(
  columns: (1fr, 2fr),
  gutter: 2mm,
  align: horizon,
  [#image("electronic-esquema-diodo-02.png")],
  [Circuit diagram of an LED connected in series with a resistor that
  limits the current to prevent the LED from burning out.],
)

#grid(
  columns: (1fr, 2fr),
  gutter: 2mm,
  align: horizon,
  [#image("electronic-esquema-diodo-03.png")],
  [Circuit diagram of a rectifier diode that converts the alternating
  voltage from the mains supply into direct voltage.],
)

#colbreak()

= The transistor

A transistor is a three-terminal electronic component that allows electric 
current to flow between two terminals according to the voltage applied to 
the third terminal. It acts like a voltage-controlled switch. The first 
silicon transistor went on sale in 1954.


#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 2mm,
    [#image("electronic-transistores-02.jpg")],
    [#image("electronic-transistores-01.jpg")],
  ),
  caption: [Photographs of a power transistor and two small signal
  transistors.]
)

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 2mm,
    [#image("electronic-esquema-transistor-01.png")],
    [#image("electronic-esquema-transistor-02.png")],
  ),
  caption: [Symbols for bipolar junction transistors and MOSFETs.]
)

== Transistor operating states

Depending on the control voltage applied to the transistor's base or gate, 
it can operate in three different states.

*Cut-off:* the transistor does not conduct current and behaves like an 
open switch.

*Saturation:* the transistor conducts as much current as possible and 
behaves like a closed switch.

These two states are used in digital circuits such as computers, TVs, 
smartphones, and other electronic devices.

*Linear region:* the transistor conducts only part of the possible current 
and behaves like a resistor.

This behaviour is used in analogue circuits such as audio amplifiers.


== Typical circuits

*Transistor amplifier.* This circuit works as a light amplifier. When 
light shines on the LDR resistor, the current flowing through it increases.

#figure(
  image("electronic-esquema-transistor-03.png", height: 40mm),
)

This current reaches the transistor's base, and the transistor amplifies 
it through the collector, switching on the connected lamp. This is an 
analogue circuit because the transistor operates in the linear region, 
behaving like a resistor controlled by the base current.

#place(
  top + left,
  dx: 50%,
  dy: 6mm,
  float: true,
  scope: "parent",
  block(height: 0pt, width: 0pt, line(angle: 90deg, length: 165mm))
)

*Digital transistor circuit.* This circuit is a NOR logic gate built from 
transistors. Because the two collectors are connected in parallel, the 
output is high only when both inputs are low. These logic gates form the 
basis of digital circuits and computers.

#figure(
  image("electronic-esquema-transistor-04.png", height: 45mm),
)

= LDRs

LDRs (Light-Dependent Resistors) are, as their name suggests, sensors that 
detect light. Their resistance decreases as the light intensity increases, 
allowing more current to flow when they receive more light.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 2mm,

    [#image("electronic-esquema-ldr-01.png", height: 20mm)],
    [#image("electronic-ldr-01.jpg", height: 20mm)],
  ),
  caption: [Symbol and photograph of a light-dependent resistor (LDR).]
)

#colbreak()

= Integrated circuits

An integrated circuit is a small piece of silicon, also called a chip, 
that contains a large number of electronic components inside it.


#figure(
  grid(
    columns: (auto, 1fr, auto),
    gutter: 0mm,

    [#image("electronic-lm555-die.jpg", height: 36mm)],
    [],
    [#image("electronic-dac08-die.jpg", height: 36mm)],
  ),
  caption: [LM555 and DAC08 integrated circuits.]
)


As technology advances, components become smaller every year, allowing 
more and more transistors to be integrated into a single chip. In the 
early 1960s, the aerospace industry began purchasing integrated circuits 
containing up to 100 transistors on a single chip. This reduced 
manufacturing costs and encouraged technological development.

By the early 1980s, chips containing 100,000 transistors were already 
available. In 2000, chips contained 100 million transistors, and by 2020, 
a single chip could contain 100 billion transistors.

This exponential growth in the number of transistors integrated into a 
chip, which doubles approximately every year and a half, is known as 
*Moore's law*. It has enabled the development of the digital society we 
know today, with countless smart devices, memory systems, cameras, drones, 
and other technologies based on these powerful integrated circuits.

]


#align(center)[
  #v(8mm)
  #text(size: 16pt, weight: "bold")[EXERCISES]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 85mm) ]

#columns(2, gutter: 0.8cm)[

+ What types of materials are there, depending on how they conduct
  electricity? Give two examples of each type.
+ Why are semiconductors so useful?
+ What must be done for a semiconductor to conduct electric current?
+ How is a semiconductor diode constructed?
+ Draw the symbol of a semiconductor diode and label its terminals.
+ When does a diode conduct current?
+ Draw two circuit diagrams using diodes.
+ What are diodes used for?
+ What is a transistor? How many terminals does it have?
+ What operating states can a transistor have?
+ Which transistor operating states are used in analogue circuits?
  And in digital circuits?
+ Draw the symbols of a bipolar junction transistor and a MOSFET,
  labelling their terminals.
+ Draw a circuit with a transistor operating as a light amplifier.
+ Draw a NOR logic gate using transistors.
+ What is an LDR, and what do these initials stand for?
+ What is an integrated circuit, or chip?
+ When did integrated circuits begin to be manufactured, and how
  many transistors did they contain?
+ Draw a graph showing the number of transistors in a chip.
  Put the years on the X-axis and the number of transistors on the Y-axis,
  using an exponential scale (10, 100, 1,000, 10,000, etc.).
+ What is Moore's law?

]