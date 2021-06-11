EESchema Schematic File Version 4
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
P 550 2600
F 0 "J6" H 442 2275 50  0000 C CNN
F 1 "+12V" H 442 2366 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G_1x02_P5.00mm_Horizontal" H 550 2600 50  0001 C CNN
F 3 "~" H 550 2600 50  0001 C CNN
	1    550  2600
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Current:ZXCT1109 U11
U 1 1 5F395BE6
P 2050 2100
F 0 "U11" H 2330 2146 50  0000 L CNN
F 1 "ZXCT1109" H 2330 2055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2050 2100 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/ZXCT1107_10.pdf" H 2000 2100 50  0001 C CNN
	1    2050 2100
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAS40-04 D13
U 1 1 5F396949
P 2600 4250
F 0 "D13" V 2850 4650 50  0000 L CNN
F 1 "BAS40-04" V 2750 4550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 4550 50  0001 L CNN
F 3 "http://www.vishay.com/docs/85701/bas40v.pdf" H 2480 4350 50  0001 C CNN
	1    2600 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_Shunt1
U 1 1 5F399656
P 2050 1650
F 0 "R_Shunt1" V 2257 1650 50  0000 C CNN
F 1 "125mOhm" V 2166 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 1980 1650 50  0001 C CNN
F 3 "~" H 2050 1650 50  0001 C CNN
	1    2050 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1 C13
U 1 1 5F39A3EC
P 8050 2750
F 0 "C13" H 8165 2796 50  0000 L CNN
F 1 "68uF" H 8165 2705 50  0000 L CNN
F 2 "C_Lib:MAX5035_Tantal" H 8050 2750 50  0001 C CNN
F 3 "~" H 8050 2750 50  0001 C CNN
	1    8050 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5F39B060
P 7150 2250
F 0 "L2" V 7340 2250 50  0000 C CNN
F 1 "L" V 7249 2250 50  0000 C CNN
F 2 "L_Lib:MAX5035_100uH_Coil" H 7150 2250 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    7150 2250
	0    -1   -1   0   
$EndComp
$Comp
L SBIO3-rescue:MAX_5035_BUSA-KiCad_E-Shema_MH U12
U 1 1 5F39B684
P 5950 2250
F 0 "U12" H 5950 3165 50  0000 C CNN
F 1 "MAX_5035_BUSA" H 5950 3074 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 5950 3600 50  0001 C CNN
F 3 "" H 5950 3600 50  0001 C CNN
	1    5950 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R41
U 1 1 5F39F3A8
P 4850 1900
F 0 "R41" H 4920 1946 50  0000 L CNN
F 1 "510k" H 4920 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4780 1900 50  0001 C CNN
F 3 "~" H 4850 1900 50  0001 C CNN
	1    4850 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R42
U 1 1 5F39FC4D
P 4850 2550
F 0 "R42" H 4920 2596 50  0000 L CNN
F 1 "510k" H 4920 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4780 2550 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
	1    4850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F3A0534
P 5250 3100
F 0 "C11" H 5365 3146 50  0000 L CNN
F 1 "100nF" H 5365 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5288 2950 50  0001 C CNN
F 3 "~" H 5250 3100 50  0001 C CNN
	1    5250 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5F3A11E4
P 3550 1900
F 0 "R39" H 3620 1946 50  0000 L CNN
F 1 "470k" H 3620 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3480 1900 50  0001 C CNN
F 3 "~" H 3550 1900 50  0001 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5F3A1941
P 3550 2550
F 0 "R40" H 3620 2596 50  0000 L CNN
F 1 "120k" H 3620 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3480 2550 50  0001 C CNN
F 3 "~" H 3550 2550 50  0001 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1650 4850 1650
Wire Wire Line
	4850 1650 4850 1750
Wire Wire Line
	4850 2400 4850 2250
Wire Wire Line
	5350 2250 4850 2250
Connection ~ 4850 2250
Wire Wire Line
	4850 2250 4850 2050
Wire Wire Line
	5250 2950 5250 2850
Wire Wire Line
	5250 2850 5350 2850
$Comp
L power:GND #PWR0139
U 1 1 5F3A4EB3
P 5950 3500
F 0 "#PWR0139" H 5950 3250 50  0001 C CNN
F 1 "GND" H 5955 3327 50  0000 C CNN
F 2 "" H 5950 3500 50  0001 C CNN
F 3 "" H 5950 3500 50  0001 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3250 5250 3400
Wire Wire Line
	5250 3400 5800 3400
