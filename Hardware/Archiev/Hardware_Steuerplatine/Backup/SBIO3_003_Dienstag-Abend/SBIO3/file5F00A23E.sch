EESchema Schematic File Version 4
LIBS:SBIO3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1600 1650 0    50   Input ~ 0
RESET
$Comp
L power:GND #PWR0179
U 1 1 5F0AE11F
P 2100 2050
F 0 "#PWR0179" H 2100 1800 50  0001 C CNN
F 1 "GND" V 2105 1922 50  0000 R CNN
F 2 "" H 2100 2050 50  0001 C CNN
F 3 "" H 2100 2050 50  0001 C CNN
	1    2100 2050
	0    -1   -1   0   
$EndComp
Text GLabel 1600 1850 0    50   Input ~ 0
Stop
Text GLabel 1600 1750 0    50   Input ~ 0
NOTAUS
Text GLabel 1600 1950 0    50   Input ~ 0
Start
Text GLabel 2100 1650 2    50   Input ~ 0
Dbg1
Text GLabel 1600 2050 0    50   Input ~ 0
Dbg2
Text GLabel 2100 1750 2    50   Input ~ 0
SR_Latch
Text GLabel 2100 1850 2    50   Input ~ 0
SR_Daten
Text GLabel 2100 1950 2    50   Input ~ 0
SR_Takt
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom J11
U 1 1 5F0AFC40
P 1800 1850
F 0 "J11" H 1850 2267 50  0000 C CNN
F 1 "Frontpannel" H 1850 2176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 1800 1850 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J12
U 1 1 5F0B3DD5
P 3450 1800
F 0 "J12" H 3530 1792 50  0000 L CNN
F 1 "Conn_01x04" H 3530 1701 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3450 1800 50  0001 C CNN
F 3 "~" H 3450 1800 50  0001 C CNN
	1    3450 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0180
U 1 1 5F0B46EA
P 3150 2100
F 0 "#PWR0180" H 3150 1850 50  0001 C CNN
F 1 "GND" H 3155 1927 50  0000 C CNN
F 2 "" H 3150 2100 50  0001 C CNN
F 3 "" H 3150 2100 50  0001 C CNN
	1    3150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0181
U 1 1 5F0B4BCA
P 3150 1600
F 0 "#PWR0181" H 3150 1450 50  0001 C CNN
F 1 "+5V" H 3165 1773 50  0000 C CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1700 3150 1700
Wire Wire Line
	3150 1700 3150 1600
Wire Wire Line
	3250 1800 3150 1800
Wire Wire Line
	3150 1800 3150 1700
Connection ~ 3150 1700
Wire Wire Line
	3250 2000 3150 2000
Wire Wire Line
	3150 2000 3150 2100
Wire Wire Line
	3250 1900 3150 1900
Wire Wire Line
	3150 1900 3150 2000
Connection ~ 3150 2000
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom J13
U 1 1 5F06314F
P 1800 2850
F 0 "J13" H 1850 3267 50  0000 C CNN
F 1 "Frontpannel" H 1850 3176 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical" H 1800 2850 50  0001 C CNN
F 3 "~" H 1800 2850 50  0001 C CNN
	1    1800 2850
	1    0    0    -1  
$EndComp
Text Label 1600 2650 2    50   ~ 0
RESET-
Text Label 1600 2750 2    50   ~ 0
NOTAUS-
Text Label 1600 2850 2    50   ~ 0
STOP-
Text Label 1600 2950 2    50   ~ 0
START-
Text Label 2100 2750 0    50   ~ 0
SR_Latch-
Text Label 3850 2700 2    50   ~ 0
SR_Daten-
Text Label 2100 2950 0    50   ~ 0
SR_Takt-
$Comp
L power:GND #PWR0183
U 1 1 5F065732
P 2100 3050
F 0 "#PWR0183" H 2100 2800 50  0001 C CNN
F 1 "GND" V 2105 2922 50  0000 R CNN
F 2 "" H 2100 3050 50  0001 C CNN
F 3 "" H 2100 3050 50  0001 C CNN
	1    2100 3050
	0    -1   -1   0   
