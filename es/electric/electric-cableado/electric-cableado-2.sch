EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 2 3
Title "Cableado eléctrico"
Date "19/10/2018"
Rev ""
Comp "www.picuino.com"
Comment1 "Copyright (c) 2018 by Carlos Pardo"
Comment2 "License CC BY-SA 4.0"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 975  650  0    100  ~ 0
CIRCUITO ELÉCTRICO
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  750  8050 750 
Text Notes 5275 650  0    100  ~ 0
ESQUEMA DE CABLEADO
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  4950 8050 4950
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  7050 8050 7050
$Comp
L simbolos:Pila V?
U 1 1 60992C0B
P 625 8150
AR Path="/60992C0B" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992C0B" Ref="V1"  Part="1" 
F 0 "V1" H 825 8000 100 0000 L CNN
F 1 "Pila" H 725 8200 50  0001 C CNN
F 2 "" H 625 8150 50  0001 C CNN
F 3 "" H 625 8150 50  0001 C CNN
	1    625  8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	625  8450 625  8750
$Comp
L simbolos:Pila V?
U 1 1 60992C12
P 625 5950
AR Path="/60992C12" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992C12" Ref="V1"  Part="1" 
F 0 "V1" H 825 5800 100 0000 L CNN
F 1 "Pila" H 725 6000 50  0001 C CNN
F 2 "" H 625 5950 50  0001 C CNN
F 3 "" H 625 5950 50  0001 C CNN
	1    625  5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	625  5550 625  5950
$Comp
L simbolos:lampara L?
U 1 1 60992C1A
P 2625 6100
AR Path="/60992C1A" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992C1A" Ref="L2"  Part="1" 
F 0 "L2" H 2786 5875 100 0000 L CNN
F 1 "lampara" V 2675 5575 50  0001 C CNN
F 2 "" V 2625 5875 50  0001 C CNN
F 3 "" V 2625 5875 50  0001 C CNN
	1    2625 6100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60992C20
P 1625 6100
AR Path="/60992C20" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992C20" Ref="L1"  Part="1" 
F 0 "L1" H 1786 5875 100 0000 L CNN
F 1 "lampara" V 1675 5575 50  0001 C CNN
F 2 "" V 1625 5875 50  0001 C CNN
F 3 "" V 1625 5875 50  0001 C CNN
	1    1625 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6200 5000 6200
Wire Wire Line
	4550 5800 5000 5800
$Comp
L simbolos:lampara L?
U 1 1 60992C28
P 4550 5800
AR Path="/60992C28" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992C28" Ref="L1"  Part="1" 
F 0 "L1" H 4725 5600 100 0000 L CNN
F 1 "lampara" V 4600 5275 50  0001 C CNN
F 2 "" V 4550 5575 50  0001 C CNN
F 3 "" V 4550 5575 50  0001 C CNN
	1    4550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5200 4550 5150
Wire Wire Line
	4550 5150 5000 5150
Wire Wire Line
	4550 5550 5000 5550
$Comp
L simbolos:Pila V?
U 1 1 60992C31
P 4550 5200
AR Path="/60992C31" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992C31" Ref="V1"  Part="1" 
F 0 "V1" H 4750 5050 100 0000 L CNN
F 1 "Pila" H 4650 5250 50  0001 C CNN
F 2 "" H 4550 5200 50  0001 C CNN
F 3 "" H 4550 5200 50  0001 C CNN
	1    4550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5550 4550 5500
Wire Wire Line
	4550 6850 5000 6850
Wire Wire Line
	4550 6450 5000 6450
$Comp
L simbolos:lampara L?
U 1 1 60992C3A
P 4550 6450
AR Path="/60992C3A" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992C3A" Ref="L2"  Part="1" 
F 0 "L2" H 4725 6250 100 0000 L CNN
F 1 "lampara" V 4600 5925 50  0001 C CNN
F 2 "" V 4550 6225 50  0001 C CNN
F 3 "" V 4550 6225 50  0001 C CNN
	1    4550 6450
	1    0    0    -1  
$EndComp
$Comp
L simbolos:numero N?
U 1 1 60992C40
P 3900 5350
AR Path="/60992C40" Ref="N?"  Part="1" 
AR Path="/61659B7A/60992C40" Ref="N?"  Part="1" 
F 0 "N?" H 3800 5150 100 0001 L CNN
F 1 "8" H 3825 5350 150 0000 L CNN
F 2 "" H 3950 5350 50  0001 C CNN
F 3 "" H 3950 5350 50  0001 C CNN
	1    3900 5350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:numero N?
U 1 1 60992C46
P 3900 7450
AR Path="/60992C46" Ref="N?"  Part="1" 
AR Path="/61659B7A/60992C46" Ref="N?"  Part="1" 
F 0 "N?" H 3800 7250 100 0001 L CNN
F 1 "9" H 3825 7450 150 0000 L CNN
F 2 "" H 3950 7450 50  0001 C CNN
F 3 "" H 3950 7450 50  0001 C CNN
	1    3900 7450
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C4C
P 5000 5150
AR Path="/60992C4C" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C4C" Ref="o?"  Part="1" 
F 0 "o?" H 5150 5000 100 0001 C CNN
F 1 "1" H 5100 5250 75  0000 C CNN
F 2 "" H 5175 5150 50  0001 C CNN
F 3 "" H 5175 5150 50  0001 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C52
P 5000 5550
AR Path="/60992C52" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C52" Ref="o?"  Part="1" 
F 0 "o?" H 5150 5400 100 0001 C CNN
F 1 "2" H 5100 5650 75  0000 C CNN
F 2 "" H 5175 5550 50  0001 C CNN
F 3 "" H 5175 5550 50  0001 C CNN
	1    5000 5550
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C58
P 5000 5800
AR Path="/60992C58" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C58" Ref="o?"  Part="1" 
F 0 "o?" H 5150 5650 100 0001 C CNN
F 1 "3" H 5100 5900 75  0000 C CNN
F 2 "" H 5175 5800 50  0001 C CNN
F 3 "" H 5175 5800 50  0001 C CNN
	1    5000 5800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C5E
