EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Circuitos eléctricos. Conexión serie y paralelo"
Date "16/11/2018"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2018 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L simbolos:rele K?
U 1 1 60324131
P 1250 975
F 0 "K?" H 1727 825 100 0001 L CNN
F 1 "rele" V 1150 825 50  0001 C CNN
F 2 "" H 1350 875 50  0001 C CNN
F 3 "" H 1350 875 50  0001 C CNN
	1    1250 975 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 60324ADD
P 750 975
F 0 "V?" H 928 825 100 0001 L CNN
F 1 "12V" H 500 700 75  0000 L CNN
F 2 "" H 750 850 50  0001 C CNN
F 3 "" H 750 850 50  0001 C CNN
	1    750  975 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:pulsador_na S?
U 1 1 6032502C
P 750 750
F 0 "S?" H 1000 1036 100 0001 C CNN
F 1 "pulsador_na" H 750 700 50  0001 C CNN
F 2 "" H 1050 775 50  0001 C CNN
F 3 "" H 1050 775 50  0001 C CNN
	1    750  750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 975  1250 750 
Wire Wire Line
	750  975  750  750 
Wire Wire Line
	750  1275 750  1500
Wire Wire Line
	750  1500 1250 1500
Wire Wire Line
	1250 1500 1250 1275
$Comp
L simbolos:generador V?
U 1 1 60325801
P 2150 750
F 0 "V?" V 1909 550 100 0001 C CNN
F 1 "230V" V 1919 550 75  0000 C CNN
F 2 "" V 2150 575 50  0001 C CNN
F 3 "" V 2150 575 50  0001 C CNN
	1    2150 750 
	0    1    1    0   
$EndComp
$Comp
L simbolos:motor M?
U 1 1 60326C58
P 2375 925
F 0 "M?" H 2533 725 100 0001 L CNN
F 1 "motor" V 2425 400 50  0001 C CNN
F 2 "" V 2375 700 50  0001 C CNN
F 3 "" V 2375 700 50  0001 C CNN
	1    2375 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1375 1550 1500
Wire Wire Line
	1550 1500 2375 1500
Wire Wire Line
	2375 1500 2375 1325
Wire Wire Line
	2375 925  2375 750 
Wire Wire Line
	2375 750  2150 750 
Wire Wire Line
	1750 750  1550 750 
Wire Wire Line
	1550 750  1550 875 
$Comp
L simbolos:rele K1
U 1 1 60328542
P 5750 975
F 0 "K1" H 6227 825 100 0000 L CNN
F 1 "rele" V 5650 825 50  0001 C CNN
F 2 "" H 5850 875 50  0001 C CNN
F 3 "" H 5850 875 50  0001 C CNN
	1    5750 975 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 603285DC
P 4250 975
F 0 "V?" H 4428 825 100 0001 L CNN
F 1 "12V" H 4000 700 75  0000 L CNN
F 2 "" H 4250 850 50  0001 C CNN
F 3 "" H 4250 850 50  0001 C CNN
	1    4250 975 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:pulsador_na S?
U 1 1 603285E6
P 4550 750
F 0 "S?" H 4800 1036 100 0001 C CNN
F 1 "MARCHA" H 4800 1000 75  0000 C CNN
F 2 "" H 4850 775 50  0001 C CNN
F 3 "" H 4850 775 50  0001 C CNN
	1    4550 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1275 4250 1500
$Comp
L simbolos:generador V?
U 1 1 603285F5
P 6650 750
F 0 "V?" V 6409 550 100 0001 C CNN
F 1 "230V" V 6419 550 75  0000 C CNN
F 2 "" V 6650 575 50  0001 C CNN
F 3 "" V 6650 575 50  0001 C CNN
	1    6650 750 
	0    1    1    0   
