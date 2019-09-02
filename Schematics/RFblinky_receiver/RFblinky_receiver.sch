EESchema Schematic File Version 4
LIBS:RFblinky_receiver-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Texas_MSP430:MSP430G2231IN14 U3
U 1 1 5D64099E
P 6000 3850
F 0 "U3" H 6750 4650 50  0000 C CNN
F 1 "MSP430G2231IN14" H 6450 4550 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5250 3200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2231.pdf" H 6000 3850 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT1117-3.3 U1
U 1 1 5D641716
P 2100 1950
F 0 "U1" H 2100 2192 50  0000 C CNN
F 1 "LT1117-3.3" H 2100 2101 50  0000 C CNN
F 2 "" H 2100 1950 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1117fd.pdf" H 2100 1950 50  0001 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5D641D52
P 2100 4000
F 0 "U2" H 2100 4242 50  0000 C CNN
F 1 "L7805" H 2100 4151 50  0000 C CNN
F 2 "" H 2125 3850 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2100 3950 50  0001 C CNN
	1    2100 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5D645496
P 2650 2300
F 0 "C2" H 2765 2346 50  0000 L CNN
F 1 "10u" H 2765 2255 50  0000 L CNN
F 2 "" H 2650 2300 50  0001 C CNN
F 3 "~" H 2650 2300 50  0001 C CNN
	1    2650 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 5D6477C6
P 1550 2300
F 0 "C1" H 1665 2346 50  0000 L CNN
F 1 "10u" H 1665 2255 50  0000 L CNN
F 2 "" H 1550 2300 50  0001 C CNN
F 3 "~" H 1550 2300 50  0001 C CNN
	1    1550 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D64A750
P 2650 2650
F 0 "#PWR" H 2650 2400 50  0001 C CNN
F 1 "GND" H 2655 2477 50  0000 C CNN
F 2 "" H 2650 2650 50  0001 C CNN
F 3 "" H 2650 2650 50  0001 C CNN
	1    2650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2150 1550 1950
Wire Wire Line
	1550 1950 1800 1950
Wire Wire Line
	2400 1950 2650 1950
Wire Wire Line
	2650 1950 2650 2150
Wire Wire Line
	2650 2450 2650 2550
Wire Wire Line
	1550 2450 1550 2550
Wire Wire Line
	1550 2550 2100 2550
Wire Wire Line
	2100 2250 2100 2550
Connection ~ 2100 2550
Wire Wire Line
	2100 2550 2650 2550
Wire Wire Line
	2650 2650 2650 2550
Connection ~ 2650 2550
$Comp
L power:+9V #PWR
U 1 1 5D64CD22
P 1550 1800
F 0 "#PWR" H 1550 1650 50  0001 C CNN
F 1 "+9V" H 1565 1973 50  0000 C CNN
F 2 "" H 1550 1800 50  0001 C CNN
F 3 "" H 1550 1800 50  0001 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1950 1550 1800
Connection ~ 1550 1950
Text Label 2850 1950 0    50   ~ 0
MCU_3V3
Wire Wire Line
	2650 1950 2850 1950
Connection ~ 2650 1950
$Comp
L Device:CP1 C4
U 1 1 5D6508EF
P 2650 4350
F 0 "C4" H 2765 4396 50  0000 L CNN
F 1 "10u" H 2765 4305 50  0000 L CNN
F 2 "" H 2650 4350 50  0001 C CNN
F 3 "~" H 2650 4350 50  0001 C CNN
	1    2650 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 5D6508F5
P 1550 4350
F 0 "C3" H 1665 4396 50  0000 L CNN
F 1 "10u" H 1665 4305 50  0000 L CNN
F 2 "" H 1550 4350 50  0001 C CNN
F 3 "~" H 1550 4350 50  0001 C CNN
	1    1550 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D6508FB
P 2650 4700
F 0 "#PWR" H 2650 4450 50  0001 C CNN
F 1 "GND" H 2655 4527 50  0000 C CNN
F 2 "" H 2650 4700 50  0001 C CNN
F 3 "" H 2650 4700 50  0001 C CNN
	1    2650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4200 1550 4000
Wire Wire Line
	1550 4000 1800 4000
Wire Wire Line
	2400 4000 2650 4000
Wire Wire Line
	2650 4000 2650 4200
Wire Wire Line
	2650 4500 2650 4600
Wire Wire Line
	1550 4500 1550 4600
Wire Wire Line
	1550 4600 2100 4600
Wire Wire Line
	2100 4300 2100 4600
Connection ~ 2100 4600
Wire Wire Line
	2100 4600 2650 4600
Wire Wire Line
	2650 4700 2650 4600
