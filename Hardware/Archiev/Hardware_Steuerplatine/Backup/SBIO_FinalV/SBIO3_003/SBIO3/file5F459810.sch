EESchema Schematic File Version 4
LIBS:SBIO3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L Connector:USB_B_Mini J7
U 1 1 5F473667
P 1000 2950
F 0 "J7" H 1057 3417 50  0000 C CNN
F 1 "USB_B_Mini" H 1057 3326 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 1150 2900 50  0001 C CNN
F 3 "~" H 1150 2900 50  0001 C CNN
	1    1000 2950
	1    0    0    -1  
$EndComp
$Comp
L SBIO3-rescue:WE_TVS-KiCad_E-Shema_MH U13
U 1 1 5F474D33
P 3050 3000
F 0 "U13" H 3478 3038 39  0000 L CNN
F 1 "WE_TVS" H 3478 2963 39  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 2550 3300 39  0001 C CNN
F 3 "" H 2550 3300 39  0001 C CNN
	1    3050 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite_Coupled L5
U 1 1 5F4764BB
P 4300 3000
F 0 "L5" H 4300 3281 50  0000 C CNN
F 1 "WE-CNSW" H 4300 3190 50  0000 C CNN
F 2 "L_Lib:WE-CNSW" H 4300 3000 50  0001 C CNN
F 3 "~" H 4300 3000 50  0001 C CNN
	1    4300 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F477149
P 1950 950
F 0 "C14" V 1698 950 50  0000 C CNN
F 1 "100nF" V 1789 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1988 800 50  0001 C CNN
F 3 "~" H 1950 950 50  0001 C CNN
	1    1950 950 
	0    1    1    0   
$EndComp
$Comp
L Device:L L3
U 1 1 5F477317
P 2350 950
F 0 "L3" V 2540 950 50  0000 C CNN
F 1 "L" V 2449 950 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2350 950 50  0001 C CNN
F 3 "~" H 2350 950 50  0001 C CNN
	1    2350 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C15
U 1 1 5F477D9B
P 1950 4950
F 0 "C15" V 1698 4950 50  0000 C CNN
F 1 "100nF" V 1789 4950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1988 4800 50  0001 C CNN
F 3 "~" H 1950 4950 50  0001 C CNN
	1    1950 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	900  3350 900  4950
Wire Wire Line
	900  4950 1650 4950
Wire Wire Line
	1800 950  1650 950 
Wire Wire Line
	1650 950  1650 4950
Connection ~ 1650 4950
Wire Wire Line
	1650 4950 1800 4950
$Comp
L Device:L L4
U 1 1 5F47DFF7
P 2750 950
F 0 "L4" V 2940 950 50  0000 C CNN
F 1 "L" V 2849 950 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2750 950 50  0001 C CNN
F 3 "~" H 2750 950 50  0001 C CNN
	1    2750 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C16
U 1 1 5F47E2C9
P 2550 1150
F 0 "C16" H 2435 1104 50  0000 R CNN
F 1 "100nF" H 2435 1195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2588 1000 50  0001 C CNN
F 3 "~" H 2550 1150 50  0001 C CNN
	1    2550 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 950  2550 950 
Wire Wire Line
	2550 1000 2550 950 
Connection ~ 2550 950 
Wire Wire Line
	2550 950  2600 950 
$Comp
L power:GND #PWR0146
U 1 1 5F480249
P 2550 1300
F 0 "#PWR0146" H 2550 1050 50  0001 C CNN
F 1 "GND" H 2555 1127 50  0000 C CNN
F 2 "" H 2550 1300 50  0001 C CNN
F 3 "" H 2550 1300 50  0001 C CNN
	1    2550 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 5F4812DD
P 1000 3350
F 0 "#PWR0147" H 1000 3100 50  0001 C CNN
F 1 "GND" H 1005 3177 50  0000 C CNN
F 2 "" H 1000 3350 50  0001 C CNN
F 3 "" H 1000 3350 50  0001 C CNN
	1    1000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2600 3050 950 
