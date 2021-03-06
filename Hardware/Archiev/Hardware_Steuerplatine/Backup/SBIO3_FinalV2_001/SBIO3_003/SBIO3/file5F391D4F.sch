EESchema Schematic File Version 4
LIBS:SBIO3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Connector:Conn_01x02_Female J6
U 1 1 5F391EE0
P 1400 2600
F 0 "J6" H 1292 2275 50  0000 C CNN
F 1 "+12V" H 1292 2366 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G_1x02_P5.00mm_Horizontal" H 1400 2600 50  0001 C CNN
F 3 "~" H 1400 2600 50  0001 C CNN
	1    1400 2600
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Current:ZXCT1109 U11
U 1 1 5F395BE6
P 3800 2100
F 0 "U11" H 4080 2146 50  0000 L CNN
F 1 "ZXCT1109" H 4080 2055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3800 2100 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ZXCT1107_10.pdf" H 3750 2100 50  0001 C CNN
	1    3800 2100
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAS40-04 D13
U 1 1 5F396949
P 4350 4250
F 0 "D13" V 4600 4650 50  0000 L CNN
F 1 "BAS40-04" V 4500 4550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 4550 50  0001 L CNN
F 3 "http://www.vishay.com/docs/85701/bas40v.pdf" H 4230 4350 50  0001 C CNN
	1    4350 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_Shunt1
U 1 1 5F399656
P 3800 1650
F 0 "R_Shunt1" V 4007 1650 50  0000 C CNN
F 1 "125mOhm" V 3916 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 3730 1650 50  0001 C CNN
F 3 "~" H 3800 1650 50  0001 C CNN
	1    3800 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L2
U 1 1 5F39B060
P 8900 2250
F 0 "L2" V 9090 2250 50  0000 C CNN
F 1 "L" V 8999 2250 50  0000 C CNN
F 2 "L_Lib:MAX5035_100uH_Coil" H 8900 2250 50  0001 C CNN
F 3 "~" H 8900 2250 50  0001 C CNN
	1    8900 2250
	0    -1   -1   0   
$EndComp
$Comp
L SBIO3-rescue:MAX_5035_BUSA-KiCad_E-Shema_MH U12
U 1 1 5F39B684
P 7700 2250
F 0 "U12" H 7700 3165 50  0000 C CNN
F 1 "MAX_5035_BUSA" H 7700 3074 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 7700 3600 50  0001 C CNN
F 3 "" H 7700 3600 50  0001 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5F39F3A8
P 6600 1900
F 0 "R41" H 6670 1946 50  0000 L CNN
F 1 "510k" H 6670 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6530 1900 50  0001 C CNN
F 3 "~" H 6600 1900 50  0001 C CNN
	1    6600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 5F39FC4D
P 6600 2550
F 0 "R42" H 6670 2596 50  0000 L CNN
F 1 "510k" H 6670 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6530 2550 50  0001 C CNN
F 3 "~" H 6600 2550 50  0001 C CNN
	1    6600 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F3A0534
P 7000 3100
F 0 "C11" H 7115 3146 50  0000 L CNN
F 1 "100nF" H 7115 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7038 2950 50  0001 C CNN
F 3 "~" H 7000 3100 50  0001 C CNN
	1    7000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5F3A11E4
P 5300 1900
F 0 "R39" H 5370 1946 50  0000 L CNN
F 1 "470k" H 5370 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5230 1900 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5F3A1941
P 5300 2550
F 0 "R40" H 5370 2596 50  0000 L CNN
F 1 "120k" H 5370 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5230 2550 50  0001 C CNN
F 3 "~" H 5300 2550 50  0001 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1650 6600 1650
Wire Wire Line
	6600 1650 6600 1750
Wire Wire Line
	6600 2400 6600 2250
Wire Wire Line
	7100 2250 6600 2250
Connection ~ 6600 2250
Wire Wire Line
	6600 2250 6600 2050
Wire Wire Line
	7000 2950 7000 2850
Wire Wire Line
	7000 2850 7100 2850
$Comp
L power:GND #PWR0139
U 1 1 5F3A4EB3
P 7700 3500
F 0 "#PWR0139" H 7700 3250 50  0001 C CNN
F 1 "GND" H 7705 3327 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3250 7000 3400
Wire Wire Line
	7000 3400 7550 3400