Connection ~ 2650 4600
$Comp
L power:+9V #PWR
U 1 1 5D65090D
P 1550 3850
F 0 "#PWR" H 1550 3700 50  0001 C CNN
F 1 "+9V" H 1565 4023 50  0000 C CNN
F 2 "" H 1550 3850 50  0001 C CNN
F 3 "" H 1550 3850 50  0001 C CNN
	1    1550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4000 1550 3850
Connection ~ 1550 4000
Text Label 2850 4000 0    50   ~ 0
5V_REG
Wire Wire Line
	2650 4000 2850 4000
Connection ~ 2650 4000
$Comp
L power:GND #PWR
U 1 1 5D658324
P 6000 4700
F 0 "#PWR" H 6000 4450 50  0001 C CNN
F 1 "GND" H 6005 4527 50  0000 C CNN
F 2 "" H 6000 4700 50  0001 C CNN
F 3 "" H 6000 4700 50  0001 C CNN
	1    6000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4700 6000 4600
Wire Wire Line
	5050 3400 4900 3400
Wire Wire Line
	4900 2650 6000 2650
Wire Wire Line
	6000 2650 6000 3050
Wire Wire Line
	4900 2650 4900 2900
$Comp
L Device:R_US R1
U 1 1 5D658CCA
P 4900 3050
F 0 "R1" H 4968 3096 50  0000 L CNN
F 1 "10k" H 4968 3005 50  0000 L CNN
F 2 "" V 4940 3040 50  0001 C CNN
F 3 "~" H 4900 3050 50  0001 C CNN
	1    4900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3200 4900 3400
Text Label 6000 2450 0    50   ~ 0
3V3_MCU
Wire Wire Line
	6000 2650 6000 2450
Connection ~ 6000 2650
NoConn ~ 5050 4150
NoConn ~ 5050 4350
NoConn ~ 6950 3300
Text Label 7150 3450 0    50   ~ 0
DATA_RX
Wire Wire Line
	7150 3450 6950 3450
NoConn ~ 6950 4150
NoConn ~ 6950 4050
$Comp
L Device:LED D1
U 1 1 5D66111C
P 7300 4600
F 0 "D1" V 7339 4483 50  0000 R CNN
F 1 "LED" V 7248 4483 50  0000 R CNN
F 2 "" H 7300 4600 50  0001 C CNN
F 3 "~" H 7300 4600 50  0001 C CNN
	1    7300 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D664C5D
P 7750 4600
F 0 "D2" V 7789 4483 50  0000 R CNN
F 1 "LED" V 7698 4483 50  0000 R CNN
F 2 "" H 7750 4600 50  0001 C CNN
F 3 "~" H 7750 4600 50  0001 C CNN
	1    7750 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5D66508B
P 8200 4600
F 0 "D3" V 8239 4483 50  0000 R CNN
F 1 "LED" V 8148 4483 50  0000 R CNN
F 2 "" H 8200 4600 50  0001 C CNN
F 3 "~" H 8200 4600 50  0001 C CNN
	1    8200 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5D66582B
P 8650 4600
F 0 "D4" V 8689 4483 50  0000 R CNN
F 1 "LED" V 8598 4483 50  0000 R CNN
F 2 "" H 8650 4600 50  0001 C CNN
F 3 "~" H 8650 4600 50  0001 C CNN
	1    8650 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5D666139
P 9100 4600
F 0 "D5" V 9139 4483 50  0000 R CNN
F 1 "LED" V 9048 4483 50  0000 R CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "~" H 9100 4600 50  0001 C CNN
	1    9100 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5D668CA7
P 7300 4200
F 0 "R2" H 7368 4246 50  0000 L CNN
F 1 "300" H 7368 4155 50  0000 L CNN
F 2 "" V 7340 4190 50  0001 C CNN
F 3 "~" H 7300 4200 50  0001 C CNN
	1    7300 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5D66ADCA
P 7750 4200
F 0 "R3" H 7818 4246 50  0000 L CNN
F 1 "300" H 7818 4155 50  0000 L CNN
F 2 "" V 7790 4190 50  0001 C CNN
F 3 "~" H 7750 4200 50  0001 C CNN
	1    7750 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D66B3A0
P 8200 4200
F 0 "R4" H 8268 4246 50  0000 L CNN
F 1 "300" H 8268 4155 50  0000 L CNN
F 2 "" V 8240 4190 50  0001 C CNN
F 3 "~" H 8200 4200 50  0001 C CNN
	1    8200 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5D66B8A0
P 8650 4200
F 0 "R5" H 8718 4246 50  0000 L CNN
F 1 "300" H 8718 4155 50  0000 L CNN
F 2 "" V 8690 4190 50  0001 C CNN
F 3 "~" H 8650 4200 50  0001 C CNN
	1    8650 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5D66BD52
