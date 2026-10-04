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
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://picuino.com/es/index.html")[*www.picuino.com*]]],
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
// PAGE 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[THE ELECTRIC MOTOR]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[


= What is an electric motor

An electric motor is a *machine* that transforms electrical energy into
rotational mechanical energy. Electric motors are widely used to produce
movement in toys, household appliances, transport vehicles, power tools,
industrial machines, water pumps, etc.

An electric motor can also behave as an electrical energy generator when
it is forced to rotate. This electricity generator is much cheaper and
more durable than electrochemical batteries.


= History of the electric motor

In the *1820s*, H. C. Ørsted and Michael Faraday discovered the basic
principles of electromagnetism, which were necessary for building
motors.

Between *1834 and 1838*, the first practical electric motor was developed.
It was used to power a boat carrying twelve people in Saint Petersburg.

In *1866*, Werner von Siemens patented the dynamo, initiating the
industrial production of electricity using direct current.

From *1880* onwards, direct-current electrical grids and power stations
began to be built in many countries, including Spain.

In *1888*, Nikola Tesla built the first alternating-current motor. This
form of current eventually became the one used in electrical distribution
networks because of its advantages and because of the patents Tesla
licensed free of charge to the Westinghouse company.


= History of electrification in Spain

In Spain, the first company to produce and sell electricity (Sociedad
Española de Electricidad) was founded in 1881 in Barcelona. However, it
was not until many years later that electricity reached all households
on a large scale.

#table(
  columns: (auto, 1fr, 1fr),
  
  align: center + horizon,

  fill: (col, row) => if row == 0 { rgb("f0f0f0") } else { none },

  table.header(
    [*Year*], [*Energy generated*], [*Households with\ electricity*]
  ),

  // Data
  [1940], [3.6 TWh], [60 %],
  [1950], [6.9 TWh], [80 %],
  [1960], [19 TWh],  [90 %],
  [1970], [57 TWh],  [95 %],
  [1980], [110 TWh], [99 %],
  [1990], [152 TWh], [100 %],
)


= Classification of motors

- Direct-current motors and universal motors.
- Synchronous motors and brushless motors.
- Induction motors.
- Reluctance motors and stepper motors.


= Parts of the motor

An electric motor consists of two main components: the stator, which
remains stationary, and the rotor, which rotates when the motor is
operating.

An open alternating-current induction motor, showing its interior:

#figure(
  image("electric-motor-induccion-num.jpg", width: 100%),
  
  caption: [
    #link("https://commons.wikimedia.org/wiki/File:Rotterdam_Ahoy_Europort_2011_(14).JPG")[S. J. de Waard]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
  ]
)

1. Squirrel-cage rotor (armature).
2. and 3. Bearings that support the rotor shaft.
4. Rotating shaft that transmits mechanical energy.
5. Housing with cooling fins.
6. Fan with blades that cools the housing.
7. Stator that generates a rotating magnetic field.
8. Stator coils supplied with alternating current.
9. Stator mounting foot used to secure the motor.

Rotor of a direct-current motor. In this motor, the stator's magnetic
field is fixed:

#figure(
  image("electric-motor-dc-num.jpg", width: 100%),
  
  caption: [
    #link("https://commons.wikimedia.org/wiki/File:Kommutator_universalmotor_stab.jpg")[Sebastian Stabinger]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
  ]
)

10. Commutator with connection segments.
11. Copper wire winding (rotor coils).
12. Magnetic poles of the rotor.
13. Rotor shaft.

]

#pagebreak()


//
// PAGE 2
//


#place(center)[ #line(angle: 90deg, length: 165mm) ]

#columns(2, gutter: 0.8cm)[

= How an electric motor works

The operation of an electric motor is based on the force exerted by a
magnetic field on an electric current (Lorentz force).

#figure(
  image("electric-motor-simplified-02.png", width: 50mm),
)

*Direct-current* motors have windings made of many insulated copper wires
(11), through which current flows from the commutator (10). The stator's
magnetic field is fixed, produced by permanent magnets or an
electromagnet.

The magnetic field generates a force on the current flowing through the
copper wires, causing the rotor to rotate. If we reverse the direction of
the current, the force also changes direction and the motor will rotate
in the opposite direction.

As the rotor rotates, the commutator also rotates and supplies current to
new rotor wires. In this way, the horizontal wires that produce the
rotational force are always energized.

In *induction motors*, the rotor wires are replaced by conductive bars.
The stator's magnetic field rotates and drags the rotor bars along with
it.

#colbreak()


= The variable-frequency drive

A variable-frequency drive is an electronic device that controls the
voltage and current supplied to the motor.

#figure(
  image("electric-motor-variador.jpg", width: 60mm),
  
  caption: [
    #link("https://commons.wikimedia.org/wiki/File:Small_variable-frequency_drive.jpg")[C. J. Cowie]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
  ]
)

The motor's *supply current* is proportional to the rotational force
(torque). The *supply voltage*, and its frequency, are proportional to
the motor's rotational speed. By controlling the current and voltage,
the operation of the motor can be precisely controlled.

One application of a variable-frequency drive is to smoothly control the
motors of vehicles so that they have constant acceleration. They can also
control the speed of the means of transport.

When the variable-frequency drive is operating, it produces an audible
buzzing sound that is characteristic of train motors and electric cars.

]


#align(center)[
  #v(20mm)
  #text(size: 16pt, weight: "bold")[EXERCISES]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 75mm) ]

#columns(2, gutter: 0.8cm)[

+ What is an electric motor and what is it used for?
+ What is an electric generator and what is its relationship to motors?
+ Draw a timeline showing the main milestones in the history of the
  electric motor.
+ Draw a graph of the history of electrification in Spain.
  It should show one line representing the annual energy generated, with
  values on the left vertical axis in 15 TWh intervals, and another line
  representing the percentage of households with electricity, with values
  on the right vertical axis in 10% intervals.
+ Approximately what year did 85% of households in Spain have electricity
  installed?
+ Name 5 different types of electric motors.
+ Draw an induction motor and label its main parts.
+ Draw the rotor of a direct-current motor and label its main parts.
+ Explain how a direct-current motor works.
+ What is a variable-frequency drive for a motor, and what is it used for?
  Give an example of an application.
+ How can the rotational speed of a motor be controlled?
  And how can its torque be controlled?

]