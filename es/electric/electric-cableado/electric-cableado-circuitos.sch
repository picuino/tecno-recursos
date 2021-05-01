EESchema Schematic File Version 4
LIBS:electric-cableado-circuitos-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Cableado eléctrico de circuitos electrónicos"
Date "19/10/2018"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2018 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L simbolos:resistencia R1
U 1 1 5BBDF6CD
P 1100 1100
AR Path="/5BBDF6CD" Ref="R1"  Part="1" 
AR Path="/5BBD70B6/5BBDF6CD" Ref="R1"  Part="1" 
F 0 "R1" H 1175 950 100 0000 L CNN
F 1 "1k" H 1175 800 100 0000 L CNN
F 2 "" H 1150 1100 50  0001 C CNN
F 3 "" H 1150 1100 50  0001 C CNN
	1    1100 1100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:NE555C U1
U 1 1 5BBDF6D4
P 5850 1800
AR Path="/5BBDF6D4" Ref="U1"  Part="1" 
AR Path="/5BBD70B6/5BBDF6D4" Ref="U1"  Part="1" 
F 0 "U1" H 6600 2000 100 0000 L CNN
F 1 "NE555" H 6000 2000 100 0000 L CNN
F 2 "" H 6250 1800 50  0001 C CNN
F 3 "" H 6250 1800 50  0001 C CNN
	1    5850 1800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 5BBDF6DB
P 500 1700
AR Path="/5BBDF6DB" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BBDF6DB" Ref="V1"  Part="1" 
F 0 "V1" H 700 1600 100 0000 L CNN
F 1 "5V" H 700 1450 100 0000 L CNN
F 2 "" H 500 1700 50  0001 C CNN
F 3 "" H 500 1700 50  0001 C CNN
	1    500  1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2150 1100 2350
Connection ~ 1100 2150
Wire Wire Line
	1100 2350 1100 2450
Connection ~ 1100 2350
Wire Wire Line
	2250 1100 2550 1100
Wire Wire Line
	2550 1100 2550 1350
Wire Wire Line
	2250 1100 2250 1350
$Comp
L simbolos:resistencia R2
U 1 1 5BBDF6ED
P 1100 1650
AR Path="/5BBDF6ED" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BBDF6ED" Ref="R2"  Part="1" 
F 0 "R2" H 1175 1500 100 0000 L CNN
F 1 "47k" H 1175 1350 100 0000 L CNN
F 2 "" H 1150 1650 50  0001 C CNN
F 3 "" H 1150 1650 50  0001 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2800 2250 2650
Connection ~ 2250 2800
Connection ~ 2250 1100
$Comp
L simbolos:resistencia R3
U 1 1 5BBDF6FF
P 3100 2000
AR Path="/5BBDF6FF" Ref="R3"  Part="1" 
AR Path="/5BBD70B6/5BBDF6FF" Ref="R3"  Part="1" 
F 0 "R3" H 3200 1850 100 0000 L CNN
F 1 "330" H 3200 1700 100 0000 L CNN
F 2 "" H 3150 2000 50  0001 C CNN
F 3 "" H 3150 2000 50  0001 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1950 2850 1950
$Comp
L simbolos:conectores_linea o?
U 1 1 5BBDF719
P 5200 950
AR Path="/5BBDF719" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BBDF719" Ref="o?"  Part="1" 
F 0 "o?" H 5350 900 100 0001 C CNN
F 1 "conectores_linea" V 5050 750 50  0001 C CNN
F 2 "" H 5225 900 50  0001 C CNN
F 3 "" H 5225 900 50  0001 C CNN
	1    5200 950 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BBDF71F
P 7600 950
AR Path="/5BBDF71F" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BBDF71F" Ref="o?"  Part="1" 
F 0 "o?" H 7750 900 100 0001 C CNN
F 1 "conectores_linea" V 7450 750 50  0001 C CNN
F 2 "" H 7625 900 50  0001 C CNN
F 3 "" H 7625 900 50  0001 C CNN
	1    7600 950 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:NE555 U1
U 1 1 5BBDF725
P 1650 1350
AR Path="/5BBDF725" Ref="U1"  Part="1" 
AR Path="/5BBD70B6/5BBDF725" Ref="U1"  Part="1" 
F 0 "U1" H 1850 1350 100 0000 C CNN
F 1 "NE555" H 2050 800 100 0000 C CNN
F 2 "" H 1650 1350 50  0001 C CNN
F 3 "" H 1650 1350 50  0001 C CNN
	1    1650 1350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BBDF73A
P 5200 1550
AR Path="/5BBDF73A" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BBDF73A" Ref="o?"  Part="1" 
F 0 "o?" H 5350 1500 100 0001 C CNN
F 1 "conectores_linea" V 5050 1350 50  0001 C CNN
F 2 "" H 5225 1500 50  0001 C CNN
F 3 "" H 5225 1500 50  0001 C CNN
	1    5200 1550
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BBDF740
P 7600 1550
AR Path="/5BBDF740" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BBDF740" Ref="o?"  Part="1" 
F 0 "o?" H 7750 1500 100 0001 C CNN
F 1 "conectores_linea" V 7450 1350 50  0001 C CNN
F 2 "" H 7625 1500 50  0001 C CNN
F 3 "" H 7625 1500 50  0001 C CNN
	1    7600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	500  1700 500  1100
