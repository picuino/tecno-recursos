EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 2
Title "CABLEADO CON BORNAS. INTERRUPTORES CON LAMPARAS EN SERIE"
Date "14/12/2018"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2018 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 400  500  0    100  ~ 0
CABLEADO CON BORNAS. INTERRUPTORES CON LÁMPARAS EN SERIE
$Comp
L simbolos:CopyRight CP1
U 1 1 5BD1D4ED
P 3800 11400
F 0 "CP1" H 4225 11725 40  0001 C CNN
F 1 "CopyRight" H 3975 11725 40  0001 C CNN
F 2 "" H 3700 11750 50  0001 C CNN
F 3 "" H 3800 11600 50  0001 C CNN
F 4 "CC BY-SA 4.0" H 3500 11350 50  0000 C CNN "License"
F 5 "" H 4350 11350 50  0000 C CNN "Author"
F 6 "" H 3925 11350 50  0000 C CNN "Date"
F 7 "www.picuino.com" H 4150 11350 50  0000 C CNN "Web"
	1    3800 11400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:borna_12x2 X1
U 1 1 5C157060
P 4400 8500
F 0 "X1" H 4550 8686 100 0000 C CNN
F 1 "borna_12x2" H 4550 8550 50  0001 C CNN
F 2 "" V 4400 8350 50  0001 C CNN
F 3 "" V 4400 8350 50  0001 C CNN
	1    4400 8500
	1    0    0    -1  
$EndComp
Wire Notes Line style solid rgb(0, 0, 0)
	200  600  8050 600 
Text Notes 400  900  0    100  ~ 0
ESQUEMA ELÉCTRICO
Wire Notes Line style solid
	400  950  2000 950 
Wire Notes Line style solid rgb(0, 0, 0)
	200  4600 8050 4600
Text Notes 400  4900 0    100  ~ 0
LISTADO DE COMPONENTES
Wire Notes Line style solid
	400  4950 2450 4950
$Comp
L simbolos:pila_petaca V?
U 1 1 5C1D3F53
P 900 5400
F 0 "V?" H 1333 5201 100 0001 L CNN
F 1 "pila_petaca" H 1050 5075 50  0001 C CNN
F 2 "" V 1250 5075 50  0001 C CNN
F 3 "" V 1250 5075 50  0001 C CNN
F 4 "4.5V" H 1050 4950 100 0000 C CNN "V"
	1    900  5400
	1    0    0    -1  
$EndComp
Wire Notes Line style solid rgb(0, 0, 0)
	200  7700 8050 7700
Text Notes 400  8000 0    100  ~ 0
CABLEADO DEL CIRCUITO
Wire Notes Line style solid
	400  8050 2300 8050
$Sheet
S 8600 1150 2600 300 
U 5C331732
F0 "2" 100
F1 "electric-bornas-lamparas-serie-doble-2.sch" 100
$EndSheet
$Comp
L simbolos:pila_petaca V1
U 1 1 5C1648AC
P 3900 8700
F 0 "V1" V 4150 7800 100 0000 L CNN
F 1 "pila_petaca" H 4050 8375 50  0001 C CNN
F 2 "" V 4250 8375 50  0001 C CNN
F 3 "" V 4250 8375 50  0001 C CNN
F 4 "4.5V" H 4050 8250 100 0000 C CNN "V"
	1    3900 8700
	0    1    -1   0   
$EndComp
$Comp
L simbolos:lampara_pack L1
U 1 1 5C266952
P 2000 10800
F 0 "L1" H 2800 11100 100 0000 C CNN
F 1 "lampara_pack" H 2500 10725 50  0001 C CNN
F 2 "" H 2100 10650 50  0001 C CNN
F 3 "" H 2100 10650 50  0001 C CNN
	1    2000 10800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara_pack L2
U 1 1 5C2669C2
P 500 10800
F 0 "L2" H 1350 11100 100 0000 C CNN
F 1 "lampara_pack" H 1000 10725 50  0001 C CNN
F 2 "" H 600 10650 50  0001 C CNN
F 3 "" H 600 10650 50  0001 C CNN
	1    500  10800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:selector_pack S1
U 1 1 5C26AA28
P 2100 8800
F 0 "S1" H 2450 9150 100 0000 L CNN
F 1 "selector_pack" H 2300 9000 50  0001 C CNN
F 2 "" H 2400 8650 50  0001 C CNN
F 3 "" H 2400 8650 50  0001 C CNN
	1    2100 8800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:selector_pack S2
