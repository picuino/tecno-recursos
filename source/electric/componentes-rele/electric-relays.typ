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
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[*CC BY-SA 4.0 License*]]],
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://www.picuino.com/es/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "en",
  size: 12pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 12pt,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 14pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 14pt, weight: "bold")[#it]
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
  #text(size: 16pt, weight: "bold")[THE ELECTROMECHANICAL RELAY]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[

= What is a relay

A relay is an electromechanical device with two components: the *coil* and
the *contacts*. The coil receives a small low-voltage electric current in
the control circuit and moves the contacts, which act as switches in the
power circuit, where the voltage and current are higher.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 2mm,
    [#image("electric-relay-principle.gif")],
    [#image("electric-rele-05.jpg")],
  ),
  
  caption: [
    Diagram and photograph of a relay. \
    #link("https://commons.wikimedia.org/wiki/File:Relay_principle_horizontal_new.gif")[Digigalos]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0] #h(6mm)     #link("https://commons.wikimedia.org/wiki/File:Omron_G2R-2-24V_relay_02.jpg")[Public Domain]
  ]
)


= How a relay works

In the following diagram, we can see the circuit of a relay in operation.

The *control circuit* is on the left and consists of a 12-volt battery, a
push button, and the relay coil. When the push button is pressed, current
flows to the coil, which activates the power contact (switch).

The *power circuit* consists of a relay contact, a 230-volt alternating
current generator, and a motor. When the contact closes, voltage is
applied to the motor and it starts running.

#figure(
  image("electric-rele-01.png", width: 65mm),
)

One advantage of this design is that the push button has a voltage that is
safe for people, separated from the high voltage of the motor, which is
more suitable for supplying large amounts of power.


= Self-latching relay

A relay has several contacts, some normally open and others normally
closed. These contacts can be used to provide feedback to the control
circuit so that it remains operating once the relay has been activated.

In the following diagram, we can see a relay with start and stop
operation. The start push button activates the coil and, once activated,
the two K1 contacts associated with the relay keep the coil energized and
the motor running even after the start push button is released.

To stop the circuit, the stop push button must be pressed. The coil will
no longer receive current and the two K1 contacts will open, stopping the
circuit.

#figure(
  image("electric-rele-02.en.png", width: 100%),
)


= Oscillating relay

In this case, feedback is provided by a normally closed contact of relay
K1. When push button S1 is pressed, current flows through the coil. The
coil operates the contacts, causing the normally closed K1 contact to
open. When this contact opens, current stops flowing through the coil. The
coil then stops operating, causing contact K1 to close again and allowing
current to flow through the coil once more.

#figure(
  image("electric-rele-03.png", width: 84mm),
)

]

#pagebreak()


//
// PAGE 2
//


#place(center)[ #line(angle: 90deg, length: 130mm) ]

#columns(2, gutter: 0.8cm)[


= History of the relay

The relay was invented in *1835* and began to be used in telegraphy to
amplify long-distance signals. Since a relay is capable of controlling a
greater output power than its input power, it can be considered an
amplifier that made it possible to improve the quality of telegraph
signals.

In *1941*, Konrad Zuse completed the first computer based on relays.
Relays were later replaced by vacuum tubes, which were much faster. From
1954 onwards, transistors began to be used; they were even faster and much
more reliable. Transistors are still used today in computers and in a
wide variety of electronic devices.

Although relays are no longer used as the basis of computers, they are
still frequently used in automation systems to control motors and other
high-power devices. Examples can be found in homes, where they are used
to operate elevators, water pumps, or staircase light timers.

#colbreak()


= Contactors

Contactors are special high-power relays used to operate three-phase
motors, that is, motors with three power supply lines.

The following drawing shows a contactor supplying power to a three-phase
motor. This circuit demonstrates the usefulness of relays for controlling
large amounts of power and switching many circuits with a small
low-voltage signal.


#figure(
  image("electric-rele-04.png", width: 62mm),
)

]



#align(center)[
  #v(50mm)
  #text(size: 16pt, weight: "bold")[EXERCISES]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 83mm) ]

#columns(2, gutter: 0.8cm)[

+ What is a relay and what is it used for?
+ Draw a diagram of a relay showing its coil and contacts.
+ Draw the electrical diagram of a relay that switches on a 125 V light
  bulb from a push button supplied with 24 V.
+ Explain how the previous circuit works.
+ Draw the diagram of a relay that switches on a 23-ohm resistor supplied
  with 220 V using two push buttons, one for starting and one for stopping.
+ Explain how the previous circuit works.
+ Draw the two states of an oscillating relay while the push button is
  being pressed.
+ What uses has the relay had throughout history?
+ What electronic components replaced the relay?
+ What are relays used for today?
+ What is a contactor and what is it used for?
+ Draw the diagram of a contactor that operates a three-phase motor when a
  normally open contact is pressed.

]
