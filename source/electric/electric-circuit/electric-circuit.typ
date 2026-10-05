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
      align(center)[#text(size: 9pt, weight: "bold")[#link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[*CC BY-SA 4.0 License*]]],
      align(center)[#text(size: 9pt, weight: "bold")[#link("https://picuino.com/en/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "en",
  size: 11pt,
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

#show figure.caption: set text(size: 9pt, weight: "bold")

#show figure.caption: it => block(
  inset: (left: 1mm, right: 1mm), 
  it
)


//
// PAGE 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[THE ELECTRICAL CIRCUIT]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[


= The electrical circuit.

An electrical circuit is a set of components that generate and 
control the flow of electricity to produce useful effects.

#v(-5mm)
#figure(
  image("_images/electric-circuit-2.png", width: 70mm),
)
#v(-5mm)

A simple example of an electrical circuit is the one we all use
when we turn on the light in a room.

Circuits are made up of four types of components:
generators, conductors, receivers, and control elements.
Each of them will be studied in more detail below.


= Generators

These components are responsible for generating electric current. To 
do this, they push electrons so that they flow through the circuit.

Examples of generators are cells and batteries, bicycle dynamos,
car alternators, and photovoltaic solar panels.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,

  figure(
    image("_images/electric-pilas.jpg", width: 100%),
    
    caption: [
      Electric batteries. \
      #link("https://commons.wikimedia.org/wiki/File:AA_AAA_AAAA_A23_battery_comparison-1.jpg")[Lead Holder],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
    ]
  ),
  
  figure(
    image("_images/electric-alternador.jpg", width: 100%),
    
    caption: [
      Car electric alternator. \
      #link("https://commons.wikimedia.org/wiki/File:Alternador_003.jpg")[El Guarito],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
    ]
  )
)

#figure(
  image("_images/electric-fotovoltaic-array.jpg", width: 50mm),
  
  caption: [
    Photovoltaic panel for solar electricity generation. \
    #link("https://commons.wikimedia.org/wiki/File:Solar_tracker_in_Lixouri.jpg")[Saintfevrier],
    Public domain     
  ]
)


= Conductors

Conductors carry electricity between the components of the 
circuit. They are usually electrical wires.

The most common materials used to conduct electricity are:


*Copper:*

It is the most widely used material inside buildings, in the flexible
wires of appliances, and for manufacturing electric motors.


*Aluminum and steel:*

They are the most widely used materials in high-voltage cables. They have
good mechanical strength, resist oxidation well, and are cheaper
than copper.


*Gold, nickel, and chromium:*

They are used to coat electrical contacts to prevent oxidation
and improve conductivity. They can be found in audio plugs
and USB connectors.


*Tin, lead, and silver:*

Because of their low melting temperature (below 300ºC), they are used in
the soldering of electronic components. Silver, despite being more
expensive, is increasingly used because it does not produce the toxic
effects associated with lead.


