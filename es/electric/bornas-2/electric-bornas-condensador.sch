EESchema Schematic File Version 4
LIBS:electric-bornas-condensador-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 2
Title "Circuitos eléctricos. Cableado con bornas."
Date "14/12/2018"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2018 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 400  500  0    100  ~ 0
CABLEADO CON BORNAS.  CARGA Y DESCARGA DE UN CONDENSADOR
$Comp
L simbolos:CopyRight CP1
U 1 1 5BD1D4ED
P 3800 11400
F 0 "CP1" H 4225 11725 40  0001 C CNN
F 1 "CopyRight" H 3975 11725 40  0001 C CNN
F 2 "" H 3700 11750 50  0001 C CNN
F 3 "" H 3800 11600 50  0001 C CNN
F 4 "CC BY-SA 4.0" H 3800 11350 50  0000 C CNN "License"
F 5 "" H 4350 11350 50  0000 C CNN "Author"
F 6 "" H 3925 11350 50  0000 C CNN "Date"
F 7 "www.picuino.com" H 4550 11350 50  0000 C CNN "Web"
	1    3800 11400
	1    0    0    -1  
$EndComp
Wire Notes Line style solid rgb(0, 0, 0)
	200  600  8050 600 
Text Notes 400  900  0    100  ~ 0
ESQUEMA ELÉCTRICO
Wire Notes Line style solid
	400  950  2000 950 
Wire Notes Line style solid rgb(0, 0, 0)
	200  3800 8050 3800
Text Notes 400  4100 0    100  ~ 0
LISTADO DE COMPONENTES
Wire Notes Line style solid
	400  4150 2450 4150
$Comp
L simbolos:pila_petaca V?
U 1 1 5C1D3F53
P 900 4600
F 0 "V?" H 1333 4401 100 0001 L CNN
F 1 "pila_petaca" H 1050 4275 50  0001 C CNN
F 2 "" V 1250 4275 50  0001 C CNN
F 3 "" V 1250 4275 50  0001 C CNN
F 4 "4.5V" H 1050 4150 100 0000 C CNN "V"
	1    900  4600
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia_pack R?
U 1 1 5C1D6B4D
P 750 6000
F 0 "R?" H 600 6000 100 0001 R CNN
F 1 "resistencia_pack" H 1050 5875 50  0001 C CNN
F 2 "" V 850 6100 50  0001 C CNN
F 3 "" V 850 6100 50  0001 C CNN
F 4 "100" H 1050 6193 100 0001 C CNN "R"
	1    750  6000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:LED_pack D?
U 1 1 5C1DF900
P 4650 6050
F 0 "D?" H 5033 6070 100 0001 L CNN
F 1 "LED_pack" H 4800 6425 40  0001 C CNN
F 2 "" V 4650 6025 50  0001 C CNN
F 3 "" V 4650 6025 50  0001 C CNN
	1    4650 6050
	1    0    0    -1  
$EndComp
Wire Notes Line style solid rgb(0, 0, 0)
	200  7400 8050 7400
Text Notes 400  7700 0    100  ~ 0
CABLEADO DEL CIRCUITO
Wire Notes Line style solid
	400  7750 2300 7750
$Comp
L simbolos:Pila V1
U 1 1 5C1A5F09
P 900 2200
AR Path="/5C331732/5C1A5F09" Ref="V1"  Part="1" 
AR Path="/5C1A5F09" Ref="V1"  Part="1" 
F 0 "V1" H 1100 2100 100 0000 L CNN
F 1 "Pila" H 1000 2125 50  0001 C CNN
F 2 "" H 900 2075 50  0001 C CNN
F 3 "" H 900 2075 50  0001 C CNN
F 4 "4.5V" H 1100 1950 100 0000 L CNN "V"
	1    900  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2500 900  3000
$Comp
L simbolos:LED_pack_5mm D1
U 1 1 5C1A5F11
P 2100 10450
AR Path="/5C331732/5C1A5F11" Ref="D1"  Part="1" 
AR Path="/5C1A5F11" Ref="D1"  Part="1" 
F 0 "D1" V 2200 11000 100 0000 L CNN
F 1 "LED_pack_5mm" H 2165 11100 40  0001 C CNN
F 2 "" V 2015 10700 50  0001 C CNN
F 3 "" V 2015 10700 50  0001 C CNN
	1    2100 10450
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:pila_petaca V1
U 1 1 5C1A5F19
P 1700 8800
AR Path="/5C331732/5C1A5F19" Ref="V1"  Part="1" 
AR Path="/5C1A5F19" Ref="V1"  Part="1" 
F 0 "V1" V 1850 8100 100 0000 R CNN
F 1 "pila_petaca" H 1850 8475 50  0001 C CNN
F 2 "" V 2050 8475 50  0001 C CNN
F 3 "" V 2050 8475 50  0001 C CNN
F 4 "4.5V" V 1850 8400 100 0000 C CNN "V"
	1    1700 8800
	0    1    -1   0   