$Comp
L simbolos:condensador_pol C1
U 1 1 5BBDF756
P 1100 2450
AR Path="/5BBDF756" Ref="C1"  Part="1" 
AR Path="/5BBD70B6/5BBDF756" Ref="C1"  Part="1" 
F 0 "C1" H 1250 2400 100 0000 L CNN
F 1 "100uF" H 1250 2250 100 0000 L CNN
F 2 "" H 1150 2450 50  0001 C CNN
F 3 "" H 1150 2450 50  0001 C CNN
	1    1100 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2800 3100 2800
Text Notes 1850 450  0    100  ~ 0
CABLEADO DE CIRCUITOS INTEGRADOS EN PROTOBOARD
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  3200 8050 3200
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  5850 8050 5850
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  550  8050 550 
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  8650 8050 8650
$Comp
L simbolos:LM358 U1
U 1 1 5BC25B89
P 2100 7100
F 0 "U1" H 2700 6750 100 0000 C CNN
F 1 "LM358" H 2800 7150 100 0000 C CNN
F 2 "" H 2100 7100 50  0001 C CNN
F 3 "" H 2100 7100 50  0001 C CNN
	1    2100 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1950 3100 2000
Connection ~ 1100 1650
Wire Wire Line
	500  2000 500  2800
Wire Wire Line
	500  2800 1100 2800
Wire Wire Line
	500  1100 1100 1100
Wire Wire Line
	1100 1650 1650 1650
Wire Wire Line
	1100 2150 1650 2150
Wire Wire Line
	1100 2350 1650 2350
Wire Wire Line
	1100 2800 2250 2800
Connection ~ 1100 2800
Wire Wire Line
	1100 1100 2250 1100
Connection ~ 1100 1100
$Comp
L simbolos:Pila V1
U 1 1 5BD1382D
P 500 4400
AR Path="/5BD1382D" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BD1382D" Ref="V1"  Part="1" 
F 0 "V1" H 700 4300 100 0000 L CNN
F 1 "5V" H 700 4150 100 0000 L CNN
F 2 "" H 500 4400 50  0001 C CNN
F 3 "" H 500 4400 50  0001 C CNN
	1    500  4400
	1    0    0    -1  
$EndComp
Connection ~ 1600 4850
Wire Wire Line
	2750 3800 3050 3800
Wire Wire Line
	3050 3800 3050 4050
Wire Wire Line
	2750 3800 2750 4050
$Comp
L simbolos:resistencia R2
U 1 1 5BD1383A
P 1600 3800
AR Path="/5BD1383A" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BD1383A" Ref="R1"  Part="1" 
F 0 "R2" H 1675 3650 100 0000 L CNN
F 1 "47k" H 1675 3500 100 0000 L CNN
F 2 "" H 1650 3800 50  0001 C CNN
F 3 "" H 1650 3800 50  0001 C CNN
	1    1600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5500 2750 5350
Connection ~ 2750 5500
Connection ~ 2750 3800
$Comp
L simbolos:resistencia R3
U 1 1 5BD13844
P 3600 4700
AR Path="/5BD13844" Ref="R3"  Part="1" 
AR Path="/5BBD70B6/5BD13844" Ref="R2"  Part="1" 
F 0 "R3" H 3700 4550 100 0000 L CNN
F 1 "330" H 3700 4400 100 0000 L CNN
F 2 "" H 3650 4700 50  0001 C CNN
F 3 "" H 3650 4700 50  0001 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4650 3350 4650
Wire Wire Line
	500  4400 500  3800
$Comp
L simbolos:condensador_pol C1
U 1 1 5BD13852
P 1600 5150
AR Path="/5BD13852" Ref="C1"  Part="1" 
AR Path="/5BBD70B6/5BD13852" Ref="C1"  Part="1" 
F 0 "C1" H 1800 5050 100 0000 L CNN
F 1 "100uF" H 1750 4900 100 0000 L CNN
F 2 "" H 1650 5150 50  0001 C CNN
F 3 "" H 1650 5150 50  0001 C CNN
	1    1600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5500 3600 5500
Wire Wire Line
	3600 4650 3600 4700
Wire Wire Line
	500  4700 500  5500
Wire Wire Line
	1000 5500 1600 5500
Wire Wire Line
	1600 4350 2150 4350
Wire Wire Line
	1600 4850 2150 4850
Wire Wire Line
	1600 5500 2750 5500
Connection ~ 1600 5500
Wire Wire Line
	1000 3800 1600 3800
Connection ~ 1600 3800
Wire Wire Line
	1600 3800 2750 3800
Wire Wire Line
	1600 4850 1600 5150
Wire Wire Line
	2150 5050 1300 5050
Wire Wire Line
	1600 4350 1600 4850
Connection ~ 1600 4350
Wire Wire Line
	1100 2750 1100 2800
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD33F23
P 5200 3650
AR Path="/5BD33F23" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD33F23" Ref="o?"  Part="1" 
F 0 "o?" H 5350 3600 100 0001 C CNN
F 1 "conectores_linea" V 5050 3450 50  0001 C CNN
F 2 "" H 5225 3600 50  0001 C CNN
F 3 "" H 5225 3600 50  0001 C CNN
	1    5200 3650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD33F29