Wire Wire Line
	3050 950  2900 950 
Wire Wire Line
	3050 3400 3050 4950
Wire Wire Line
	2100 4950 3050 4950
Wire Wire Line
	1300 3050 2250 3050
Wire Wire Line
	2250 3050 2250 3550
Wire Wire Line
	2250 3550 2800 3550
Wire Wire Line
	2800 3550 2800 3400
Wire Wire Line
	2800 3550 3300 3550
Wire Wire Line
	3300 3550 3300 3400
Connection ~ 2800 3550
Wire Wire Line
	1300 2950 2250 2950
Wire Wire Line
	2250 2950 2250 2450
Wire Wire Line
	2250 2450 2800 2450
Wire Wire Line
	2800 2450 2800 2600
Wire Wire Line
	2800 2450 3300 2450
Wire Wire Line
	3300 2450 3300 2600
Connection ~ 2800 2450
Wire Wire Line
	3300 2450 3850 2450
Wire Wire Line
	3850 2450 3850 2900
Wire Wire Line
	3850 2900 4100 2900
Connection ~ 3300 2450
Wire Wire Line
	3300 3550 3850 3550
Wire Wire Line
	3850 3550 3850 3100
Wire Wire Line
	3850 3100 4100 3100
Connection ~ 3300 3550
Wire Wire Line
	4500 2900 5000 2900
Wire Wire Line
	5000 2900 5000 2950
Wire Wire Line
	5000 3050 5000 3100
Wire Wire Line
	5000 3100 4500 3100
$Comp
L power:GND #PWR0148
U 1 1 5F48E56B
P 3050 5050
F 0 "#PWR0148" H 3050 4800 50  0001 C CNN
F 1 "GND" H 3055 4877 50  0000 C CNN
F 2 "" H 3050 5050 50  0001 C CNN
F 3 "" H 3050 5050 50  0001 C CNN
	1    3050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 5050 3050 4950
Connection ~ 3050 4950
Connection ~ 3050 950 
Connection ~ 5350 950 
$Comp
L Device:LED D18
U 1 1 5F4A2116
P 7350 1350
F 0 "D18" V 7389 1233 50  0000 R CNN
F 1 "LED" V 7298 1233 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7350 1350 50  0001 C CNN
F 3 "~" H 7350 1350 50  0001 C CNN
	1    7350 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R43
U 1 1 5F4A2C7C
P 7350 1750
F 0 "R43" H 7420 1796 50  0000 L CNN
F 1 "1k" H 7420 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7280 1750 50  0001 C CNN
F 3 "~" H 7350 1750 50  0001 C CNN
	1    7350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R44
U 1 1 5F4A3715
P 7750 1750
F 0 "R44" H 7820 1796 50  0000 L CNN
F 1 "1k" H 7820 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7680 1750 50  0001 C CNN
F 3 "~" H 7750 1750 50  0001 C CNN
	1    7750 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D19
U 1 1 5F4A498C
P 7750 1350
F 0 "D19" V 7789 1233 50  0000 R CNN
F 1 "LED" V 7698 1233 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7750 1350 50  0001 C CNN
F 3 "~" H 7750 1350 50  0001 C CNN
	1    7750 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 950  7350 1200
Wire Wire Line
	7350 950  7750 950 
Wire Wire Line
	7750 950  7750 1200
Connection ~ 7350 950 
Wire Wire Line
	7350 1500 7350 1600
Wire Wire Line
	7750 1500 7750 1600
$Comp
L Interface_UART:MAX3072E U15
U 1 1 5F4B0CEF
P 8450 2800
F 0 "U15" H 8150 3400 50  0000 C CNN
F 1 "MAX3072E" H 8150 3300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9500 2450 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3070E-MAX3079E.pdf" H 8450 2800 50  0001 C CNN
	1    8450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2700 7250 2700
