EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Circuitos neumáticos"
Date "8/05/2021"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2022 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 350  500  0    100  ~ 0
CIRCUITOS NEUMÁTICOS
Wire Notes Line
	250  3625 8050 3625
Wire Notes Line
	250  1000 8050 1000
Text Notes 350  850  0    100  ~ 0
ALUMNO:________________________________________ GRUPO:________ FECHA:__________
Text Notes 325  1200 0    100  ~ 0
1
Text Notes 4250 1200 0    100  ~ 0
2
Wire Notes Line
	250  8875 8050 8875
Text Notes 4125 500  0    100  ~ 0
LÁMINA 1
$Comp
L simbolos:CopyRight-simbolos CP?
U 1 1 62926362
P 7625 475
F 0 "CP?" H 7875 525 40  0001 C CNN
F 1 "CopyRight-simbolos" H 7625 525 40  0001 C CNN
F 2 "" H 7525 825 50  0001 C CNN
F 3 "" H 7625 675 50  0001 C CNN
F 4 "CC BY-SA 4.0" H 7625 669 60  0000 C CNN "License"
F 5 "www.picuino.com" H 7625 559 60  0000 C CNN "Web"
	1    7625 475 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 6291F416
P 975 3475
F 0 "V?" H 850 3450 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 900 3775 50  0001 C CNN
F 2 "" H 975 3350 50  0001 C CNN
F 3 "" H 975 3350 50  0001 C CNN
	1    975  3475
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 6292006D
P 575 3300
F 0 "V?" H 450 3275 100 0001 L CNN
F 1 "Fuente_presion" H 600 3600 50  0001 C CNN
F 2 "" H 575 3175 50  0001 C CNN
F 3 "" H 575 3175 50  0001 C CNN
	1    575  3300
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Piston_simple_efecto V?
U 1 1 62920A14
P 1500 1625
F 0 "V?" H 1775 1575 100 0001 L CNN
F 1 "Piston_simple_efecto" H 1800 2050 50  0001 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1500 1625
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Valvula_3_2 V?
U 1 1 629213DD
P 1425 2625
F 0 "V?" H 1375 2525 100 0001 L CNN
F 1 "Valvula_3_2" H 1250 2925 50  0001 C CNN
F 2 "" H 1425 2500 50  0001 C CNN
F 3 "" H 1425 2500 50  0001 C CNN
	1    1425 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2700 1500 3300
Wire Wire Line
	1500 3300 1375 3300
$Comp
L simbolos:Escape V?
U 1 1 6292303F
P 1650 2700
F 0 "V?" H 1525 2675 100 0001 L CNN
F 1 "Escape" H 1675 3000 50  0001 C CNN
F 2 "" H 1650 2575 50  0001 C CNN
F 3 "" H 1650 2575 50  0001 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pilotaje_muelle U?
U 1 1 629231E1
P 1725 2500
F 0 "U?" H 1950 2525 50  0001 C CNN
F 1 "Pilotaje_muelle" H 2050 2475 50  0001 C CNN
F 2 "" H 1725 2500 50  0001 C CNN
F 3 "" H 1725 2500 50  0001 C CNN
	1    1725 2500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pilotaje_enclavamiento U?
U 1 1 62923667
P 1025 2500
F 0 "U?" H 900 2500 50  0001 C CNN
F 1 "Pilotaje_enclavamiento" H 900 2500 50  0001 C CNN
F 2 "" H 900 2500 50  0001 C CNN
F 3 "" H 900 2500 50  0001 C CNN
	1    1025 2500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 62930DA7