P 7600 3650
AR Path="/5BD33F29" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD33F29" Ref="o?"  Part="1" 
F 0 "o?" H 7750 3600 100 0001 C CNN
F 1 "conectores_linea" V 7450 3450 50  0001 C CNN
F 2 "" H 7625 3600 50  0001 C CNN
F 3 "" H 7625 3600 50  0001 C CNN
	1    7600 3650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD33F41
P 5200 4050
AR Path="/5BD33F41" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD33F41" Ref="o?"  Part="1" 
F 0 "o?" H 5350 4000 100 0001 C CNN
F 1 "conectores_linea" V 5050 3850 50  0001 C CNN
F 2 "" H 5225 4000 50  0001 C CNN
F 3 "" H 5225 4000 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD33F47
P 7600 4050
AR Path="/5BD33F47" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD33F47" Ref="o?"  Part="1" 
F 0 "o?" H 7750 4000 100 0001 C CNN
F 1 "conectores_linea" V 7450 3850 50  0001 C CNN
F 2 "" H 7625 4000 50  0001 C CNN
F 3 "" H 7625 4000 50  0001 C CNN
	1    7600 4050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:condensador_pol C1
U 1 1 5BD33F53
P 7100 5300
AR Path="/5BD33F53" Ref="C1"  Part="1" 
AR Path="/5BBD70B6/5BD33F53" Ref="C1"  Part="1" 
F 0 "C1" V 6875 5075 100 0000 L CNN
F 1 "100u" V 7325 5325 100 0000 R CNN
F 2 "" H 7150 5300 50  0001 C CNN
F 3 "" H 7150 5300 50  0001 C CNN
	1    7100 5300
	0    -1   1    0   
$EndComp
$Comp
L simbolos:diodo_led D1
U 1 1 5BD33F59
P 7050 3900
F 0 "D1" V 7275 3750 100 0000 C CNN
F 1 "LED" V 7000 3875 50  0001 C CNN
F 2 "" V 7050 3725 50  0001 C CNN
F 3 "" V 7050 3725 50  0001 C CNN
	1    7050 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 5450 1600 5500
$Comp
L simbolos:NE555C U1
U 1 1 5BD3FD12
P 5850 4300
AR Path="/5BD3FD12" Ref="U1"  Part="1" 
AR Path="/5BBD70B6/5BD3FD12" Ref="U1"  Part="1" 
F 0 "U1" H 6600 4500 100 0000 L CNN
F 1 "NE555" H 6000 4500 100 0000 L CNN
F 2 "" H 6250 4300 50  0001 C CNN
F 3 "" H 6250 4300 50  0001 C CNN
	1    5850 4300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:potenciometro R3
U 1 1 5BD413DD
P 1550 6900
F 0 "R3" H 1900 6800 100 0000 R CNN
F 1 "10K" H 1950 6600 100 0000 R CNN
F 2 "" H 1600 6800 50  0001 C CNN
F 3 "" H 1600 6800 50  0001 C CNN
	1    1550 6900
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 5BD4283E
P 500 7000
AR Path="/5BD4283E" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BD4283E" Ref="V1"  Part="1" 
F 0 "V1" H 700 6900 100 0000 L CNN
F 1 "5V" H 700 6750 100 0000 L CNN
F 2 "" H 500 7000 50  0001 C CNN
F 3 "" H 500 7000 50  0001 C CNN
	1    500  7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	500  7000 500  6400
Wire Wire Line
	500  7300 500  8100
$Comp
L simbolos:resistencia R4
U 1 1 5BD4332E
P 3100 7300
AR Path="/5BD4332E" Ref="R4"  Part="1" 
AR Path="/5BBD70B6/5BD4332E" Ref="R5"  Part="1" 
F 0 "R4" H 3200 7150 100 0000 L CNN
F 1 "330" H 3200 7000 100 0000 L CNN
F 2 "" H 3150 7300 50  0001 C CNN
F 3 "" H 3150 7300 50  0001 C CNN
	1    3100 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7250 3100 7250
Wire Wire Line
	3100 7250 3100 7300
Wire Wire Line
	1550 7300 1550 8100
Wire Wire Line
	2500 6900 2500 6400
Wire Wire Line
	2500 7600 2500 8100
Connection ~ 2500 8100
Wire Wire Line
	500  8100 1000 8100
$Comp
L simbolos:LDR R1
U 1 1 5BD4998C
P 1000 6500
F 0 "R1" H 1100 6400 100 0000 L CNN
F 1 "LDR" H 1100 6250 100 0000 L CNN
F 2 "" H 1050 6500 50  0001 C CNN
F 3 "" H 1050 6500 50  0001 C CNN
	1    1000 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6500 1000 6400
$Comp
L simbolos:resistencia R2
U 1 1 5BD4D59D
P 1000 7550
AR Path="/5BD4D59D" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BD4D59D" Ref="R2"  Part="1" 
F 0 "R2" H 1100 7400 100 0000 L CNN
F 1 "3.3K" H 1100 7250 100 0000 L CNN
F 2 "" H 1050 7550 50  0001 C CNN
F 3 "" H 1050 7550 50  0001 C CNN
	1    1000 7550
	1    0    0    -1  
$EndComp
$Comp
L simbolos:LM358 U1
U 2 1 5BD57519
P 3700 7100
F 0 "U1" H 4150 6650 100 0000 C CNN
F 1 "LM358" H 4200 7250 100 0000 C CNN
F 2 "" H 3700 7100 50  0001 C CNN
F 3 "" H 3700 7100 50  0001 C CNN
	2    3700 7100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 5BD59FB5
