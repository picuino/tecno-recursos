EESchema Schematic File Version 4
LIBS:electric-ley-ohm-cache
EELAYER 26 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 2 2
Title "Circuitos eléctricos. Conexión mixta"
Date "16/11/2018"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2018 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L simbolos:resistencia R?
U 1 1 5C6D76FA
P 1900 1500
AR Path="/5C6D76FA" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D76FA" Ref="R1"  Part="1" 
F 0 "R1" H 1981 1300 100 0000 L CNN
F 1 "resistencia" V 1800 1275 50  0001 C CNN
F 2 "" H 2000 1400 50  0001 C CNN
F 3 "" H 2000 1400 50  0001 C CNN
	1    1900 1500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D7701
P 1900 2100
AR Path="/5C6D7701" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D7701" Ref="R1"  Part="1" 
F 0 "R1" H 1981 1900 100 0000 L CNN
F 1 "resistencia" V 1800 1875 50  0001 C CNN
F 2 "" H 2000 2000 50  0001 C CNN
F 3 "" H 2000 2000 50  0001 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C6D7708
P 1000 1850
AR Path="/5C6D7708" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C6D7708" Ref="V1"  Part="1" 
F 0 "V1" H 800 1700 100 0000 R CNN
F 1 "Pila" H 1100 1775 50  0001 C CNN
F 2 "" H 1000 1725 50  0001 C CNN
F 3 "" H 1000 1725 50  0001 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1400 1900 1400
Wire Wire Line
	1900 1400 1900 1500
Wire Wire Line
	1900 2600 1900 2500
$Comp
L simbolos:current I_tot?
U 1 1 5C6D7712
P 1200 1350
AR Path="/5C6D7712" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C6D7712" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 1300 1450 100 0000 C CNN
F 1 "current" H 1325 1325 50  0001 C CNN
F 2 "" H 1350 1350 50  0001 C CNN
F 3 "" H 1350 1350 50  0001 C CNN
	1    1200 1350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D7719
P 1800 1700
AR Path="/5C6D7719" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D7719" Ref="VR1"  Part="1" 
F 0 "VR1" H 1700 1700 100 0000 R CNN
F 1 "voltaje_drop" V 1800 1700 20  0001 C CNN
F 2 "" H 1800 1700 50  0001 C CNN
F 3 "" H 1800 1700 50  0001 C CNN
	1    1800 1700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D7720
P 1800 2300
AR Path="/5C6D7720" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D7720" Ref="VR1"  Part="1" 
F 0 "VR1" H 1700 2300 100 0000 R CNN
F 1 "voltaje_drop" V 1800 2300 20  0001 C CNN
F 2 "" H 1800 2300 50  0001 C CNN
F 3 "" H 1800 2300 50  0001 C CNN
	1    1800 2300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D7727
P 2900 2100
AR Path="/5C6D7727" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D7727" Ref="R3"  Part="1" 
F 0 "R3" H 2981 1900 100 0000 L CNN
F 1 "resistencia" V 2800 1875 50  0001 C CNN
F 2 "" H 3000 2000 50  0001 C CNN
F 3 "" H 3000 2000 50  0001 C CNN
	1    2900 2100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D772E
P 2800 2300
AR Path="/5C6D772E" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D772E" Ref="VR3"  Part="1" 
F 0 "VR3" H 2700 2300 100 0000 R CNN
F 1 "voltaje_drop" V 2800 2300 20  0001 C CNN
F 2 "" H 2800 2300 50  0001 C CNN
F 3 "" H 2800 2300 50  0001 C CNN
	1    2800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2600 2900 2500
Connection ~ 1900 2600
Wire Wire Line
	1900 2000 2900 2000
Connection ~ 1900 2000
Wire Wire Line
	1900 1900 1900 2000
Wire Wire Line
	1900 2000 1900 2100
Wire Wire Line
	2900 2000 2900 2100
Wire Wire Line
	1000 1400 1000 1850
Wire Wire Line
	1000 2150 1000 2600
$Comp
L simbolos:resistencia R?
U 1 1 5C6D773E
P 6400 1500
AR Path="/5C6D773E" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D773E" Ref="R1"  Part="1" 
F 0 "R1" H 6481 1300 100 0000 L CNN
F 1 "resistencia" V 6300 1275 50  0001 C CNN
F 2 "" H 6500 1400 50  0001 C CNN
F 3 "" H 6500 1400 50  0001 C CNN
	1    6400 1500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D7745
P 6400 2100
AR Path="/5C6D7745" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D7745" Ref="R2"  Part="1" 
F 0 "R2" H 6481 1900 100 0000 L CNN
F 1 "resistencia" V 6300 1875 50  0001 C CNN
F 2 "" H 6500 2000 50  0001 C CNN
F 3 "" H 6500 2000 50  0001 C CNN
	1    6400 2100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C6D774C
P 5500 1850
AR Path="/5C6D774C" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C6D774C" Ref="V1"  Part="1" 
F 0 "V1" H 5300 1700 100 0000 R CNN
F 1 "Pila" H 5600 1775 50  0001 C CNN
F 2 "" H 5500 1725 50  0001 C CNN
F 3 "" H 5500 1725 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1400 6400 1400
Wire Wire Line
	6400 1400 6400 1500
Wire Wire Line
	5500 2600 6400 2600
Wire Wire Line
	6400 2600 6400 2500
$Comp
L simbolos:current I_tot?
U 1 1 5C6D7757
P 5700 1350
AR Path="/5C6D7757" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C6D7757" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 5800 1450 100 0000 C CNN
F 1 "current" H 5825 1325 50  0001 C CNN
F 2 "" H 5850 1350 50  0001 C CNN
F 3 "" H 5850 1350 50  0001 C CNN
	1    5700 1350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D775E