$EndComp
$Comp
L 74xx:74HC595 U19
U 1 1 5F065C6A
P 5800 3100
F 0 "U19" H 6100 3950 50  0000 C CNN
F 1 "74HC595" H 6100 3850 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 5800 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5800 3100 50  0001 C CNN
	1    5800 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R55
U 1 1 5F066320
P 4500 3450
F 0 "R55" H 4570 3496 50  0000 L CNN
F 1 "10k" H 4570 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 3450 50  0001 C CNN
F 3 "~" H 4500 3450 50  0001 C CNN
	1    4500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3000 5300 3000
Wire Wire Line
	5300 3000 5300 2400
Wire Wire Line
	5300 2400 5800 2400
Wire Wire Line
	5800 2400 5800 2500
Wire Wire Line
	5400 3300 5300 3300
Wire Wire Line
	5300 3300 5300 3900
Wire Wire Line
	5300 3900 5800 3900
Wire Wire Line
	5800 3900 5800 3800
$Comp
L Device:R R54
U 1 1 5F0677A2
P 4250 3450
F 0 "R54" H 4320 3496 50  0000 L CNN
F 1 "10k" H 4320 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 3450 50  0001 C CNN
F 3 "~" H 4250 3450 50  0001 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R52
U 1 1 5F067A27
P 4000 3450
F 0 "R52" H 4070 3496 50  0000 L CNN
F 1 "10k" H 4070 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3930 3450 50  0001 C CNN
F 3 "~" H 4000 3450 50  0001 C CNN
	1    4000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3300 4500 3200
Wire Wire Line
	4500 3200 5100 3200
Wire Wire Line
	5400 2900 5200 2900
Wire Wire Line
	4250 2900 4250 3300
Wire Wire Line
	5400 2700 4000 2700
Wire Wire Line
	4000 2700 4000 3300
Wire Wire Line
	4500 3600 4500 3900
Wire Wire Line
	4500 3900 5300 3900
Connection ~ 5300 3900
Wire Wire Line
	4250 3600 4250 3900
Wire Wire Line
	4250 3900 4500 3900
Connection ~ 4500 3900
Wire Wire Line
	4000 3600 4000 3900
Wire Wire Line
	4000 3900 4250 3900
Connection ~ 4250 3900
Wire Wire Line
	4000 2700 3850 2700
Connection ~ 4000 2700
Wire Wire Line
	3850 2900 4250 2900
Connection ~ 4250 2900
Wire Wire Line
	3850 3200 4500 3200
Connection ~ 4500 3200
$Comp
L 74xx:74HC595 U20
U 1 1 5F06BEF6
P 9000 3100
F 0 "U20" H 9300 3900 50  0000 C CNN
F 1 "74HC595" H 9300 3800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 9000 3100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9000 3100 50  0001 C CNN
	1    9000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3900 7650 3900
Wire Wire Line
	9000 3900 9000 3800
Connection ~ 5800 3900
Wire Wire Line
	5800 2400 7550 2400
Wire Wire Line
	9000 2400 9000 2500
Connection ~ 5800 2400
Wire Wire Line
	8600 3300 8500 3300
Wire Wire Line
	8500 3300 8500 3900
Connection ~ 8500 3900
Wire Wire Line
	8500 3900 9000 3900
Wire Wire Line
	8600 3000 8500 3000
Wire Wire Line
	8500 3000 8500 2400
Connection ~ 8500 2400
Wire Wire Line
	8500 2400 9000 2400
$Comp
L Device:R R56
U 1 1 5F071912
P 6350 2700
F 0 "R56" V 6350 3350 50  0000 C CNN
F 1 "1k" V 6350 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 2700 50  0001 C CNN
F 3 "~" H 6350 2700 50  0001 C CNN
	1    6350 2700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0184
U 1 1 5F07BC94
P 7550 2300
F 0 "#PWR0184" H 7550 2150 50  0001 C CNN
F 1 "+5V" H 7565 2473 50  0000 C CNN
F 2 "" H 7550 2300 50  0001 C CNN
F 3 "" H 7550 2300 50  0001 C CNN
	1    7550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2400 7550 2300
