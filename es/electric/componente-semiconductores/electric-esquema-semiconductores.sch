EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Semiconductores"
Date "2021-05-21"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2021 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 2550 -150 0    50   ~ 0
IMPRIMIR CON ANCHO DE LINEA EN 15MILS Y LOS COMPONENTES EN 15MILS
$Comp
L simbolos:current I
U 1 1 60A7EABD
P 600 325
F 0 "I" H 1000 325 75  0001 C CNN
F 1 "current" H 725 300 50  0001 C CNN
F 2 "" H 750 325 50  0001 C CNN
F 3 "" H 750 325 50  0001 C CNN
	1    600  325 
	1    0    0    -1  
$EndComp
Text Notes 875  750  0    75   ~ 0
Cátodo
Text Notes 300  750  0    75   ~ 0
Ánodo
$Comp
L simbolos:diodo D1
U 1 1 60A7D8A5
P 600 525
F 0 "D1" V 425 375 100 0001 C CNN
F 1 "diodo" H 600 575 50  0001 C CNN
F 2 "" V 600 375 50  0001 C CNN
F 3 "" V 600 375 50  0001 C CNN
	1    600  525 
	0    -1   -1   0   
$EndComp
Text Notes 400  575  0    75   ~ 0
+
Text Notes 1000 575  0    75   ~ 0
-
Wire Notes Line
	200  200  1400 200 
$Comp
L simbolos:diodo_led D
U 1 1 60A8CC82
P 1025 1275
F 0 "D" H 1218 1125 100 0000 L CNN
F 1 "diodo_led" H 1025 1325 50  0001 C CNN
F 2 "" V 1025 1125 50  0001 C CNN
F 3 "" V 1025 1125 50  0001 C CNN
	1    1025 1275
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R
U 1 1 60A8DA16
P 975 1175
F 0 "R" V 825 975 100 0000 C CNN
F 1 "resistencia" V 875 950 50  0001 C CNN
F 2 "" H 1075 1075 50  0001 C CNN
F 3 "" H 1075 1075 50  0001 C CNN
	1    975  1175
	0    1    1    0   
$EndComp
$Comp
L simbolos:Pila V
U 1 1 60A8E2E7
P 525 1275
F 0 "V" H 300 1025 100 0000 L CNN
F 1 "Pila" H 625 1200 50  0001 C CNN
F 2 "" H 525 1150 50  0001 C CNN
F 3 "" H 525 1150 50  0001 C CNN
	1    525  1275
	1    0    0    -1  
$EndComp
Wire Wire Line
	525  1275 525  1175
Wire Wire Line
	525  1175 575  1175
Wire Wire Line
	975  1175 1025 1175
Wire Wire Line
	1025 1175 1025 1275
Wire Wire Line
	525  1575 525  1650
Wire Wire Line
	525  1650 1025 1650
Wire Wire Line
	1025 1650 1025 1575
Wire Notes Line
	1400 1775 200  1775
Wire Wire Line
	525  2550 1025 2550
Wire Wire Line
	1025 2550 1025 2450
$Comp
L simbolos:generador V
U 1 1 60A970D7
P 525 2100
F 0 "V" H 275 1900 100 0000 L CNN
F 1 "generador" V 575 1575 50  0001 C CNN
F 2 "" V 525 1925 50  0001 C CNN
F 3 "" V 525 1925 50  0001 C CNN
	1    525  2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	525  2500 525  2550
$Comp
L simbolos:diodo D
U 1 1 60A97F8E
P 650 2050
F 0 "D" V 800 1875 100 0000 C CNN
F 1 "diodo" H 650 2100 50  0001 C CNN
F 2 "" V 650 1900 50  0001 C CNN
F 3 "" V 650 1900 50  0001 C CNN
	1    650  2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	525  2050 650  2050
Connection ~ 1025 2550
$Comp
L simbolos:condensador C
U 1 1 60A99730
P 1025 2150
F 0 "C" H 1178 2000 100 0000 L CNN
F 1 "condensador" V 850 2000 50  0001 C CNN
F 2 "" H 1075 2050 50  0001 C CNN
F 3 "" H 1075 2050 50  0001 C CNN
	1    1025 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1025 2050 950  2050
Connection ~ 1025 2050
Wire Wire Line
	525  2050 525  2100
Wire Wire Line
	1025 2050 1025 2150