P 6300 1700
AR Path="/5C6D775E" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D775E" Ref="VR1"  Part="1" 
F 0 "VR1" H 6200 1700 100 0000 R CNN
F 1 "voltaje_drop" V 6300 1700 20  0001 C CNN
F 2 "" H 6300 1700 50  0001 C CNN
F 3 "" H 6300 1700 50  0001 C CNN
	1    6300 1700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D7765
P 6300 2300
AR Path="/5C6D7765" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D7765" Ref="VR2"  Part="1" 
F 0 "VR2" H 6200 2300 100 0000 R CNN
F 1 "voltaje_drop" V 6300 2300 20  0001 C CNN
F 2 "" H 6300 2300 50  0001 C CNN
F 3 "" H 6300 2300 50  0001 C CNN
	1    6300 2300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D776C
P 7400 1500
AR Path="/5C6D776C" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D776C" Ref="R3"  Part="1" 
F 0 "R3" H 7481 1300 100 0000 L CNN
F 1 "resistencia" V 7300 1275 50  0001 C CNN
F 2 "" H 7500 1400 50  0001 C CNN
F 3 "" H 7500 1400 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D7773
P 7300 1700
AR Path="/5C6D7773" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D7773" Ref="VR3"  Part="1" 
F 0 "VR3" H 7200 1700 100 0000 R CNN
F 1 "voltaje_drop" V 7300 1700 20  0001 C CNN
F 2 "" H 7300 1700 50  0001 C CNN
F 3 "" H 7300 1700 50  0001 C CNN
	1    7300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2000 7400 2000
Wire Wire Line
	7400 2000 7400 1900
Wire Wire Line
	6400 1400 7400 1400
Connection ~ 6400 2000
Wire Wire Line
	6400 1900 6400 2000
Wire Wire Line
	6400 2000 6400 2100
Wire Wire Line
	7400 1400 7400 1500
Wire Wire Line
	5500 1400 5500 1850
Wire Wire Line
	5500 2150 5500 2600
Connection ~ 6400 1400
$Comp
L simbolos:resistencia R?
U 1 1 5C6D7784
P 1900 3500
AR Path="/5C6D7784" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D7784" Ref="R1"  Part="1" 
F 0 "R1" H 1981 3300 100 0000 L CNN
F 1 "resistencia" V 1800 3275 50  0001 C CNN
F 2 "" H 2000 3400 50  0001 C CNN
F 3 "" H 2000 3400 50  0001 C CNN
	1    1900 3500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D778B
P 1900 4100
AR Path="/5C6D778B" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D778B" Ref="R2"  Part="1" 
F 0 "R2" H 1981 3900 100 0000 L CNN
F 1 "resistencia" V 1800 3875 50  0001 C CNN
F 2 "" H 2000 4000 50  0001 C CNN
F 3 "" H 2000 4000 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C6D7792
P 1000 3650
AR Path="/5C6D7792" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C6D7792" Ref="V1"  Part="1" 
F 0 "V1" H 800 3500 100 0000 R CNN
F 1 "Pila" H 1100 3575 50  0001 C CNN
F 2 "" H 1000 3525 50  0001 C CNN
F 3 "" H 1000 3525 50  0001 C CNN
	1    1000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3400 1900 3400
Wire Wire Line
	1900 3400 1900 3500
Wire Wire Line
	1000 4600 1900 4600
Wire Wire Line
	1900 4600 1900 4500
$Comp
L simbolos:current I_tot?
U 1 1 5C6D779D
P 1200 3350
AR Path="/5C6D779D" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C6D779D" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 1300 3450 100 0000 C CNN
F 1 "current" H 1325 3325 50  0001 C CNN
F 2 "" H 1350 3350 50  0001 C CNN
F 3 "" H 1350 3350 50  0001 C CNN
	1    1200 3350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D77A4
P 1800 3700
AR Path="/5C6D77A4" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D77A4" Ref="VR1"  Part="1" 
F 0 "VR1" H 1700 3700 100 0000 R CNN
F 1 "voltaje_drop" V 1800 3700 20  0001 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D77AB
P 1800 4300
AR Path="/5C6D77AB" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D77AB" Ref="VR2"  Part="1" 
F 0 "VR2" H 1700 4300 100 0000 R CNN
F 1 "voltaje_drop" V 1800 4300 20  0001 C CNN
F 2 "" H 1800 4300 50  0001 C CNN
F 3 "" H 1800 4300 50  0001 C CNN
	1    1800 4300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D77B2
P 2900 4100
AR Path="/5C6D77B2" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D77B2" Ref="R3"  Part="1" 
F 0 "R3" H 2981 3900 100 0000 L CNN
F 1 "resistencia" V 2800 3875 50  0001 C CNN
F 2 "" H 3000 4000 50  0001 C CNN
F 3 "" H 3000 4000 50  0001 C CNN
	1    2900 4100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D77B9
P 2800 4300
AR Path="/5C6D77B9" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D77B9" Ref="VR3"  Part="1" 
F 0 "VR3" H 2700 4300 100 0000 R CNN
F 1 "voltaje_drop" V 2800 4300 20  0001 C CNN
F 2 "" H 2800 4300 50  0001 C CNN
F 3 "" H 2800 4300 50  0001 C CNN
	1    2800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4600 2900 4600
Wire Wire Line
	2900 4600 2900 4500
Wire Wire Line
	1900 4000 2900 4000
Connection ~ 1900 4000
Wire Wire Line
	1900 3900 1900 4000
Wire Wire Line
	1900 4000 1900 4100
Wire Wire Line
	2900 4000 2900 4100
Wire Wire Line
	1000 4350 1000 4600
Connection ~ 1900 4600
Wire Wire Line
	1000 3400 1000 3650
