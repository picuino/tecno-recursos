//
// CONFIGURACIÓN DE PÁGINA
//

#set page(
  paper: "a4",
  flipped: true,
  margin: ( top: 10mm, bottom: 8mm, left: 10mm, right: 10mm )
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

#set figure(supplement: none, numbering: none)
#show figure.caption: set text(size: 9pt, weight: "bold")
#show figure: set block(above: 4mm, below: 4mm)

//
// PÁGINA 1
//

#table(
  stroke: none,
  columns: (1fr, 4mm, 4mm, 1fr, 4mm, 4mm, 1fr),
  inset: (y: 0mm, x: 0mm),

  table.vline(x: 2,),
  table.vline(x: 5,),
  
  [ == Prótesis biónicas: brazos, implantes.
    #figure(
      image("_images/robotica-bionic-hand.jpg", width: 57mm),
      
      caption: [
        Mano de Open Bionics. \
        #link("https://commons.wikimedia.org/wiki/File:Star_Wars_Bionic_hand.jpg")[StarWarsRey],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )
    #figure(
      image("_images/robotica-implante-coclear.jpg", width: 57mm),
      
      caption: [
        Implante coclear. \
        #link("https://commons.wikimedia.org/wiki/File:Child_wearing_Cochlear_implant.jpg")[Matt Ralph],
        #link("https://creativecommons.org/licenses/by/2.0/deed.en")[CC BY 2.0], vía Wikimedia Commons.
      ]
    )
    
    == Robots de servicio
    #figure(
      image("_images/robotica-roomba.jpg", width: 57mm),
      
      caption: [
        Robot de limpieza Roomba de IRobot. \
        #link("https://commons.wikimedia.org/wiki/File:IRobot_Roomba_870_(15860914940).jpg")[Kārlis Dambrāns],
        #link("https://creativecommons.org/licenses/by/2.0/deed.en")[CC BY 2.0], vía Wikimedia Commons.
      ]
    )
  ],

  [],
  [],
  
  [
    #align(center)[= TIPOS DE ROBOTS]
    #v(4mm)
    #text(size: 11pt, weight: "bold")[
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]]
    #h(1fr)
    #text(size: 11pt, weight: "bold")[
    #link("https://www.picuino.com/es/index.html")[*www.picuino.com*]] 
    #v(2mm)
    == Robots cirujanos
    #figure(
      image("_images/robotica-davinci.jpg", width: 70mm),
      
      caption: [
        Robot cirujano Da Vinci. \
        #link("https://commons.wikimedia.org/wiki/File:2023-09_-_Robot_chirurgien_Da_Vinci_Xi_-_Centre_hospitalier_de_Vesoul_-_01.jpg")[A. BourgeoisP],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )

    == Edificios inteligentes
    #figure(
      image("_images/robotica-smarthome.png", width: 83mm),
      
      caption: [
        Esquema de casa inteligente. \
        #link("https://pixabay.com/es/vectors/casa-inteligente-casa-tecnolog%C3%ADa-2005993/")[Pixaline],
        #link("https://pixabay.com/service/license-summary/")[Licencia Pixabay].
      ]
    )
  ],
  
  [],
  [],
  
  [
    == Vehículos autónomos
    #figure(
      image("_images/robotica-waymo.jpg", width: 70mm),
      
      caption: [
        Taxi robótico de Waymo. \
        #link("https://commons.wikimedia.org/wiki/File:Waymo_self-driving_car_side_view.gk.jpg")[Grendelkhan],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )

    == Rovers espaciales
    #figure(
      image("_images/robotica-mars-rover.jpg", width: 60mm),
      
      caption: [
        Rober marciano Opportunity. \
        #link("https://commons.wikimedia.org/wiki/File:NASA_Mars_Rover.jpg")[NASA],
        #link("https://en.wikipedia.org/wiki/Public_domain")[public domain], vía Wikimedia Commons.
      ]
    )

    == Robots desactivadores de bombas
    #figure(
      image("_images/robotica-bomb-disposal-robot.jpg", width: 65mm),
      
      caption: [
        Robot desactivador de bombas en Afghanistan. \
        #link("https://commons.wikimedia.org/wiki/File:A_Mk_8_Wheelbarrow_explosive_ordnance_disposal_(EOD)_robot_remotly_detonates_a_suspect_explosive_device._Afghanistan._13-03-2002_MOD_45141173.jpg")[Cpl Phil Ryan RAF],
        #link("https://www.nationalarchives.gov.uk/doc/open-government-licence/version/1/open-government-licence.htm")[OGL v1.0], vía Wikimedia Commons.
      ]
    )
  ]
)