Wire Wire Line
	5950 3400 5950 3500
Wire Wire Line
	5800 3100 5800 3400
Connection ~ 5800 3400
Wire Wire Line
	5800 3400 5950 3400
Wire Wire Line
	6100 3100 6100 3400
Wire Wire Line
	6100 3400 5950 3400
Connection ~ 5950 3400
Wire Wire Line
	4850 3400 5250 3400
Wire Wire Line
	4850 2700 4850 3400
Connection ~ 5250 3400
Wire Wire Line
	4850 1650 3550 1650
Wire Wire Line
	3550 1650 3550 1750
Connection ~ 4850 1650
Wire Wire Line
	3550 2050 3550 2200
Wire Wire Line
	3550 2700 3550 3400
Wire Wire Line
	3550 3400 3850 3400
Connection ~ 4850 3400
$Comp
L Device:C C10
U 1 1 5F3A7EE1
P 3850 2550
F 0 "C10" H 3965 2596 50  0000 L CNN
F 1 "10nF" H 3965 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 2400 50  0001 C CNN
F 3 "~" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
$Comp
L Diode:ZPDxx D15
U 1 1 5F3A88B9
P 4150 2550
F 0 "D15" V 4104 2629 50  0000 L CNN
F 1 "ZPD5.1" V 4195 2629 50  0000 L CNN
F 2 "D_Lib:ZPD5.1" H 4150 2375 50  0001 C CNN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/zpd1" H 4150 2550 50  0001 C CNN
	1    4150 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2200 3850 2200
Wire Wire Line
	3850 2200 3850 2400
Connection ~ 3550 2200
Wire Wire Line
	3550 2200 3550 2400
Wire Wire Line
	3850 2200 4150 2200
Wire Wire Line
	4150 2200 4150 2400
Connection ~ 3850 2200
Wire Wire Line
	3850 2700 3850 3400
Connection ~ 3850 3400
Wire Wire Line
	3850 3400 4150 3400
Wire Wire Line
	4150 2700 4150 3400
Connection ~ 4150 3400
Wire Wire Line
	4150 3400 4850 3400
$Comp
L Device:CP1 C9
U 1 1 5F3AE490
P 3100 2250
F 0 "C9" H 3215 2296 50  0000 L CNN
F 1 "68uF" H 3215 2205 50  0000 L CNN
F 2 "C_Lib:MAX5035_Tantal" H 3100 2250 50  0001 C CNN
F 3 "~" H 3100 2250 50  0001 C CNN
	1    3100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1650 3550 1650
Connection ~ 3550 1650
Wire Wire Line
	3100 2400 3100 3400
Wire Wire Line
	3100 3400 3550 3400
Connection ~ 3550 3400
$Comp
L Device:CP1 C7
U 1 1 5F3B06D1
P 1450 2250
F 0 "C7" H 1565 2296 50  0000 L CNN
F 1 "68uF" H 1565 2205 50  0000 L CNN
F 2 "C_Lib:MAX5035_Tantal" H 1450 2250 50  0001 C CNN
F 3 "~" H 1450 2250 50  0001 C CNN
	1    1450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1650 1900 1650
Wire Wire Line
	2250 1650 2200 1650
Connection ~ 2250 1650
Wire Wire Line
	1450 2100 1450 1650
Wire Wire Line
	1450 1650 1850 1650
Connection ~ 1850 1650
Wire Wire Line
	750  2500 1000 2500
Wire Wire Line
	1000 2500 1000 1650
Wire Wire Line
	1000 1650 1450 1650
Connection ~ 1450 1650
Wire Wire Line
	750  2600 1000 2600
Wire Wire Line
	1000 2600 1000 3400
Wire Wire Line
	1000 3400 1450 3400
$Comp
L Device:R R38
U 1 1 5F3B62F3
P 2050 2700
F 0 "R38" H 2120 2746 50  0000 L CNN
F 1 "5k" H 2120 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1980 2700 50  0001 C CNN
F 3 "~" H 2050 2700 50  0001 C CNN
	1    2050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2850 2050 3400
Connection ~ 2050 3400
Wire Wire Line
	2050 2300 2050 2450
Wire Wire Line
	2050 3400 2350 3400