Wire Wire Line
	7250 2900 8050 2900
Wire Wire Line
	8450 3200 8450 4950
Wire Wire Line
	8450 2400 8450 950 
Wire Wire Line
	8450 950  7750 950 
Connection ~ 7750 950 
$Comp
L Interface_UART:MAX3072E U16
U 1 1 5F4BF20E
P 10050 2800
F 0 "U16" H 9750 3400 50  0000 C CNN
F 1 "MAX3072E" H 9750 3300 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 11100 2450 50  0001 C CIN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3070E-MAX3079E.pdf" H 10050 2800 50  0001 C CNN
	1    10050 2800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R45
U 1 1 5F4C130E
P 9150 2800
F 0 "R45" H 9220 2846 50  0000 L CNN
F 1 "120R" H 9220 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9080 2800 50  0001 C CNN
F 3 "~" H 9150 2800 50  0001 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2700 9000 2700
Wire Wire Line
	9000 2700 9000 2600
Wire Wire Line
	9000 2600 9150 2600
Wire Wire Line
	9150 2600 9150 2650
Wire Wire Line
	9500 2600 9500 2700
Wire Wire Line
	9500 2700 9650 2700
Connection ~ 9150 2600
Wire Wire Line
	8850 2900 9000 2900
Wire Wire Line
	9000 2900 9000 3000
Wire Wire Line
	9000 3000 9150 3000
Wire Wire Line
	9150 3000 9150 2950
Wire Wire Line
	9500 3000 9500 2900
Wire Wire Line
	9500 2900 9650 2900
Connection ~ 9150 3000
Wire Wire Line
	8450 4950 10050 4950
Wire Wire Line
	10050 4950 10050 3200
Connection ~ 8450 4950
Wire Wire Line
	10450 2700 10550 2700
Wire Wire Line
	10550 2700 10550 2800
Wire Wire Line
	10550 2900 10450 2900
Wire Wire Line
	10550 2800 10650 2800
Connection ~ 10550 2800
Wire Wire Line
	10550 2800 10550 2900
Wire Wire Line
	10450 2600 10650 2600
Wire Wire Line
	10450 3000 10650 3000
Text GLabel 10650 2600 2    50   Input ~ 0
UART_RXD
Text GLabel 10650 2800 2    50   Input ~ 0
UART_DIR
Text GLabel 10650 3000 2    50   Input ~ 0
UART_TXD
Wire Wire Line
	2100 950  2150 950 
Wire Wire Line
	2150 950  2150 2750
Connection ~ 2150 950 
Wire Wire Line
	2150 950  2200 950 
Wire Wire Line
	1300 2750 2150 2750
$Comp
L SBIO3-rescue:FT232RL_2-USB-RS485 U14
U 1 1 5F579D47
P 6300 2850
F 0 "U14" H 6300 4007 39  0000 C CNN
F 1 "FT232RL_2" H 6300 3932 39  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 6350 3850 39  0001 C CNN
F 3 "" H 6350 3850 39  0001 C CNN
	1    6300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 950  6200 950 
Wire Wire Line
	3050 4950 5300 4950
Wire Wire Line
	7250 2700 7250 2800
Wire Wire Line
	7250 2800 7100 2800
Connection ~ 7250 2800
Wire Wire Line
	7250 2800 7250 2900
Wire Wire Line
	7100 2700 7150 2700
Wire Wire Line
	7150 2700 7150 2600
Wire Wire Line
	7150 2600 8050 2600
Wire Wire Line
	7100 2900 7150 2900
Wire Wire Line
	7150 2900 7150 3000
Wire Wire Line
	7150 3000 8050 3000
Wire Wire Line
	7350 2100 7100 2100
Wire Wire Line
	7350 1900 7350 2100
Wire Wire Line
	7750 2200 7100 2200
Wire Wire Line
	7750 1900 7750 2200