Connection ~ 7550 2400
Wire Wire Line
	7550 2400 8500 2400
$Comp
L power:GND #PWR0185
U 1 1 5F07CF87
P 7650 4000
F 0 "#PWR0185" H 7650 3750 50  0001 C CNN
F 1 "GND" H 7655 3827 50  0000 C CNN
F 2 "" H 7650 4000 50  0001 C CNN
F 3 "" H 7650 4000 50  0001 C CNN
	1    7650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3900 7650 4000
Connection ~ 7650 3900
Wire Wire Line
	7650 3900 8500 3900
$Comp
L power:GND #PWR0186
U 1 1 5F07DDEB
P 6900 3500
F 0 "#PWR0186" H 6900 3250 50  0001 C CNN
F 1 "GND" H 6905 3327 50  0000 C CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2700 6900 2700
Wire Wire Line
	6200 3600 6750 3600
Wire Wire Line
	6750 3600 6750 3750
Wire Wire Line
	6750 3750 7100 3750
Wire Wire Line
	7100 3750 7100 3600
Wire Wire Line
	5200 2900 5200 4300
Wire Wire Line
	5200 4300 8400 4300
Wire Wire Line
	8400 4300 8400 2900
Wire Wire Line
	8400 2900 8600 2900
Connection ~ 5200 2900
Wire Wire Line
	5200 2900 4250 2900
Wire Wire Line
	5100 3200 5100 4400
Wire Wire Line
	5100 4400 8300 4400
Wire Wire Line
	8300 4400 8300 3200
Wire Wire Line
	8300 3200 8600 3200
Connection ~ 5100 3200
Wire Wire Line
	5100 3200 5400 3200
$Comp
L Device:R R57
U 1 1 5F0A43C8
P 6350 2800
F 0 "R57" V 6350 3450 50  0000 C CNN
F 1 "1k" V 6350 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 2800 50  0001 C CNN
F 3 "~" H 6350 2800 50  0001 C CNN
	1    6350 2800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D23
U 1 1 5F0A43CE
P 6650 2800
F 0 "D23" H 6000 2800 50  0000 C CNN
F 1 "Heizung" H 5800 2800 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 2800 50  0001 C CNN
F 3 "~" H 6650 2800 50  0001 C CNN
	1    6650 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 2800 6900 2800
$Comp
L Device:R 1k2
U 1 1 5F0A5B1B
P 6350 2900
F 0 "1k2" V 6350 3550 50  0000 C CNN
F 1 "R" V 6350 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 2900 50  0001 C CNN
F 3 "~" H 6350 2900 50  0001 C CNN
	1    6350 2900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D24
U 1 1 5F0A5B21
P 6650 2900
F 0 "D24" H 6000 2900 50  0000 C CNN
F 1 "L??fter" H 5800 2900 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 2900 50  0001 C CNN
F 3 "~" H 6650 2900 50  0001 C CNN
	1    6650 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 2900 6900 2900
$Comp
L Device:R 1k3
U 1 1 5F0A75E0
P 6350 3000
F 0 "1k3" V 6350 3650 50  0000 C CNN
F 1 "R" V 6350 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3000 50  0001 C CNN
F 3 "~" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D25
U 1 1 5F0A75E6
P 6650 3000
F 0 "D25" H 6000 3000 50  0000 C CNN
F 1 "Pumpe" H 5800 3000 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 3000 50  0001 C CNN
F 3 "~" H 6650 3000 50  0001 C CNN
	1    6650 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3000 6900 3000
$Comp
L Device:R 1k4
U 1 1 5F0A911C
P 6350 3100
F 0 "1k4" V 6350 3750 50  0000 C CNN
F 1 "R" V 6350 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3100 50  0001 C CNN
F 3 "~" H 6350 3100 50  0001 C CNN
	1    6350 3100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D26