P 5000 6200
AR Path="/60992C5E" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C5E" Ref="o?"  Part="1" 
F 0 "o?" H 5150 6050 100 0001 C CNN
F 1 "4" H 5100 6300 75  0000 C CNN
F 2 "" H 5175 6200 50  0001 C CNN
F 3 "" H 5175 6200 50  0001 C CNN
	1    5000 6200
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C64
P 5000 6450
AR Path="/60992C64" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C64" Ref="o?"  Part="1" 
F 0 "o?" H 5150 6300 100 0001 C CNN
F 1 "5" H 5100 6350 75  0000 C CNN
F 2 "" H 5175 6450 50  0001 C CNN
F 3 "" H 5175 6450 50  0001 C CNN
	1    5000 6450
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C6A
P 5000 6850
AR Path="/60992C6A" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C6A" Ref="o?"  Part="1" 
F 0 "o?" H 5150 6700 100 0001 C CNN
F 1 "6" H 5100 6750 75  0000 C CNN
F 2 "" H 5175 6850 50  0001 C CNN
F 3 "" H 5175 6850 50  0001 C CNN
	1    5000 6850
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C7C
P 7100 6350
AR Path="/60992C7C" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C7C" Ref="o?"  Part="1" 
F 0 "o?" H 7250 6200 100 0001 C CNN
F 1 "10" H 7200 6250 75  0000 C CNN
F 2 "" H 7275 6350 50  0001 C CNN
F 3 "" H 7275 6350 50  0001 C CNN
	1    7100 6350
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992C82
P 7100 6650
AR Path="/60992C82" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992C82" Ref="o?"  Part="1" 
F 0 "o?" H 7250 6500 100 0001 C CNN
F 1 "11" H 7200 6550 75  0000 C CNN
F 2 "" H 7275 6650 50  0001 C CNN
F 3 "" H 7275 6650 50  0001 C CNN
	1    7100 6650
	-1   0    0    1   
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 60992C89
P 625 10225
AR Path="/60992C89" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992C89" Ref="V1"  Part="1" 
F 0 "V1" H 825 10075 100 0000 L CNN
F 1 "Pila" H 725 10275 50  0001 C CNN
F 2 "" H 625 10225 50  0001 C CNN
F 3 "" H 625 10225 50  0001 C CNN
	1    625  10225
	1    0    0    -1  
$EndComp
Wire Wire Line
	625  10525 625  10875
Wire Wire Line
	4550 10450 5000 10450
Wire Wire Line
	4550 10050 5000 10050
$Comp
L simbolos:lampara L?
U 1 1 60992CB5
P 4550 10050
AR Path="/60992CB5" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992CB5" Ref="L1"  Part="1" 
F 0 "L1" H 4725 9850 100 0000 L CNN
F 1 "lampara" V 4600 9525 50  0001 C CNN
F 2 "" V 4550 9825 50  0001 C CNN
F 3 "" V 4550 9825 50  0001 C CNN
	1    4550 10050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 9450 4550 9400
Wire Wire Line
	4550 9400 5000 9400
Wire Wire Line
	4550 9800 5000 9800
$Comp
L simbolos:Pila V?
U 1 1 60992CBE
P 4550 9450
AR Path="/60992CBE" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992CBE" Ref="V1"  Part="1" 
F 0 "V1" H 4750 9300 100 0000 L CNN
F 1 "Pila" H 4650 9500 50  0001 C CNN
F 2 "" H 4550 9450 50  0001 C CNN
F 3 "" H 4550 9450 50  0001 C CNN
	1    4550 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 9800 4550 9750
Wire Wire Line
	7700 10125 7700 9975
Wire Wire Line
	7100 10125 7700 10125
Wire Wire Line
	7200 9825 7100 9825
Wire Wire Line
	7700 9525 7100 9525
Wire Wire Line
	7700 9675 7700 9525
$Comp
L simbolos:selector S?
U 1 1 60992CCA
P 7200 9825
AR Path="/60992CCA" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992CCA" Ref="S1"  Part="1" 
F 0 "S1" H 7375 9950 100 0000 R CNN
F 1 "selector" H 7200 9775 50  0001 C CNN
F 2 "" H 7500 9675 50  0001 C CNN
F 3 "" H 7500 9675 50  0001 C CNN
	1    7200 9825
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 11025 7700 10875
Wire Wire Line
	7100 11025 7700 11025
Wire Wire Line
	7200 10725 7100 10725
Wire Wire Line
	7700 10425 7100 10425
Wire Wire Line
	7700 10575 7700 10425
$Comp
L simbolos:selector S?
U 1 1 60992CD5
P 7200 10725
AR Path="/60992CD5" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992CD5" Ref="S2"  Part="1" 
F 0 "S2" H 7375 10850 100 0000 R CNN
F 1 "selector" H 7200 10675 50  0001 C CNN
F 2 "" H 7500 10575 50  0001 C CNN
F 3 "" H 7500 10575 50  0001 C CNN
	1    7200 10725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 11100 5000 11100
Wire Wire Line
	4550 10700 5000 10700
$Comp
L simbolos:lampara L?
U 1 1 60992CDD
P 4550 10700
AR Path="/60992CDD" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992CDD" Ref="L2"  Part="1" 
F 0 "L2" H 4725 10500 100 0000 L CNN
F 1 "lampara" V 4600 10175 50  0001 C CNN
F 2 "" V 4550 10475 50  0001 C CNN
F 3 "" V 4550 10475 50  0001 C CNN
	1    4550 10700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:numero N?
U 1 1 60992CE3
P 3900 9550
AR Path="/60992CE3" Ref="N?"  Part="1" 
AR Path="/61659B7A/60992CE3" Ref="N?"  Part="1" 
F 0 "N?" H 3800 9350 100 0001 L CNN
F 1 "10" H 3750 9550 150 0000 L CNN
F 2 "" H 3950 9550 50  0001 C CNN
F 3 "" H 3950 9550 50  0001 C CNN
	1    3900 9550
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992CEB
P 5000 9400
AR Path="/60992CEB" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992CEB" Ref="o?"  Part="1" 
F 0 "o?" H 5150 9250 100 0001 C CNN
F 1 "1" H 5100 9500 75  0000 C CNN
F 2 "" H 5175 9400 50  0001 C CNN
F 3 "" H 5175 9400 50  0001 C CNN
	1    5000 9400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992CF1
P 5000 9800
AR Path="/60992CF1" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992CF1" Ref="o?"  Part="1" 
F 0 "o?" H 5150 9650 100 0001 C CNN
F 1 "2" H 5100 9900 75  0000 C CNN
F 2 "" H 5175 9800 50  0001 C CNN
F 3 "" H 5175 9800 50  0001 C CNN
	1    5000 9800
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992CF7
P 5000 10050
AR Path="/60992CF7" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992CF7" Ref="o?"  Part="1" 
F 0 "o?" H 5150 9900 100 0001 C CNN
F 1 "3" H 5100 10150 75  0000 C CNN
F 2 "" H 5175 10050 50  0001 C CNN
F 3 "" H 5175 10050 50  0001 C CNN
	1    5000 10050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992CFD