Wire Wire Line
	1025 2550 1250 2550
Wire Wire Line
	1025 2050 1250 2050
Wire Notes Line
	1400 2675 200  2675
Wire Notes Line
	200  200  200  2675
Text Notes 2175 375  0    75   ~ 0
Colector
Text Notes 2175 700  0    75   ~ 0
Emisor
Text Notes 1475 500  0    75   ~ 0
Base
Text Notes 1550 875  0    75   ~ 0
Transistor bipolar
Wire Notes Line
	200  875  1400 875 
$Comp
L simbolos:NPN_2 Q?
U 1 1 60AA462B
P 1825 275
F 0 "Q?" H 2119 75  100 0001 L CNN
F 1 "NPN_2" H 1750 -25 50  0001 C CNN
F 2 "" H 1925 75  50  0001 C CNN
F 3 "" H 1925 75  50  0001 C CNN
	1    1825 275 
	1    0    0    -1  
$EndComp
Wire Notes Line
	1425 200  2725 200 
Text Notes 2150 1100 0    75   ~ 0
Drenador
Text Notes 2150 1425 0    75   ~ 0
Fuente
Text Notes 1450 1325 0    75   ~ 0
Puerta
Text Notes 1550 1600 0    75   ~ 0
Transistor MOSFET
Wire Notes Line
	1400 1650 2725 1650
Wire Notes Line
	1400 925  2725 925 
Wire Notes Line
	2725 200  2725 1650
$Comp
L simbolos:MOSFET_N Q?
U 1 1 60AA914B
P 1825 1350
F 0 "Q?" H 2119 1475 100 0001 L CNN
F 1 "MOSFET_N" H 1750 1400 50  0001 C CNN
F 2 "" H 1925 1500 50  0001 C CNN
F 3 "" H 1925 1500 50  0001 C CNN
	1    1825 1350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:LDR R
U 1 1 60AA9E4B
P 500 2800
F 0 "R" H 583 2600 100 0000 L CNN
F 1 "LDR" V 500 2600 50  0001 C CNN
F 2 "" H 550 2725 50  0001 C CNN
F 3 "" H 550 2725 50  0001 C CNN
	1    500  2800
	1    0    0    -1  
$EndComp
Wire Notes Line
	1400 3325 200  3325
Wire Notes Line
	200  3325 200  2700
Wire Notes Line
	1400 875  1400 200 
Wire Notes Line
	1400 900  1400 1775
Wire Notes Line
	1400 1800 1400 2675
Wire Notes Line
	1400 3325 1400 2700
$Comp
L simbolos:LDR R1
U 1 1 60A9211B
P 3500 400
F 0 "R1" H 3600 275 75  0000 L CNN
F 1 "10K" H 3700 125 75  0000 C CNN
F 2 "" H 3550 325 50  0001 C CNN
F 3 "" H 3550 325 50  0001 C CNN
	1    3500 400 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R2
U 1 1 60A92C2E
P 3500 1450
F 0 "R2" H 3325 1200 75  0000 C CNN
F 1 "2K" H 3325 1325 75  0000 C CNN
F 2 "" H 3600 1350 50  0001 C CNN
F 3 "" H 3600 1350 50  0001 C CNN
	1    3500 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 800  3500 1050
Wire Wire Line
	3500 1050 3800 1050
Connection ~ 3500 1050
$Comp
L simbolos:lampara L1
U 1 1 60A94817
P 4050 400
F 0 "L1" H 4208 200 75  0000 L CNN
F 1 "lampara" V 4100 -125 50  0001 C CNN
F 2 "" V 4050 225 50  0001 C CNN
F 3 "" V 4050 225 50  0001 C CNN
	1    4050 400 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 60A94F05
P 2975 800
F 0 "V1" H 3153 715 75  0000 L CNN
F 1 "4.5V" H 3153 586 75  0000 L CNN
F 2 "" H 2975 675 50  0001 C CNN
F 3 "" H 2975 675 50  0001 C CNN
	1    2975 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 800  2975 300 
Wire Wire Line
	3500 300  3500 400 
Wire Wire Line
	4050 300  4050 400 
Wire Wire Line
	2975 300  3500 300 
Connection ~ 3500 300 
Wire Wire Line
	3500 300  4050 300 
Wire Wire Line
	4050 800  4050 850 
Wire Wire Line
	4050 1525 3500 1525