$Comp
L simbolos:Pila V?
U 1 1 5C6D77CA
P 1000 4050
AR Path="/5C6D77CA" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C6D77CA" Ref="V2"  Part="1" 
F 0 "V2" H 800 3900 100 0000 R CNN
F 1 "Pila" H 1100 3975 50  0001 C CNN
F 2 "" H 1000 3925 50  0001 C CNN
F 3 "" H 1000 3925 50  0001 C CNN
	1    1000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3950 1000 4050
$Comp
L simbolos:resistencia R?
U 1 1 5C6D77D2
P 1900 5500
AR Path="/5C6D77D2" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D77D2" Ref="R1"  Part="1" 
F 0 "R1" H 1981 5300 100 0000 L CNN
F 1 "resistencia" V 1800 5275 50  0001 C CNN
F 2 "" H 2000 5400 50  0001 C CNN
F 3 "" H 2000 5400 50  0001 C CNN
	1    1900 5500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D77D9
P 2900 5500
AR Path="/5C6D77D9" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D77D9" Ref="R3"  Part="1" 
F 0 "R3" H 2981 5300 100 0000 L CNN
F 1 "resistencia" V 2800 5275 50  0001 C CNN
F 2 "" H 3000 5400 50  0001 C CNN
F 3 "" H 3000 5400 50  0001 C CNN
	1    2900 5500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C6D77E0
P 1000 5850
AR Path="/5C6D77E0" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C6D77E0" Ref="V1"  Part="1" 
F 0 "V1" H 800 5700 100 0000 R CNN
F 1 "Pila" H 1100 5775 50  0001 C CNN
F 2 "" H 1000 5725 50  0001 C CNN
F 3 "" H 1000 5725 50  0001 C CNN
	1    1000 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5400 1900 5400
Wire Wire Line
	1900 5400 1900 5500
$Comp
L simbolos:current I_tot?
U 1 1 5C6D77E9
P 1200 5350
AR Path="/5C6D77E9" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C6D77E9" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 1300 5450 100 0000 C CNN
F 1 "current" H 1325 5325 50  0001 C CNN
F 2 "" H 1350 5350 50  0001 C CNN
F 3 "" H 1350 5350 50  0001 C CNN
	1    1200 5350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D77F0
P 1800 5700
AR Path="/5C6D77F0" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D77F0" Ref="VR1"  Part="1" 
F 0 "VR1" H 1700 5700 100 0000 R CNN
F 1 "voltaje_drop" V 1800 5700 20  0001 C CNN
F 2 "" H 1800 5700 50  0001 C CNN
F 3 "" H 1800 5700 50  0001 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D77F7
P 2800 5700
AR Path="/5C6D77F7" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D77F7" Ref="VR3"  Part="1" 
F 0 "VR3" H 2700 5700 100 0000 R CNN
F 1 "voltaje_drop" V 2800 5700 20  0001 C CNN
F 2 "" H 2800 5700 50  0001 C CNN
F 3 "" H 2800 5700 50  0001 C CNN
	1    2800 5700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D77FE
P 1900 6100
AR Path="/5C6D77FE" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D77FE" Ref="R2"  Part="1" 
F 0 "R2" H 1981 5900 100 0000 L CNN
F 1 "resistencia" V 1800 5875 50  0001 C CNN
F 2 "" H 2000 6000 50  0001 C CNN
F 3 "" H 2000 6000 50  0001 C CNN
	1    1900 6100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D7805
P 1800 6300
AR Path="/5C6D7805" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D7805" Ref="VR2"  Part="1" 
F 0 "VR2" H 1700 6300 100 0000 R CNN
F 1 "voltaje_drop" V 1800 6300 20  0001 C CNN
F 2 "" H 1800 6300 50  0001 C CNN
F 3 "" H 1800 6300 50  0001 C CNN
	1    1800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 5400 2900 5400
Wire Wire Line
	1000 5400 1000 5850
Wire Wire Line
	1000 6150 1000 6600
Connection ~ 1900 5400
Wire Wire Line
	1000 6600 1900 6600
Wire Wire Line
	1900 2600 2900 2600
Wire Wire Line
	1000 2600 1900 2600
$Comp
L simbolos:resistencia R?
U 1 1 5C6D781A
P 7400 4100
AR Path="/5C6D781A" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D781A" Ref="R4"  Part="1" 
F 0 "R4" H 7481 3900 100 0000 L CNN
F 1 "resistencia" V 7300 3875 50  0001 C CNN
F 2 "" H 7500 4000 50  0001 C CNN
F 3 "" H 7500 4000 50  0001 C CNN
	1    7400 4100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D7821
P 6400 4100
AR Path="/5C6D7821" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D7821" Ref="R2"  Part="1" 
F 0 "R2" H 6481 3900 100 0000 L CNN
F 1 "resistencia" V 6300 3875 50  0001 C CNN
F 2 "" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4600 6400 4600
Wire Wire Line
	6400 4600 6400 4500
$Comp
L simbolos:current I_tot?
U 1 1 5C6D7833
P 5700 3350
AR Path="/5C6D7833" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C6D7833" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 5800 3450 100 0000 C CNN
F 1 "current" H 5825 3325 50  0001 C CNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "" H 5850 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D783A
P 7300 4300
AR Path="/5C6D783A" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D783A" Ref="VR4"  Part="1" 
F 0 "VR4" H 7200 4300 100 0000 R CNN
F 1 "voltaje_drop" V 7300 4300 20  0001 C CNN
F 2 "" H 7300 4300 50  0001 C CNN
F 3 "" H 7300 4300 50  0001 C CNN
	1    7300 4300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D7841
P 6300 4300
AR Path="/5C6D7841" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D7841" Ref="VR2"  Part="1" 
F 0 "VR2" H 6200 4300 100 0000 R CNN
F 1 "voltaje_drop" V 6300 4300 20  0001 C CNN
F 2 "" H 6300 4300 50  0001 C CNN
F 3 "" H 6300 4300 50  0001 C CNN
	1    6300 4300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C6D7848