P 5000 10450
AR Path="/60992CFD" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992CFD" Ref="o?"  Part="1" 
F 0 "o?" H 5150 10300 100 0001 C CNN
F 1 "4" H 5100 10550 75  0000 C CNN
F 2 "" H 5175 10450 50  0001 C CNN
F 3 "" H 5175 10450 50  0001 C CNN
	1    5000 10450
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D03
P 5000 10700
AR Path="/60992D03" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D03" Ref="o?"  Part="1" 
F 0 "o?" H 5150 10550 100 0001 C CNN
F 1 "5" H 5100 10600 75  0000 C CNN
F 2 "" H 5175 10700 50  0001 C CNN
F 3 "" H 5175 10700 50  0001 C CNN
	1    5000 10700
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D09
P 5000 11100
AR Path="/60992D09" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D09" Ref="o?"  Part="1" 
F 0 "o?" H 5150 10950 100 0001 C CNN
F 1 "6" H 5100 11000 75  0000 C CNN
F 2 "" H 5175 11100 50  0001 C CNN
F 3 "" H 5175 11100 50  0001 C CNN
	1    5000 11100
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D0F
P 7100 9525
AR Path="/60992D0F" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D0F" Ref="o?"  Part="1" 
F 0 "o?" H 7250 9375 100 0001 C CNN
F 1 "7" H 7200 9425 75  0000 C CNN
F 2 "" H 7275 9525 50  0001 C CNN
F 3 "" H 7275 9525 50  0001 C CNN
	1    7100 9525
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D15
P 7100 9825
AR Path="/60992D15" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D15" Ref="o?"  Part="1" 
F 0 "o?" H 7250 9675 100 0001 C CNN
F 1 "8" H 7200 9725 75  0000 C CNN
F 2 "" H 7275 9825 50  0001 C CNN
F 3 "" H 7275 9825 50  0001 C CNN
	1    7100 9825
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D1B
P 7100 10125
AR Path="/60992D1B" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D1B" Ref="o?"  Part="1" 
F 0 "o?" H 7250 9975 100 0001 C CNN
F 1 "9" H 7200 10025 75  0000 C CNN
F 2 "" H 7275 10125 50  0001 C CNN
F 3 "" H 7275 10125 50  0001 C CNN
	1    7100 10125
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D21
P 7100 10425
AR Path="/60992D21" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D21" Ref="o?"  Part="1" 
F 0 "o?" H 7250 10275 100 0001 C CNN
F 1 "10" H 7200 10325 75  0000 C CNN
F 2 "" H 7275 10425 50  0001 C CNN
F 3 "" H 7275 10425 50  0001 C CNN
	1    7100 10425
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D27
P 7100 10725
AR Path="/60992D27" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D27" Ref="o?"  Part="1" 
F 0 "o?" H 7250 10575 100 0001 C CNN
F 1 "11" H 7200 10625 75  0000 C CNN
F 2 "" H 7275 10725 50  0001 C CNN
F 3 "" H 7275 10725 50  0001 C CNN
	1    7100 10725
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D2D
P 7100 11025
AR Path="/60992D2D" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D2D" Ref="o?"  Part="1" 
F 0 "o?" H 7250 10875 100 0001 C CNN
F 1 "12" H 7200 10925 75  0000 C CNN
F 2 "" H 7275 11025 50  0001 C CNN
F 3 "" H 7275 11025 50  0001 C CNN
	1    7100 11025
	-1   0    0    1   
$EndComp
Wire Wire Line
	625  6650 1625 6650
Wire Wire Line
	2625 6650 2625 6500
Wire Wire Line
	625  6250 625  6650
$Comp
L simbolos:switch S?
U 1 1 60992D4F
P 7200 6350
AR Path="/60992D4F" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992D4F" Ref="S2"  Part="1" 
F 0 "S2" H 7250 6500 100 0000 C CNN
F 1 "switch" H 6950 6300 50  0001 C CNN
F 2 "" H 7250 6350 50  0001 C CNN
F 3 "" H 7250 6350 50  0001 C CNN
	1    7200 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 6350 7100 6350
Wire Wire Line
	7700 6350 7700 6650
Wire Wire Line
	7100 6650 7700 6650
Wire Wire Line
	2650 8600 2650 8750
Wire Wire Line
	625  8750 1625 8750
Wire Wire Line
	1625 8575 1625 8750
Wire Wire Line
	4550 8300 5000 8300
Wire Wire Line
	4550 7900 5000 7900
$Comp
L simbolos:lampara L?
U 1 1 60992D86
P 4550 7900
AR Path="/60992D86" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992D86" Ref="L1"  Part="1" 
F 0 "L1" H 4725 7700 100 0000 L CNN
F 1 "lampara" V 4600 7375 50  0001 C CNN
F 2 "" V 4550 7675 50  0001 C CNN
F 3 "" V 4550 7675 50  0001 C CNN
	1    4550 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 7300 4550 7250
Wire Wire Line
	4550 7250 5000 7250
Wire Wire Line
	4550 7650 5000 7650
$Comp
L simbolos:Pila V?
U 1 1 60992D8F
P 4550 7300
AR Path="/60992D8F" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992D8F" Ref="V1"  Part="1" 
F 0 "V1" H 4750 7150 100 0000 L CNN
F 1 "Pila" H 4650 7350 50  0001 C CNN
F 2 "" H 4550 7300 50  0001 C CNN
F 3 "" H 4550 7300 50  0001 C CNN
	1    4550 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 7650 4550 7600
Wire Wire Line
	4550 8950 5000 8950
Wire Wire Line
	4550 8550 5000 8550
$Comp
L simbolos:lampara L?
U 1 1 60992D98
P 4550 8550
AR Path="/60992D98" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992D98" Ref="L2"  Part="1" 
F 0 "L2" H 4725 8350 100 0000 L CNN
F 1 "lampara" V 4600 8025 50  0001 C CNN
F 2 "" V 4550 8325 50  0001 C CNN
F 3 "" V 4550 8325 50  0001 C CNN
	1    4550 8550
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992D9E
P 5000 7250
AR Path="/60992D9E" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992D9E" Ref="o?"  Part="1" 
F 0 "o?" H 5150 7100 100 0001 C CNN
F 1 "1" H 5100 7350 75  0000 C CNN
F 2 "" H 5175 7250 50  0001 C CNN
F 3 "" H 5175 7250 50  0001 C CNN
	1    5000 7250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992DA4
P 5000 7650
AR Path="/60992DA4" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992DA4" Ref="o?"  Part="1" 
F 0 "o?" H 5150 7500 100 0001 C CNN
F 1 "2" H 5100 7750 75  0000 C CNN
F 2 "" H 5175 7650 50  0001 C CNN
F 3 "" H 5175 7650 50  0001 C CNN
	1    5000 7650
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992DAA
P 5000 7900
AR Path="/60992DAA" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992DAA" Ref="o?"  Part="1" 
F 0 "o?" H 5150 7750 100 0001 C CNN
F 1 "3" H 5100 8000 75  0000 C CNN
F 2 "" H 5175 7900 50  0001 C CNN
F 3 "" H 5175 7900 50  0001 C CNN
	1    5000 7900
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992DB0
P 5000 8300
AR Path="/60992DB0" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992DB0" Ref="o?"  Part="1" 
F 0 "o?" H 5150 8150 100 0001 C CNN
F 1 "4" H 5100 8400 75  0000 C CNN
F 2 "" H 5175 8300 50  0001 C CNN
F 3 "" H 5175 8300 50  0001 C CNN
	1    5000 8300
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992DB6
P 5000 8550
AR Path="/60992DB6" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992DB6" Ref="o?"  Part="1" 
F 0 "o?" H 5150 8400 100 0001 C CNN
F 1 "5" H 5100 8450 75  0000 C CNN
F 2 "" H 5175 8550 50  0001 C CNN
F 3 "" H 5175 8550 50  0001 C CNN
	1    5000 8550
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992DBC
P 5000 8950
AR Path="/60992DBC" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992DBC" Ref="o?"  Part="1" 
F 0 "o?" H 5150 8800 100 0001 C CNN
F 1 "6" H 5100 8850 75  0000 C CNN
F 2 "" H 5175 8950 50  0001 C CNN
F 3 "" H 5175 8950 50  0001 C CNN
	1    5000 8950
	1    0    0    1   