U 1 1 5F0A9122
P 6650 3100
F 0 "D26" H 6000 3100 50  0000 C CNN
F 1 "RGB" H 5850 3100 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 3100 50  0001 C CNN
F 3 "~" H 6650 3100 50  0001 C CNN
	1    6650 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3100 6900 3100
$Comp
L Device:R 1k5
U 1 1 5F0AADA2
P 6350 3200
F 0 "1k5" V 6350 3850 50  0000 C CNN
F 1 "R" V 6350 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3200 50  0001 C CNN
F 3 "~" H 6350 3200 50  0001 C CNN
	1    6350 3200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D27
U 1 1 5F0AADA8
P 6650 3200
F 0 "D27" H 6000 3200 50  0000 C CNN
F 1 "SM" H 5850 3200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 3200 50  0001 C CNN
F 3 "~" H 6650 3200 50  0001 C CNN
	1    6650 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3200 6900 3200
$Comp
L Device:R 1k6
U 1 1 5F0AD0EE
P 6350 3300
F 0 "1k6" V 6350 3950 50  0000 C CNN
F 1 "R" V 6350 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3300 50  0001 C CNN
F 3 "~" H 6350 3300 50  0001 C CNN
	1    6350 3300
	0    1    1    0   
$EndComp
$Comp
L Device:LED D28
U 1 1 5F0AD0F4
P 6650 3300
F 0 "D28" H 6000 3300 50  0000 C CNN
F 1 "LUMI_HIGH" H 5750 3300 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 3300 50  0001 C CNN
F 3 "~" H 6650 3300 50  0001 C CNN
	1    6650 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3300 6900 3300
$Comp
L Device:R 1k7
U 1 1 5F0AF582
P 6350 3400
F 0 "1k7" V 6350 4050 50  0000 C CNN
F 1 "R" V 6350 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3400 50  0001 C CNN
F 3 "~" H 6350 3400 50  0001 C CNN
	1    6350 3400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D29
U 1 1 5F0AF588
P 6650 3400
F 0 "D29" H 6000 3400 50  0000 C CNN
F 1 "LUMI_LOW" H 5750 3400 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 3400 50  0001 C CNN
F 3 "~" H 6650 3400 50  0001 C CNN
	1    6650 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3400 6900 3400
Wire Wire Line
	6900 2700 6900 2800
Wire Wire Line
	6900 2800 6900 2900
Connection ~ 6900 2800
Wire Wire Line
	6900 2900 6900 3000
Connection ~ 6900 2900
Wire Wire Line
	6900 3000 6900 3100
Connection ~ 6900 3000
Wire Wire Line
	6900 3100 6900 3200
Connection ~ 6900 3100
Wire Wire Line
	6900 3200 6900 3300
Connection ~ 6900 3200
Wire Wire Line
	6900 3300 6900 3400
Connection ~ 6900 3300
Wire Wire Line
	6900 3400 6900 3500
Connection ~ 6900 3400
$Comp
L Device:R R58
U 1 1 5F0C963F
P 9550 2700
F 0 "R58" V 9550 3350 50  0000 C CNN
F 1 "1k" V 9550 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 2700 50  0001 C CNN
F 3 "~" H 9550 2700 50  0001 C CNN
	1    9550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D30
U 1 1 5F0C9645
P 9850 2700
F 0 "D30" H 9200 2700 50  0000 C CNN
F 1 "TEMP_HIGH" H 8900 2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9850 2700 50  0001 C CNN
F 3 "~" H 9850 2700 50  0001 C CNN
	1    9850 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2700 10100 2700
$Comp
L Device:R R59
U 1 1 5F0C964C
P 9550 2800
F 0 "R59" V 9550 3450 50  0000 C CNN
F 1 "1k" V 9550 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 2800 50  0001 C CNN
F 3 "~" H 9550 2800 50  0001 C CNN
	1    9550 2800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D31
U 1 1 5F0C9652
P 9850 2800
F 0 "D31" H 9200 2800 50  0000 C CNN
F 1 "TEMP_LOW" H 8900 2800 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9850 2800 50  0001 C CNN
F 3 "~" H 9850 2800 50  0001 C CNN
	1    9850 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2800 10100 2800