Wire Wire Line
	7700 3400 7700 3500
Wire Wire Line
	7550 3100 7550 3400
Connection ~ 7550 3400
Wire Wire Line
	7550 3400 7700 3400
Wire Wire Line
	7850 3100 7850 3400
Wire Wire Line
	7850 3400 7700 3400
Connection ~ 7700 3400
Wire Wire Line
	6600 3400 7000 3400
Wire Wire Line
	6600 2700 6600 3400
Connection ~ 7000 3400
Wire Wire Line
	6600 1650 5300 1650
Wire Wire Line
	5300 1650 5300 1750
Connection ~ 6600 1650
Wire Wire Line
	5300 2700 5300 3400
Connection ~ 6600 3400
$Comp
L Device:C C10
U 1 1 5F3A7EE1
P 6000 2550
F 0 "C10" H 6115 2596 50  0000 L CNN
F 1 "10nF" H 6115 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6038 2400 50  0001 C CNN
F 3 "~" H 6000 2550 50  0001 C CNN
	1    6000 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1650 5300 1650
Connection ~ 5300 1650
Wire Wire Line
	4850 2400 4850 3400
Wire Wire Line
	4850 3400 5300 3400
Connection ~ 5300 3400
Wire Wire Line
	3600 1650 3650 1650
Wire Wire Line
	4000 1650 3950 1650
Connection ~ 4000 1650
Wire Wire Line
	3200 2100 3200 1650
Wire Wire Line
	3200 1650 3600 1650
Connection ~ 3600 1650
Wire Wire Line
	2750 2600 2750 3400
Wire Wire Line
	2750 3400 3200 3400
$Comp
L Device:R R38
U 1 1 5F3B62F3
P 3800 2700
F 0 "R38" H 3870 2746 50  0000 L CNN
F 1 "5k" H 3870 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3730 2700 50  0001 C CNN
F 3 "~" H 3800 2700 50  0001 C CNN
	1    3800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2850 3800 3400
Connection ~ 3800 3400
Connection ~ 4850 1650
Connection ~ 4850 3400
$Comp
L Diode:BAS40-04 D16
U 1 1 5F3C9B96
P 6000 4250
F 0 "D16" V 6300 4700 50  0000 L CNN
F 1 "BAS40-04" V 6150 4550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5750 4550 50  0001 L CNN
F 3 "http://www.vishay.com/docs/85701/bas40v.pdf" H 5880 4350 50  0001 C CNN
	1    6000 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 2450 4650 4250
Wire Wire Line
	4650 4250 4450 4250
$Comp
L power:GND #PWR0140
U 1 1 5F3D3097
P 4250 4550
F 0 "#PWR0140" H 4250 4300 50  0001 C CNN
F 1 "GND" H 4255 4377 50  0000 C CNN
F 2 "" H 4250 4550 50  0001 C CNN
F 3 "" H 4250 4550 50  0001 C CNN
	1    4250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2200 6250 4250
Wire Wire Line
	6250 4250 6100 4250
$Comp
L power:GND #PWR0141
U 1 1 5F3D5A71
P 5900 4550
F 0 "#PWR0141" H 5900 4300 50  0001 C CNN
F 1 "GND" H 5905 4377 50  0000 C CNN
F 2 "" H 5900 4550 50  0001 C CNN
F 3 "" H 5900 4550 50  0001 C CNN
	1    5900 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F3D644D
P 8400 1950
F 0 "C12" H 8515 1996 50  0000 L CNN
F 1 "100nF" H 8515 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8438 1800 50  0001 C CNN
F 3 "~" H 8400 1950 50  0001 C CNN
	1    8400 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D17
U 1 1 5F3D8DE7
P 8550 2500
F 0 "D17" V 8504 2568 50  0000 L CNN
F 1 "D_Schottky_Small" V 8595 2568 50  0000 L CNN
F 2 "D_Lib:MAX5035_50SQ100" V 8550 2500 50  0001 C CNN
F 3 "~" V 8550 2500 50  0001 C CNN
	1    8550 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1650 8400 1650