Wire Wire Line
	3050 950  3850 950 
Wire Wire Line
	5350 2150 5500 2150
Wire Wire Line
	5350 950  5350 2150
Wire Wire Line
	5850 3850 5850 4950
Connection ~ 5850 4950
Wire Wire Line
	5850 4950 6100 4950
Wire Wire Line
	6100 3850 6100 4950
Connection ~ 6100 4950
Wire Wire Line
	6100 4950 6300 4950
Wire Wire Line
	6300 3850 6300 4950
Connection ~ 6300 4950
Wire Wire Line
	6400 3850 6400 4950
Wire Wire Line
	6300 4950 6400 4950
Connection ~ 6400 4950
Wire Wire Line
	6400 4950 6500 4950
Wire Wire Line
	6500 3850 6500 4950
Connection ~ 6500 4950
Wire Wire Line
	6500 4950 7200 4950
$Comp
L Device:C C17
U 1 1 5F5A3B70
P 5300 3700
F 0 "C17" H 5185 3654 50  0000 R CNN
F 1 "100nF" H 5185 3745 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 3550 50  0001 C CNN
F 3 "~" H 5300 3700 50  0001 C CNN
	1    5300 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3250 5300 3250
Wire Wire Line
	5300 3250 5300 3550
Wire Wire Line
	5300 3850 5300 4950
Connection ~ 5300 4950
Wire Wire Line
	5300 4950 5850 4950
Wire Wire Line
	5000 2950 5500 2950
Wire Wire Line
	5000 3050 5500 3050
Wire Wire Line
	7100 3400 7200 3400
Wire Wire Line
	7200 3400 7200 3500
Connection ~ 7200 4950
Wire Wire Line
	7200 4950 8450 4950
Wire Wire Line
	7100 3500 7200 3500
Connection ~ 7200 3500
Wire Wire Line
	7200 3500 7200 3600
Wire Wire Line
	7100 3600 7200 3600
Connection ~ 7200 3600
Wire Wire Line
	7200 3600 7200 4950
Wire Wire Line
	7100 3200 7200 3200
Wire Wire Line
	7200 3200 7200 3400
Connection ~ 7200 3400
Wire Wire Line
	6200 1850 6200 950 
Connection ~ 6200 950 
Wire Wire Line
	6200 950  6400 950 
Wire Wire Line
	6400 1850 6400 950 
Connection ~ 6400 950 
Wire Wire Line
	6400 950  7350 950 
$Comp
L power:+5V #PWR02
U 1 1 5F00CDE5
P 10050 2400
F 0 "#PWR02" H 10050 2250 50  0001 C CNN
F 1 "+5V" H 10065 2573 50  0000 C CNN
F 2 "" H 10050 2400 50  0001 C CNN
F 3 "" H 10050 2400 50  0001 C CNN
	1    10050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 2600 9500 2600
Wire Wire Line
	9500 2600 9500 1600
Connection ~ 9500 2600
Wire Wire Line
	9150 3000 9300 3000
Wire Wire Line
	9300 1550 9300 1600
Connection ~ 9300 3000
Wire Wire Line
	9300 3000 9500 3000
$Comp
L power:GND #PWR01
U 1 1 5F016A8E
P 9400 1650
F 0 "#PWR01" H 9400 1400 50  0001 C CNN
F 1 "GND" H 9405 1477 50  0000 C CNN
F 2 "" H 9400 1650 50  0001 C CNN
F 3 "" H 9400 1650 50  0001 C CNN
	1    9400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1550 9400 1650
$Comp
L Device:R R46
U 1 1 5F03129D
P 3650 6050
F 0 "R46" H 3720 6096 50  0000 L CNN
F 1 "10k" H 3720 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 6050 50  0001 C CNN
F 3 "~" H 3650 6050 50  0001 C CNN
	1    3650 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:C C21