$EndComp
$Comp
L simbolos:borna_12x2 X1
U 1 1 5C1A5F20
P 2400 8500
AR Path="/5C331732/5C1A5F20" Ref="X1"  Part="1" 
AR Path="/5C1A5F20" Ref="X1"  Part="1" 
F 0 "X1" H 2550 8686 100 0000 C CNN
F 1 "borna_12x2" H 2550 8550 50  0001 C CNN
F 2 "" V 2400 8350 50  0001 C CNN
F 3 "" V 2400 8350 50  0001 C CNN
	1    2400 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 10300 2400 10300
Wire Wire Line
	2400 10500 2100 10450
Text Notes 4300 2400 0    100  ~ 0
CARGA Y DESCARGA DE UN\nCONDENSADOR
$Comp
L simbolos:diodo_led D1
U 1 1 5C1A5F2A
P 3000 2500
AR Path="/5C331732/5C1A5F2A" Ref="D1"  Part="1" 
AR Path="/5C1A5F2A" Ref="D1"  Part="1" 
F 0 "D1" H 3188 2350 100 0000 L CNN
F 1 "diodo_led" H 3000 2550 50  0001 C CNN
F 2 "" V 3000 2350 50  0001 C CNN
F 3 "" V 3000 2350 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R1
U 1 1 5C1A5F32
P 3000 1900
AR Path="/5C331732/5C1A5F32" Ref="R1"  Part="1" 
AR Path="/5C1A5F32" Ref="R1"  Part="1" 
F 0 "R1" H 3100 1800 100 0000 L CNN
F 1 "resistencia" V 2900 1675 50  0001 C CNN
F 2 "" H 3100 1800 50  0001 C CNN
F 3 "" H 3100 1800 50  0001 C CNN
F 4 "2200" H 3100 1600 100 0000 L CNN "R"
	1    3000 1900
	1    0    0    -1  
$EndComp
$Comp
L simbolos:condensador_pol C1
U 1 1 5C1A5F3A
P 2000 2200
AR Path="/5C331732/5C1A5F3A" Ref="C1"  Part="1" 
AR Path="/5C1A5F3A" Ref="C1"  Part="1" 
F 0 "C1" H 2153 2133 100 0000 L CNN
F 1 "condensador_pol" V 1825 2050 50  0001 C CNN
F 2 "" H 2050 2100 50  0001 C CNN
F 3 "" H 2050 2100 50  0001 C CNN
F 4 "2200uF" H 2153 1967 100 0000 L CNN "C"
	1    2000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2500 2000 3000
Wire Wire Line
	3000 2300 3000 2500
Text Notes 1300 1850 2    100  ~ 0
1
Text Notes 1600 1850 0    100  ~ 0
2
Wire Wire Line
	3000 2800 3000 3000
Connection ~ 2000 3000
Wire Wire Line
	3000 3000 2000 3000
$Comp
L simbolos:condensador_pack C1
U 1 1 5C1A5F4B
P 1900 9100
AR Path="/5C331732/5C1A5F4B" Ref="C1"  Part="1" 
AR Path="/5C1A5F4B" Ref="C1"  Part="1" 
F 0 "C1" V 2050 10000 100 0000 L CNN
F 1 "condensador_pack" V 2025 9575 50  0001 C CNN
F 2 "" H 1900 9100 50  0001 C CNN
F 3 "" H 1900 9100 100 0000 C CNN
F 4 "2200uF" V 2000 9625 75  0000 C CNN "C"
	1    1900 9100
	0    -1   1    0   
$EndComp
Wire Wire Line
	1900 9100 2400 9100
Wire Wire Line
	1900 9400 2200 9400
Wire Wire Line
	2200 9400 2400 9500
Wire Wire Line
	3000 8700 2700 8700
Wire Wire Line
	2700 10100 3000 10100
Wire Wire Line
	3000 10100 3000 10300
Wire Wire Line
	3000 10300 2700 10300
Connection ~ 2700 9500
Wire Wire Line
	2700 9100 3600 9100
Wire Wire Line
	2700 8500 3800 8500
Wire Wire Line
	1700 8500 2400 8500
Wire Wire Line
	2400 8700 1900 8700
Wire Wire Line
	1900 8700 1700 8800