Wire Wire Line
	8400 1650 8400 1800
Wire Wire Line
	8300 2250 8400 2250
Wire Wire Line
	8400 2250 8400 2100
Wire Wire Line
	8750 2250 8550 2250
Connection ~ 8400 2250
Wire Wire Line
	8550 2400 8550 2250
Connection ~ 8550 2250
Wire Wire Line
	8550 2250 8400 2250
Wire Wire Line
	7850 3400 8550 3400
Wire Wire Line
	8550 3400 8550 2600
Connection ~ 7850 3400
Wire Wire Line
	9300 2250 9050 2250
Wire Wire Line
	9800 2600 9800 2250
Wire Wire Line
	9800 2250 9300 2250
Connection ~ 9300 2250
Wire Wire Line
	9800 2900 9800 3400
Wire Wire Line
	9800 3400 8550 3400
Connection ~ 8550 3400
Wire Wire Line
	3200 2400 3200 3400
Connection ~ 3200 3400
Wire Wire Line
	3200 3400 3800 3400
$Comp
L power:+5V #PWR0142
U 1 1 5F3EAE17
P 9800 2150
F 0 "#PWR0142" H 9800 2000 50  0001 C CNN
F 1 "+5V" H 9815 2323 50  0000 C CNN
F 2 "" H 9800 2150 50  0001 C CNN
F 3 "" H 9800 2150 50  0001 C CNN
	1    9800 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0143
U 1 1 5F3EC3A8
P 4450 1500
F 0 "#PWR0143" H 4450 1350 50  0001 C CNN
F 1 "+12V" H 4465 1673 50  0000 C CNN
F 2 "" H 4450 1500 50  0001 C CNN
F 3 "" H 4450 1500 50  0001 C CNN
	1    4450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1650 4450 1500
Connection ~ 4450 1650
Wire Wire Line
	4450 1650 4850 1650
Wire Wire Line
	9800 2250 9800 2150
Connection ~ 9800 2250
Wire Wire Line
	9300 2850 8300 2850
Wire Wire Line
	9300 2250 9300 2850
$Comp
L power:+5V #PWR0144
U 1 1 5F3F3CCE
P 4250 3950
F 0 "#PWR0144" H 4250 3800 50  0001 C CNN
F 1 "+5V" H 4265 4123 50  0000 C CNN
F 2 "" H 4250 3950 50  0001 C CNN
F 3 "" H 4250 3950 50  0001 C CNN
	1    4250 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0145
U 1 1 5F3F4781
P 5900 3950
F 0 "#PWR0145" H 5900 3800 50  0001 C CNN
F 1 "+5V" H 5915 4123 50  0000 C CNN
F 2 "" H 5900 3950 50  0001 C CNN
F 3 "" H 5900 3950 50  0001 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D12
U 1 1 5F3F6CEA
P 3800 1250
F 0 "D12" H 3800 1466 50  0000 C CNN
F 1 "1N4148" H 3800 1375 50  0000 C CNN
F 2 "D_Lib:1N4148" H 3800 1075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3800 1250 50  0001 C CNN
	1    3800 1250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5F3F83AD
P 3800 850
F 0 "D3" H 3800 634 50  0000 C CNN
F 1 "1N4148" H 3800 725 50  0000 C CNN
F 2 "D_Lib:1N4148" H 3800 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 3800 850 50  0001 C CNN
	1    3800 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 1650 4000 1250
Wire Wire Line
	4000 1250 3950 1250
Wire Wire Line
	3950 850  4000 850 
Wire Wire Line
	4000 850  4000 1250
Connection ~ 4000 1250
Wire Wire Line
	3650 850  3600 850 
Wire Wire Line
	3600 850  3600 1250
Wire Wire Line
	3650 1250 3600 1250
Connection ~ 3600 1250
Wire Wire Line
	3600 1250 3600 1650
Text GLabel 4650 4250 2    50   Input ~ 0
Current_Controle
Text GLabel 6250 4250 2    50   Input ~ 0
Voltage_Controle
$Comp
L Device:C C18
U 1 1 5F0132AF
P 2850 6250
F 0 "C18" H 2965 6296 50  0000 L CNN
F 1 "100nF" H 2965 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 6100 50  0001 C CNN
F 3 "~" H 2850 6250 50  0001 C CNN
	1    2850 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 5F0141FC