$EndComp
$Comp
L simbolos:motor M?
U 1 1 603285FF
P 6875 925
F 0 "M?" H 7033 725 100 0001 L CNN
F 1 "motor" V 6925 400 50  0001 C CNN
F 2 "" V 6875 700 50  0001 C CNN
F 3 "" V 6875 700 50  0001 C CNN
	1    6875 925 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1375 6050 1500
Wire Wire Line
	6050 1500 6875 1500
Wire Wire Line
	6875 1500 6875 1325
Wire Wire Line
	6875 925  6875 750 
Wire Wire Line
	6050 750  6050 875 
$Comp
L simbolos:rele_contacto K1
U 1 1 6032E01D
P 4550 1100
F 0 "K1" V 4650 625 100 0000 C CNN
F 1 "rele_contacto" V 4450 850 50  0001 C CNN
F 2 "" H 4650 1000 50  0001 C CNN
F 3 "" H 4650 1000 50  0001 C CNN
	1    4550 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 1100 4550 750 
Wire Wire Line
	4550 750  4250 750 
Wire Wire Line
	4250 750  4250 975 
Connection ~ 4550 750 
$Comp
L simbolos:pulsador_nc S?
U 1 1 60330236
P 5175 750
F 0 "S?" H 5425 961 100 0001 C CNN
F 1 "PARADA" H 5425 925 75  0000 C CNN
F 2 "" H 5475 775 50  0001 C CNN
F 3 "" H 5475 775 50  0001 C CNN
	1    5175 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1100 5175 1100
Wire Wire Line
	5175 1100 5175 750 
Wire Wire Line
	5175 750  5050 750 
Connection ~ 5175 750 
Wire Wire Line
	5675 750  5750 750 
Wire Wire Line
	5750 750  5750 975 
Wire Wire Line
	5750 1275 5750 1500
Wire Wire Line
	4250 1500 5750 1500
Wire Wire Line
	6050 750  6250 750 
Wire Wire Line
	6650 750  6875 750 
Text Notes 2550 -150 0    50   ~ 0
IMPRIMIR CON WIRE THICKNESS EN 15MILS Y LOS COMPONENTES EN 15MILS
$Comp
L simbolos:rele K1
U 1 1 6032A2AF
P 6000 2725
F 0 "K1" H 6477 2575 100 0000 L CNN
F 1 "rele" V 5900 2575 50  0001 C CNN
F 2 "" H 6100 2625 50  0001 C CNN
F 3 "" H 6100 2625 50  0001 C CNN
	1    6000 2725
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 6032A3F3
P 4250 2725
F 0 "V?" H 4428 2575 100 0001 L CNN
F 1 "12V" H 4000 2450 75  0000 L CNN
F 2 "" H 4250 2600 50  0001 C CNN
F 3 "" H 4250 2600 50  0001 C CNN
	1    4250 2725
	1    0    0    -1  
$EndComp
$Comp
L simbolos:pulsador_na S?
U 1 1 6032A3FD
P 4500 2500
F 0 "S?" H 4750 2786 100 0001 C CNN
F 1 "S1" H 4750 2750 75  0000 C CNN
F 2 "" H 4800 2525 50  0001 C CNN
F 3 "" H 4800 2525 50  0001 C CNN
	1    4500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3025 4250 3250
Wire Wire Line
	6300 3125 6300 3250
Wire Wire Line
	6300 2500 6300 2625
Wire Wire Line
	4500 2500 4250 2500
Wire Wire Line
	4250 2500 4250 2725
Wire Wire Line
	5250 2500 5000 2500
Wire Wire Line
	6000 2500 6000 2725
Wire Wire Line
	6000 3025 6000 3250
$Comp
L simbolos:rele_contacto_nc K1
U 1 1 6033385E
P 5750 2500
F 0 "K1" V 5850 2275 100 0000 C CNN
F 1 "rele_contacto_nc" V 5650 2250 50  0001 C CNN
F 2 "" H 5850 2400 50  0001 C CNN
F 3 "" H 5850 2400 50  0001 C CNN
	1    5750 2500
	0    1    -1   0   