P 4900 3475
F 0 "V?" H 4775 3450 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 4825 3775 50  0001 C CNN
F 2 "" H 4900 3350 50  0001 C CNN
F 3 "" H 4900 3350 50  0001 C CNN
	1    4900 3475
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 62930DAD
P 4500 3300
F 0 "V?" H 4375 3275 100 0001 L CNN
F 1 "Fuente_presion" H 4525 3600 50  0001 C CNN
F 2 "" H 4500 3175 50  0001 C CNN
F 3 "" H 4500 3175 50  0001 C CNN
	1    4500 3300
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Escape V?
U 1 1 62930DC2
P 5675 2700
F 0 "V?" H 5550 2675 100 0001 L CNN
F 1 "Escape" H 5700 3000 50  0001 C CNN
F 2 "" H 5675 2575 50  0001 C CNN
F 3 "" H 5675 2575 50  0001 C CNN
	1    5675 2700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pilotaje_muelle U?
U 1 1 62930DC8
P 5750 2500
F 0 "U?" H 5975 2525 50  0001 C CNN
F 1 "Pilotaje_muelle" H 6075 2475 50  0001 C CNN
F 2 "" H 5750 2500 50  0001 C CNN
F 3 "" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pilotaje_enclavamiento U?
U 1 1 62930DCE
P 4950 2500
F 0 "U?" H 4825 2500 50  0001 C CNN
F 1 "Pilotaje_enclavamiento" H 4825 2500 50  0001 C CNN
F 2 "" H 4825 2500 50  0001 C CNN
F 3 "" H 4825 2500 50  0001 C CNN
	1    4950 2500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Piston_doble_efecto V?
U 1 1 62931047
P 5475 1625
F 0 "V?" H 5750 1575 100 0001 L CNN
F 1 "Piston_doble_efecto" H 5775 2050 50  0001 C CNN
F 2 "" H 5425 1550 50  0001 C CNN
F 3 "" H 5425 1550 50  0001 C CNN
	1    5475 1625
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Valvula_5_2 V?
U 1 1 62931529
P 5400 2625
F 0 "V?" H 5350 2525 100 0001 L CNN
F 1 "Valvula_5_2" H 5200 2950 50  0001 C CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "" H 5400 2500 50  0001 C CNN
	1    5400 2625
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Escape V?
U 1 1 6293312B
P 5475 2700
F 0 "V?" H 5350 2675 100 0001 L CNN
F 1 "Escape" H 5500 3000 50  0001 C CNN
F 2 "" H 5475 2575 50  0001 C CNN
F 3 "" H 5475 2575 50  0001 C CNN
	1    5475 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 2700 5575 3300
Wire Wire Line
	5300 3300 5575 3300
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 6293F9A5
P 975 6100
F 0 "V?" H 850 6075 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 900 6400 50  0001 C CNN
F 2 "" H 975 5975 50  0001 C CNN
F 3 "" H 975 5975 50  0001 C CNN
	1    975  6100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 6293F9AB
P 575 5925
F 0 "V?" H 450 5900 100 0001 L CNN
F 1 "Fuente_presion" H 600 6225 50  0001 C CNN
F 2 "" H 575 5800 50  0001 C CNN
F 3 "" H 575 5800 50  0001 C CNN
	1    575  5925
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Escape V?
U 1 1 6293F9B1
P 1750 5325
F 0 "V?" H 1625 5300 100 0001 L CNN
F 1 "Escape" H 1775 5625 50  0001 C CNN
F 2 "" H 1750 5200 50  0001 C CNN
F 3 "" H 1750 5200 50  0001 C CNN
	1    1750 5325
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Piston_doble_efecto V?
U 1 1 6293F9C3
P 1550 4250
F 0 "V?" H 1825 4200 100 0001 L CNN
F 1 "Piston_doble_efecto" H 1850 4675 50  0001 C CNN
F 2 "" H 1500 4175 50  0001 C CNN
F 3 "" H 1500 4175 50  0001 C CNN
	1    1550 4250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Valvula_5_2 V?
U 1 1 6293F9C9
P 1475 5250
F 0 "V?" H 1425 5150 100 0001 L CNN
F 1 "Valvula_5_2" H 1275 5575 50  0001 C CNN
F 2 "" H 1475 5125 50  0001 C CNN
F 3 "" H 1475 5125 50  0001 C CNN
	1    1475 5250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Escape V?