P 7400 3500
AR Path="/5C6D7848" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C6D7848" Ref="R3"  Part="1" 
F 0 "R3" H 7481 3300 100 0000 L CNN
F 1 "resistencia" V 7300 3275 50  0001 C CNN
F 2 "" H 7500 3400 50  0001 C CNN
F 3 "" H 7500 3400 50  0001 C CNN
	1    7400 3500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C6D784F
P 7300 3700
AR Path="/5C6D784F" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C6D784F" Ref="VR3"  Part="1" 
F 0 "VR3" H 7200 3700 100 0000 R CNN
F 1 "voltaje_drop" V 7300 3700 20  0001 C CNN
F 2 "" H 7300 3700 50  0001 C CNN
F 3 "" H 7300 3700 50  0001 C CNN
	1    7300 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4500 7400 4600
Wire Wire Line
	7400 3400 7400 3500
Text Notes 450  500  0    100  ~ 0
LEY DE OHM. CALCULAR TENSIONES Y CORRIENTES.\n
Text Notes 450  800  0    100  ~ 0
ALUMNO:______________________________________________ GRUPO:________
Wire Notes Line
	250  900  8050 900 
Text Notes 7800 500  2    100  ~ 0
LÁMINA 2\n
Text Notes 7800 800  2    100  ~ 0
FECHA:__________
Text Notes 1450 2900 0    100  ~ 0
CIRCUITO 1
Text Notes 6000 2900 0    100  ~ 0
CIRCUITO 2
Wire Wire Line
	5500 3400 6400 3400
Wire Wire Line
	6400 4600 7400 4600
Connection ~ 6400 4600
Text Notes 1450 6900 0    100  ~ 0
CIRCUITO 5
Text Notes 6000 4900 0    100  ~ 0
CIRCUITO 4
$Comp
L simbolos:current I_tot?
U 1 1 5C6FD5EB
P 5700 5350
AR Path="/5C6FD5EB" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C6FD5EB" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 5800 5450 100 0000 C CNN
F 1 "current" H 5825 5325 50  0001 C CNN
F 2 "" H 5850 5350 50  0001 C CNN
F 3 "" H 5850 5350 50  0001 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C701597
P 6400 5500
AR Path="/5C701597" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C701597" Ref="R1"  Part="1" 
F 0 "R1" H 6481 5300 100 0000 L CNN
F 1 "resistencia" V 6300 5275 50  0001 C CNN
F 2 "" H 6500 5400 50  0001 C CNN
F 3 "" H 6500 5400 50  0001 C CNN
	1    6400 5500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C70159D
P 7400 6100
AR Path="/5C70159D" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C70159D" Ref="R4"  Part="1" 
F 0 "R4" H 7481 5900 100 0000 L CNN
F 1 "resistencia" V 7300 5875 50  0001 C CNN
F 2 "" H 7500 6000 50  0001 C CNN
F 3 "" H 7500 6000 50  0001 C CNN
	1    7400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5400 6400 5400
Wire Wire Line
	6400 5400 6400 5500
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7015A5
P 6300 5700
AR Path="/5C7015A5" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7015A5" Ref="VR1"  Part="1" 
F 0 "VR1" H 6200 5700 100 0000 R CNN
F 1 "voltaje_drop" V 6300 5700 20  0001 C CNN
F 2 "" H 6300 5700 50  0001 C CNN
F 3 "" H 6300 5700 50  0001 C CNN
	1    6300 5700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7015AB
P 7300 6300
AR Path="/5C7015AB" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7015AB" Ref="VR4"  Part="1" 
F 0 "VR4" H 7200 6300 100 0000 R CNN
F 1 "voltaje_drop" V 7300 6300 20  0001 C CNN
F 2 "" H 7300 6300 50  0001 C CNN
F 3 "" H 7300 6300 50  0001 C CNN
	1    7300 6300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C7015B1
P 7400 5500
AR Path="/5C7015B1" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7015B1" Ref="R3"  Part="1" 
F 0 "R3" H 7481 5300 100 0000 L CNN
F 1 "resistencia" V 7300 5275 50  0001 C CNN
F 2 "" H 7500 5400 50  0001 C CNN
F 3 "" H 7500 5400 50  0001 C CNN
	1    7400 5500
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7015B7
P 7300 5700
AR Path="/5C7015B7" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7015B7" Ref="VR3"  Part="1" 
F 0 "VR3" H 7200 5700 100 0000 R CNN
F 1 "voltaje_drop" V 7300 5700 20  0001 C CNN
F 2 "" H 7300 5700 50  0001 C CNN
F 3 "" H 7300 5700 50  0001 C CNN
	1    7300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6000 7400 6000
Wire Wire Line
	7400 6000 7400 5900
Wire Wire Line
	6400 5400 7400 5400
Wire Wire Line
	6400 5900 6400 6000
Wire Wire Line
	7400 6000 7400 6100
Wire Wire Line
	7400 5400 7400 5500
Connection ~ 6400 5400
Connection ~ 7400 6000
Wire Wire Line
	5500 6600 6400 6600
Wire Wire Line
	7400 6500 7400 6600
Text Notes 5950 6900 0    100  ~ 0
CIRCUITO 6
Text Notes 1450 4900 0    100  ~ 0
CIRCUITO 3
$Comp
L simbolos:resistencia R?
U 1 1 5C7039BC
P 1900 7800
AR Path="/5C7039BC" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7039BC" Ref="R1"  Part="1" 
F 0 "R1" H 1981 7600 100 0000 L CNN
F 1 "resistencia" V 1800 7575 50  0001 C CNN
F 2 "" H 2000 7700 50  0001 C CNN
F 3 "" H 2000 7700 50  0001 C CNN
	1    1900 7800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C7039C2