U 1 1 5F0316D5
P 1600 7150
F 0 "C21" H 1485 7104 50  0000 R CNN
F 1 "100nF" H 1485 7195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 7000 50  0001 C CNN
F 3 "~" H 1600 7150 50  0001 C CNN
	1    1600 7150
	-1   0    0    1   
$EndComp
$Comp
L Device:C C20
U 1 1 5F0320CE
P 1300 7150
F 0 "C20" H 1550 7100 50  0000 R CNN
F 1 "100nF" H 1650 7200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1338 7000 50  0001 C CNN
F 3 "~" H 1300 7150 50  0001 C CNN
	1    1300 7150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5F0328DD
P 1600 7400
F 0 "#PWR0152" H 1600 7150 50  0001 C CNN
F 1 "GND" H 1605 7227 50  0000 C CNN
F 2 "" H 1600 7400 50  0001 C CNN
F 3 "" H 1600 7400 50  0001 C CNN
	1    1600 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0153
U 1 1 5F033101
P 1300 7400
F 0 "#PWR0153" H 1300 7150 50  0001 C CNN
F 1 "GND" H 1305 7227 50  0000 C CNN
F 2 "" H 1300 7400 50  0001 C CNN
F 3 "" H 1300 7400 50  0001 C CNN
	1    1300 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6850 1600 6850
Wire Wire Line
	1600 6850 1600 7000
Wire Wire Line
	1600 7300 1600 7400
Wire Wire Line
	1850 6750 1300 6750
Wire Wire Line
	1300 6750 1300 7000
Text GLabel 1250 6750 0    50   Input ~ 0
GND_HUMI1
Text GLabel 1250 6850 0    50   Input ~ 0
GND_HUMI2
Wire Wire Line
	1300 6750 1250 6750
Connection ~ 1300 6750
Wire Wire Line
	1250 6850 1600 6850
Connection ~ 1600 6850
Wire Wire Line
	1300 7300 1300 7400
$Comp
L power:GND #PWR0155
U 1 1 5F053D8B
P 2600 6950
F 0 "#PWR0155" H 2600 6700 50  0001 C CNN
F 1 "GND" H 2605 6777 50  0000 C CNN
F 2 "" H 2600 6950 50  0001 C CNN
F 3 "" H 2600 6950 50  0001 C CNN
	1    2600 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R47
U 1 1 5F06EEFE
P 3650 6850
F 0 "R47" H 3720 6896 50  0000 L CNN
F 1 "10k" H 3720 6805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 6850 50  0001 C CNN
F 3 "~" H 3650 6850 50  0001 C CNN
	1    3650 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R49
U 1 1 5F06F38D
P 4350 6850
F 0 "R49" H 4420 6896 50  0000 L CNN
F 1 "10k" H 4420 6805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4280 6850 50  0001 C CNN
F 3 "~" H 4350 6850 50  0001 C CNN
	1    4350 6850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R48
U 1 1 5F06FB92
P 4350 6050
F 0 "R48" H 4420 6096 50  0000 L CNN
F 1 "10k" H 4420 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4280 6050 50  0001 C CNN
F 3 "~" H 4350 6050 50  0001 C CNN
	1    4350 6050
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0156
U 1 1 5F0701B0
P 3650 6650
F 0 "#PWR0156" H 3650 6500 50  0001 C CNN
F 1 "+3V3" H 3665 6823 50  0000 C CNN
F 2 "" H 3650 6650 50  0001 C CNN
F 3 "" H 3650 6650 50  0001 C CNN
	1    3650 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0157
U 1 1 5F070EFC
P 3650 5850
F 0 "#PWR0157" H 3650 5700 50  0001 C CNN
F 1 "+3V3" H 3665 6023 50  0000 C CNN
F 2 "" H 3650 5850 50  0001 C CNN
F 3 "" H 3650 5850 50  0001 C CNN
	1    3650 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0158