U 1 1 6293F9CF
P 1550 5325
F 0 "V?" H 1425 5300 100 0001 L CNN
F 1 "Escape" H 1575 5625 50  0001 C CNN
F 2 "" H 1550 5200 50  0001 C CNN
F 3 "" H 1550 5200 50  0001 C CNN
	1    1550 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5325 1650 5925
Wire Wire Line
	1375 5925 1650 5925
$Comp
L simbolos:Valvula_3_2 V?
U 1 1 6294068C
P 2400 4550
F 0 "V?" H 2350 4450 100 0001 L CNN
F 1 "Valvula_3_2" H 2225 4850 50  0001 C CNN
F 2 "" H 2400 4425 50  0001 C CNN
F 3 "" H 2400 4425 50  0001 C CNN
	1    2400 4550
	0    1    1    0   
$EndComp
$Comp
L simbolos:Pilotaje_rodillo U?
U 1 1 629419F6
P 2525 4150
F 0 "U?" H 2505 4150 50  0001 C CNN
F 1 "Pilotaje_rodillo" H 2505 4150 50  0001 C CNN
F 2 "" H 2525 4150 50  0001 C CNN
F 3 "" H 2525 4150 50  0001 C CNN
	1    2525 4150
	0    1    1    0   
$EndComp
$Comp
L simbolos:Pilotaje_muelle U?
U 1 1 62941D87
P 2525 4850
F 0 "U?" H 2750 4875 50  0001 C CNN
F 1 "Pilotaje_muelle" H 2850 4825 50  0001 C CNN
F 2 "" H 2525 4850 50  0001 C CNN
F 3 "" H 2525 4850 50  0001 C CNN
	1    2525 4850
	0    1    1    0   
$EndComp
$Comp
L simbolos:Valvula_3_2 V?
U 1 1 629430CB
P 3075 4550
F 0 "V?" H 3025 4450 100 0001 L CNN
F 1 "Valvula_3_2" H 2900 4850 50  0001 C CNN
F 2 "" H 3075 4425 50  0001 C CNN
F 3 "" H 3075 4425 50  0001 C CNN
	1    3075 4550
	0    1    1    0   
$EndComp
$Comp
L simbolos:Pilotaje_rodillo U?
U 1 1 629430D1
P 3200 4150
F 0 "U?" H 3180 4150 50  0001 C CNN
F 1 "Pilotaje_rodillo" H 3180 4150 50  0001 C CNN
F 2 "" H 3200 4150 50  0001 C CNN
F 3 "" H 3200 4150 50  0001 C CNN
	1    3200 4150
	0    1    1    0   
$EndComp
$Comp
L simbolos:Pilotaje_muelle U?
U 1 1 629430D7
P 3200 4850
F 0 "U?" H 3425 4875 50  0001 C CNN
F 1 "Pilotaje_muelle" H 3525 4825 50  0001 C CNN
F 2 "" H 3200 4850 50  0001 C CNN
F 3 "" H 3200 4850 50  0001 C CNN
	1    3200 4850
	0    1    1    0   
$EndComp
$Comp
L simbolos:Escape V?
U 1 1 62943A65
P 2325 4775
F 0 "V?" H 2200 4750 100 0001 L CNN
F 1 "Escape" H 2350 5075 50  0001 C CNN
F 2 "" H 2325 4650 50  0001 C CNN
F 3 "" H 2325 4650 50  0001 C CNN
	1    2325 4775
	0    1    1    0   
$EndComp
$Comp
L simbolos:Escape V?
U 1 1 62943F32
P 3000 4775
F 0 "V?" H 2875 4750 100 0001 L CNN
F 1 "Escape" H 3025 5075 50  0001 C CNN
F 2 "" H 3000 4650 50  0001 C CNN
F 3 "" H 3000 4650 50  0001 C CNN
	1    3000 4775
	0    1    1    0   