$Comp
L Device:R R60
U 1 1 5F0C9659
P 9550 2900
F 0 "R60" V 9550 3550 50  0000 C CNN
F 1 "1k" V 9550 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 2900 50  0001 C CNN
F 3 "~" H 9550 2900 50  0001 C CNN
	1    9550 2900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D32
U 1 1 5F0C965F
P 9850 2900
F 0 "D32" H 9200 2900 50  0000 C CNN
F 1 "HUMI_HIGH" H 8900 2900 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9850 2900 50  0001 C CNN
F 3 "~" H 9850 2900 50  0001 C CNN
	1    9850 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 2900 10100 2900
$Comp
L Device:R R61
U 1 1 5F0C9666
P 9550 3000
F 0 "R61" V 9550 3650 50  0000 C CNN
F 1 "1k" V 9550 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 3000 50  0001 C CNN
F 3 "~" H 9550 3000 50  0001 C CNN
	1    9550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D33
U 1 1 5F0C966C
P 9850 3000
F 0 "D33" H 9200 3000 50  0000 C CNN
F 1 "HUMI_LOW" H 8900 3000 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9850 3000 50  0001 C CNN
F 3 "~" H 9850 3000 50  0001 C CNN
	1    9850 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3000 10100 3000
$Comp
L Device:R R62
U 1 1 5F0C9673
P 9550 3100
F 0 "R62" V 9550 3750 50  0000 C CNN
F 1 "1k" V 9550 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 3100 50  0001 C CNN
F 3 "~" H 9550 3100 50  0001 C CNN
	1    9550 3100
	0    1    1    0   
$EndComp
$Comp
L Device:LED D34
U 1 1 5F0C9679
P 9850 3100
F 0 "D34" H 9200 3100 50  0000 C CNN
F 1 "GNDHUMI_HIGH" H 8850 3100 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9850 3100 50  0001 C CNN
F 3 "~" H 9850 3100 50  0001 C CNN
	1    9850 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 3100 10100 3100
$Comp
L power:GND #PWR0187
U 1 1 5F0CB117
P 10100 3300
F 0 "#PWR0187" H 10100 3050 50  0001 C CNN
F 1 "GND" H 10105 3127 50  0000 C CNN
F 2 "" H 10100 3300 50  0001 C CNN
F 3 "" H 10100 3300 50  0001 C CNN
	1    10100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 2700 10100 2800
Wire Wire Line
	10100 2800 10100 2900
Connection ~ 10100 2800
Wire Wire Line
	10100 2900 10100 3000
Connection ~ 10100 2900
Wire Wire Line
	10100 3000 10100 3100
Connection ~ 10100 3000
Connection ~ 10100 3100
Wire Wire Line
	8600 2700 7900 2700
Wire Wire Line
	7900 2700 7900 3600
Wire Wire Line
	7100 3600 7900 3600
$Comp
L Device:R R63
U 1 1 5F0D8843
P 9550 3200
F 0 "R63" V 9550 3850 50  0000 C CNN
F 1 "1k" V 9550 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9480 3200 50  0001 C CNN
F 3 "~" H 9550 3200 50  0001 C CNN
	1    9550 3200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D35
U 1 1 5F0D8A57
P 9850 3200
F 0 "D35" H 9200 3200 50  0000 C CNN
F 1 "GNDHUMI_LOW" H 8850 3200 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 9850 3200 50  0001 C CNN
F 3 "~" H 9850 3200 50  0001 C CNN
	1    9850 3200
	-1   0    0    1   
$EndComp
Text Label 3850 2900 2    50   ~ 0
SR_Takt-
Text Label 3850 3200 2    50   ~ 0
SR_Latch-
Text Label 2100 2850 0    50   ~ 0
SR_Daten-
Wire Wire Line
	10100 3100 10100 3200
Wire Wire Line
	10000 3200 10100 3200
Connection ~ 10100 3200
Wire Wire Line
	10100 3200 10100 3300