Wire Wire Line
	3500 1525 3500 1450
Wire Wire Line
	3500 1525 2975 1525
Connection ~ 3500 1525
Wire Wire Line
	2975 1100 2975 1525
Wire Wire Line
	4050 1250 4050 1525
Wire Notes Line
	2750 200  4425 200 
Wire Notes Line
	4425 200  4425 1650
Wire Notes Line
	4425 1650 2750 1650
$Comp
L simbolos:NPN Q1
U 1 1 60A9B26E
P 3800 850
F 0 "Q1" H 4155 650 75  0000 L CNN
F 1 "NPN" H 3725 550 50  0001 C CNN
F 2 "" H 3900 650 50  0001 C CNN
F 3 "" H 3900 650 50  0001 C CNN
	1    3800 850 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:NPN Q1
U 1 1 60A9BD37
P 4950 1075
F 0 "Q1" H 5305 875 75  0000 L CNN
F 1 "NPN" H 4875 775 50  0001 C CNN
F 2 "" H 5050 875 50  0001 C CNN
F 3 "" H 5050 875 50  0001 C CNN
	1    4950 1075
	1    0    0    -1  
$EndComp
$Comp
L simbolos:NPN Q2
U 1 1 60A9C729
P 5700 1075
F 0 "Q2" H 6025 875 75  0000 L CNN
F 1 "NPN" H 5625 775 50  0001 C CNN
F 2 "" H 5800 875 50  0001 C CNN
F 3 "" H 5800 875 50  0001 C CNN
	1    5700 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1275 5575 1275
Wire Wire Line
	5575 1275 5575 850 
Wire Wire Line
	5575 850  4950 850 
Wire Wire Line
	5200 1475 5200 1550
Wire Wire Line
	5200 1550 5950 1550
Wire Wire Line
	5950 1550 5950 1475
$Comp
L simbolos:resistencia R3
U 1 1 60A9EEB2
P 5950 825
F 0 "R3" H 5775 575 75  0000 C CNN
F 1 "2K" H 5775 700 75  0000 C CNN
F 2 "" H 6050 725 50  0001 C CNN
F 3 "" H 6050 725 50  0001 C CNN
	1    5950 825 
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 1075 5950 1000
Wire Wire Line
	5200 1075 5200 1000
Wire Wire Line
	5200 1000 5950 1000
Connection ~ 5950 1000
Wire Wire Line
	5950 1000 5950 825 
Wire Wire Line
	5950 1000 6200 1000
$Comp
L simbolos:conector o?
U 1 1 60AA1F53
P 5950 425
F 0 "o?" H 6100 275 100 0001 C CNN
F 1 "5V" V 6013 352 75  0000 R CNN
F 2 "" H 6075 425 50  0001 C CNN
F 3 "" H 6075 425 50  0001 C CNN
	1    5950 425 
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:tierra V?
U 1 1 60AA2FA2
P 5950 1550
F 0 "V?" H 5975 1525 100 0001 L CNN
F 1 "tierra" H 5825 1525 50  0001 C CNN
F 2 "" H 6250 1400 50  0001 C CNN
F 3 "" H 6250 1400 50  0001 C CNN
	1    5950 1550
	1    0    0    -1  
$EndComp
Connection ~ 5950 1550
$Comp
L simbolos:resistencia R1
U 1 1 60AA38E7
P 4550 850
F 0 "R1" V 4650 650 75  0000 C CNN
F 1 "2K" V 4425 650 75  0001 C CNN
F 2 "" H 4650 750 50  0001 C CNN
F 3 "" H 4650 750 50  0001 C CNN
	1    4550 850 
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:resistencia R2
U 1 1 60AA406C
P 4550 1275
F 0 "R2" V 4650 1075 75  0000 C CNN
F 1 "2K" V 4425 1075 75  0001 C CNN
F 2 "" H 4650 1175 50  0001 C CNN
F 3 "" H 4650 1175 50  0001 C CNN
	1    4550 1275
	0    -1   -1   0   
$EndComp
Text Notes 4700 575  0    75   ~ 0
Puerta lógica NOR
Wire Notes Line
	4450 200  6350 200 
Wire Notes Line
	6350 200  6350 1825
Wire Notes Line
	6350 1825 4425 1825
Wire Notes Line
	4425 1700 4425 1825
$EndSCHEMATC