$EndComp
$Comp
L simbolos:Pilotaje_neumatico U?
U 1 1 62944C16
P 1125 5125
F 0 "U?" H 1350 5150 50  0001 C CNN
F 1 "Pilotaje_neumatico" H 1450 5100 50  0001 C CNN
F 2 "" H 1125 5125 50  0001 C CNN
F 3 "" H 1125 5125 50  0001 C CNN
	1    1125 5125
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pilotaje_neumatico U?
U 1 1 62945383
P 1825 5125
F 0 "U?" H 2050 5150 50  0001 C CNN
F 1 "Pilotaje_neumatico" H 2150 5100 50  0001 C CNN
F 2 "" H 1825 5125 50  0001 C CNN
F 3 "" H 1825 5125 50  0001 C CNN
	1    1825 5125
	-1   0    0    1   
$EndComp
Wire Wire Line
	2725 5600 900  5600
Wire Wire Line
	900  5600 900  5125
Wire Wire Line
	2050 5125 2050 5725
Wire Wire Line
	2050 5725 3400 5725
Connection ~ 1650 5925
Wire Wire Line
	2800 4625 3000 4625
Wire Wire Line
	1650 5925 2125 5925
Wire Wire Line
	2125 4625 2325 4625
Connection ~ 2125 5925
Wire Wire Line
	2125 5925 2800 5925
Wire Notes Line
	250  6250 8050 6250
Wire Notes Line
	4125 1025 4125 3600
Wire Notes Line
	4125 3650 4125 6225
Wire Notes Line
	4125 6275 4125 8850
Wire Notes Line
	4125 8900 4125 11475
Wire Wire Line
	1550 4250 1550 4925
Wire Wire Line
	3400 4625 3400 5725
Wire Wire Line
	2800 4625 2800 5925
Wire Wire Line
	2725 4625 2725 5600
Wire Wire Line
	2125 4625 2125 5925
Wire Wire Line
	1500 1625 1500 2300
Wire Wire Line
	5475 1625 5475 2300
Wire Wire Line
	5675 1750 6125 1750
Wire Wire Line
	6125 1750 6125 1625
Wire Wire Line
	5675 1750 5675 2300
Wire Wire Line
	1750 4375 2200 4375
Wire Wire Line
	1750 4375 1750 4925
Wire Wire Line
	2200 4250 2200 4375
Text Notes 325  3825 0    100  ~ 0
3
Text Notes 4250 3825 0    100  ~ 0
4
Text Notes 325  6450 0    100  ~ 0
5
Text Notes 4250 6450 0    100  ~ 0
6
Text Notes 325  9075 0    100  ~ 0
7
Text Notes 4250 9075 0    100  ~ 0
8
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 62993E82
P 4900 6100
F 0 "V?" H 4775 6075 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 4825 6400 50  0001 C CNN
F 2 "" H 4900 5975 50  0001 C CNN
F 3 "" H 4900 5975 50  0001 C CNN
	1    4900 6100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 62993E88