$EndComp
Wire Wire Line
	5750 2500 6000 2500
Wire Wire Line
	4250 3250 6000 3250
$Comp
L simbolos:Pila V?
U 1 1 6034816A
P 750 2725
F 0 "V?" H 928 2575 100 0001 L CNN
F 1 "12V" H 500 2450 75  0000 L CNN
F 2 "" H 750 2600 50  0001 C CNN
F 3 "" H 750 2600 50  0001 C CNN
	1    750  2725
	1    0    0    -1  
$EndComp
$Comp
L simbolos:pulsador_na S1
U 1 1 60348170
P 750 2500
F 0 "S1" H 1000 2786 100 0000 C CNN
F 1 "pulsador_na" H 750 2450 50  0001 C CNN
F 2 "" H 1050 2525 50  0001 C CNN
F 3 "" H 1050 2525 50  0001 C CNN
	1    750  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2725 1250 2500
Wire Wire Line
	750  2725 750  2500
Wire Wire Line
	750  3025 750  3250
Wire Wire Line
	750  3250 1250 3250
$Comp
L simbolos:generador V?
U 1 1 6034817B
P 1500 2425
F 0 "V?" V 1259 2225 100 0001 C CNN
F 1 "230V" V 750 2225 75  0001 C CNN
F 2 "" V 1500 2250 50  0001 C CNN
F 3 "" V 1500 2250 50  0001 C CNN
	1    1500 2425
	-1   0    0    1   
$EndComp
$Comp
L simbolos:rele_contactor K1
U 1 1 60349DD6
P 1250 2725
F 0 "K1" H 2228 2575 100 0000 L CNN
F 1 "rele_contactor" V 1150 2575 50  0001 C CNN
F 2 "" H 1350 2625 50  0001 C CNN
F 3 "" H 1350 2625 50  0001 C CNN
	1    1250 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3025 1250 3250
$Comp
L simbolos:motor_trifásico M1
U 1 1 6034E352
P 1800 3325
F 0 "M1" H 1975 3125 100 0000 L CNN
F 1 "motor_trifásico" H 1800 2950 50  0001 C CNN
F 2 "" V 1800 3100 50  0001 C CNN
F 3 "" V 1800 3100 50  0001 C CNN
	1    1800 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3325 1800 3125
Wire Wire Line
	1650 3325 1650 3225
Wire Wire Line
	1650 3225 1550 3225
Wire Wire Line
	1550 3225 1550 3125
Wire Wire Line
	1950 3325 1950 3225
Wire Wire Line
	1950 3225 2050 3225
Wire Wire Line
	2050 3225 2050 3125
$Comp
L simbolos:generador V?
U 1 1 60354063
P 1800 2425
F 0 "V?" V 1559 2225 100 0001 C CNN
F 1 "230V" V 1050 2225 75  0001 C CNN
F 2 "" V 1800 2250 50  0001 C CNN
F 3 "" V 1800 2250 50  0001 C CNN
	1    1800 2425
	-1   0    0    1   
$EndComp
$Comp
L simbolos:generador V?
U 1 1 603542A9
P 2100 2425
F 0 "V?" V 1859 2225 100 0001 C CNN
F 1 "230V" H 1800 2225 75  0000 C CNN
F 2 "" V 2100 2250 50  0001 C CNN
F 3 "" V 2100 2250 50  0001 C CNN
	1    2100 2425
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 2425 1800 2625
Wire Wire Line
	2100 2425 2100 2625
Wire Wire Line
	2100 2625 2050 2625
Wire Wire Line
	1500 2425 1500 2625
Wire Wire Line
	1500 2625 1550 2625
Wire Wire Line
	1500 2025 1500 1950
Wire Wire Line
	1500 1950 1800 1950
Wire Wire Line
	1800 1950 1800 2025
Wire Wire Line
	1800 1950 2100 1950
Wire Wire Line
	2100 1950 2100 2025
Connection ~ 1800 1950
$EndSCHEMATC