$EndComp
$Comp
L simbolos:switch S?
U 1 1 60992DEC
P 875 1250
AR Path="/60992DEC" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992DEC" Ref="S1"  Part="1" 
F 0 "S1" H 925 1400 100 0000 C CNN
F 1 "switch" H 625 1200 50  0001 C CNN
F 2 "" H 925 1250 50  0001 C CNN
F 3 "" H 925 1250 50  0001 C CNN
	1    875  1250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 60992DF2
P 625 1625
AR Path="/60992DF2" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992DF2" Ref="V1"  Part="1" 
F 0 "V1" H 825 1475 100 0000 L CNN
F 1 "Pila" H 725 1675 50  0001 C CNN
F 2 "" H 625 1625 50  0001 C CNN
F 3 "" H 625 1625 50  0001 C CNN
	1    625  1625
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60992DF8
P 1550 1900
AR Path="/60992DF8" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992DF8" Ref="L1"  Part="1" 
F 0 "L1" H 1700 1700 100 0000 L CNN
F 1 "lampara" V 1600 1375 50  0001 C CNN
F 2 "" V 1550 1675 50  0001 C CNN
F 3 "" V 1550 1675 50  0001 C CNN
	1    1550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2000 5000 2000
Wire Wire Line
	4550 1600 5000 1600
$Comp
L simbolos:lampara L?
U 1 1 60992E00
P 4550 1600
AR Path="/60992E00" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992E00" Ref="L1"  Part="1" 
F 0 "L1" H 4725 1400 100 0000 L CNN
F 1 "lampara" V 4600 1075 50  0001 C CNN
F 2 "" V 4550 1375 50  0001 C CNN
F 3 "" V 4550 1375 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1000 4550 950 
Wire Wire Line
	4550 950  5000 950 
Wire Wire Line
	4550 1350 5000 1350
$Comp
L simbolos:Pila V?
U 1 1 60992E09
P 4550 1000
AR Path="/60992E09" Ref="V?"  Part="1" 
AR Path="/61659B7A/60992E09" Ref="V1"  Part="1" 
F 0 "V1" H 4750 850 100 0000 L CNN
F 1 "Pila" H 4650 1050 50  0001 C CNN
F 2 "" H 4550 1000 50  0001 C CNN
F 3 "" H 4550 1000 50  0001 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1350 4550 1300
Wire Wire Line
	4550 2650 5000 2650
Wire Wire Line
	4550 2250 5000 2250
$Comp
L simbolos:lampara L?
U 1 1 60992E12
P 4550 2250
AR Path="/60992E12" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992E12" Ref="L2"  Part="1" 
F 0 "L2" H 4725 2050 100 0000 L CNN
F 1 "lampara" V 4600 1725 50  0001 C CNN
F 2 "" V 4550 2025 50  0001 C CNN
F 3 "" V 4550 2025 50  0001 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E18
P 5000 950
AR Path="/60992E18" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E18" Ref="o?"  Part="1" 
F 0 "o?" H 5150 800 100 0001 C CNN
F 1 "1" H 5100 1050 75  0000 C CNN
F 2 "" H 5175 950 50  0001 C CNN
F 3 "" H 5175 950 50  0001 C CNN
	1    5000 950 
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E1E
P 5000 1350
AR Path="/60992E1E" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E1E" Ref="o?"  Part="1" 
F 0 "o?" H 5150 1200 100 0001 C CNN
F 1 "2" H 5100 1450 75  0000 C CNN
F 2 "" H 5175 1350 50  0001 C CNN
F 3 "" H 5175 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E24
P 5000 1600
AR Path="/60992E24" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E24" Ref="o?"  Part="1" 
F 0 "o?" H 5150 1450 100 0001 C CNN
F 1 "3" H 5100 1700 75  0000 C CNN
F 2 "" H 5175 1600 50  0001 C CNN
F 3 "" H 5175 1600 50  0001 C CNN
	1    5000 1600
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E2A
P 5000 2000
AR Path="/60992E2A" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E2A" Ref="o?"  Part="1" 
F 0 "o?" H 5150 1850 100 0001 C CNN
F 1 "4" H 5100 2100 75  0000 C CNN
F 2 "" H 5175 2000 50  0001 C CNN
F 3 "" H 5175 2000 50  0001 C CNN
	1    5000 2000
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E30
P 5000 2250
AR Path="/60992E30" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E30" Ref="o?"  Part="1" 
F 0 "o?" H 5150 2100 100 0001 C CNN
F 1 "5" H 5100 2150 75  0000 C CNN
F 2 "" H 5175 2250 50  0001 C CNN
F 3 "" H 5175 2250 50  0001 C CNN
	1    5000 2250
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E36
P 5000 2650
AR Path="/60992E36" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E36" Ref="o?"  Part="1" 
F 0 "o?" H 5150 2500 100 0001 C CNN
F 1 "6" H 5100 2550 75  0000 C CNN
F 2 "" H 5175 2650 50  0001 C CNN
F 3 "" H 5175 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E3C
P 7100 1200
AR Path="/60992E3C" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E3C" Ref="o?"  Part="1" 
F 0 "o?" H 7250 1050 100 0001 C CNN
F 1 "7" H 7200 1100 75  0000 C CNN
F 2 "" H 7275 1200 50  0001 C CNN
F 3 "" H 7275 1200 50  0001 C CNN
	1    7100 1200
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E42
P 7100 1500
AR Path="/60992E42" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E42" Ref="o?"  Part="1" 
F 0 "o?" H 7250 1350 100 0001 C CNN
F 1 "8" H 7200 1400 75  0000 C CNN
F 2 "" H 7275 1500 50  0001 C CNN
F 3 "" H 7275 1500 50  0001 C CNN
	1    7100 1500
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E48
P 7100 2150
AR Path="/60992E48" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E48" Ref="o?"  Part="1" 
F 0 "o?" H 7250 2000 100 0001 C CNN
F 1 "9" H 7200 2050 75  0000 C CNN
F 2 "" H 7275 2150 50  0001 C CNN
F 3 "" H 7275 2150 50  0001 C CNN
	1    7100 2150
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60992E4E
P 7100 2450
AR Path="/60992E4E" Ref="o?"  Part="1" 
AR Path="/61659B7A/60992E4E" Ref="o?"  Part="1" 
F 0 "o?" H 7250 2300 100 0001 C CNN
F 1 "10" H 7200 2350 75  0000 C CNN
F 2 "" H 7275 2450 50  0001 C CNN
F 3 "" H 7275 2450 50  0001 C CNN
	1    7100 2450
	-1   0    0    1   