P 1900 8400
AR Path="/5C7039C2" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7039C2" Ref="R2"  Part="1" 
F 0 "R2" H 1981 8200 100 0000 L CNN
F 1 "resistencia" V 1800 8175 50  0001 C CNN
F 2 "" H 2000 8300 50  0001 C CNN
F 3 "" H 2000 8300 50  0001 C CNN
	1    1900 8400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C7039C8
P 1000 8150
AR Path="/5C7039C8" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C7039C8" Ref="V1"  Part="1" 
F 0 "V1" H 800 8000 100 0000 R CNN
F 1 "Pila" H 1100 8075 50  0001 C CNN
F 2 "" H 1000 8025 50  0001 C CNN
F 3 "" H 1000 8025 50  0001 C CNN
	1    1000 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 7700 1900 7700
Wire Wire Line
	1900 7700 1900 7800
Wire Wire Line
	1900 8900 1900 8800
$Comp
L simbolos:current I_tot?
U 1 1 5C7039D1
P 1200 7650
AR Path="/5C7039D1" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C7039D1" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 1300 7750 100 0000 C CNN
F 1 "current" H 1325 7625 50  0001 C CNN
F 2 "" H 1350 7650 50  0001 C CNN
F 3 "" H 1350 7650 50  0001 C CNN
	1    1200 7650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7039D7
P 1800 8000
AR Path="/5C7039D7" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7039D7" Ref="VR1"  Part="1" 
F 0 "VR1" H 1700 8000 100 0000 R CNN
F 1 "voltaje_drop" V 1800 8000 20  0001 C CNN
F 2 "" H 1800 8000 50  0001 C CNN
F 3 "" H 1800 8000 50  0001 C CNN
	1    1800 8000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7039DD
P 1800 8600
AR Path="/5C7039DD" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7039DD" Ref="VR2"  Part="1" 
F 0 "VR2" H 1700 8600 100 0000 R CNN
F 1 "voltaje_drop" V 1800 8600 20  0001 C CNN
F 2 "" H 1800 8600 50  0001 C CNN
F 3 "" H 1800 8600 50  0001 C CNN
	1    1800 8600
	1    0    0    -1  
$EndComp
Connection ~ 1900 8900
Wire Wire Line
	1900 8300 2900 8300
Connection ~ 1900 8300
Wire Wire Line
	1900 8200 1900 8300
Wire Wire Line
	1900 8300 1900 8400
Wire Wire Line
	1000 7700 1000 8150
Wire Wire Line
	1000 8450 1000 8900
Wire Wire Line
	1900 8900 2900 8900
Wire Wire Line
	1000 8900 1900 8900
Text Notes 1450 9200 0    100  ~ 0
CIRCUITO 7
$Comp
L simbolos:Pila V?
U 1 1 5C70A28F
P 2900 8450
AR Path="/5C70A28F" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C70A28F" Ref="V2"  Part="1" 
F 0 "V2" H 2700 8300 100 0000 R CNN
F 1 "Pila" H 3000 8375 50  0001 C CNN
F 2 "" H 2900 8325 50  0001 C CNN
F 3 "" H 2900 8325 50  0001 C CNN
	1    2900 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 8450 2900 8300
Wire Wire Line
	2900 8900 2900 8750
Wire Notes Line
	250  7200 8050 7200
$Comp
L simbolos:resistencia R?
U 1 1 5C742C68
P 6400 7800
AR Path="/5C742C68" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C742C68" Ref="R1"  Part="1" 
F 0 "R1" H 6481 7600 100 0000 L CNN
F 1 "resistencia" V 6300 7575 50  0001 C CNN
F 2 "" H 6500 7700 50  0001 C CNN
F 3 "" H 6500 7700 50  0001 C CNN
	1    6400 7800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C742C6E
P 7400 7800
AR Path="/5C742C6E" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C742C6E" Ref="R2"  Part="1" 
F 0 "R2" H 7481 7600 100 0000 L CNN
F 1 "resistencia" V 7300 7575 50  0001 C CNN
F 2 "" H 7500 7700 50  0001 C CNN
F 3 "" H 7500 7700 50  0001 C CNN
	1    7400 7800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C742C74
P 5500 8150
AR Path="/5C742C74" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C742C74" Ref="V1"  Part="1" 
F 0 "V1" H 5300 8000 100 0000 R CNN
F 1 "Pila" H 5600 8075 50  0001 C CNN
F 2 "" H 5500 8025 50  0001 C CNN
F 3 "" H 5500 8025 50  0001 C CNN
	1    5500 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7700 6400 7700
Wire Wire Line
	6400 7700 6400 7800
Wire Wire Line
	7400 8300 7400 8200
$Comp
L simbolos:current I_tot?
U 1 1 5C742C7D
P 5700 7650
AR Path="/5C742C7D" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C742C7D" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 5800 7750 100 0000 C CNN
F 1 "current" H 5825 7625 50  0001 C CNN
F 2 "" H 5850 7650 50  0001 C CNN
F 3 "" H 5850 7650 50  0001 C CNN
	1    5700 7650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C742C83
P 6300 8000
AR Path="/5C742C83" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C742C83" Ref="VR1"  Part="1" 
F 0 "VR1" H 6200 8000 100 0000 R CNN
F 1 "voltaje_drop" V 6300 8000 20  0001 C CNN
F 2 "" H 6300 8000 50  0001 C CNN
F 3 "" H 6300 8000 50  0001 C CNN
	1    6300 8000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C742C89
P 7300 8000
AR Path="/5C742C89" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C742C89" Ref="VR2"  Part="1" 
F 0 "VR2" H 7200 8000 100 0000 R CNN
F 1 "voltaje_drop" V 7300 8000 20  0001 C CNN
F 2 "" H 7300 8000 50  0001 C CNN
F 3 "" H 7300 8000 50  0001 C CNN
	1    7300 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 8300 7400 8300