P 4500 5925
F 0 "V?" H 4375 5900 100 0001 L CNN
F 1 "Fuente_presion" H 4525 6225 50  0001 C CNN
F 2 "" H 4500 5800 50  0001 C CNN
F 3 "" H 4500 5800 50  0001 C CNN
	1    4500 5925
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 629949D9
P 975 8725
F 0 "V?" H 850 8700 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 900 9025 50  0001 C CNN
F 2 "" H 975 8600 50  0001 C CNN
F 3 "" H 975 8600 50  0001 C CNN
	1    975  8725
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 629949DF
P 575 8550
F 0 "V?" H 450 8525 100 0001 L CNN
F 1 "Fuente_presion" H 600 8850 50  0001 C CNN
F 2 "" H 575 8425 50  0001 C CNN
F 3 "" H 575 8425 50  0001 C CNN
	1    575  8550
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 6299665F
P 4900 8725
F 0 "V?" H 4775 8700 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 4825 9025 50  0001 C CNN
F 2 "" H 4900 8600 50  0001 C CNN
F 3 "" H 4900 8600 50  0001 C CNN
	1    4900 8725
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 62996665
P 4500 8550
F 0 "V?" H 4375 8525 100 0001 L CNN
F 1 "Fuente_presion" H 4525 8850 50  0001 C CNN
F 2 "" H 4500 8425 50  0001 C CNN
F 3 "" H 4500 8425 50  0001 C CNN
	1    4500 8550
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 629971C0
P 975 11350
F 0 "V?" H 850 11325 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 900 11650 50  0001 C CNN
F 2 "" H 975 11225 50  0001 C CNN
F 3 "" H 975 11225 50  0001 C CNN
	1    975  11350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 629971C6
P 575 11175
F 0 "V?" H 450 11150 100 0001 L CNN
F 1 "Fuente_presion" H 600 11475 50  0001 C CNN
F 2 "" H 575 11050 50  0001 C CNN
F 3 "" H 575 11050 50  0001 C CNN
	1    575  11175
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Unidad_mantenimiento V?
U 1 1 629982DF
P 4900 11350
F 0 "V?" H 4775 11325 100 0001 L CNN
F 1 "Unidad_mantenimiento" H 4825 11650 50  0001 C CNN
F 2 "" H 4900 11225 50  0001 C CNN
F 3 "" H 4900 11225 50  0001 C CNN
	1    4900 11350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Fuente_presion V?
U 1 1 629982E5
P 4500 11175
F 0 "V?" H 4375 11150 100 0001 L CNN
F 1 "Fuente_presion" H 4525 11475 50  0001 C CNN
F 2 "" H 4500 11050 50  0001 C CNN
F 3 "" H 4500 11050 50  0001 C CNN
	1    4500 11175
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:Valvula_3_2 V?
U 1 1 6299863E
P 1300 10850
F 0 "V?" H 1250 10750 100 0001 L CNN
F 1 "Valvula_3_2" H 1125 11150 50  0001 C CNN
F 2 "" H 1300 10725 50  0001 C CNN
F 3 "" H 1300 10725 50  0001 C CNN
	1    1300 10850
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Valvula_simultaneidad V?
U 1 1 629992E4
P 1600 10425
F 0 "V?" H 1550 10325 100 0001 L CNN
F 1 "Valvula_simultaneidad" H 1675 10675 50  0001 C CNN
F 2 "" H 1600 10300 50  0001 C CNN
F 3 "" H 1600 10300 50  0001 C CNN
	1    1600 10425
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Valvula_3_2 V?
U 1 1 62999775
P 2375 10850
F 0 "V?" H 2325 10750 100 0001 L CNN
F 1 "Valvula_3_2" H 2200 11150 50  0001 C CNN
F 2 "" H 2375 10725 50  0001 C CNN
F 3 "" H 2375 10725 50  0001 C CNN
	1    2375 10850
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Valvula_5_2 V?
U 1 1 6299AD3A
P 2475 9950
F 0 "V?" H 2425 9850 100 0001 L CNN
F 1 "Valvula_5_2" H 2275 10275 50  0001 C CNN
F 2 "" H 2475 9825 50  0001 C CNN
F 3 "" H 2475 9825 50  0001 C CNN
	1    2475 9950
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Piston_doble_efecto V?
U 1 1 6299B770
P 2550 9475
F 0 "V?" H 2825 9425 100 0001 L CNN
F 1 "Piston_doble_efecto" H 2850 9900 50  0001 C CNN
F 2 "" H 2500 9400 50  0001 C CNN
F 3 "" H 2500 9400 50  0001 C CNN
	1    2550 9475
	1    0    0    -1  
$EndComp
$EndSCHEMATC