$EndComp
$Comp
L simbolos:switch S?
U 1 1 60992E54
P 7200 1200
AR Path="/60992E54" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992E54" Ref="S1"  Part="1" 
F 0 "S1" H 7250 1350 100 0000 C CNN
F 1 "switch" H 6950 1150 50  0001 C CNN
F 2 "" H 7250 1200 50  0001 C CNN
F 3 "" H 7250 1200 50  0001 C CNN
	1    7200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1200 7100 1200
Wire Wire Line
	7700 1200 7700 1500
Wire Wire Line
	7100 1500 7700 1500
$Comp
L simbolos:switch S?
U 1 1 60992E5D
P 7200 2150
AR Path="/60992E5D" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992E5D" Ref="S2"  Part="1" 
F 0 "S2" H 7250 2300 100 0000 C CNN
F 1 "switch" H 6950 2100 50  0001 C CNN
F 2 "" H 7250 2150 50  0001 C CNN
F 3 "" H 7250 2150 50  0001 C CNN
	1    7200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2150 7100 2150
Wire Wire Line
	7700 2150 7700 2450
Wire Wire Line
	7100 2450 7700 2450
$Comp
L simbolos:numero N?
U 1 1 60992E66
P 3900 1150
AR Path="/60992E66" Ref="N?"  Part="1" 
AR Path="/61659B7A/60992E66" Ref="N?"  Part="1" 
F 0 "N?" H 3800 950 100 0001 L CNN
F 1 "6" H 3825 1150 150 0000 L CNN
F 2 "" H 3950 1150 50  0001 C CNN
F 3 "" H 3950 1150 50  0001 C CNN
	1    3900 1150
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60992E6C
P 2525 1900
AR Path="/60992E6C" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992E6C" Ref="L2"  Part="1" 
F 0 "L2" H 2675 1700 100 0000 L CNN
F 1 "lampara" V 2575 1375 50  0001 C CNN
F 2 "" V 2525 1675 50  0001 C CNN
F 3 "" V 2525 1675 50  0001 C CNN
	1    2525 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	625  1250 875  1250
Wire Wire Line
	625  1250 625  1625
Wire Wire Line
	1550 2300 1550 2450
Wire Wire Line
	625  1925 625  2450
Wire Wire Line
	2525 2300 2525 2450
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  9150 8050 9150
Wire Wire Line
	2250 1250 2525 1250
Wire Wire Line
	1375 1250 1550 1250
$Comp
L simbolos:switch S?
U 1 1 609F4492
P 1750 1250
AR Path="/609F4492" Ref="S?"  Part="1" 
AR Path="/61659B7A/609F4492" Ref="S2"  Part="1" 
F 0 "S2" H 1800 1400 100 0000 C CNN
F 1 "switch" H 1500 1200 50  0001 C CNN
F 2 "" H 1800 1250 50  0001 C CNN
F 3 "" H 1800 1250 50  0001 C CNN
	1    1750 1250
	1    0    0    -1  
$EndComp
Connection ~ 1550 2450
Wire Wire Line
	1550 2450 2525 2450
Wire Wire Line
	625  2450 1550 2450
Wire Wire Line
	1550 1250 1550 1900
Connection ~ 1550 1250
Wire Wire Line
	1550 1250 1750 1250
Wire Wire Line
	2525 1250 2525 1900
Wire Wire Line
	1625 5700 1625 6100
Wire Wire Line
	1625 6500 1625 6650
Connection ~ 1625 6650
Wire Wire Line
	1625 6650 2625 6650
Wire Wire Line
	7700 5850 7700 5700
Wire Wire Line
	7100 5850 7700 5850
Wire Wire Line
	7200 5550 7100 5550
Wire Wire Line
	7700 5250 7100 5250
Wire Wire Line
	7700 5400 7700 5250
$Comp
L simbolos:selector S?
U 1 1 60A40D80
P 7200 5550
AR Path="/60A40D80" Ref="S?"  Part="1" 
AR Path="/61659B7A/60A40D80" Ref="S1"  Part="1" 
F 0 "S1" H 7375 5675 100 0000 R CNN
F 1 "selector" H 7200 5500 50  0001 C CNN
F 2 "" H 7500 5400 50  0001 C CNN
F 3 "" H 7500 5400 50  0001 C CNN
	1    7200 5550
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60A40D86
P 7100 5250
AR Path="/60A40D86" Ref="o?"  Part="1" 
AR Path="/61659B7A/60A40D86" Ref="o?"  Part="1" 
F 0 "o?" H 7250 5100 100 0001 C CNN
F 1 "7" H 7200 5150 75  0000 C CNN
F 2 "" H 7275 5250 50  0001 C CNN
F 3 "" H 7275 5250 50  0001 C CNN
	1    7100 5250
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60A40D8C
P 7100 5550
AR Path="/60A40D8C" Ref="o?"  Part="1" 
AR Path="/61659B7A/60A40D8C" Ref="o?"  Part="1" 
F 0 "o?" H 7250 5400 100 0001 C CNN
F 1 "8" H 7200 5450 75  0000 C CNN
F 2 "" H 7275 5550 50  0001 C CNN
F 3 "" H 7275 5550 50  0001 C CNN
	1    7100 5550
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60A40D92
P 7100 5850
AR Path="/60A40D92" Ref="o?"  Part="1" 
AR Path="/61659B7A/60A40D92" Ref="o?"  Part="1" 
F 0 "o?" H 7250 5700 100 0001 C CNN
F 1 "9" H 7200 5750 75  0000 C CNN
F 2 "" H 7275 5850 50  0001 C CNN
F 3 "" H 7275 5850 50  0001 C CNN
	1    7100 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2625 6100 2625 5400
Wire Wire Line
	2375 5400 2625 5400
$Comp
L simbolos:switch S?
U 1 1 60992D33
P 1875 5400
AR Path="/60992D33" Ref="S?"  Part="1" 
AR Path="/61659B7A/60992D33" Ref="S2"  Part="1" 
F 0 "S2" H 1925 5550 100 0000 C CNN
F 1 "switch" H 1625 5350 50  0001 C CNN
F 2 "" H 1925 5400 50  0001 C CNN
F 3 "" H 1925 5400 50  0001 C CNN
	1    1875 5400
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60992D6D
P 1625 8175
AR Path="/60992D6D" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992D6D" Ref="L1"  Part="1" 
F 0 "L1" H 1786 7950 100 0000 L CNN
F 1 "lampara" V 1675 7650 50  0001 C CNN
F 2 "" V 1625 7950 50  0001 C CNN
F 3 "" V 1625 7950 50  0001 C CNN
	1    1625 8175
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60992D73
P 2650 8200
AR Path="/60992D73" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992D73" Ref="L2"  Part="1" 
F 0 "L2" H 2811 7975 100 0000 L CNN
F 1 "lampara" V 2700 7675 50  0001 C CNN
F 2 "" V 2650 7975 50  0001 C CNN
F 3 "" V 2650 7975 50  0001 C CNN
	1    2650 8200
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60992C9E
P 2025 10250
AR Path="/60992C9E" Ref="L?"  Part="1" 
AR Path="/61659B7A/60992C9E" Ref="L2"  Part="1" 
F 0 "L2" V 2225 9975 100 0000 L CNN
F 1 "lampara" V 2075 9725 50  0001 C CNN
F 2 "" V 2025 10025 50  0001 C CNN
F 3 "" V 2025 10025 50  0001 C CNN
	1    2025 10250
	0    1    1    0   