P 6300 6150
AR Path="/5BD59FB5" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BD59FB5" Ref="V?"  Part="1" 
F 0 "V1" V 6200 6200 100 0000 L CNN
F 1 "Pila" H 6400 6200 50  0001 C CNN
F 2 "" H 6300 6150 50  0001 C CNN
F 3 "" H 6300 6150 50  0001 C CNN
	1    6300 6150
	0    -1   1    0   
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD59FBB
P 5200 6250
AR Path="/5BD59FBB" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD59FBB" Ref="o?"  Part="1" 
F 0 "o?" H 5350 6200 100 0001 C CNN
F 1 "conectores_linea" V 5050 6050 50  0001 C CNN
F 2 "" H 5225 6200 50  0001 C CNN
F 3 "" H 5225 6200 50  0001 C CNN
	1    5200 6250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD59FC1
P 7600 6250
AR Path="/5BD59FC1" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD59FC1" Ref="o?"  Part="1" 
F 0 "o?" H 7750 6200 100 0001 C CNN
F 1 "conectores_linea" V 7450 6050 50  0001 C CNN
F 2 "" H 7625 6200 50  0001 C CNN
F 3 "" H 7625 6200 50  0001 C CNN
	1    7600 6250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD59FCD
P 5200 6850
AR Path="/5BD59FCD" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD59FCD" Ref="o?"  Part="1" 
F 0 "o?" H 5350 6800 100 0001 C CNN
F 1 "conectores_linea" V 5050 6650 50  0001 C CNN
F 2 "" H 5225 6800 50  0001 C CNN
F 3 "" H 5225 6800 50  0001 C CNN
	1    5200 6850
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BD59FD3
P 7600 6850
AR Path="/5BD59FD3" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BD59FD3" Ref="o?"  Part="1" 
F 0 "o?" H 7750 6800 100 0001 C CNN
F 1 "conectores_linea" V 7450 6650 50  0001 C CNN
F 2 "" H 7625 6800 50  0001 C CNN
F 3 "" H 7625 6800 50  0001 C CNN
	1    7600 6850
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R4
U 1 1 5BD59FD9
P 6200 8300
AR Path="/5BD59FD9" Ref="R4"  Part="1" 
AR Path="/5BBD70B6/5BD59FD9" Ref="R5"  Part="1" 
F 0 "R4" V 6350 7800 100 0000 L CNN
F 1 "330" V 6350 8050 100 0000 L CNN
F 2 "" H 6250 8300 50  0001 C CNN
F 3 "" H 6250 8300 50  0001 C CNN
	1    6200 8300
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:LM358C U1
U 1 1 5BD5B3A1
P 5850 7300
F 0 "U1" H 6700 7500 100 0000 C CNN
F 1 "LM358C" H 6250 7500 100 0000 C CNN
F 2 "" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    5850 7300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:LDR R1
U 1 1 5BD5B4D7
P 5800 6500
F 0 "R1" V 5550 6100 100 0000 L CNN
F 1 "LDR" V 5800 6375 50  0001 C CNN
F 2 "" H 5850 6500 50  0001 C CNN
F 3 "" H 5850 6500 50  0001 C CNN
	1    5800 6500
	0    1    1    0   
$EndComp
$Comp
L simbolos:resistencia R2
U 1 1 5BD5B6A5
P 7000 6500
AR Path="/5BD5B6A5" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BD5B6A5" Ref="R?"  Part="1" 
F 0 "R2" V 7150 6050 100 0000 L CNN
F 1 "3.3K" V 7150 6300 100 0000 L CNN
F 2 "" H 7050 6500 50  0001 C CNN
F 3 "" H 7050 6500 50  0001 C CNN
	1    7000 6500
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:potenciometro R3
U 1 1 5BD5BF04
P 5650 7100
F 0 "R3" H 5575 6825 100 0000 R CNN
F 1 "10K" H 5575 6975 100 0000 R CNN
F 2 "" H 5700 7000 50  0001 C CNN
F 3 "" H 5700 7000 50  0001 C CNN
	1    5650 7100
	-1   0    0    1   
$EndComp
$Comp
L simbolos:diodo_led D1
U 1 1 5BC1CED7
P 3600 5150
F 0 "D1" H 3791 4975 100 0000 L CNN
F 1 "LED" V 3550 5125 50  0001 C CNN
F 2 "" V 3600 4975 50  0001 C CNN
F 3 "" V 3600 4975 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
$Comp
L simbolos:diodo_led D1
U 1 1 5BC1D1CC
P 3100 7750
F 0 "D1" H 3291 7575 100 0000 L CNN
F 1 "LED" V 3050 7725 50  0001 C CNN
F 2 "" V 3100 7575 50  0001 C CNN
F 3 "" V 3100 7575 50  0001 C CNN
	1    3100 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 7100 3600 7400
Wire Wire Line
	3700 7100 3600 7100
Wire Wire Line
	3700 7400 3600 7400
Connection ~ 3600 7400
Wire Wire Line
	3600 7400 3600 8100
Wire Wire Line
	1550 6400 1550 6900