Wire Wire Line
	6400 8200 6400 8300
Wire Wire Line
	7400 7700 7400 7800
Wire Wire Line
	5500 7700 5500 8150
Wire Wire Line
	5500 8450 5500 8900
Text Notes 5950 9200 0    100  ~ 0
CIRCUITO 8
$Comp
L simbolos:Pila V?
U 1 1 5C742C99
P 7400 8450
AR Path="/5C742C99" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C742C99" Ref="V2"  Part="1" 
F 0 "V2" H 7200 8300 100 0000 R CNN
F 1 "Pila" H 7500 8375 50  0001 C CNN
F 2 "" H 7400 8325 50  0001 C CNN
F 3 "" H 7400 8325 50  0001 C CNN
	1    7400 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 8450 7400 8300
Wire Wire Line
	7400 8900 7400 8750
$Comp
L simbolos:resistencia R?
U 1 1 5C74591C
P 2900 10400
AR Path="/5C74591C" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C74591C" Ref="R3"  Part="1" 
F 0 "R3" H 2981 10200 100 0000 L CNN
F 1 "resistencia" V 2800 10175 50  0001 C CNN
F 2 "" H 3000 10300 50  0001 C CNN
F 3 "" H 3000 10300 50  0001 C CNN
	1    2900 10400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C745922
P 1900 9800
AR Path="/5C745922" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C745922" Ref="R1"  Part="1" 
F 0 "R1" H 1981 9600 100 0000 L CNN
F 1 "resistencia" V 1800 9575 50  0001 C CNN
F 2 "" H 2000 9700 50  0001 C CNN
F 3 "" H 2000 9700 50  0001 C CNN
	1    1900 9800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C745928
P 1000 10150
AR Path="/5C745928" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C745928" Ref="V1"  Part="1" 
F 0 "V1" H 800 10000 100 0000 R CNN
F 1 "Pila" H 1100 10075 50  0001 C CNN
F 2 "" H 1000 10025 50  0001 C CNN
F 3 "" H 1000 10025 50  0001 C CNN
	1    1000 10150
	1    0    0    -1  
$EndComp
$Comp
L simbolos:current I_tot?
U 1 1 5C745931
P 1200 9650
AR Path="/5C745931" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C745931" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 1300 9750 100 0000 C CNN
F 1 "current" H 1325 9625 50  0001 C CNN
F 2 "" H 1350 9650 50  0001 C CNN
F 3 "" H 1350 9650 50  0001 C CNN
	1    1200 9650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C745937
P 2800 10600
AR Path="/5C745937" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C745937" Ref="VR3"  Part="1" 
F 0 "VR3" H 2700 10600 100 0000 R CNN
F 1 "voltaje_drop" V 2800 10600 20  0001 C CNN
F 2 "" H 2800 10600 50  0001 C CNN
F 3 "" H 2800 10600 50  0001 C CNN
	1    2800 10600
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C74593D
P 1800 10000
AR Path="/5C74593D" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C74593D" Ref="VR1"  Part="1" 
F 0 "VR1" H 1700 10000 100 0000 R CNN
F 1 "voltaje_drop" V 1800 10000 20  0001 C CNN
F 2 "" H 1800 10000 50  0001 C CNN
F 3 "" H 1800 10000 50  0001 C CNN
	1    1800 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 10800 2900 10900
Wire Wire Line
	1900 9700 1900 9800
Wire Wire Line
	1000 9700 1000 10150
Wire Wire Line
	1000 10450 1000 10900
Text Notes 1450 11200 0    100  ~ 0
CIRCUITO 9
$Comp
L simbolos:Pila V?
U 1 1 5C74594D
P 2900 9850
AR Path="/5C74594D" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C74594D" Ref="V2"  Part="1" 
F 0 "V2" H 2700 9700 100 0000 R CNN
F 1 "Pila" H 3000 9775 50  0001 C CNN
F 2 "" H 2900 9725 50  0001 C CNN
F 3 "" H 2900 9725 50  0001 C CNN
	1    2900 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 9850 2900 9700
$Comp
L simbolos:resistencia R?
U 1 1 5C745955
P 6400 9800
AR Path="/5C745955" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C745955" Ref="R1"  Part="1" 
F 0 "R1" H 6481 9600 100 0000 L CNN
F 1 "resistencia" V 6300 9575 50  0001 C CNN
F 2 "" H 6500 9700 50  0001 C CNN
F 3 "" H 6500 9700 50  0001 C CNN
	1    6400 9800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:resistencia R?
U 1 1 5C74595B
P 6400 10400
AR Path="/5C74595B" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C74595B" Ref="R2"  Part="1" 
F 0 "R2" H 6481 10200 100 0000 L CNN
F 1 "resistencia" V 6300 10175 50  0001 C CNN
F 2 "" H 6500 10300 50  0001 C CNN
F 3 "" H 6500 10300 50  0001 C CNN
	1    6400 10400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 5C745961
P 5500 10150
AR Path="/5C745961" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C745961" Ref="V1"  Part="1" 
F 0 "V1" H 5300 10000 100 0000 R CNN
F 1 "Pila" H 5600 10075 50  0001 C CNN
F 2 "" H 5500 10025 50  0001 C CNN
F 3 "" H 5500 10025 50  0001 C CNN
	1    5500 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 9700 6400 9700
Wire Wire Line
	6400 9700 6400 9800
Wire Wire Line
	6400 10900 6400 10800