$EndComp
$Comp
L simbolos:selector S?
U 1 1 60A80AE5
P 875 7700
AR Path="/60A80AE5" Ref="S?"  Part="1" 
AR Path="/61659B7A/60A80AE5" Ref="S1"  Part="1" 
F 0 "S1" H 1050 7825 100 0000 R CNN
F 1 "selector" H 875 7650 50  0001 C CNN
F 2 "" H 1175 7550 50  0001 C CNN
F 3 "" H 1175 7550 50  0001 C CNN
	1    875  7700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:selector S?
U 1 1 60A09367
P 875 5550
AR Path="/60A09367" Ref="S?"  Part="1" 
AR Path="/61659B7A/60A09367" Ref="S1"  Part="1" 
F 0 "S1" H 1050 5675 100 0000 R CNN
F 1 "selector" H 875 5500 50  0001 C CNN
F 2 "" H 1175 5400 50  0001 C CNN
F 3 "" H 1175 5400 50  0001 C CNN
	1    875  5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	875  5550 625  5550
Wire Wire Line
	1375 5700 1625 5700
Wire Wire Line
	1375 5400 1875 5400
$Comp
L simbolos:selector S?
U 1 1 60AA7276
P 1750 7550
AR Path="/60AA7276" Ref="S?"  Part="1" 
AR Path="/61659B7A/60AA7276" Ref="S2"  Part="1" 
F 0 "S2" H 1925 7675 100 0000 R CNN
F 1 "selector" H 1750 7500 50  0001 C CNN
F 2 "" H 2050 7400 50  0001 C CNN
F 3 "" H 2050 7400 50  0001 C CNN
	1    1750 7550
	1    0    0    -1  
$EndComp
Connection ~ 1625 8750
Wire Wire Line
	1625 8750 2650 8750
Wire Wire Line
	1375 7850 1625 7850
Wire Wire Line
	1625 7850 1625 8175
Wire Wire Line
	875  7700 625  7700
Wire Wire Line
	625  7700 625  8150
Wire Wire Line
	1375 7550 1750 7550
Wire Wire Line
	1625 7850 2250 7850
Wire Wire Line
	2250 7850 2250 7700
Connection ~ 1625 7850
Wire Wire Line
	2250 7400 2650 7400
Wire Wire Line
	2650 7400 2650 8200
Wire Wire Line
	7700 8025 7700 7875
Wire Wire Line
	7100 8025 7700 8025
Wire Wire Line
	7200 7725 7100 7725
Wire Wire Line
	7700 7425 7100 7425
Wire Wire Line
	7700 7575 7700 7425
$Comp
L simbolos:selector S?
U 1 1 60ADE727
P 7200 7725
AR Path="/60ADE727" Ref="S?"  Part="1" 
AR Path="/61659B7A/60ADE727" Ref="S1"  Part="1" 
F 0 "S1" H 7375 7850 100 0000 R CNN
F 1 "selector" H 7200 7675 50  0001 C CNN
F 2 "" H 7500 7575 50  0001 C CNN
F 3 "" H 7500 7575 50  0001 C CNN
	1    7200 7725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 8925 7700 8775
Wire Wire Line
	7100 8925 7700 8925
Wire Wire Line
	7200 8625 7100 8625
Wire Wire Line
	7700 8325 7100 8325
Wire Wire Line
	7700 8475 7700 8325
$Comp
L simbolos:selector S?
U 1 1 60ADE736
P 7200 8625
AR Path="/60ADE736" Ref="S?"  Part="1" 
AR Path="/61659B7A/60ADE736" Ref="S2"  Part="1" 
F 0 "S2" H 7375 8750 100 0000 R CNN
F 1 "selector" H 7200 8575 50  0001 C CNN
F 2 "" H 7500 8475 50  0001 C CNN
F 3 "" H 7500 8475 50  0001 C CNN
	1    7200 8625
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60ADE740
P 7100 7425
AR Path="/60ADE740" Ref="o?"  Part="1" 
AR Path="/61659B7A/60ADE740" Ref="o?"  Part="1" 
F 0 "o?" H 7250 7275 100 0001 C CNN
F 1 "7" H 7200 7325 75  0000 C CNN
F 2 "" H 7275 7425 50  0001 C CNN
F 3 "" H 7275 7425 50  0001 C CNN
	1    7100 7425
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60ADE74A
P 7100 7725
AR Path="/60ADE74A" Ref="o?"  Part="1" 
AR Path="/61659B7A/60ADE74A" Ref="o?"  Part="1" 
F 0 "o?" H 7250 7575 100 0001 C CNN
F 1 "8" H 7200 7625 75  0000 C CNN
F 2 "" H 7275 7725 50  0001 C CNN
F 3 "" H 7275 7725 50  0001 C CNN
	1    7100 7725
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60ADE754
P 7100 8025
AR Path="/60ADE754" Ref="o?"  Part="1" 
AR Path="/61659B7A/60ADE754" Ref="o?"  Part="1" 
F 0 "o?" H 7250 7875 100 0001 C CNN
F 1 "9" H 7200 7925 75  0000 C CNN
F 2 "" H 7275 8025 50  0001 C CNN
F 3 "" H 7275 8025 50  0001 C CNN
	1    7100 8025
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60ADE75E
P 7100 8325
AR Path="/60ADE75E" Ref="o?"  Part="1" 
AR Path="/61659B7A/60ADE75E" Ref="o?"  Part="1" 
F 0 "o?" H 7250 8175 100 0001 C CNN
F 1 "10" H 7200 8225 75  0000 C CNN
F 2 "" H 7275 8325 50  0001 C CNN
F 3 "" H 7275 8325 50  0001 C CNN
	1    7100 8325
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60ADE768
P 7100 8625
AR Path="/60ADE768" Ref="o?"  Part="1" 
AR Path="/61659B7A/60ADE768" Ref="o?"  Part="1" 
F 0 "o?" H 7250 8475 100 0001 C CNN
F 1 "11" H 7200 8525 75  0000 C CNN
F 2 "" H 7275 8625 50  0001 C CNN
F 3 "" H 7275 8625 50  0001 C CNN
	1    7100 8625
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60ADE772
P 7100 8925
AR Path="/60ADE772" Ref="o?"  Part="1" 
AR Path="/61659B7A/60ADE772" Ref="o?"  Part="1" 
F 0 "o?" H 7250 8775 100 0001 C CNN
F 1 "12" H 7200 8825 75  0000 C CNN
F 2 "" H 7275 8925 50  0001 C CNN
F 3 "" H 7275 8925 50  0001 C CNN
	1    7100 8925
	-1   0    0    1   