#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,
  row-gutter: 5mm,

  figure(
    image("_images/electric-copper-wire.jpg", width: 100%),
    
    caption: [
      Copper cable with 3 wires with a cross-sectional area of 2.5mm2. \
      #link("https://commons.wikimedia.org/wiki/File:Electric_guide_3%C3%972.5_mm.jpg")[Petar Milošević],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  ),
  
  figure(
    image("_images/electric-wire-high-voltage.jpg", width: 100%),
    
    caption: [
      High-voltage cable made of aluminum and steel. \
      #link("https://commons.wikimedia.org/wiki/File:High_voltage_cables_with_glass_insulators.jpg")[Albarubescens],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  ),

  figure(
    image("_images/electric-ssd-gold-plated.jpg", width: 100%),
    
    caption: [
      SSD drive with gold-plated connectors. \
      #link("https://commons.wikimedia.org/wiki/File:M.2_2230_M-key_SSD_in_comparison_with_Micro-SD_card.jpg")[Phiarc],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  ),

  figure(
    image("_images/electric-soldaduras.jpg", width: 100%),
    
    caption: [
      SMD components attached to the PCB with tin-lead solder. \
      #link("https://commons.wikimedia.org/wiki/File:Many_different_SMD_capacitors.jpg")[Phiarc],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  )
)

]

#pagebreak()


//
// PAGE 2
//

#place(center)[ #line(angle: 90deg, length: 200mm) ]

#columns(2, gutter: 0.8cm)[

= Receivers

Receiver components transform electricity into useful effects
such as light, heat, movement, sound, etc.

Some examples of receivers are light bulbs, which produce light,
motors, which produce movement, resistors, which produce heat, or
bells, which produce sound.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,

  figure(
    image("_images/electric-lamp-led.jpg", width: 100%),
    
    caption: [
      LED lamp. Produces light from electricity. \
      #link("https://commons.wikimedia.org/wiki/File:60_LED_3W_Spot_Light_eq_25W.jpg")[Mcapdevila],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]   
    ]
  ),
  
  figure(
    image("_images/electric-vitroceramica.jpg", width: 100%),
    
    caption: [
      Electric heating element in a ceramic cooktop. Produces heat. \
      #link("https://commons.wikimedia.org/wiki/File:Electric_stove_coil_with_glass_ceramic_cooktop.jpg")[A. Savin],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]   
    ]
  )
)


= Control elements

These elements make it possible to control the flow of electricity as
needed. The simplest example is a switch that turns a light on or
off by allowing electricity to flow when desired.

Depending on how they are operated, there are several types of
control elements.

*Manual operation:*

Switches, push buttons, rotary controls, etc. They allow people
to control electrical appliances.

Each manual control element has its practical application.
When controlling a bell, a switch cannot be used because after
pressing it, the bell would continue to operate without stopping.
In this application, it is better to use a push button, which only
activates the bell while it is being pressed.

#colbreak()


*Electrical protection:*

Fuses, circuit breakers, residual-current devices, etc.

*Fuses* and *circuit breakers* interrupt the
electric current to protect the electrical installation and prevent
the wires from burning out in the event of a short circuit or overload.

The *residual-current device* protects people's lives by interrupting
the electric current before a fault current can cause an
electric shock.


*Automatic operation:*

Some control elements are operated by electrical signals.
This allows automatic control, reducing the need for
human intervention.

Examples of automatic operation include:
a staircase light that switches off by itself after a certain amount
of time, an electric door that opens automatically when it detects
someone's presence, an elevator that stops on the correct floor
thanks to a limit switch, and a smart building that uses a computer
to control temperature, humidity, the opening of blinds, automatic
irrigation, etc.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,

  figure(
    image("_images/electric-switch.jpg", width: 100%),
  
    caption: [
      On/off switch. \
      #link("https://en.wikipedia.org/wiki/File:On-Off_Switch.jpg")[Jszack],
      #link("https://creativecommons.org/licenses/by-sa/2.5/deed.en")[CC BY-SA 2.5]   
    ]
  ),

  figure(
    image("_images/electric-diferencial.jpg", width: 100%),
  
    caption: [
      Residual-current device. \ Protects people from electric shocks. \
      #link("https://commons.wikimedia.org/wiki/File:Moeller_Xpole_PXF-40-4-003-A-2289.jpg")[Raimond Spekking],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  )
)

]

#align(center)[
  #v(5mm)
  #text(size: 16pt, weight: "bold")[EXERCISES]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 50mm) ]

#columns(2, gutter: 0.8cm)[

+ Draw a simple electrical circuit for a flashlight that turns on
  a lamp with a switch. Write the name of its components
  and what type each one is.
+ What is an electrical generator and what is it used for?
  Write three different examples of electrical generators.
+ What is an electrical conductor and what is it used for?
+ Write four different types of conductors and what each
  one is used for.
+ What function do receivers have in an electrical circuit?
+ Write four different receivers and the effect produced by each one.
+ What function do control elements have in an electrical circuit?
+ Write an example of a manual control element, a protection
  element, and an automatic control element.
]