$Comp
L simbolos:Pila V1
U 1 1 5BC45894
P 5800 3500
AR Path="/5BC45894" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BC45894" Ref="V?"  Part="1" 
F 0 "V1" V 5700 3550 100 0000 L CNN
F 1 "Pila" H 5900 3550 50  0001 C CNN
F 2 "" H 5800 3500 50  0001 C CNN
F 3 "" H 5800 3500 50  0001 C CNN
	1    5800 3500
	0    -1   1    0   
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 5BC45AB5
P 5800 850
AR Path="/5BC45AB5" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BC45AB5" Ref="V?"  Part="1" 
F 0 "V1" V 5700 900 100 0000 L CNN
F 1 "Pila" H 5900 900 50  0001 C CNN
F 2 "" H 5800 850 50  0001 C CNN
F 3 "" H 5800 850 50  0001 C CNN
	1    5800 850 
	0    -1   1    0   
$EndComp
$Comp
L simbolos:resistencia R2
U 1 1 5BC4BFFB
P 5400 5300
AR Path="/5BC4BFFB" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BC4BFFB" Ref="R?"  Part="1" 
F 0 "R2" V 5550 4800 100 0000 L CNN
F 1 "47K" V 5550 5050 100 0000 L CNN
F 2 "" H 5450 5300 50  0001 C CNN
F 3 "" H 5450 5300 50  0001 C CNN
	1    5400 5300
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:resistencia R3
U 1 1 5BC4EBD2
P 6200 3900
AR Path="/5BC4EBD2" Ref="R3"  Part="1" 
AR Path="/5BBD70B6/5BC4EBD2" Ref="R?"  Part="1" 
F 0 "R3" V 6350 3400 100 0000 L CNN
F 1 "330" V 6350 3650 100 0000 L CNN
F 2 "" H 6250 3900 50  0001 C CNN
F 3 "" H 6250 3900 50  0001 C CNN
	1    6200 3900
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:resistencia R3
U 1 1 5BC4ED5D
P 6200 2800
AR Path="/5BC4ED5D" Ref="R3"  Part="1" 
AR Path="/5BBD70B6/5BC4ED5D" Ref="R?"  Part="1" 
F 0 "R3" V 6350 2300 100 0000 L CNN
F 1 "330" V 6350 2550 100 0000 L CNN
F 2 "" H 6250 2800 50  0001 C CNN
F 3 "" H 6250 2800 50  0001 C CNN
	1    6200 2800
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:LED_pack D1
U 1 1 5BC61197
P 4300 2600
F 0 "D1" H 4125 2400 100 0000 L CNN
F 1 "LED_pack" H 4450 2975 40  0001 C CNN
F 2 "" V 4300 2575 50  0001 C CNN
F 3 "" V 4300 2575 50  0001 C CNN
	1    4300 2600
	-1   0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R1
U 1 1 5BC684B5
P 5400 1200
AR Path="/5BC684B5" Ref="R1"  Part="1" 
AR Path="/5BBD70B6/5BC684B5" Ref="R?"  Part="1" 
F 0 "R1" V 5550 950 100 0000 R CNN
F 1 "1K" V 5550 1000 100 0000 L CNN
F 2 "" H 5450 1200 50  0001 C CNN
F 3 "" H 5450 1200 50  0001 C CNN
	1    5400 1200
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:condensador_pol C1
U 1 1 5BC68A9E
P 7400 1200
AR Path="/5BC68A9E" Ref="C1"  Part="1" 
AR Path="/5BBD70B6/5BC68A9E" Ref="C?"  Part="1" 
F 0 "C1" V 7175 950 100 0000 L CNN
F 1 "100u" V 7625 1250 100 0000 R CNN
F 2 "" H 7450 1200 50  0001 C CNN
F 3 "" H 7450 1200 50  0001 C CNN
	1    7400 1200
	0    1    1    0   
$EndComp
$Comp
L simbolos:resistencia R2
U 1 1 5BC68BA3
P 6150 1200
AR Path="/5BC68BA3" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BC68BA3" Ref="R?"  Part="1" 
F 0 "R2" V 6300 750 100 0000 L CNN
F 1 "47K" V 6300 1000 100 0000 L CNN
F 2 "" H 6200 1200 50  0001 C CNN
F 3 "" H 6200 1200 50  0001 C CNN
	1    6150 1200
	0    -1   -1   0   
$EndComp
Connection ~ 1000 8100
Wire Wire Line
	1000 8100 1550 8100
Connection ~ 1000 6400
Wire Wire Line
	1000 6400 500  6400
Wire Wire Line
	1000 6400 1550 6400
Wire Wire Line
	1550 6400 2500 6400
Connection ~ 1550 6400
Wire Wire Line
	1550 8100 2500 8100
Connection ~ 1550 8100
$Comp
L simbolos:pulsador_na S1
U 1 1 5BC1DA76
P 1000 5500
F 0 "S1" V 1250 5444 100 0000 R CNN
F 1 "pulsador_na" H 1000 5450 50  0001 C CNN
F 2 "" H 1300 5525 50  0001 C CNN
F 3 "" H 1300 5525 50  0001 C CNN
	1    1000 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1000 5000 1000 4900
Wire Wire Line
	1000 4900 1300 4900
Wire Wire Line
	1300 4900 1300 5050
$Comp
L simbolos:resistencia R1
U 1 1 5BC20A96
P 1000 3800
AR Path="/5BC20A96" Ref="R1"  Part="1" 
AR Path="/5BBD70B6/5BC20A96" Ref="R?"  Part="1" 
F 0 "R1" H 1075 3650 100 0000 L CNN
F 1 "10K" H 1075 3500 100 0000 L CNN
F 2 "" H 1050 3800 50  0001 C CNN
F 3 "" H 1050 3800 50  0001 C CNN
	1    1000 3800
	1    0    0    -1  