U 1 1 5C26AD2B
P 700 8800
F 0 "S2" H 1050 9150 100 0000 L CNN
F 1 "selector_pack" H 900 9000 50  0001 C CNN
F 2 "" H 1000 8650 50  0001 C CNN
F 3 "" H 1000 8650 50  0001 C CNN
	1    700  8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 10700 4200 10700
Wire Wire Line
	4200 11200 500  11200
Wire Wire Line
	500  11200 500  10800
Wire Wire Line
	1500 10800 1500 11100
Wire Wire Line
	1500 11100 4100 11100
Wire Wire Line
	4100 10500 4400 10500
Wire Wire Line
	2000 10800 2000 11000
Wire Wire Line
	2000 11000 3900 11000
Wire Wire Line
	3900 10300 4400 10300
Wire Wire Line
	3800 10100 4400 10100
Wire Wire Line
	3000 10800 3000 10900
Wire Wire Line
	3000 10900 3800 10900
Wire Wire Line
	4400 9900 700  9900
Wire Wire Line
	900  9700 4400 9700
Wire Wire Line
	4400 9500 1100 9500
Wire Wire Line
	1100 9500 1100 8800
Wire Wire Line
	900  8800 900  9700
Wire Wire Line
	700  8800 700  9900
Wire Wire Line
	4400 9300 2100 9300
Wire Wire Line
	2100 9300 2100 8800
Wire Wire Line
	2300 8800 2300 9100
Wire Wire Line
	2300 9100 4400 9100
Wire Wire Line
	4400 8900 2500 8900
Wire Wire Line
	2500 8900 2500 8800
Wire Wire Line
	3900 8700 4400 8700
Wire Wire Line
	4100 8500 4100 8400
Wire Wire Line
	4100 8400 3900 8400
Wire Wire Line
	4100 8500 4400 8500
Wire Wire Line
	3800 10100 3800 10900
Wire Wire Line
	3900 10300 3900 11000
Wire Wire Line
	4100 10500 4100 11100
Wire Wire Line
	4200 10700 4200 11200
$Comp
L simbolos:selector_pack S?
U 1 1 5C2749C3
P 850 6700
F 0 "S?" H 1200 7050 100 0001 L CNN
F 1 "selector_pack" H 1050 6900 50  0001 C CNN
F 2 "" H 1150 6550 50  0001 C CNN
F 3 "" H 1150 6550 50  0001 C CNN
	1    850  6700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara_pack L?
U 1 1 5C274A61
P 4050 5950
F 0 "L?" H 4900 6250 100 0001 C CNN
F 1 "lampara_pack" H 4550 5875 50  0001 C CNN
F 2 "" H 4150 5800 50  0001 C CNN
F 3 "" H 4150 5800 50  0001 C CNN
	1    4050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 6500 5050 6500
Text Notes 1650 6850 0    100  ~ 0
2 x CONMUTADOR DE\n    1 CIRCUITO\n    2 POSICIONES
Text Notes 1650 5800 0    100  ~ 0
1 x PILA DE PETACA
Text Notes 5350 5650 0    100  ~ 0
2 x LAMPARA DE 4.5V
Text Notes 5350 6550 0    100  ~ 0
1m x CABLE AISLADO
Text Notes 5350 7200 0    100  ~ 0
12 x BORNAS DE CONEXIÓN
$Comp
L simbolos:Pila V1
U 1 1 5C263CAA
P 600 2000
F 0 "V1" H 783 1850 100 0000 L CNN
F 1 "Pila" H 700 1925 50  0001 C CNN
F 2 "" H 600 1875 50  0001 C CNN
F 3 "" H 600 1875 50  0001 C CNN
	1    600  2000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L2
U 1 1 5C2642EA
P 3700 2000
F 0 "L2" H 3863 1800 100 0000 L CNN
F 1 "lampara" V 3750 1475 50  0001 C CNN
F 2 "" V 3700 1825 50  0001 C CNN
F 3 "" V 3700 1825 50  0001 C CNN
	1    3700 2000
	1    0    0    -1  