U 1 1 5F071471
P 4350 5850
F 0 "#PWR0158" H 4350 5700 50  0001 C CNN
F 1 "+5V" H 4365 6023 50  0000 C CNN
F 2 "" H 4350 5850 50  0001 C CNN
F 3 "" H 4350 5850 50  0001 C CNN
	1    4350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0159
U 1 1 5F07205F
P 4350 6650
F 0 "#PWR0159" H 4350 6500 50  0001 C CNN
F 1 "+5V" H 4365 6823 50  0000 C CNN
F 2 "" H 4350 6650 50  0001 C CNN
F 3 "" H 4350 6650 50  0001 C CNN
	1    4350 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5850 3650 5900
Wire Wire Line
	4350 5850 4350 5900
Wire Wire Line
	4350 6200 4350 6250
Wire Wire Line
	4350 6250 4200 6250
Wire Wire Line
	4000 5950 4000 5900
Wire Wire Line
	4000 5900 3650 5900
Connection ~ 3650 5900
Wire Wire Line
	3650 6200 3650 6250
Wire Wire Line
	3650 6250 3800 6250
Wire Wire Line
	3650 6650 3650 6700
Wire Wire Line
	4000 6750 4000 6700
Wire Wire Line
	4000 6700 3650 6700
Connection ~ 3650 6700
Wire Wire Line
	4350 6650 4350 6700
Wire Wire Line
	4350 7000 4350 7050
Wire Wire Line
	4350 7050 4200 7050
Wire Wire Line
	3800 7050 3650 7050
Wire Wire Line
	3650 7050 3650 7000
Wire Wire Line
	3650 7050 2900 7050
Connection ~ 3650 7050
Wire Wire Line
	3650 6250 2900 6250
Connection ~ 3650 6250
$Comp
L power:+3V3 #PWR0160
U 1 1 5F0B9BF7
P 1500 6400
F 0 "#PWR0160" H 1500 6250 50  0001 C CNN
F 1 "+3V3" H 1515 6573 50  0000 C CNN
F 2 "" H 1500 6400 50  0001 C CNN
F 3 "" H 1500 6400 50  0001 C CNN
	1    1500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6400 1500 6650
Wire Wire Line
	1500 6650 1850 6650
Wire Wire Line
	4350 6250 4650 6250
Connection ~ 4350 6250
Wire Wire Line
	4350 7050 4650 7050
Connection ~ 4350 7050
Text GLabel 4650 6250 2    50   Input ~ 0
I²C_SCL
Text GLabel 4650 7050 2    50   Input ~ 0
I²C_SDA
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J9
U 1 1 5F0E1526
P 9400 1350
F 0 "J9" V 9496 1162 50  0000 R CNN
F 1 "RS485" V 9405 1162 50  0000 R CNN
F 2 "Conn_Lib:Wanne_6Pol" H 9400 1350 50  0001 C CNN
F 3 "~" H 9400 1350 50  0001 C CNN
	1    9400 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 5F0E3384
P 9400 950
F 0 "#PWR0162" H 9400 700 50  0001 C CNN
F 1 "GND" H 9405 777 50  0000 C CNN
F 2 "" H 9400 950 50  0001 C CNN
F 3 "" H 9400 950 50  0001 C CNN
	1    9400 950 
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 1600 9150 1600
Wire Wire Line
	9150 1600 9150 1000
Wire Wire Line
	9150 1000 9300 1000
Wire Wire Line
	9300 1000 9300 1050
Connection ~ 9300 1600
Wire Wire Line
	9300 1600 9300 3000
Wire Wire Line
	9400 1050 9400 950 
Wire Wire Line
	9500 1600 9900 1600
Wire Wire Line
	9900 1600 9900 1000
Wire Wire Line
	9900 1000 9500 1000
Wire Wire Line
	9500 1000 9500 1050
Connection ~ 9500 1600
Wire Wire Line
	9500 1600 9500 1550