$EndComp
Connection ~ 1000 4900
Wire Wire Line
	500  3800 1000 3800
Connection ~ 1000 3800
Wire Wire Line
	1000 5500 500  5500
Connection ~ 1000 5500
$Comp
L simbolos:resistencia R1
U 1 1 5BC25AFC
P 6150 5500
AR Path="/5BC25AFC" Ref="R1"  Part="1" 
AR Path="/5BBD70B6/5BC25AFC" Ref="R?"  Part="1" 
F 0 "R1" V 6300 5000 100 0000 L CNN
F 1 "10K" V 6300 5250 100 0000 L CNN
F 2 "" H 6200 5500 50  0001 C CNN
F 3 "" H 6200 5500 50  0001 C CNN
	1    6150 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1750 7100 2100 7100
Wire Wire Line
	1000 7400 1000 7550
Connection ~ 1000 7400
Wire Wire Line
	1000 7400 2100 7400
$Comp
L simbolos:LM358 U1
U 1 1 5BC332D3
P 2100 9900
F 0 "U1" H 2700 9550 100 0000 C CNN
F 1 "LM358" H 2800 9950 100 0000 C CNN
F 2 "" H 2100 9900 50  0001 C CNN
F 3 "" H 2100 9900 50  0001 C CNN
	1    2100 9900
	1    0    0    -1  
$EndComp
$Comp
L simbolos:potenciometro R3
U 1 1 5BC332DA
P 1550 9700
F 0 "R3" H 1900 9600 100 0000 R CNN
F 1 "10K" H 1950 9400 100 0000 R CNN
F 2 "" H 1600 9600 50  0001 C CNN
F 3 "" H 1600 9600 50  0001 C CNN
	1    1550 9700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 5BC332E1
P 500 9800
AR Path="/5BC332E1" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BC332E1" Ref="V?"  Part="1" 
F 0 "V1" H 700 9700 100 0000 L CNN
F 1 "5V" H 700 9550 100 0000 L CNN
F 2 "" H 500 9800 50  0001 C CNN
F 3 "" H 500 9800 50  0001 C CNN
	1    500  9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	500  9800 500  9200
Wire Wire Line
	500  10100 500  10900
$Comp
L simbolos:resistencia R4
U 1 1 5BC332EA
P 3050 10050
AR Path="/5BC332EA" Ref="R4"  Part="1" 
AR Path="/5BBD70B6/5BC332EA" Ref="R?"  Part="1" 
F 0 "R4" V 3200 9725 100 0000 L CNN
F 1 "100" V 2875 9675 100 0000 L CNN
F 2 "" H 3100 10050 50  0001 C CNN
F 3 "" H 3100 10050 50  0001 C CNN
	1    3050 10050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 10100 1550 10900
Wire Wire Line
	2500 9700 2500 9200
Wire Wire Line
	2500 10400 2500 10900
Connection ~ 2500 10900
Wire Wire Line
	500  10900 1000 10900
Wire Wire Line
	1000 9300 1000 9200
$Comp
L simbolos:resistencia R2
U 1 1 5BC33301
P 1000 10350
AR Path="/5BC33301" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BC33301" Ref="R?"  Part="1" 
F 0 "R2" H 1100 10200 100 0000 L CNN
F 1 "10K" H 1100 10050 100 0000 L CNN
F 2 "" H 1050 10350 50  0001 C CNN
F 3 "" H 1050 10350 50  0001 C CNN
	1    1000 10350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V1
U 1 1 5BC3330F
P 6300 8950
AR Path="/5BC3330F" Ref="V1"  Part="1" 
AR Path="/5BBD70B6/5BC3330F" Ref="V?"  Part="1" 
F 0 "V1" V 6200 9000 100 0000 L CNN
F 1 "Pila" H 6400 9000 50  0001 C CNN
F 2 "" H 6300 8950 50  0001 C CNN
F 3 "" H 6300 8950 50  0001 C CNN
	1    6300 8950
	0    -1   1    0   
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BC33316
P 5200 9050
AR Path="/5BC33316" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BC33316" Ref="o?"  Part="1" 
F 0 "o?" H 5350 9000 100 0001 C CNN
F 1 "conectores_linea" V 5050 8850 50  0001 C CNN
F 2 "" H 5225 9000 50  0001 C CNN
F 3 "" H 5225 9000 50  0001 C CNN
	1    5200 9050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BC3331C
P 7600 9050
AR Path="/5BC3331C" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BC3331C" Ref="o?"  Part="1" 
F 0 "o?" H 7750 9000 100 0001 C CNN
F 1 "conectores_linea" V 7450 8850 50  0001 C CNN
F 2 "" H 7625 9000 50  0001 C CNN
F 3 "" H 7625 9000 50  0001 C CNN
	1    7600 9050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BC33322