Text Label 1600 3050 2    50   ~ 0
Dbg2-
Text Label 2100 2650 0    50   ~ 0
Dbg1-
Text Label 3350 5650 0    50   ~ 0
Dbg2-
Text Label 5250 5550 0    50   ~ 0
Dbg1-
Text Label 6050 5550 0    50   ~ 0
START-
Text Label 7700 5550 0    50   ~ 0
STOP-
Text Label 8850 5550 0    50   ~ 0
NOTAUS-
Text Label 4300 6150 0    50   ~ 0
RESET-
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5F094AC1
P 4200 6550
F 0 "SW1" V 4154 6680 50  0000 L CNN
F 1 "SW_DIP_x01" V 4245 6680 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 4200 6550 50  0001 C CNN
F 3 "~" H 4200 6550 50  0001 C CNN
	1    4200 6550
	0    1    1    0   
$EndComp
$Comp
L Device:R R53
U 1 1 5F0ACF7F
P 4200 5900
F 0 "R53" H 4270 5946 50  0000 L CNN
F 1 "10k" H 4270 5855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4130 5900 50  0001 C CNN
F 3 "~" H 4200 5900 50  0001 C CNN
	1    4200 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0188
U 1 1 5F0ADA42
P 4200 5650
F 0 "#PWR0188" H 4200 5500 50  0001 C CNN
F 1 "+5V" H 4215 5823 50  0000 C CNN
F 2 "" H 4200 5650 50  0001 C CNN
F 3 "" H 4200 5650 50  0001 C CNN
	1    4200 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0189
U 1 1 5F0AEB1E
P 4200 6950
F 0 "#PWR0189" H 4200 6700 50  0001 C CNN
F 1 "GND" H 4205 6777 50  0000 C CNN
F 2 "" H 4200 6950 50  0001 C CNN
F 3 "" H 4200 6950 50  0001 C CNN
	1    4200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5750 4200 5650
Wire Wire Line
	4200 6150 4300 6150
Wire Wire Line
	4200 6050 4200 6150
Wire Wire Line
	4200 6250 4200 6150
Connection ~ 4200 6150
Wire Wire Line
	4200 6950 4200 6850
$Comp
L Switch:SW_DIP_x01 SW2
U 1 1 5F0C4082
P 5150 6000
F 0 "SW2" V 5104 6130 50  0000 L CNN
F 1 "SW_DIP_x01" V 5195 6130 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 5150 6000 50  0001 C CNN
F 3 "~" H 5150 6000 50  0001 C CNN
	1    5150 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0190
U 1 1 5F0C4385
P 5150 6300
F 0 "#PWR0190" H 5150 6050 50  0001 C CNN
F 1 "GND" H 5155 6127 50  0000 C CNN
F 2 "" H 5150 6300 50  0001 C CNN
F 3 "" H 5150 6300 50  0001 C CNN
	1    5150 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5700 5150 5550
Wire Wire Line
	5150 5550 5250 5550
$Comp
L Switch:SW_DIP_x01 SW3
U 1 1 5F0C755A
P 5950 6000
F 0 "SW3" V 5904 6130 50  0000 L CNN
F 1 "SW_DIP_x01" V 5995 6130 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 5950 6000 50  0001 C CNN
F 3 "~" H 5950 6000 50  0001 C CNN
	1    5950 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0191
U 1 1 5F0C7560
P 5950 6300
F 0 "#PWR0191" H 5950 6050 50  0001 C CNN
F 1 "GND" H 5955 6127 50  0000 C CNN
F 2 "" H 5950 6300 50  0001 C CNN
F 3 "" H 5950 6300 50  0001 C CNN
	1    5950 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5700 5950 5550
$Comp
L Switch:SW_DIP_x01 SW4
U 1 1 5F0CA0EF
P 7600 6000
F 0 "SW4" V 7554 6130 50  0000 L CNN
F 1 "SW_DIP_x01" V 7645 6130 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 7600 6000 50  0001 C CNN
F 3 "~" H 7600 6000 50  0001 C CNN
	1    7600 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0192