$Comp
L simbolos:current I_tot?
U 1 1 5C74596A
P 5700 9650
AR Path="/5C74596A" Ref="I_tot?"  Part="1" 
AR Path="/5C6CFC33/5C74596A" Ref="I_tot"  Part="1" 
F 0 "I_tot" H 5800 9750 100 0000 C CNN
F 1 "current" H 5825 9625 50  0001 C CNN
F 2 "" H 5850 9650 50  0001 C CNN
F 3 "" H 5850 9650 50  0001 C CNN
	1    5700 9650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C745970
P 6300 10000
AR Path="/5C745970" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C745970" Ref="VR1"  Part="1" 
F 0 "VR1" H 6200 10000 100 0000 R CNN
F 1 "voltaje_drop" V 6300 10000 20  0001 C CNN
F 2 "" H 6300 10000 50  0001 C CNN
F 3 "" H 6300 10000 50  0001 C CNN
	1    6300 10000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C745976
P 6300 10600
AR Path="/5C745976" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C745976" Ref="VR2"  Part="1" 
F 0 "VR2" H 6200 10600 100 0000 R CNN
F 1 "voltaje_drop" V 6300 10600 20  0001 C CNN
F 2 "" H 6300 10600 50  0001 C CNN
F 3 "" H 6300 10600 50  0001 C CNN
	1    6300 10600
	1    0    0    -1  
$EndComp
Connection ~ 6400 10900
Wire Wire Line
	6400 10300 7400 10300
Connection ~ 6400 10300
Wire Wire Line
	6400 10200 6400 10300
Wire Wire Line
	6400 10300 6400 10400
Wire Wire Line
	5500 9700 5500 10150
Wire Wire Line
	5500 10450 5500 10900
Wire Wire Line
	6400 10900 7400 10900
Wire Wire Line
	5500 10900 6400 10900
Text Notes 5950 11200 0    100  ~ 0
CIRCUITO 10
$Comp
L simbolos:Pila V?
U 1 1 5C745986
P 7400 10450
AR Path="/5C745986" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C745986" Ref="V2"  Part="1" 
F 0 "V2" H 7200 10300 100 0000 R CNN
F 1 "Pila" H 7500 10375 50  0001 C CNN
F 2 "" H 7400 10325 50  0001 C CNN
F 3 "" H 7400 10325 50  0001 C CNN
	1    7400 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 10450 7400 10300
Wire Wire Line
	7400 10900 7400 10750
Wire Wire Line
	1000 9700 1900 9700
Connection ~ 7400 8300
Wire Wire Line
	5500 8900 7400 8900
Wire Wire Line
	6400 7700 7400 7700
Connection ~ 6400 7700
$Comp
L simbolos:resistencia R?
U 1 1 5C786E72
P 6400 6100
AR Path="/5C786E72" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C786E72" Ref="R2"  Part="1" 
F 0 "R2" H 6481 5900 100 0000 L CNN
F 1 "resistencia" V 6300 5875 50  0001 C CNN
F 2 "" H 6500 6000 50  0001 C CNN
F 3 "" H 6500 6000 50  0001 C CNN
	1    6400 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6000 6400 6100
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C786E79
P 6300 6300
AR Path="/5C786E79" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C786E79" Ref="VR2"  Part="1" 
F 0 "VR2" H 6200 6300 100 0000 R CNN
F 1 "voltaje_drop" V 6300 6300 20  0001 C CNN
F 2 "" H 6300 6300 50  0001 C CNN
F 3 "" H 6300 6300 50  0001 C CNN
	1    6300 6300
	1    0    0    -1  
$EndComp
Connection ~ 6400 6000
Wire Wire Line
	6400 6500 6400 6600
Connection ~ 6400 6600
Wire Wire Line
	6400 6600 7400 6600
$Comp
L simbolos:resistencia R?
U 1 1 5C7A0BAA
P 7400 9800
AR Path="/5C7A0BAA" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7A0BAA" Ref="R3"  Part="1" 
F 0 "R3" H 7481 9600 100 0000 L CNN
F 1 "resistencia" V 7300 9575 50  0001 C CNN
F 2 "" H 7500 9700 50  0001 C CNN
F 3 "" H 7500 9700 50  0001 C CNN
	1    7400 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 9700 7400 9800
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7A0BB1
P 7300 10000
AR Path="/5C7A0BB1" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7A0BB1" Ref="VR3"  Part="1" 
F 0 "VR3" H 7200 10000 100 0000 R CNN
F 1 "voltaje_drop" V 7300 10000 20  0001 C CNN
F 2 "" H 7300 10000 50  0001 C CNN
F 3 "" H 7300 10000 50  0001 C CNN
	1    7300 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 10200 7400 10300
Connection ~ 7400 10300
Wire Wire Line
	6400 9700 7400 9700
Connection ~ 6400 9700
Wire Wire Line
	1000 10900 1900 10900
Connection ~ 1900 9700
Wire Wire Line
	1900 9700 2900 9700
$Comp
L simbolos:resistencia R?
U 1 1 5C7B72FA
P 1900 10400
AR Path="/5C7B72FA" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7B72FA" Ref="R2"  Part="1" 
F 0 "R2" H 1981 10200 100 0000 L CNN
F 1 "resistencia" V 1800 10175 50  0001 C CNN
F 2 "" H 2000 10300 50  0001 C CNN
F 3 "" H 2000 10300 50  0001 C CNN
	1    1900 10400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7B7300
P 1800 10600
AR Path="/5C7B7300" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7B7300" Ref="VR2"  Part="1" 
F 0 "VR2" H 1700 10600 100 0000 R CNN
F 1 "voltaje_drop" V 1800 10600 20  0001 C CNN
F 2 "" H 1800 10600 50  0001 C CNN
F 3 "" H 1800 10600 50  0001 C CNN
	1    1800 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 10800 1900 10900
Connection ~ 1900 10900
Wire Wire Line
	1900 10900 2900 10900
Wire Wire Line
	1900 10200 1900 10400