P 5200 9850
AR Path="/5BC33322" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BC33322" Ref="o?"  Part="1" 
F 0 "o?" H 5350 9800 100 0001 C CNN
F 1 "conectores_linea" V 5050 9650 50  0001 C CNN
F 2 "" H 5225 9800 50  0001 C CNN
F 3 "" H 5225 9800 50  0001 C CNN
	1    5200 9850
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conectores_linea o?
U 1 1 5BC33328
P 7600 9850
AR Path="/5BC33328" Ref="o?"  Part="1" 
AR Path="/5BBD70B6/5BC33328" Ref="o?"  Part="1" 
F 0 "o?" H 7750 9800 100 0001 C CNN
F 1 "conectores_linea" V 7450 9650 50  0001 C CNN
F 2 "" H 7625 9800 50  0001 C CNN
F 3 "" H 7625 9800 50  0001 C CNN
	1    7600 9850
	1    0    0    -1  
$EndComp
$Comp
L simbolos:LM358C U1
U 1 1 5BC33335
P 5850 10100
F 0 "U1" H 6750 9300 100 0000 C CNN
F 1 "LM358C" H 6250 9300 100 0000 C CNN
F 2 "" H 6300 10100 50  0001 C CNN
F 3 "" H 6300 10100 50  0001 C CNN
	1    5850 10100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R2
U 1 1 5BC33343
P 7000 9300
AR Path="/5BC33343" Ref="R2"  Part="1" 
AR Path="/5BBD70B6/5BC33343" Ref="R?"  Part="1" 
F 0 "R2" V 7150 8850 100 0000 L CNN
F 1 "10K" V 7150 9100 100 0000 L CNN
F 2 "" H 7050 9300 50  0001 C CNN
F 3 "" H 7050 9300 50  0001 C CNN
	1    7000 9300
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:potenciometro R3
U 1 1 5BC3334A
P 5600 11300
F 0 "R3" H 5525 11200 100 0000 R CNN
F 1 "10K" H 5525 11050 100 0000 R CNN
F 2 "" H 5650 11200 50  0001 C CNN
F 3 "" H 5650 11200 50  0001 C CNN
	1    5600 11300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 9200 1550 9700
Connection ~ 1000 10900
Wire Wire Line
	1000 10900 1550 10900
Connection ~ 1000 9200
Wire Wire Line
	1000 9200 500  9200
Wire Wire Line
	1000 9200 1550 9200
Wire Wire Line
	1550 9200 2500 9200
Connection ~ 1550 9200
Wire Wire Line
	1550 10900 2500 10900
Connection ~ 1550 10900
Wire Wire Line
	1750 9900 2100 9900
Wire Wire Line
	1000 10200 1000 10350
Connection ~ 1000 10200
Wire Wire Line
	1000 10200 2100 10200
$Comp
L simbolos:NPN Q1
U 1 1 5BC431AF
P 3550 10400
F 0 "Q1" H 3900 10300 100 0000 L CNN
F 1 "BD135" H 3900 10100 100 0000 L CNN
F 2 "" H 3650 10200 50  0001 C CNN
F 3 "" H 3650 10200 50  0001 C CNN
	1    3550 10400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 10050 3050 10050
$Comp
L simbolos:NTC R1
U 1 1 5BC4AB5D
P 1000 9300
F 0 "R1" H 1131 9075 100 0000 L CNN
F 1 "NTC" V 850 8975 50  0001 C CNN
F 2 "" H 1050 9200 50  0001 C CNN
F 3 "" H 1050 9200 50  0001 C CNN
	1    1000 9300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L1
U 1 1 5BC4B3BE
P 3800 9400
F 0 "L1" H 3961 9175 100 0000 L CNN
F 1 "lampara" V 3850 8875 50  0001 C CNN
F 2 "" V 3800 9175 50  0001 C CNN
F 3 "" V 3800 9175 50  0001 C CNN
	1    3800 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 9400 3800 9200
Wire Wire Line
	3800 9200 2500 9200
Connection ~ 2500 9200
Wire Wire Line
	3500 10050 3500 10600
Wire Wire Line
	3500 10600 3550 10600
Wire Wire Line
	3800 10900 3800 10800
Wire Wire Line
	2500 10900 3800 10900
$Comp
L simbolos:NTC R1
U 1 1 5BC5881A
P 5800 9300
F 0 "R1" V 5575 8975 100 0000 C CNN
F 1 "NTC" V 5650 8975 50  0001 C CNN
F 2 "" H 5850 9200 50  0001 C CNN
F 3 "" H 5850 9200 50  0001 C CNN
	1    5800 9300
	0    1    1    0   
$EndComp
$Comp
L simbolos:NPN_BD135_pack Q1
U 1 1 5BC68E67
P 7200 9900
F 0 "Q1" H 7300 9600 100 0000 C CNN
F 1 "NPN_BD135_pack" V 6900 9700 50  0001 C CNN
F 2 "" H 8400 9700 50  0001 C CNN
F 3 "" H 8400 9700 50  0001 C CNN
	1    7200 9900
	-1   0    0    1   
$EndComp
$Comp
L simbolos:lampara L1
U 1 1 5BC711AF
P 5800 9500
F 0 "L1" V 5900 9500 100 0000 C CNN
F 1 "lampara" V 5850 8975 50  0001 C CNN
F 2 "" V 5800 9275 50  0001 C CNN
F 3 "" V 5800 9275 50  0001 C CNN
	1    5800 9500
	0    1    1    0   