P 9100 4200
F 0 "R6" H 9168 4246 50  0000 L CNN
F 1 "300" H 9168 4155 50  0000 L CNN
F 2 "" V 9140 4190 50  0001 C CNN
F 3 "~" H 9100 4200 50  0001 C CNN
	1    9100 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D66C31F
P 7300 4850
F 0 "#PWR" H 7300 4600 50  0001 C CNN
F 1 "GND" H 7305 4677 50  0000 C CNN
F 2 "" H 7300 4850 50  0001 C CNN
F 3 "" H 7300 4850 50  0001 C CNN
	1    7300 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D66CA9F
P 7750 4850
F 0 "#PWR" H 7750 4600 50  0001 C CNN
F 1 "GND" H 7755 4677 50  0000 C CNN
F 2 "" H 7750 4850 50  0001 C CNN
F 3 "" H 7750 4850 50  0001 C CNN
	1    7750 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D66D06F
P 8200 4850
F 0 "#PWR" H 8200 4600 50  0001 C CNN
F 1 "GND" H 8205 4677 50  0000 C CNN
F 2 "" H 8200 4850 50  0001 C CNN
F 3 "" H 8200 4850 50  0001 C CNN
	1    8200 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D66D5C1
P 8650 4850
F 0 "#PWR" H 8650 4600 50  0001 C CNN
F 1 "GND" H 8655 4677 50  0000 C CNN
F 2 "" H 8650 4850 50  0001 C CNN
F 3 "" H 8650 4850 50  0001 C CNN
	1    8650 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR
U 1 1 5D66DC4B
P 9100 4850
F 0 "#PWR" H 9100 4600 50  0001 C CNN
F 1 "GND" H 9105 4677 50  0000 C CNN
F 2 "" H 9100 4850 50  0001 C CNN
F 3 "" H 9100 4850 50  0001 C CNN
	1    9100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4850 7300 4750
Wire Wire Line
	7300 3950 6950 3950
Wire Wire Line
	7300 4450 7300 4350
Wire Wire Line
	7300 4050 7300 3950
Wire Wire Line
	7750 4850 7750 4750
Wire Wire Line
	7750 3850 6950 3850
Wire Wire Line
	7750 4450 7750 4350
Wire Wire Line
	7750 4050 7750 3850
Wire Wire Line
	8200 4850 8200 4750
Wire Wire Line
	8200 3750 6950 3750
Wire Wire Line
	8200 4450 8200 4350
Wire Wire Line
	8200 4050 8200 3750
Wire Wire Line
	8650 4850 8650 4750
Wire Wire Line
	8650 3650 6950 3650
Wire Wire Line
	8650 4450 8650 4350
Wire Wire Line
	8650 4050 8650 3650
Wire Wire Line
	9100 4850 9100 4750
Wire Wire Line
	9100 3550 6950 3550
Wire Wire Line
	9100 4450 9100 4350
Wire Wire Line
	9100 4050 9100 3550
$Comp
L power:GND #PWR?
U 1 1 5D651929
P 2700 6500
F 0 "#PWR?" H 2700 6250 50  0001 C CNN
F 1 "GND" H 2705 6327 50  0000 C CNN
F 2 "" H 2700 6500 50  0001 C CNN
F 3 "" H 2700 6500 50  0001 C CNN
	1    2700 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6300 2700 6300
Wire Wire Line
	2700 6300 2700 6500
Text Label 2700 6000 0    50   ~ 0
5V_REG
Wire Wire Line
	2700 6000 2400 6000
Text Label 2700 6100 0    50   ~ 0
DATA_RX
Wire Wire Line
	2700 6100 2400 6100
Text Notes 1850 1500 0    50   ~ 0
3V3 Regulator
Text Notes 1900 3550 0    50   ~ 0
5V Regulator\n
Text Notes 2000 5650 0    50   ~ 0
Receiver\n\n
Text Notes 7350 7600 0    50   ~ 0
Receiver Module\n\n
$Comp
L 433Lib:SMAKN-433RX U4
U 1 1 5D664455
P 1900 5900
F 0 "U4" H 2250 6050 50  0000 C CNN
F 1 "SMAKN-433RX" H 2050 5950 50  0000 C CNN
F 2 "" H 2000 5950 50  0001 C CNN
F 3 "" H 2000 5950 50  0001 C CNN
	1    1900 5900
	1    0    0    -1  
$EndComp
NoConn ~ 2400 6200
Text Notes 8150 7650 0    50   ~ 0
2019-08-26
Text Notes 10600 7650 0    50   ~ 0
1.0
Text Notes 6050 2150 0    50   ~ 0
MCU
Text Notes 5000 900  0    118  ~ 0
RECEIVER MODULE
$EndSCHEMATC