$EndComp
Wire Notes Line width 16 style solid rgb(0, 0, 0)
	225  2850 8050 2850
$Comp
L simbolos:switch S?
U 1 1 60BCE16A
P 875 3350
AR Path="/60BCE16A" Ref="S?"  Part="1" 
AR Path="/61659B7A/60BCE16A" Ref="S1"  Part="1" 
F 0 "S1" H 925 3500 100 0000 C CNN
F 1 "switch" H 625 3300 50  0001 C CNN
F 2 "" H 925 3350 50  0001 C CNN
F 3 "" H 925 3350 50  0001 C CNN
	1    875  3350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:Pila V?
U 1 1 60BCE718
P 625 3725
AR Path="/60BCE718" Ref="V?"  Part="1" 
AR Path="/61659B7A/60BCE718" Ref="V1"  Part="1" 
F 0 "V1" H 825 3575 100 0000 L CNN
F 1 "Pila" H 725 3775 50  0001 C CNN
F 2 "" H 625 3725 50  0001 C CNN
F 3 "" H 625 3725 50  0001 C CNN
	1    625  3725
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60BCE722
P 1750 4050
AR Path="/60BCE722" Ref="L?"  Part="1" 
AR Path="/61659B7A/60BCE722" Ref="L1"  Part="1" 
F 0 "L1" H 1900 3850 100 0000 L CNN
F 1 "lampara" V 1800 3525 50  0001 C CNN
F 2 "" V 1750 3825 50  0001 C CNN
F 3 "" V 1750 3825 50  0001 C CNN
	1    1750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4100 5000 4100
Wire Wire Line
	4550 3700 5000 3700
$Comp
L simbolos:lampara L?
U 1 1 60BCE72E
P 4550 3700
AR Path="/60BCE72E" Ref="L?"  Part="1" 
AR Path="/61659B7A/60BCE72E" Ref="L1"  Part="1" 
F 0 "L1" H 4725 3500 100 0000 L CNN
F 1 "lampara" V 4600 3175 50  0001 C CNN
F 2 "" V 4550 3475 50  0001 C CNN
F 3 "" V 4550 3475 50  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3100 4550 3050
Wire Wire Line
	4550 3050 5000 3050
Wire Wire Line
	4550 3450 5000 3450
$Comp
L simbolos:Pila V?
U 1 1 60BCE73B
P 4550 3100
AR Path="/60BCE73B" Ref="V?"  Part="1" 
AR Path="/61659B7A/60BCE73B" Ref="V1"  Part="1" 
F 0 "V1" H 4750 2950 100 0000 L CNN
F 1 "Pila" H 4650 3150 50  0001 C CNN
F 2 "" H 4550 3100 50  0001 C CNN
F 3 "" H 4550 3100 50  0001 C CNN
	1    4550 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3450 4550 3400
Wire Wire Line
	4550 4750 5000 4750
Wire Wire Line
	4550 4350 5000 4350
$Comp
L simbolos:lampara L?
U 1 1 60BCE748
P 4550 4350
AR Path="/60BCE748" Ref="L?"  Part="1" 
AR Path="/61659B7A/60BCE748" Ref="L2"  Part="1" 
F 0 "L2" H 4725 4150 100 0000 L CNN
F 1 "lampara" V 4600 3825 50  0001 C CNN
F 2 "" V 4550 4125 50  0001 C CNN
F 3 "" V 4550 4125 50  0001 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE752
P 5000 3050
AR Path="/60BCE752" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE752" Ref="o?"  Part="1" 
F 0 "o?" H 5150 2900 100 0001 C CNN
F 1 "1" H 5100 3150 75  0000 C CNN
F 2 "" H 5175 3050 50  0001 C CNN
F 3 "" H 5175 3050 50  0001 C CNN
	1    5000 3050
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE75C
P 5000 3450
AR Path="/60BCE75C" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE75C" Ref="o?"  Part="1" 
F 0 "o?" H 5150 3300 100 0001 C CNN
F 1 "2" H 5100 3550 75  0000 C CNN
F 2 "" H 5175 3450 50  0001 C CNN
F 3 "" H 5175 3450 50  0001 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE766
P 5000 3700
AR Path="/60BCE766" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE766" Ref="o?"  Part="1" 
F 0 "o?" H 5150 3550 100 0001 C CNN
F 1 "3" H 5100 3800 75  0000 C CNN
F 2 "" H 5175 3700 50  0001 C CNN
F 3 "" H 5175 3700 50  0001 C CNN
	1    5000 3700
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE770
P 5000 4100
AR Path="/60BCE770" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE770" Ref="o?"  Part="1" 
F 0 "o?" H 5150 3950 100 0001 C CNN
F 1 "4" H 5100 4200 75  0000 C CNN
F 2 "" H 5175 4100 50  0001 C CNN
F 3 "" H 5175 4100 50  0001 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE77A
P 5000 4350
AR Path="/60BCE77A" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE77A" Ref="o?"  Part="1" 
F 0 "o?" H 5150 4200 100 0001 C CNN
F 1 "5" H 5100 4250 75  0000 C CNN
F 2 "" H 5175 4350 50  0001 C CNN
F 3 "" H 5175 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE784
P 5000 4750
AR Path="/60BCE784" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE784" Ref="o?"  Part="1" 
F 0 "o?" H 5150 4600 100 0001 C CNN
F 1 "6" H 5100 4650 75  0000 C CNN
F 2 "" H 5175 4750 50  0001 C CNN
F 3 "" H 5175 4750 50  0001 C CNN
	1    5000 4750
	1    0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE78E
P 7100 3300
AR Path="/60BCE78E" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE78E" Ref="o?"  Part="1" 
F 0 "o?" H 7250 3150 100 0001 C CNN
F 1 "7" H 7200 3200 75  0000 C CNN
F 2 "" H 7275 3300 50  0001 C CNN
F 3 "" H 7275 3300 50  0001 C CNN
	1    7100 3300
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE798
P 7100 3600
AR Path="/60BCE798" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE798" Ref="o?"  Part="1" 
F 0 "o?" H 7250 3450 100 0001 C CNN
F 1 "8" H 7200 3500 75  0000 C CNN
F 2 "" H 7275 3600 50  0001 C CNN
F 3 "" H 7275 3600 50  0001 C CNN
	1    7100 3600
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE7A2
P 7100 4250
AR Path="/60BCE7A2" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE7A2" Ref="o?"  Part="1" 
F 0 "o?" H 7250 4100 100 0001 C CNN
F 1 "9" H 7200 4150 75  0000 C CNN
F 2 "" H 7275 4250 50  0001 C CNN
F 3 "" H 7275 4250 50  0001 C CNN
	1    7100 4250
	-1   0    0    1   