$EndComp
$Comp
L simbolos:resistencia R4
U 1 1 5BC74B3B
P 6150 9900
AR Path="/5BC74B3B" Ref="R4"  Part="1" 
AR Path="/5BBD70B6/5BC74B3B" Ref="R?"  Part="1" 
F 0 "R4" V 6300 9650 100 0000 R CNN
F 1 "100" V 6300 9700 100 0000 L CNN
F 2 "" H 6200 9900 50  0001 C CNN
F 3 "" H 6200 9900 50  0001 C CNN
	1    6150 9900
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:numero N?
U 1 1 5BC1EA8E
P 4500 1000
F 0 "N?" H 4400 800 100 0001 L CNN
F 1 "1" H 4425 1000 150 0000 L CNN
F 2 "" H 4550 1000 50  0001 C CNN
F 3 "" H 4550 1000 50  0001 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:numero N?
U 1 1 5BC1F53D
P 4500 3700
F 0 "N?" H 4400 3500 100 0001 L CNN
F 1 "2" H 4425 3700 150 0000 L CNN
F 2 "" H 4550 3700 50  0001 C CNN
F 3 "" H 4550 3700 50  0001 C CNN
	1    4500 3700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:numero N?
U 1 1 5BC1F5C2
P 4500 6300
F 0 "N?" H 4400 6100 100 0001 L CNN
F 1 "3" H 4425 6300 150 0000 L CNN
F 2 "" H 4550 6300 50  0001 C CNN
F 3 "" H 4550 6300 50  0001 C CNN
	1    4500 6300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:numero N?
U 1 1 5BC1F6C1
P 4500 9100
F 0 "N?" H 4400 8900 100 0001 L CNN
F 1 "4" H 4425 9100 150 0000 L CNN
F 2 "" H 4550 9100 50  0001 C CNN
F 3 "" H 4550 9100 50  0001 C CNN
	1    4500 9100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:diodo_led D1
U 1 1 5BC2E924
P 7100 2800
F 0 "D1" V 7350 2650 100 0000 C CNN
F 1 "LED" V 7050 2775 50  0001 C CNN
F 2 "" V 7100 2625 50  0001 C CNN
F 3 "" V 7100 2625 50  0001 C CNN
	1    7100 2800
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:diodo_led D1
U 1 1 5BC2EB7A
P 7050 8300
F 0 "D1" V 7300 8150 100 0000 C CNN
F 1 "LED" V 7000 8275 50  0001 C CNN
F 2 "" V 7050 8125 50  0001 C CNN
F 3 "" V 7050 8125 50  0001 C CNN
	1    7050 8300
	0    -1   -1   0   
$EndComp
$Comp
L simbolos:NE555 U1
U 1 1 5BD400B3
P 2150 4050
AR Path="/5BD400B3" Ref="U1"  Part="1" 
AR Path="/5BBD70B6/5BD400B3" Ref="U1"  Part="1" 
F 0 "U1" H 2350 4050 100 0000 C CNN
F 1 "NE555" H 2550 3500 100 0000 C CNN
F 2 "" H 2150 4050 50  0001 C CNN
F 3 "" H 2150 4050 50  0001 C CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:CopyRight CP?
U 1 1 5BC1F963
P 3400 11400
F 0 "CP?" H 3825 11725 40  0001 C CNN
F 1 "CopyRight" H 3575 11725 40  0001 C CNN
F 2 "" H 3300 11750 50  0001 C CNN
F 3 "" H 3400 11600 50  0001 C CNN
F 4 "CC BY-SA 4.0" H 3400 11350 50  0000 C CNN "License"
F 5 "" H 3950 11350 50  0000 C CNN "Author"
F 6 "" H 3525 11350 50  0000 C CNN "Date"
F 7 "www.picuino.com" H 4150 11350 50  0000 C CNN "Web"
	1    3400 11400
	1    0    0    -1  
$EndComp
Text Notes 500  950  0    100  ~ 0
OSCILADOR BIESTABLE
Text Notes 500  3650 0    100  ~ 0
OSCILADOR MONOESTABLE
Text Notes 500  6250 0    100  ~ 0
ENCENDIDO CREPUSCULAR
Text Notes 500  9100 0    100  ~ 0
TERMOSTATO DE INCUBADORA
Wire Wire Line
	2500 8100 3100 8100
Wire Wire Line
	1100 1500 1100 1650
Wire Wire Line
	1100 2050 1100 2150
Wire Wire Line
	1000 4200 1000 4900
Wire Wire Line
	1600 4200 1600 4350
Connection ~ 3100 8100
Wire Wire Line
	3100 8100 3600 8100
Wire Wire Line
	1000 7950 1000 8100
Wire Wire Line
	1000 6900 1000 7400
Wire Wire Line
	1000 9700 1000 10200
Wire Wire Line
	1000 10750 1000 10900
Wire Wire Line
	3500 10050 3450 10050
Wire Wire Line
	3800 9800 3800 10400
Wire Wire Line
	3600 5150 3600 5100
Wire Wire Line
	3600 5450 3600 5500
Wire Wire Line
	3100 7750 3100 7700
Wire Wire Line
	3100 8050 3100 8100
Wire Wire Line
	3100 2450 3100 2400
Wire Wire Line
	3100 2750 3100 2800
$Comp
L simbolos:diodo_led D1
U 1 1 5BF83365
P 3100 2450
F 0 "D1" H 3291 2300 100 0000 L CNN
F 1 "diodo_led" H 3100 2500 50  0001 C CNN
F 2 "" V 3100 2300 50  0001 C CNN
F 3 "" V 3100 2300 50  0001 C CNN
	1    3100 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