#pagebreak()


//
// PÁGINA 2
//

#table(
  stroke: none,
  columns: (1fr, 4mm, 4mm, 1fr, 4mm, 4mm, 1fr),
  inset: (y: 0mm, x: 0mm),

  table.vline(x: 2,),
  table.vline(x: 5,),
  
  [
    == Robots guiados
    #figure(
      image("_images/robotica-excavadora.jpg", width: 60mm),
      
      caption: [
        Excavadora Caterpillar. \
        #link("https://pixabay.com/es/photos/cavador-maquina-pesada-equipo-4055456/")[dimitrisvetsikas1969],
        #link("https://pixabay.com/service/license-summary/")[Licencia Pixabay].
      ]
    )

    == Androides
    #figure(
      image("_images/robotica-unitree-g1.jpg", height: 60mm),
      
      caption: [
        Androide Unitree G1. \
        #link("https://commons.wikimedia.org/wiki/File:Japan-Mobility-Show-2025-RuinDig_0566.jpg")[Yuki Uchida],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )

    == Bots y asistentes virtuales
    #figure(
      image("_images/robotica-chatgpt.png", width: 30mm),
      
      caption: [
        Logotipo de ChatGPT. \
        #link("https://commons.wikimedia.org/wiki/File:ChatGPT-Logo.svg")[OpenAI],
        #link("https://en.wikipedia.org/wiki/Trademark")[Trademark].
      ]
    )

  ],

  [],
  [],
  
  [
    == Brazos robot industriales
    #figure(
      image("_images/robotica-brazo-kuka.jpg", width: 70mm),
      
      caption: [
        Brazo robótico de Kuka. \
        #link("https://commons.wikimedia.org/wiki/File:Afi_Klm_E_M_Robots_(223897365).jpeg")[Afiklmem],
        #link("https://creativecommons.org/publicdomain/zero/1.0/deed.en")[CC0], via Wikimedia Commons.
      ]
    )

    == Drones
    #figure(
      image("_images/robotica-dron-mini4.jpg", width: 70mm),
      
      caption: [
        Dron de entretenimiento. \
        #link("https://commons.wikimedia.org/wiki/File:2024_Dron_DJI_Mini_4_Pro_(01).jpg")[Jacek Halicki],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )

    #figure(
      image("_images/robotica-militar-drone.jpg", width: 70mm),
      
      caption: [
        Dron militar. \
        #link("https://commons.wikimedia.org/wiki/File:GIDS_Shahpar_2_Drone.jpg")[Jacek Halicki],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )
  ],
  
  [],
  [],
  
  [
    == Exoesqueletos
    #figure(
      image("_images/robotica-exoesqueleto.jpg", height: 75mm),
      
      caption: [
        Exoesqueleto ExoHeaver. \
        #link("https://commons.wikimedia.org/wiki/File:%D0%9F%D0%BE%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_%D1%81%D0%B8%D0%B4%D1%8F_%D0%B2_%D1%8D%D0%BA%D0%B7%D0%BE%D1%81%D0%BA%D0%B5%D0%BB%D0%B5%D1%82%D0%B5_ExoHeaver.jpg")[Владислав],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )

    == Robots submarinos
    #figure(
      image("_images/robotica-mini-rov.jpg", height: 75mm),
      
      caption: [
        Mini ROV. \
        #link("https://commons.wikimedia.org/wiki/File:Mini_ROV_pos%C3%A9_au_fonds_du_bassin_d%27essais_du_Centre_Ifremer_de_Brest_(Ifremer_00780-89152_-_49044).jpg")[Olivier Dugornay],
        #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
      ]
    )

  ]
)