$Comp
L Device:C C8
U 1 1 5F3BDE13
P 2350 2700
F 0 "C8" H 2465 2746 50  0000 L CNN
F 1 "10nF" H 2465 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2388 2550 50  0001 C CNN
F 3 "~" H 2350 2700 50  0001 C CNN
	1    2350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2550 2350 2450
Wire Wire Line
	2350 2450 2050 2450
Connection ~ 2050 2450
Wire Wire Line
	2050 2450 2050 2550
Wire Wire Line
	2350 2850 2350 3400
Connection ~ 2350 3400
Connection ~ 3100 1650
Wire Wire Line
	3100 1700 3100 1650
Wire Wire Line
	3100 1650 3100 2100
Wire Wire Line
	2350 3400 2700 3400
Connection ~ 3100 3400
$Comp
L Diode:ZPDxx D14
U 1 1 5F3C4878
P 2700 2700
F 0 "D14" V 2654 2779 50  0000 L CNN
F 1 "ZPD5.1" V 2745 2779 50  0000 L CNN
F 2 "D_Lib:ZPD5.1" H 2700 2525 50  0001 C CNN
F 3 "http://diotec.com/tl_files/diotec/files/pdf/datasheets/zpd1" H 2700 2700 50  0001 C CNN
	1    2700 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 2450 2700 2450
Wire Wire Line
	2700 2450 2700 2550
Connection ~ 2350 2450
Wire Wire Line
	2700 2850 2700 3400
Connection ~ 2700 3400
Wire Wire Line
	2700 3400 3100 3400
$Comp
L Diode:BAS40-04 D16
U 1 1 5F3C9B96
P 4250 4250
F 0 "D16" V 4550 4700 50  0000 L CNN
F 1 "BAS40-04" V 4400 4550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 4550 50  0001 L CNN
F 3 "http://www.vishay.com/docs/85701/bas40v.pdf" H 4130 4350 50  0001 C CNN
	1    4250 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 2450 2900 2450
Wire Wire Line
	2900 2450 2900 4250
Wire Wire Line
	2900 4250 2700 4250
Connection ~ 2700 2450
$Comp
L power:GND #PWR0140
U 1 1 5F3D3097
P 2500 4550
F 0 "#PWR0140" H 2500 4300 50  0001 C CNN
F 1 "GND" H 2505 4377 50  0000 C CNN
F 2 "" H 2500 4550 50  0001 C CNN
F 3 "" H 2500 4550 50  0001 C CNN
	1    2500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2200 4500 2200
Wire Wire Line
	4500 2200 4500 4250
Wire Wire Line
	4500 4250 4350 4250
Connection ~ 4150 2200
$Comp
L power:GND #PWR0141
U 1 1 5F3D5A71
P 4150 4550
F 0 "#PWR0141" H 4150 4300 50  0001 C CNN
F 1 "GND" H 4155 4377 50  0000 C CNN
F 2 "" H 4150 4550 50  0001 C CNN
F 3 "" H 4150 4550 50  0001 C CNN
	1    4150 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5F3D644D
P 6650 1950
F 0 "C12" H 6765 1996 50  0000 L CNN
F 1 "100nF" H 6765 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6688 1800 50  0001 C CNN
F 3 "~" H 6650 1950 50  0001 C CNN
	1    6650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D17
U 1 1 5F3D8DE7
P 6800 2500
F 0 "D17" V 6754 2568 50  0000 L CNN
F 1 "D_Schottky_Small" V 6845 2568 50  0000 L CNN
F 2 "D_Lib:MAX5035_50SQ100" V 6800 2500 50  0001 C CNN
F 3 "~" V 6800 2500 50  0001 C CNN
	1    6800 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 1650 6650 1650
Wire Wire Line
	6650 1650 6650 1800
Wire Wire Line
	6550 2250 6650 2250
Wire Wire Line
	6650 2250 6650 2100
Wire Wire Line
	7000 2250 6800 2250
Connection ~ 6650 2250
Wire Wire Line
	6800 2400 6800 2250
Connection ~ 6800 2250
Wire Wire Line
	6800 2250 6650 2250
Wire Wire Line
	6100 3400 6800 3400
Wire Wire Line
	6800 3400 6800 2600
Connection ~ 6100 3400
Wire Wire Line
	7550 2250 7300 2250
Wire Wire Line
	8050 2600 8050 2250
Wire Wire Line
	8050 2250 7550 2250
Connection ~ 7550 2250
Wire Wire Line
	8050 2900 8050 3400