Wire Wire Line
	2900 10150 2900 10400
Wire Wire Line
	2900 5400 2900 5500
Wire Wire Line
	1900 5900 1900 6000
Wire Wire Line
	1900 6500 1900 6600
Connection ~ 1900 6600
$Comp
L simbolos:resistencia R?
U 1 1 5C7CDF3F
P 2900 6100
AR Path="/5C7CDF3F" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7CDF3F" Ref="R4"  Part="1" 
F 0 "R4" H 2981 5900 100 0000 L CNN
F 1 "resistencia" V 2800 5875 50  0001 C CNN
F 2 "" H 3000 6000 50  0001 C CNN
F 3 "" H 3000 6000 50  0001 C CNN
	1    2900 6100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7CDF45
P 2800 6300
AR Path="/5C7CDF45" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7CDF45" Ref="VR4"  Part="1" 
F 0 "VR4" H 2700 6300 100 0000 R CNN
F 1 "voltaje_drop" V 2800 6300 20  0001 C CNN
F 2 "" H 2800 6300 50  0001 C CNN
F 3 "" H 2800 6300 50  0001 C CNN
	1    2800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6500 2900 6600
Wire Wire Line
	1900 6600 2900 6600
Wire Wire Line
	2900 5900 2900 6000
$Comp
L simbolos:Pila V?
U 1 1 5C7E07EE
P 5500 3650
AR Path="/5C7E07EE" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C7E07EE" Ref="V1"  Part="1" 
F 0 "V1" H 5300 3500 100 0000 R CNN
F 1 "Pila" H 5600 3575 50  0001 C CNN
F 2 "" H 5500 3525 50  0001 C CNN
F 3 "" H 5500 3525 50  0001 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4350 5500 4600
Wire Wire Line
	5500 3400 5500 3650
$Comp
L simbolos:Pila V?
U 1 1 5C7E07F6
P 5500 4050
AR Path="/5C7E07F6" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C7E07F6" Ref="V2"  Part="1" 
F 0 "V2" H 5300 3900 100 0000 R CNN
F 1 "Pila" H 5600 3975 50  0001 C CNN
F 2 "" H 5500 3925 50  0001 C CNN
F 3 "" H 5500 3925 50  0001 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3950 5500 4050
$Comp
L simbolos:resistencia R?
U 1 1 5C7E52C9
P 6400 3500
AR Path="/5C7E52C9" Ref="R?"  Part="1" 
AR Path="/5C6CFC33/5C7E52C9" Ref="R1"  Part="1" 
F 0 "R1" H 6481 3300 100 0000 L CNN
F 1 "resistencia" V 6300 3275 50  0001 C CNN
F 2 "" H 6500 3400 50  0001 C CNN
F 3 "" H 6500 3400 50  0001 C CNN
	1    6400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3400 6400 3500
$Comp
L simbolos:voltaje_drop VR?
U 1 1 5C7E52D0
P 6300 3700
AR Path="/5C7E52D0" Ref="VR?"  Part="1" 
AR Path="/5C6CFC33/5C7E52D0" Ref="VR1"  Part="1" 
F 0 "VR1" H 6200 3700 100 0000 R CNN
F 1 "voltaje_drop" V 6300 3700 20  0001 C CNN
F 2 "" H 6300 3700 50  0001 C CNN
F 3 "" H 6300 3700 50  0001 C CNN
	1    6300 3700
	1    0    0    -1  
$EndComp
Connection ~ 6400 3400
Wire Wire Line
	6400 3400 7400 3400
Wire Wire Line
	6400 3900 6400 4100
Wire Wire Line
	7400 3900 7400 4100
Wire Wire Line
	1900 6000 2900 6000
Connection ~ 1900 6000
Wire Wire Line
	1900 6000 1900 6100
Connection ~ 2900 6000
Wire Wire Line
	2900 6000 2900 6100
$Comp
L simbolos:Pila V?
U 1 1 5C80F095
P 5500 5650
AR Path="/5C80F095" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C80F095" Ref="V1"  Part="1" 
F 0 "V1" H 5300 5500 100 0000 R CNN
F 1 "Pila" H 5600 5575 50  0001 C CNN
F 2 "" H 5500 5525 50  0001 C CNN
F 3 "" H 5500 5525 50  0001 C CNN
	1    5500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6350 5500 6600
Wire Wire Line
	5500 5400 5500 5650
$Comp
L simbolos:Pila V?
U 1 1 5C80F09D
P 5500 6050
AR Path="/5C80F09D" Ref="V?"  Part="1" 
AR Path="/5C6CFC33/5C80F09D" Ref="V2"  Part="1" 
F 0 "V2" H 5300 5900 100 0000 R CNN
F 1 "Pila" H 5600 5975 50  0001 C CNN
F 2 "" H 5500 5925 50  0001 C CNN
F 3 "" H 5500 5925 50  0001 C CNN
	1    5500 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5950 5500 6050
$Comp
L simbolos:CopyRight CP?
U 1 1 5C0ADD27
P 3600 11375
AR Path="/5C0ADD27" Ref="CP?"  Part="1" 
AR Path="/5C6CFC33/5C0ADD27" Ref="CP?"  Part="1" 
F 0 "CP?" H 4025 11700 40  0001 C CNN
F 1 "CopyRight" H 3775 11700 40  0001 C CNN
F 2 "" H 3500 11725 50  0001 C CNN
F 3 "" H 3600 11575 50  0001 C CNN
F 4 "CC BY-SA 4.0" H 3600 11325 50  0000 C CNN "License"
F 5 "" H 4175 11300 50  0000 C CNN "Author"
F 6 "" H 3700 11300 50  0000 C CNN "Date"
F 7 "www.picuino.com" H 4350 11325 50  0000 C CNN "Web"
	1    3600 11375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