$Comp
L Device:C C25
U 1 1 5F03F7D1
P 4700 4050
F 0 "C25" H 4950 4000 50  0000 R CNN
F 1 "100nF" H 5050 4100 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4738 3900 50  0001 C CNN
F 3 "~" H 4700 4050 50  0001 C CNN
	1    4700 4050
	-1   0    0    1   
$EndComp
$Comp
L power:+5C #PWR0173
U 1 1 5F041D8D
P 3850 850
F 0 "#PWR0173" H 3850 700 50  0001 C CNN
F 1 "+5C" H 3865 1023 50  0000 C CNN
F 2 "" H 3850 850 50  0001 C CNN
F 3 "" H 3850 850 50  0001 C CNN
	1    3850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 850  3850 950 
Connection ~ 3850 950 
Wire Wire Line
	3850 950  5350 950 
$Comp
L power:+5C #PWR0174
U 1 1 5F04B894
P 4700 3900
F 0 "#PWR0174" H 4700 3750 50  0001 C CNN
F 1 "+5C" H 4715 4073 50  0000 C CNN
F 2 "" H 4700 3900 50  0001 C CNN
F 3 "" H 4700 3900 50  0001 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0175
U 1 1 5F04C211
P 4700 4200
F 0 "#PWR0175" H 4700 3950 50  0001 C CNN
F 1 "GND" H 4705 4027 50  0000 C CNN
F 2 "" H 4700 4200 50  0001 C CNN
F 3 "" H 4700 4200 50  0001 C CNN
	1    4700 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 5F04DE7B
P 10700 4250
F 0 "C26" H 10950 4200 50  0000 R CNN
F 1 "100nF" H 11050 4300 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10738 4100 50  0001 C CNN
F 3 "~" H 10700 4250 50  0001 C CNN
	1    10700 4250
	-1   0    0    1   
$EndComp
$Comp
L power:+5C #PWR0176
U 1 1 5F04DE81
P 10700 4100
F 0 "#PWR0176" H 10700 3950 50  0001 C CNN
F 1 "+5C" H 10715 4273 50  0000 C CNN
F 2 "" H 10700 4100 50  0001 C CNN
F 3 "" H 10700 4100 50  0001 C CNN
	1    10700 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 5F04DE87
P 10700 4400
F 0 "#PWR0177" H 10700 4150 50  0001 C CNN
F 1 "GND" H 10705 4227 50  0000 C CNN
F 2 "" H 10700 4400 50  0001 C CNN
F 3 "" H 10700 4400 50  0001 C CNN
	1    10700 4400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BS170F Q1
U 1 1 5F5D1400
P 4000 6150
F 0 "Q1" V 4251 6150 50  0000 C CNN
F 1 "BS170F" V 4342 6150 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 6075 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/BS170F.pdf" H 4000 6150 50  0001 L CNN
	1    4000 6150
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BS170F Q2
U 1 1 5F5D5D2C
P 4000 6950
F 0 "Q2" V 4251 6950 50  0000 C CNN
F 1 "BS170F" V 4342 6950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 6875 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/BS170F.pdf" H 4000 6950 50  0001 L CNN
	1    4000 6950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J5
U 1 1 5F6132FE
P 2050 6750
F 0 "J5" H 2100 7067 50  0000 C CNN
F 1 "Conn_02x03_Top_Bottom" H 2100 6976 50  0000 C CNN
F 2 "Conn_Lib:Wanne_6Pol" H 2050 6750 50  0001 C CNN
F 3 "~" H 2050 6750 50  0001 C CNN
	1    2050 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6750 2900 6750
Wire Wire Line
	2900 6750 2900 7050
Wire Wire Line
	2900 6250 2900 6650
Wire Wire Line
	2350 6650 2900 6650
Wire Wire Line
	2350 6850 2600 6850
Wire Wire Line
	2600 6850 2600 6950
$EndSCHEMATC