$EndComp
$Comp
L simbolos:conector o?
U 1 1 60BCE7AC
P 7100 4550
AR Path="/60BCE7AC" Ref="o?"  Part="1" 
AR Path="/61659B7A/60BCE7AC" Ref="o?"  Part="1" 
F 0 "o?" H 7250 4400 100 0001 C CNN
F 1 "10" H 7200 4450 75  0000 C CNN
F 2 "" H 7275 4550 50  0001 C CNN
F 3 "" H 7275 4550 50  0001 C CNN
	1    7100 4550
	-1   0    0    1   
$EndComp
$Comp
L simbolos:switch S?
U 1 1 60BCE7B6
P 7200 3300
AR Path="/60BCE7B6" Ref="S?"  Part="1" 
AR Path="/61659B7A/60BCE7B6" Ref="S1"  Part="1" 
F 0 "S1" H 7250 3450 100 0000 C CNN
F 1 "switch" H 6950 3250 50  0001 C CNN
F 2 "" H 7250 3300 50  0001 C CNN
F 3 "" H 7250 3300 50  0001 C CNN
	1    7200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7100 3300
Wire Wire Line
	7700 3300 7700 3600
Wire Wire Line
	7100 3600 7700 3600
$Comp
L simbolos:switch S?
U 1 1 60BCE7C3
P 7200 4250
AR Path="/60BCE7C3" Ref="S?"  Part="1" 
AR Path="/61659B7A/60BCE7C3" Ref="S2"  Part="1" 
F 0 "S2" H 7250 4400 100 0000 C CNN
F 1 "switch" H 6950 4200 50  0001 C CNN
F 2 "" H 7250 4250 50  0001 C CNN
F 3 "" H 7250 4250 50  0001 C CNN
	1    7200 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4250 7100 4250
Wire Wire Line
	7700 4250 7700 4550
Wire Wire Line
	7100 4550 7700 4550
$Comp
L simbolos:numero N?
U 1 1 60BCE7D0
P 3900 3250
AR Path="/60BCE7D0" Ref="N?"  Part="1" 
AR Path="/61659B7A/60BCE7D0" Ref="N?"  Part="1" 
F 0 "N?" H 3800 3050 100 0001 L CNN
F 1 "7" H 3825 3250 150 0000 L CNN
F 2 "" H 3950 3250 50  0001 C CNN
F 3 "" H 3950 3250 50  0001 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
$Comp
L simbolos:lampara L?
U 1 1 60BCE7DA
P 1750 3450
AR Path="/60BCE7DA" Ref="L?"  Part="1" 
AR Path="/61659B7A/60BCE7DA" Ref="L2"  Part="1" 
F 0 "L2" H 1900 3250 100 0000 L CNN
F 1 "lampara" V 1800 2925 50  0001 C CNN
F 2 "" V 1750 3225 50  0001 C CNN
F 3 "" V 1750 3225 50  0001 C CNN
	1    1750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	625  3350 875  3350
Wire Wire Line
	625  3350 625  3725
Wire Wire Line
	625  4025 625  4550
$Comp
L simbolos:switch S?
U 1 1 60BCE7EB
P 2350 3400
AR Path="/60BCE7EB" Ref="S?"  Part="1" 
AR Path="/61659B7A/60BCE7EB" Ref="S2"  Part="1" 
F 0 "S2" V 2400 3550 100 0000 C CNN
F 1 "switch" H 2100 3350 50  0001 C CNN
F 2 "" H 2400 3400 50  0001 C CNN
F 3 "" H 2400 3400 50  0001 C CNN
	1    2350 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 4450 1750 4550
Wire Wire Line
	625  4550 1750 4550
Wire Wire Line
	1375 3350 1750 3350
Connection ~ 1750 3950
Wire Wire Line
	1750 3950 1750 4050
Wire Wire Line
	1750 3850 1750 3950
Wire Wire Line
	1750 3450 1750 3350
Wire Wire Line
	1750 3350 2350 3350
Wire Wire Line
	2350 3350 2350 3400
Connection ~ 1750 3350
Wire Wire Line
	2350 3900 2350 3950
Wire Wire Line
	2350 3950 1750 3950
$Comp
L simbolos:lampara L?
U 1 1 60C3FA05
P 2025 9625
AR Path="/60C3FA05" Ref="L?"  Part="1" 
AR Path="/61659B7A/60C3FA05" Ref="L1"  Part="1" 
F 0 "L1" V 2225 9350 100 0000 L CNN
F 1 "lampara" V 2075 9100 50  0001 C CNN
F 2 "" V 2025 9400 50  0001 C CNN
F 3 "" V 2025 9400 50  0001 C CNN
	1    2025 9625
	0    1    1    0   
$EndComp
$Comp
L simbolos:selector S?
U 1 1 60C406F2
P 875 9950
AR Path="/60C406F2" Ref="S?"  Part="1" 
AR Path="/61659B7A/60C406F2" Ref="S1"  Part="1" 
F 0 "S1" H 1050 10075 100 0000 R CNN
F 1 "selector" H 875 9900 50  0001 C CNN
F 2 "" H 1175 9800 50  0001 C CNN
F 3 "" H 1175 9800 50  0001 C CNN
	1    875  9950
	1    0    0    -1  
$EndComp
Wire Wire Line
	875  9950 625  9950
Wire Wire Line
	625  9950 625  10225
$Comp
L simbolos:selector S?
U 1 1 60C47C25
P 2775 9950
AR Path="/60C47C25" Ref="S?"  Part="1" 
AR Path="/61659B7A/60C47C25" Ref="S2"  Part="1" 
F 0 "S2" H 2950 10075 100 0000 R CNN
F 1 "selector" H 2775 9900 50  0001 C CNN
F 2 "" H 3075 9800 50  0001 C CNN
F 3 "" H 3075 9800 50  0001 C CNN
	1    2775 9950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2775 9950 3000 9950
Wire Wire Line
	3000 9950 3000 10875
Wire Wire Line
	625  10875 3000 10875
Wire Wire Line
	2025 10250 2275 10250
Wire Wire Line
	2275 10250 2275 10100
Wire Wire Line
	1375 10100 1375 10250
Wire Wire Line
	1375 10250 1625 10250
Wire Wire Line
	1375 9800 1375 9625
Wire Wire Line
	1375 9625 1625 9625
Wire Wire Line
	2025 9625 2275 9625
Wire Wire Line
	2275 9625 2275 9800
$Comp
L simbolos:CopyRight CP?
U 1 1 60A37D3B
P 3925 200
F 0 "CP?" H 4350 525 40  0001 C CNN
F 1 "CopyRight" H 4100 525 40  0001 C CNN
F 2 "" H 3825 550 50  0001 C CNN
F 3 "" H 3925 400 50  0001 C CNN
F 4 "CC BY-SA 4.0" H 3475 125 75  0000 C CNN "License"
F 5 "" H 4475 150 50  0000 C CNN "Author"
F 6 "" H 4050 150 50  0000 C CNN "Date"
F 7 "www.picuino.com" H 4425 125 75  0000 C CNN "Web"
	1    3925 200 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