Wire Wire Line
	8050 3400 6800 3400
Connection ~ 6800 3400
Wire Wire Line
	1450 2400 1450 3400
Connection ~ 1450 3400
Wire Wire Line
	1450 3400 2050 3400
$Comp
L power:+5V #PWR0142
U 1 1 5F3EAE17
P 8050 2150
F 0 "#PWR0142" H 8050 2000 50  0001 C CNN
F 1 "+5V" H 8065 2323 50  0000 C CNN
F 2 "" H 8050 2150 50  0001 C CNN
F 3 "" H 8050 2150 50  0001 C CNN
	1    8050 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0143
U 1 1 5F3EC3A8
P 2700 1500
F 0 "#PWR0143" H 2700 1350 50  0001 C CNN
F 1 "+12V" H 2715 1673 50  0000 C CNN
F 2 "" H 2700 1500 50  0001 C CNN
F 3 "" H 2700 1500 50  0001 C CNN
	1    2700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1650 2700 1500
Connection ~ 2700 1650
Wire Wire Line
	2700 1650 3100 1650
Wire Wire Line
	8050 2250 8050 2150
Connection ~ 8050 2250
Wire Wire Line
	7550 2850 6550 2850
Wire Wire Line
	7550 2250 7550 2850
$Comp
L power:+5V #PWR0144
U 1 1 5F3F3CCE
P 2500 3950
F 0 "#PWR0144" H 2500 3800 50  0001 C CNN
F 1 "+5V" H 2515 4123 50  0000 C CNN
F 2 "" H 2500 3950 50  0001 C CNN
F 3 "" H 2500 3950 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0145
U 1 1 5F3F4781
P 4150 3950
F 0 "#PWR0145" H 4150 3800 50  0001 C CNN
F 1 "+5V" H 4165 4123 50  0000 C CNN
F 2 "" H 4150 3950 50  0001 C CNN
F 3 "" H 4150 3950 50  0001 C CNN
	1    4150 3950
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D12
U 1 1 5F3F6CEA
P 2050 1250
F 0 "D12" H 2050 1466 50  0000 C CNN
F 1 "1N4148" H 2050 1375 50  0000 C CNN
F 2 "D_Lib:1N4148" H 2050 1075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D3
U 1 1 5F3F83AD
P 2050 850
F 0 "D3" H 2050 634 50  0000 C CNN
F 1 "1N4148" H 2050 725 50  0000 C CNN
F 2 "D_Lib:1N4148" H 2050 675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 2050 850 50  0001 C CNN
	1    2050 850 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 1650 2250 1250
Wire Wire Line
	2250 1250 2200 1250
Wire Wire Line
	2200 850  2250 850 
Wire Wire Line
	2250 850  2250 1250
Connection ~ 2250 1250
Wire Wire Line
	1900 850  1850 850 
Wire Wire Line
	1850 850  1850 1250
Wire Wire Line
	1900 1250 1850 1250
Connection ~ 1850 1250
Wire Wire Line
	1850 1250 1850 1650
Text GLabel 2900 4250 2    50   Input ~ 0
Current_Controle
Text GLabel 4500 4250 2    50   Input ~ 0
Voltage_Controle
Wire Wire Line
	1850 1650 1850 1750
Wire Wire Line
	1850 1750 2250 1750
Wire Wire Line
	2250 1750 2250 1900
Wire Wire Line
	2250 1650 2300 1650
Wire Wire Line
	1850 1900 1850 1800
Wire Wire Line
	1850 1800 2300 1800
Wire Wire Line
	2300 1800 2300 1650
Connection ~ 2300 1650
Wire Wire Line
	2300 1650 2700 1650
$Comp
L Regulator_Linear:L78L33_SOT89 U17
U 1 1 5F0114BC
P 3300 6000
F 0 "U17" H 3300 6242 50  0000 C CNN
F 1 "L78L33_SOT89" H 3300 6151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 3300 6200 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 3300 5950 50  0001 C CNN
	1    3300 6000
	1    0    0    -1  
$EndComp
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
L Device:C C19
U 1 1 5F013C3C
P 3750 6250
F 0 "C19" H 3865 6296 50  0000 L CNN
F 1 "100nF" H 3865 6205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3788 6100 50  0001 C CNN
F 3 "~" H 3750 6250 50  0001 C CNN
	1    3750 6250
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
$EndSCHEMATC