$EndComp
Text Notes 550  3200 0    100  ~ 0
INTERRUPTORES CON LÁMPARAS EN SERIE
$Comp
L simbolos:borna_6x2 X?
U 1 1 5C2683B7
P 5050 7000
F 0 "X?" V 5200 5893 100 0001 R CNN
F 1 "borna_6x2" H 5200 7050 50  0001 C CNN
F 2 "" V 5050 6875 50  0001 C CNN
F 3 "" V 5050 6875 50  0001 C CNN
	1    5050 7000
	0    1    1    0   
$EndComp
$Comp
L simbolos:conmutador S?
U 1 1 5C2692B8
P 800 7250
F 0 "S?" H 1050 7576 100 0001 C CNN
F 1 "conmutador" H 800 7200 50  0001 C CNN
F 2 "" H 1100 7100 50  0001 C CNN
F 3 "" H 1100 7100 50  0001 C CNN
	1    800  7250
	1    0    0    -1  
$EndComp
Text Notes 650  7350 0    100  ~ 0
C
Text Notes 1400 7150 0    100  ~ 0
A
Text Notes 1400 7450 0    100  ~ 0
B
Text Notes 1200 1700 0    100  ~ 0
C
Text Notes 1550 1700 0    100  ~ 0
A
Text Notes 1200 6900 0    100  ~ 0
B
Text Notes 800  6900 0    100  ~ 0
A
Text Notes 1000 6900 0    100  ~ 0
C
Text Notes 975  8900 0    100  ~ 0
B
Text Notes 575  8900 0    100  ~ 0
A
Text Notes 775  8900 0    100  ~ 0
C
Text Notes 2375 8900 0    100  ~ 0
B
Text Notes 1975 8900 0    100  ~ 0
A
Text Notes 2175 8900 0    100  ~ 0
C
Wire Wire Line
	5000 8500 4700 8500
$Comp
L simbolos:interruptor S1
U 1 1 5C27F0AB
P 1200 1500
F 0 "S1" H 1300 1650 100 0000 C CNN
F 1 "interruptor" H 1450 1400 50  0001 C CNN
F 2 "" H 1500 1500 50  0001 C CNN
F 3 "" H 1500 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  1500 1200 1500
$Comp
L simbolos:lampara L1
U 1 1 5C290DD5
P 2200 2000
F 0 "L1" H 2363 1800 100 0000 L CNN
F 1 "lampara" V 2250 1475 50  0001 C CNN
F 2 "" V 2200 1825 50  0001 C CNN
F 3 "" V 2200 1825 50  0001 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 9100 5000 9100
Wire Wire Line
	5000 9100 5000 8500
Wire Wire Line
	4700 9300 5300 9300
Wire Wire Line
	600  1500 600  2000
Wire Wire Line
	600  2300 600  2800
Wire Wire Line
	4700 10700 5600 10700
Wire Wire Line
	4700 8700 5600 8700
Wire Wire Line
	4700 9700 5300 9700
Wire Wire Line
	5300 9300 5300 9700
Text Notes 2700 1700 0    100  ~ 0
C
Text Notes 3050 1700 0    100  ~ 0
A
$Comp
L simbolos:interruptor S2
U 1 1 5D382CDE
P 2700 1500
F 0 "S2" H 2800 1650 100 0000 C CNN
F 1 "interruptor" H 2950 1400 50  0001 C CNN
F 2 "" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  2800 2200 2800
Wire Wire Line
	2200 2400 2200 2800
Wire Wire Line
	2200 1500 2200 2000
Wire Wire Line
	2200 1500 1700 1500
Wire Wire Line
	2200 1500 2700 1500
Connection ~ 2200 1500
Wire Wire Line
	3200 1500 3700 1500
Wire Wire Line
	3700 1500 3700 2000
Wire Wire Line
	3700 2400 3700 2800
Wire Wire Line
	3700 2800 2200 2800
Connection ~ 2200 2800
Wire Wire Line
	4700 10100 5000 10100
Connection ~ 4700 9700
Wire Wire Line
	4700 9700 5000 9800
Wire Wire Line
	4700 10700 5000 10600
Wire Wire Line
	5000 10300 4700 10300
Connection ~ 4700 10700
Wire Wire Line
	5000 10300 5000 10600
Wire Wire Line
	5000 9800 5000 10100
Wire Wire Line
	5300 10500 5300 9900
Wire Wire Line
	4700 10500 5300 10500
Wire Wire Line
	4700 9900 5300 9900
Wire Wire Line
	5600 8700 5600 10700
$EndSCHEMATC