P 3300 6500
F 0 "#PWR0149" H 3300 6250 50  0001 C CNN
F 1 "GND" H 3305 6327 50  0000 C CNN
F 2 "" H 3300 6500 50  0001 C CNN
F 3 "" H 3300 6500 50  0001 C CNN
	1    3300 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0150
U 1 1 5F0148D2
P 2850 5950
F 0 "#PWR0150" H 2850 5800 50  0001 C CNN
F 1 "+5V" H 2865 6123 50  0000 C CNN
F 2 "" H 2850 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0151
U 1 1 5F01590D
P 3750 5950
F 0 "#PWR0151" H 3750 5800 50  0001 C CNN
F 1 "+3V3" H 3765 6123 50  0000 C CNN
F 2 "" H 3750 5950 50  0001 C CNN
F 3 "" H 3750 5950 50  0001 C CNN
	1    3750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5950 2850 6000
Wire Wire Line
	3000 6000 2850 6000
Connection ~ 2850 6000
Wire Wire Line
	2850 6000 2850 6100
Wire Wire Line
	3750 5950 3750 6000
Wire Wire Line
	3600 6000 3750 6000
Connection ~ 3750 6000
Wire Wire Line
	3750 6000 3750 6100
Wire Wire Line
	3300 6300 3300 6450
Wire Wire Line
	2850 6400 2850 6450
Wire Wire Line
	2850 6450 3300 6450
Connection ~ 3300 6450
Wire Wire Line
	3300 6450 3300 6500
Wire Wire Line
	3750 6400 3750 6450
Wire Wire Line
	3750 6450 3300 6450
Wire Wire Line
	4000 1650 4450 1650
Wire Wire Line
	4000 1650 4000 1900
Wire Wire Line
	3600 1650 3600 1900
$Comp
L Device:C C8
U 1 1 5F3BDE13
P 4350 2700
F 0 "C8" H 4465 2746 50  0000 L CNN
F 1 "10nF" H 4465 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 2550 50  0001 C CNN
F 3 "~" H 4350 2700 50  0001 C CNN
	1    4350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3400 4350 3400
Wire Wire Line
	3800 2300 3800 2450
$Comp
L Device:R R50
U 1 1 5F06A15D
P 4050 2450
F 0 "R50" H 4120 2496 50  0000 L CNN
F 1 "100k" H 4120 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3980 2450 50  0001 C CNN
F 3 "~" H 4050 2450 50  0001 C CNN
	1    4050 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2550 4350 2450
Wire Wire Line
	4350 2450 4200 2450
Wire Wire Line
	3900 2450 3800 2450
Connection ~ 3800 2450
Wire Wire Line
	3800 2450 3800 2550
Wire Wire Line
	4350 2850 4350 3400
Connection ~ 4350 3400
Wire Wire Line
	4350 3400 4850 3400
Wire Wire Line
	4350 2450 4650 2450
Connection ~ 4350 2450
Wire Wire Line
	5300 3400 6000 3400
Wire Wire Line
	6000 2400 6000 2200
Wire Wire Line
	6000 2200 6250 2200
Wire Wire Line
	6000 2700 6000 3400
Connection ~ 6000 3400
Wire Wire Line
	6000 3400 6600 3400
$Comp
L Device:R R51
U 1 1 5F07D25B
P 5650 2200
F 0 "R51" H 5720 2246 50  0000 L CNN
F 1 "100k" H 5720 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 2200 50  0001 C CNN
F 3 "~" H 5650 2200 50  0001 C CNN
	1    5650 2200
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:LM2936-3.3 U17
U 1 1 5F084F18
P 3300 6000
F 0 "U17" H 3300 6242 50  0000 C CNN
F 1 "LM2936-3.3" H 3300 6151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3300 6225 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2936.pdf" H 3300 5950 50  0001 C CNN
	1    3300 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C19
U 1 1 5F085D21
P 3750 6250
F 0 "C19" H 3865 6296 50  0000 L CNN
F 1 "10uF" H 3865 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3750 6250 50  0001 C CNN
F 3 "~" H 3750 6250 50  0001 C CNN
	1    3750 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C7