$Comp
L simbolos:switch S1
U 1 1 5C1A5F5F
P 1200 1700
AR Path="/5C331732/5C1A5F5F" Ref="S1"  Part="1" 
AR Path="/5C1A5F5F" Ref="S1"  Part="1" 
F 0 "S1" H 1450 1961 100 0000 C CNN
F 1 "switch" H 1450 1600 50  0001 C CNN
F 2 "" H 1500 1700 50  0001 C CNN
F 3 "" H 1500 1700 50  0001 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 9500 2900 9400
Wire Wire Line
	2900 9400 3000 9400
Wire Wire Line
	3000 9400 3000 8700
Wire Wire Line
	2700 9500 3300 9500
Wire Wire Line
	2700 9100 2900 9000
Wire Wire Line
	2900 9000 3800 9000
Connection ~ 2700 9100
$Comp
L simbolos:resistencia_pack R1
U 1 1 5C1A5F6E
P 1500 9900
AR Path="/5C331732/5C1A5F6E" Ref="R1"  Part="1" 
AR Path="/5C1A5F6E" Ref="R1"  Part="1" 
F 0 "R1" H 1350 9900 100 0000 R CNN
F 1 "resistencia_pack" H 1800 9775 50  0001 C CNN
F 2 "" V 1600 10000 50  0001 C CNN
F 3 "" V 1600 10000 50  0001 C CNN
F 4 "100" H 1800 10093 100 0001 C CNN "R"
	1    1500 9900
	1    0    0    -1  
$EndComp
Text Notes 1550 6150 0    100  ~ 0
1 x RESISTENCIA 2200\n    ROJO, ROJO, ROJO, ORO
Wire Wire Line
	2400 10100 1400 10100
Wire Wire Line
	1400 10100 1400 9900
Wire Wire Line
	1400 9900 1500 9900
$Comp
L simbolos:cable L?
U 1 1 5C1A5F7A
P 3800 8500
F 0 "L?" H 3800 8600 50  0001 L CNN
F 1 "cable" H 3850 8550 50  0001 C CNN
F 2 "" V 3800 8275 50  0001 C CNN
F 3 "" V 3800 8275 50  0001 C CNN
F 4 "1" H 4000 8500 100 0000 C CNN "cable"
	1    3800 8500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:cable L?
U 1 1 5C1A5F81
P 3800 9000
F 0 "L?" H 3800 9100 50  0001 L CNN
F 1 "cable" H 3850 9050 50  0001 C CNN
F 2 "" V 3800 8775 50  0001 C CNN
F 3 "" V 3800 8775 50  0001 C CNN
F 4 "2" H 4000 9000 100 0000 C CNN "cable"
	1    3800 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 10500 2700 10500
Wire Wire Line
	3300 9500 3300 10500
Wire Wire Line
	2700 9900 3600 9900
Wire Wire Line
	3600 9100 3600 9900
Wire Wire Line
	3000 1700 3000 1900
Wire Wire Line
	2000 1700 2000 2200
Connection ~ 2000 1700
Wire Wire Line
	2000 1700 3000 1700
Wire Wire Line
	900  1700 900  2200
Wire Wire Line
	900  1700 1200 1700
Wire Wire Line
	1700 1700 2000 1700
Wire Wire Line
	900  3000 2000 3000
$Comp
L simbolos:condensador_pack C?
U 1 1 5C1AE3D8
P 5250 4800
AR Path="/5C331732/5C1AE3D8" Ref="C?"  Part="1" 
AR Path="/5C1AE3D8" Ref="C?"  Part="1" 
F 0 "C?" V 5400 5700 100 0001 L CNN
F 1 "condensador_pack" V 5375 5275 50  0001 C CNN
F 2 "" H 5250 4800 50  0001 C CNN
F 3 "" H 5250 4800 100 0000 C CNN
F 4 "2200uF" V 5350 5325 75  0000 C CNN "C"
	1    5250 4800
	0    -1   1    0   
$EndComp
Text Notes 5450 5100 0    100  ~ 0
1 x CONDENSADOR 2200uF
Text Notes 5450 6150 0    100  ~ 0
1 x LED BLANCO 5MM\n     ALTA LUMINOSIDAD
Text Notes 1550 5050 0    100  ~ 0
1 x PILA DE PETACA
$Comp
L simbolos:switch S1
U 1 1 5C1A4AA0
P 4300 8500
F 0 "S1" V 4550 8682 100 0000 L CNN
F 1 "switch" H 4550 8400 50  0001 C CNN
F 2 "" H 4600 8500 50  0001 C CNN
F 3 "" H 4600 8500 50  0001 C CNN
	1    4300 8500
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 9900 2400 9900
$Sheet
S 8600 1150 2600 300 
U 5C331732
F0 "2" 100
F1 "electric-bornas-condensador-2.sch" 100
$EndSheet
$EndSCHEMATC