U 1 1 5F0CA0F5
P 7600 6300
F 0 "#PWR0192" H 7600 6050 50  0001 C CNN
F 1 "GND" H 7605 6127 50  0000 C CNN
F 2 "" H 7600 6300 50  0001 C CNN
F 3 "" H 7600 6300 50  0001 C CNN
	1    7600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5700 7600 5550
$Comp
L Switch:SW_DIP_x01 SW5
U 1 1 5F0D0684
P 8750 6000
F 0 "SW5" V 8704 6130 50  0000 L CNN
F 1 "SW_DIP_x01" V 8795 6130 50  0000 L CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 8750 6000 50  0001 C CNN
F 3 "~" H 8750 6000 50  0001 C CNN
	1    8750 6000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0193
U 1 1 5F0D068A
P 8750 6300
F 0 "#PWR0193" H 8750 6050 50  0001 C CNN
F 1 "GND" H 8755 6127 50  0000 C CNN
F 2 "" H 8750 6300 50  0001 C CNN
F 3 "" H 8750 6300 50  0001 C CNN
	1    8750 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5700 8750 5550
Wire Wire Line
	8850 5550 8750 5550
Wire Wire Line
	7700 5550 7600 5550
Wire Wire Line
	6050 5550 5950 5550
$Comp
L Device:R 1k1
U 1 1 5F0DAEAF
P 3250 5900
F 0 "1k1" V 3050 5900 50  0000 C CNN
F 1 "R" V 3400 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 5900 50  0001 C CNN
F 3 "~" H 3250 5900 50  0001 C CNN
	1    3250 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0194
U 1 1 5F0DCC7A
P 3250 6550
F 0 "#PWR0194" H 3250 6300 50  0001 C CNN
F 1 "GND" H 3255 6377 50  0000 C CNN
F 2 "" H 3250 6550 50  0001 C CNN
F 3 "" H 3250 6550 50  0001 C CNN
	1    3250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5650 3250 5650
Wire Wire Line
	3250 5650 3250 5750
Wire Wire Line
	3250 6050 3250 6150
Wire Wire Line
	3250 6450 3250 6550
$Comp
L Connector_Generic:Conn_01x04 J14
U 1 1 5F27CB15
P 4450 1800
F 0 "J14" H 4530 1792 50  0000 L CNN
F 1 "Conn_01x04" H 4530 1701 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4450 1800 50  0001 C CNN
F 3 "~" H 4450 1800 50  0001 C CNN
	1    4450 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0196
U 1 1 5F27CB1B
P 4150 2100
F 0 "#PWR0196" H 4150 1850 50  0001 C CNN
F 1 "GND" H 4155 1927 50  0000 C CNN
F 2 "" H 4150 2100 50  0001 C CNN
F 3 "" H 4150 2100 50  0001 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0197
U 1 1 5F27CB21
P 4150 1600
F 0 "#PWR0197" H 4150 1450 50  0001 C CNN
F 1 "+5V" H 4165 1773 50  0000 C CNN
F 2 "" H 4150 1600 50  0001 C CNN
F 3 "" H 4150 1600 50  0001 C CNN
	1    4150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1700 4150 1700
Wire Wire Line
	4150 1700 4150 1600
Wire Wire Line
	4250 1800 4150 1800
Wire Wire Line
	4150 1800 4150 1700
Connection ~ 4150 1700
Wire Wire Line
	4250 2000 4150 2000
Wire Wire Line
	4150 2000 4150 2100
Wire Wire Line
	4250 1900 4150 1900
Wire Wire Line
	4150 1900 4150 2000
Connection ~ 4150 2000
$Comp
L Device:LED D15
U 1 1 5F298CDA
P 6650 2700
F 0 "D15" H 6000 2700 50  0000 C CNN
F 1 "Heizung" H 5800 2700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 6650 2700 50  0001 C CNN
F 3 "~" H 6650 2700 50  0001 C CNN
	1    6650 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D14
U 1 1 5F299038
P 3250 6300
F 0 "D14" H 2600 6300 50  0000 C CNN
F 1 "Heizung" H 2400 6300 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3250 6300 50  0001 C CNN
F 3 "~" H 3250 6300 50  0001 C CNN
	1    3250 6300
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