U 1 1 5F0925A6
P 3200 2250
F 0 "C7" H 3315 2296 50  0000 L CNN
F 1 "68uF" H 3315 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_2512_6332Metric" H 3200 2250 50  0001 C CNN
F 3 "~" H 3200 2250 50  0001 C CNN
	1    3200 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C9
U 1 1 5F0931C4
P 4850 2250
F 0 "C9" H 4965 2296 50  0000 L CNN
F 1 "68uF" H 4965 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_2512_6332Metric_Pad1.52x3.35mm_HandSolder" H 4850 2250 50  0001 C CNN
F 3 "~" H 4850 2250 50  0001 C CNN
	1    4850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C13
U 1 1 5F093BED
P 9800 2750
F 0 "C13" H 9915 2796 50  0000 L CNN
F 1 "68uF" H 9915 2705 50  0000 L CNN
F 2 "Capacitor_SMD:C_2512_6332Metric" H 9800 2750 50  0001 C CNN
F 3 "~" H 9800 2750 50  0001 C CNN
	1    9800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2050 5300 2200
Wire Wire Line
	6000 2200 5800 2200
Connection ~ 6000 2200
Wire Wire Line
	5500 2200 5300 2200
Connection ~ 5300 2200
Wire Wire Line
	5300 2200 5300 2400
Wire Wire Line
	4850 1650 4850 2100
$Comp
L Device:Fuse F1
U 1 1 5F820CDE
P 2400 1650
F 0 "F1" V 2203 1650 50  0000 C CNN
F 1 "Fuse" V 2294 1650 50  0000 C CNN
F 2 "Fuse:Fuseholder_TR5_Littelfuse_No560_No460" V 2330 1650 50  0001 C CNN
F 3 "~" H 2400 1650 50  0001 C CNN
	1    2400 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 2600 2750 2600
$Comp
L Device:LED D37
U 1 1 5F824BB8
P 2200 1250
F 0 "D37" H 2193 995 50  0000 C CNN
F 1 "LED" H 2193 1086 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2200 1250 50  0001 C CNN
F 3 "~" H 2200 1250 50  0001 C CNN
	1    2200 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 5F825FAA
P 2600 1250
F 0 "R19" V 2807 1250 50  0000 C CNN
F 1 "5k" V 2716 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2530 1250 50  0001 C CNN
F 3 "~" H 2600 1250 50  0001 C CNN
	1    2600 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 1650 1950 1650
Wire Wire Line
	1700 1650 1700 2500
Wire Wire Line
	1700 2500 1600 2500
Wire Wire Line
	2050 1250 1950 1250
Wire Wire Line
	1950 1250 1950 1650
Connection ~ 1950 1650
Wire Wire Line
	1950 1650 1700 1650
Wire Wire Line
	2350 1250 2450 1250
Wire Wire Line
	2750 1250 2850 1250
Wire Wire Line
	2850 1250 2850 1650
Wire Wire Line
	2850 1650 3200 1650
Connection ~ 3200 1650
Wire Wire Line
	2550 1650 2850 1650
Connection ~ 2850 1650
$Comp
L Device:R R18
U 1 1 5F5882C0
P 10500 2650
F 0 "R18" H 10570 2696 50  0000 L CNN
F 1 "5k" H 10570 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10430 2650 50  0001 C CNN
F 3 "~" H 10500 2650 50  0001 C CNN
	1    10500 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F597E0C
P 10500 3100
AR Path="/5F459811/5F597E0C" Ref="D?"  Part="1" 
AR Path="/5F391D50/5F597E0C" Ref="D38"  Part="1" 
F 0 "D38" V 10539 2983 50  0000 R CNN
F 1 "LED" V 10448 2983 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10500 3100 50  0001 C CNN
F 3 "~" H 10500 3100 50  0001 C CNN
	1    10500 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10500 2500 10500 2250
Wire Wire Line
	10500 2250 9800 2250
Wire Wire Line
	10500 2800 10500 2950
Wire Wire Line
	10500 3250 10500 3400
Wire Wire Line
	10500 3400 9800 3400
Connection ~ 9800 3400
$EndSCHEMATC
