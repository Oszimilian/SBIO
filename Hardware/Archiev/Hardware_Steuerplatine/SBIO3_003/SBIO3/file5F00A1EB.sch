EESchema Schematic File Version 4
LIBS:SBIO3-cache
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 3 7
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
L Device:R R30
U 1 1 5F00CA1E
P 8600 2000
F 0 "R30" H 8670 2046 50  0000 L CNN
F 1 "10k" H 8670 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 2000 50  0001 C CNN
F 3 "~" H 8600 2000 50  0001 C CNN
	1    8600 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5F00D47F
P 8600 2500
F 0 "R31" H 8670 2546 50  0000 L CNN
F 1 "10k" H 8670 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 2500 50  0001 C CNN
F 3 "~" H 8600 2500 50  0001 C CNN
	1    8600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F00DAAB
P 8600 1850
F 0 "#PWR0112" H 8600 1600 50  0001 C CNN
F 1 "GND" V 8605 1722 50  0000 R CNN
F 2 "" H 8600 1850 50  0001 C CNN
F 3 "" H 8600 1850 50  0001 C CNN
	1    8600 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F00E66A
P 8600 2350
F 0 "#PWR0113" H 8600 2100 50  0001 C CNN
F 1 "GND" V 8605 2222 50  0000 R CNN
F 2 "" H 8600 2350 50  0001 C CNN
F 3 "" H 8600 2350 50  0001 C CNN
	1    8600 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9400 2150 9350 2150
Wire Wire Line
	9350 2350 9400 2350
Wire Wire Line
	9400 2650 9350 2650
Wire Wire Line
	8750 2650 8600 2650
Wire Wire Line
	8600 2150 8750 2150
$Comp
L Device:R R22
U 1 1 5F00F43F
P 8250 2150
F 0 "R22" V 8043 2150 50  0000 C CNN
F 1 "160R" V 8134 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 2150 50  0001 C CNN
F 3 "~" H 8250 2150 50  0001 C CNN
	1    8250 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5F01028A
P 8250 2650
F 0 "R23" V 8043 2650 50  0000 C CNN
F 1 "160R" V 8134 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 2650 50  0001 C CNN
F 3 "~" H 8250 2650 50  0001 C CNN
	1    8250 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 2150 8600 2150
Connection ~ 8600 2150
Wire Wire Line
	8400 2650 8600 2650
Connection ~ 8600 2650
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U8
U 1 1 5F021BB3
P 9350 3750
F 0 "U8" H 9050 4415 50  0000 C CNN
F 1 "IRF9313PBF" H 9050 4324 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 9350 5000 50  0001 C CNN
F 3 "" H 9350 5000 50  0001 C CNN
	1    9350 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5F021BB9
P 8600 3500
F 0 "R32" H 8670 3546 50  0000 L CNN
F 1 "10k" H 8670 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 3500 50  0001 C CNN
F 3 "~" H 8600 3500 50  0001 C CNN
	1    8600 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 5F021BBF
P 8600 4000
F 0 "R33" H 8670 4046 50  0000 L CNN
F 1 "10k" H 8670 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 4000 50  0001 C CNN
F 3 "~" H 8600 4000 50  0001 C CNN
	1    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F021BC5
P 8600 3350
F 0 "#PWR0114" H 8600 3100 50  0001 C CNN
F 1 "GND" V 8605 3222 50  0000 R CNN
F 2 "" H 8600 3350 50  0001 C CNN
F 3 "" H 8600 3350 50  0001 C CNN
	1    8600 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F021BCB
P 8600 3850
F 0 "#PWR0115" H 8600 3600 50  0001 C CNN
F 1 "GND" V 8605 3722 50  0000 R CNN
F 2 "" H 8600 3850 50  0001 C CNN
F 3 "" H 8600 3850 50  0001 C CNN
	1    8600 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 3350 9400 3350
Wire Wire Line
	9400 3650 9350 3650
Wire Wire Line
	9350 3850 9400 3850
Wire Wire Line
	9400 4150 9350 4150
Wire Wire Line
	8750 4150 8600 4150
Wire Wire Line
	8600 3650 8750 3650
$Comp
L Device:R R24
U 1 1 5F021BDF
P 8250 3650
F 0 "R24" V 8043 3650 50  0000 C CNN
F 1 "160R" V 8134 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 3650 50  0001 C CNN
F 3 "~" H 8250 3650 50  0001 C CNN
	1    8250 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5F021BE5
P 8250 4150
F 0 "R25" V 8043 4150 50  0000 C CNN
F 1 "160R" V 8134 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 4150 50  0001 C CNN
F 3 "~" H 8250 4150 50  0001 C CNN
	1    8250 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3650 8600 3650
Connection ~ 8600 3650
Wire Wire Line
	8400 4150 8600 4150
Connection ~ 8600 4150
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U9
U 1 1 5F024FC9
P 9350 5250
F 0 "U9" H 9050 5915 50  0000 C CNN
F 1 "IRF9313PBF" H 9050 5824 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 9350 6500 50  0001 C CNN
F 3 "" H 9350 6500 50  0001 C CNN
	1    9350 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 5F024FCF
P 8600 5000
F 0 "R34" H 8670 5046 50  0000 L CNN
F 1 "10k" H 8670 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 5000 50  0001 C CNN
F 3 "~" H 8600 5000 50  0001 C CNN
	1    8600 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5F024FD5
P 8600 5500
F 0 "R35" H 8670 5546 50  0000 L CNN
F 1 "10k" H 8670 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 5500 50  0001 C CNN
F 3 "~" H 8600 5500 50  0001 C CNN
	1    8600 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5F024FDB
P 8600 4850
F 0 "#PWR0116" H 8600 4600 50  0001 C CNN
F 1 "GND" V 8605 4722 50  0000 R CNN
F 2 "" H 8600 4850 50  0001 C CNN
F 3 "" H 8600 4850 50  0001 C CNN
	1    8600 4850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5F024FE1
P 8600 5350
F 0 "#PWR0117" H 8600 5100 50  0001 C CNN
F 1 "GND" V 8605 5222 50  0000 R CNN
F 2 "" H 8600 5350 50  0001 C CNN
F 3 "" H 8600 5350 50  0001 C CNN
	1    8600 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 4850 9400 4850
Wire Wire Line
	9400 5150 9350 5150
Wire Wire Line
	9350 5350 9400 5350
Wire Wire Line
	9400 5650 9350 5650
Wire Wire Line
	8750 5650 8600 5650
Wire Wire Line
	8600 5150 8750 5150
$Comp
L Device:R R26
U 1 1 5F024FF5
P 8250 5150
F 0 "R26" V 8043 5150 50  0000 C CNN
F 1 "160R" V 8134 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 5150 50  0001 C CNN
F 3 "~" H 8250 5150 50  0001 C CNN
	1    8250 5150
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5F024FFB
P 8250 5650
F 0 "R27" V 8043 5650 50  0000 C CNN
F 1 "160R" V 8134 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 5650 50  0001 C CNN
F 3 "~" H 8250 5650 50  0001 C CNN
	1    8250 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 5150 8600 5150
Connection ~ 8600 5150
Wire Wire Line
	8400 5650 8600 5650
Connection ~ 8600 5650
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U10
U 1 1 5F028DAA
P 9350 6750
F 0 "U10" H 9050 7415 50  0000 C CNN
F 1 "IRF9313PBF" H 9050 7324 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 9350 8000 50  0001 C CNN
F 3 "" H 9350 8000 50  0001 C CNN
	1    9350 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5F028DB0
P 8600 6500
F 0 "R36" H 8670 6546 50  0000 L CNN
F 1 "10k" H 8670 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 6500 50  0001 C CNN
F 3 "~" H 8600 6500 50  0001 C CNN
	1    8600 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 5F028DB6
P 8600 7000
F 0 "R37" H 8670 7046 50  0000 L CNN
F 1 "10k" H 8670 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8530 7000 50  0001 C CNN
F 3 "~" H 8600 7000 50  0001 C CNN
	1    8600 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F028DBC
P 8600 6350
F 0 "#PWR0118" H 8600 6100 50  0001 C CNN
F 1 "GND" V 8605 6222 50  0000 R CNN
F 2 "" H 8600 6350 50  0001 C CNN
F 3 "" H 8600 6350 50  0001 C CNN
	1    8600 6350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F028DC2
P 8600 6850
F 0 "#PWR0119" H 8600 6600 50  0001 C CNN
F 1 "GND" V 8605 6722 50  0000 R CNN
F 2 "" H 8600 6850 50  0001 C CNN
F 3 "" H 8600 6850 50  0001 C CNN
	1    8600 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 6350 9400 6350
Wire Wire Line
	9400 6650 9350 6650
Wire Wire Line
	9350 6850 9400 6850
Wire Wire Line
	9400 7150 9350 7150
Wire Wire Line
	8750 7150 8600 7150
Wire Wire Line
	8600 6650 8750 6650
$Comp
L Device:R R28
U 1 1 5F028DD6
P 8250 6650
F 0 "R28" V 8043 6650 50  0000 C CNN
F 1 "160R" V 8134 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 6650 50  0001 C CNN
F 3 "~" H 8250 6650 50  0001 C CNN
	1    8250 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5F028DDC
P 8250 7150
F 0 "R29" V 8043 7150 50  0000 C CNN
F 1 "160R" V 8134 7150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 7150 50  0001 C CNN
F 3 "~" H 8250 7150 50  0001 C CNN
	1    8250 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 6650 8600 6650
Connection ~ 8600 6650
Wire Wire Line
	8400 7150 8600 7150
Connection ~ 8600 7150
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U2
U 1 1 5F0A2B72
P 3500 1500
F 0 "U2" H 3200 2165 50  0000 C CNN
F 1 "IRF9313PBF" H 3200 2074 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3500 2750 50  0001 C CNN
F 3 "" H 3500 2750 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F0A2B78
P 2750 1250
F 0 "R12" H 2820 1296 50  0000 L CNN
F 1 "10k" H 2820 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 1250 50  0001 C CNN
F 3 "~" H 2750 1250 50  0001 C CNN
	1    2750 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F0A2B7E
P 2750 1750
F 0 "R13" H 2820 1796 50  0000 L CNN
F 1 "10k" H 2820 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 1750 50  0001 C CNN
F 3 "~" H 2750 1750 50  0001 C CNN
	1    2750 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F0A2B84
P 2600 1100
F 0 "#PWR0120" H 2600 850 50  0001 C CNN
F 1 "GND" V 2605 972 50  0000 R CNN
F 2 "" H 2600 1100 50  0001 C CNN
F 3 "" H 2600 1100 50  0001 C CNN
	1    2600 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5F0A2B8A
P 2600 1600
F 0 "#PWR0121" H 2600 1350 50  0001 C CNN
F 1 "GND" V 2605 1472 50  0000 R CNN
F 2 "" H 2600 1600 50  0001 C CNN
F 3 "" H 2600 1600 50  0001 C CNN
	1    2600 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 1100 3550 1100
Wire Wire Line
	3550 1400 3500 1400
Wire Wire Line
	3500 1600 3550 1600
Wire Wire Line
	3550 1900 3500 1900
Wire Wire Line
	2900 1600 2750 1600
Wire Wire Line
	2600 1600 2750 1600
Connection ~ 2750 1600
Wire Wire Line
	2900 1900 2750 1900
Wire Wire Line
	2750 1400 2900 1400
Wire Wire Line
	2750 1100 2900 1100
Wire Wire Line
	2600 1100 2750 1100
Connection ~ 2750 1100
$Comp
L Device:R R2
U 1 1 5F0A2B9E
P 2400 1400
F 0 "R2" V 2193 1400 50  0000 C CNN
F 1 "160R" V 2284 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 1400 50  0001 C CNN
F 3 "~" H 2400 1400 50  0001 C CNN
	1    2400 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F0A2BA4
P 2400 1900
F 0 "R3" V 2193 1900 50  0000 C CNN
F 1 "160R" V 2284 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 1900 50  0001 C CNN
F 3 "~" H 2400 1900 50  0001 C CNN
	1    2400 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 1400 2750 1400
Connection ~ 2750 1400
Wire Wire Line
	2550 1900 2750 1900
Connection ~ 2750 1900
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U3
U 1 1 5F0A2BAE
P 3500 3000
F 0 "U3" H 3200 3665 50  0000 C CNN
F 1 "IRF9313PBF" H 3200 3574 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3500 4250 50  0001 C CNN
F 3 "" H 3500 4250 50  0001 C CNN
	1    3500 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F0A2BB4
P 2750 2750
F 0 "R14" H 2820 2796 50  0000 L CNN
F 1 "10k" H 2820 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 2750 50  0001 C CNN
F 3 "~" H 2750 2750 50  0001 C CNN
	1    2750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5F0A2BBA
P 2750 3250
F 0 "R15" H 2820 3296 50  0000 L CNN
F 1 "10k" H 2820 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 3250 50  0001 C CNN
F 3 "~" H 2750 3250 50  0001 C CNN
	1    2750 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F0A2BC0
P 2600 2600
F 0 "#PWR0122" H 2600 2350 50  0001 C CNN
F 1 "GND" V 2605 2472 50  0000 R CNN
F 2 "" H 2600 2600 50  0001 C CNN
F 3 "" H 2600 2600 50  0001 C CNN
	1    2600 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F0A2BC6
P 2600 3100
F 0 "#PWR0123" H 2600 2850 50  0001 C CNN
F 1 "GND" V 2605 2972 50  0000 R CNN
F 2 "" H 2600 3100 50  0001 C CNN
F 3 "" H 2600 3100 50  0001 C CNN
	1    2600 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 2600 3550 2600
Wire Wire Line
	3550 2900 3500 2900
Wire Wire Line
	3500 3100 3550 3100
Wire Wire Line
	3550 3400 3500 3400
Wire Wire Line
	2900 3100 2750 3100
Wire Wire Line
	2600 3100 2750 3100
Connection ~ 2750 3100
Wire Wire Line
	2900 3400 2750 3400
Wire Wire Line
	2750 2900 2900 2900
Wire Wire Line
	2750 2600 2900 2600
Wire Wire Line
	2600 2600 2750 2600
Connection ~ 2750 2600
$Comp
L Device:R R4
U 1 1 5F0A2BDA
P 2400 2900
F 0 "R4" V 2193 2900 50  0000 C CNN
F 1 "160R" V 2284 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 2900 50  0001 C CNN
F 3 "~" H 2400 2900 50  0001 C CNN
	1    2400 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F0A2BE0
P 2400 3400
F 0 "R5" V 2193 3400 50  0000 C CNN
F 1 "160R" V 2284 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 3400 50  0001 C CNN
F 3 "~" H 2400 3400 50  0001 C CNN
	1    2400 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 2900 2750 2900
Connection ~ 2750 2900
Wire Wire Line
	2550 3400 2750 3400
Connection ~ 2750 3400
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U4
U 1 1 5F0A2BEA
P 3500 4500
F 0 "U4" H 3200 5165 50  0000 C CNN
F 1 "IRF9313PBF" H 3200 5074 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3500 5750 50  0001 C CNN
F 3 "" H 3500 5750 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5F0A2BF0
P 2750 4250
F 0 "R16" H 2820 4296 50  0000 L CNN
F 1 "10k" H 2820 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 4250 50  0001 C CNN
F 3 "~" H 2750 4250 50  0001 C CNN
	1    2750 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5F0A2BF6
P 2750 4750
F 0 "R17" H 2820 4796 50  0000 L CNN
F 1 "10k" H 2820 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 4750 50  0001 C CNN
F 3 "~" H 2750 4750 50  0001 C CNN
	1    2750 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5F0A2BFC
P 2600 4100
F 0 "#PWR0124" H 2600 3850 50  0001 C CNN
F 1 "GND" V 2605 3972 50  0000 R CNN
F 2 "" H 2600 4100 50  0001 C CNN
F 3 "" H 2600 4100 50  0001 C CNN
	1    2600 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F0A2C02
P 2600 4600
F 0 "#PWR0125" H 2600 4350 50  0001 C CNN
F 1 "GND" V 2605 4472 50  0000 R CNN
F 2 "" H 2600 4600 50  0001 C CNN
F 3 "" H 2600 4600 50  0001 C CNN
	1    2600 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 4100 3550 4100
Wire Wire Line
	3550 4400 3500 4400
Wire Wire Line
	3500 4600 3550 4600
Wire Wire Line
	3550 4900 3500 4900
Wire Wire Line
	2900 4600 2750 4600
Wire Wire Line
	2600 4600 2750 4600
Connection ~ 2750 4600
Wire Wire Line
	2900 4900 2750 4900
Wire Wire Line
	2750 4400 2900 4400
Wire Wire Line
	2750 4100 2900 4100
Wire Wire Line
	2600 4100 2750 4100
Connection ~ 2750 4100
$Comp
L Device:R R6
U 1 1 5F0A2C16
P 2400 4400
F 0 "R6" V 2193 4400 50  0000 C CNN
F 1 "160R" V 2284 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 4400 50  0001 C CNN
F 3 "~" H 2400 4400 50  0001 C CNN
	1    2400 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F0A2C1C
P 2400 4900
F 0 "R7" V 2193 4900 50  0000 C CNN
F 1 "160R" V 2284 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 4900 50  0001 C CNN
F 3 "~" H 2400 4900 50  0001 C CNN
	1    2400 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4400 2750 4400
Connection ~ 2750 4400
Wire Wire Line
	2550 4900 2750 4900
Connection ~ 2750 4900
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U5
U 1 1 5F0A2C26
P 3500 6000
F 0 "U5" H 3200 6665 50  0000 C CNN
F 1 "IRF9313PBF" H 3200 6574 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3500 7250 50  0001 C CNN
F 3 "" H 3500 7250 50  0001 C CNN
	1    3500 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5F0A2C2C
P 2750 5750
F 0 "R18" H 2820 5796 50  0000 L CNN
F 1 "10k" H 2820 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 5750 50  0001 C CNN
F 3 "~" H 2750 5750 50  0001 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5F0A2C32
P 2750 6250
F 0 "R19" H 2820 6296 50  0000 L CNN
F 1 "10k" H 2820 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 6250 50  0001 C CNN
F 3 "~" H 2750 6250 50  0001 C CNN
	1    2750 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F0A2C38
P 2600 5600
F 0 "#PWR0126" H 2600 5350 50  0001 C CNN
F 1 "GND" V 2605 5472 50  0000 R CNN
F 2 "" H 2600 5600 50  0001 C CNN
F 3 "" H 2600 5600 50  0001 C CNN
	1    2600 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F0A2C3E
P 2600 6100
F 0 "#PWR0127" H 2600 5850 50  0001 C CNN
F 1 "GND" V 2605 5972 50  0000 R CNN
F 2 "" H 2600 6100 50  0001 C CNN
F 3 "" H 2600 6100 50  0001 C CNN
	1    2600 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5600 3550 5600
Wire Wire Line
	3550 5900 3500 5900
Wire Wire Line
	3500 6100 3550 6100
Wire Wire Line
	3550 6400 3500 6400
Wire Wire Line
	2900 6100 2750 6100
Wire Wire Line
	2600 6100 2750 6100
Connection ~ 2750 6100
Wire Wire Line
	2900 6400 2750 6400
Wire Wire Line
	2750 5900 2900 5900
Wire Wire Line
	2750 5600 2900 5600
Wire Wire Line
	2600 5600 2750 5600
Connection ~ 2750 5600
$Comp
L Device:R R8
U 1 1 5F0A2C52
P 2400 5900
F 0 "R8" V 2193 5900 50  0000 C CNN
F 1 "160R" V 2284 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 5900 50  0001 C CNN
F 3 "~" H 2400 5900 50  0001 C CNN
	1    2400 5900
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F0A2C58
P 2400 6400
F 0 "R9" V 2193 6400 50  0000 C CNN
F 1 "160R" V 2284 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 6400 50  0001 C CNN
F 3 "~" H 2400 6400 50  0001 C CNN
	1    2400 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 5900 2750 5900
Connection ~ 2750 5900
Wire Wire Line
	2550 6400 2750 6400
Connection ~ 2750 6400
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U6
U 1 1 5F0C5893
P 3500 7600
F 0 "U6" H 3200 8265 50  0000 C CNN
F 1 "IRF9313PBF" H 3200 8174 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 3500 8850 50  0001 C CNN
F 3 "" H 3500 8850 50  0001 C CNN
	1    3500 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5F0C5899
P 2750 7350
F 0 "R20" H 2820 7396 50  0000 L CNN
F 1 "10k" H 2820 7305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 7350 50  0001 C CNN
F 3 "~" H 2750 7350 50  0001 C CNN
	1    2750 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5F0C589F
P 2750 7850
F 0 "R21" H 2820 7896 50  0000 L CNN
F 1 "10k" H 2820 7805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 7850 50  0001 C CNN
F 3 "~" H 2750 7850 50  0001 C CNN
	1    2750 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5F0C58A5
P 2600 7200
F 0 "#PWR0128" H 2600 6950 50  0001 C CNN
F 1 "GND" V 2605 7072 50  0000 R CNN
F 2 "" H 2600 7200 50  0001 C CNN
F 3 "" H 2600 7200 50  0001 C CNN
	1    2600 7200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5F0C58AB
P 2600 7700
F 0 "#PWR0129" H 2600 7450 50  0001 C CNN
F 1 "GND" V 2605 7572 50  0000 R CNN
F 2 "" H 2600 7700 50  0001 C CNN
F 3 "" H 2600 7700 50  0001 C CNN
	1    2600 7700
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 7200 3550 7200
Wire Wire Line
	3550 7500 3500 7500
Wire Wire Line
	3500 7700 3550 7700
Wire Wire Line
	3550 8000 3500 8000
Wire Wire Line
	2900 7700 2750 7700
Wire Wire Line
	2600 7700 2750 7700
Connection ~ 2750 7700
Wire Wire Line
	2900 8000 2750 8000
Wire Wire Line
	2750 7500 2900 7500
Wire Wire Line
	2750 7200 2900 7200
Wire Wire Line
	2600 7200 2750 7200
Connection ~ 2750 7200
$Comp
L Device:R R10
U 1 1 5F0C58BF
P 2400 7500
F 0 "R10" V 2193 7500 50  0000 C CNN
F 1 "160R" V 2284 7500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 7500 50  0001 C CNN
F 3 "~" H 2400 7500 50  0001 C CNN
	1    2400 7500
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F0C58C5
P 2400 8000
F 0 "R11" V 2193 8000 50  0000 C CNN
F 1 "160R" V 2284 8000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 8000 50  0001 C CNN
F 3 "~" H 2400 8000 50  0001 C CNN
	1    2400 8000
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 7500 2750 7500
Connection ~ 2750 7500
Wire Wire Line
	2550 8000 2750 8000
Connection ~ 2750 8000
$Comp
L Connector_Generic:Conn_02x08_Top_Bottom J5
U 1 1 5F190C1B
P 6400 4550
F 0 "J5" H 6300 5000 50  0000 C CNN
F 1 "Con_SM" H 6550 5000 50  0000 C CNN
F 2 "Conn_Lib:Wanne_16Pol" H 6400 4550 50  0001 C CNN
F 3 "~" H 6400 4550 50  0001 C CNN
	1    6400 4550
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0130
U 1 1 5F1DA754
P 9650 1750
F 0 "#PWR0130" H 9650 1600 50  0001 C CNN
F 1 "+12V" H 9665 1923 50  0000 C CNN
F 2 "" H 9650 1750 50  0001 C CNN
F 3 "" H 9650 1750 50  0001 C CNN
	1    9650 1750
	1    0    0    -1  
$EndComp
Text GLabel 8100 2150 0    50   Input ~ 0
SM1_1
Text GLabel 8100 2650 0    50   Input ~ 0
SM1_2
Text GLabel 8100 3650 0    50   Input ~ 0
SM1_3
Text GLabel 8100 4150 0    50   Input ~ 0
SM1_4
Text GLabel 8100 5150 0    50   Input ~ 0
SM2_1
Text GLabel 8100 5650 0    50   Input ~ 0
SM2_2
Text GLabel 8100 6650 0    50   Input ~ 0
SM2_3
Text GLabel 8100 7150 0    50   Input ~ 0
SM2_4
Wire Wire Line
	3550 3100 3550 3250
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J2
U 1 1 5F2E47B1
P 4100 1750
F 0 "J2" H 4150 2067 50  0000 C CNN
F 1 "Con_RGB1" H 4150 1976 50  0000 C CNN
F 2 "Conn_Lib:Wanne_6Pol" H 4100 1750 50  0001 C CNN
F 3 "~" H 4100 1750 50  0001 C CNN
	1    4100 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J3
U 1 1 5F308814
P 4100 4250
F 0 "J3" H 4150 4567 50  0000 C CNN
F 1 "Con_RGB1" H 4150 4476 50  0000 C CNN
F 2 "Conn_Lib:Wanne_6Pol" H 4100 4250 50  0001 C CNN
F 3 "~" H 4100 4250 50  0001 C CNN
	1    4100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3250 3700 3250
Connection ~ 3550 3250
Wire Wire Line
	3550 3250 3550 3400
Text GLabel 2250 3400 0    50   Input ~ 0
RGB1_ROT
Text GLabel 2250 1400 0    50   Input ~ 0
RGB1_GRUEN
Text GLabel 2250 1900 0    50   Input ~ 0
RGB1_BLAU
Text GLabel 2250 4400 0    50   Input ~ 0
RGB2_ROT
Text GLabel 2250 4900 0    50   Input ~ 0
RGB2_GRUEN
Text GLabel 2250 2900 0    50   Input ~ 0
RGB2_BLAU
Text GLabel 2250 5900 0    50   Input ~ 0
PWM_LUEFTER1
Text GLabel 2250 6400 0    50   Input ~ 0
PWM_LUEFTER2
Text GLabel 2250 7500 0    50   Input ~ 0
PWM_PUMPE
Text GLabel 2250 8000 0    50   Input ~ 0
HEIZUNG
$Comp
L Diode:1N4148 D5
U 1 1 5F37C108
P 6350 3450
F 0 "D5" H 6550 3400 50  0000 C CNN
F 1 "1N4148" H 6100 3400 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 3275 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 3450 50  0001 C CNN
	1    6350 3450
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D6
U 1 1 5F383869
P 6350 3650
F 0 "D6" H 6550 3600 50  0000 C CNN
F 1 "1N4148" H 6100 3600 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 3475 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 3650 50  0001 C CNN
	1    6350 3650
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D7
U 1 1 5F3845DD
P 6350 3850
F 0 "D7" H 6550 3800 50  0000 C CNN
F 1 "1N4148" H 6100 3800 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 3675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 3850 50  0001 C CNN
	1    6350 3850
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D4
U 1 1 5F384F00
P 6350 3250
F 0 "D4" H 6550 3200 50  0000 C CNN
F 1 "1N4148" H 6100 3200 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 3075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 3250 50  0001 C CNN
	1    6350 3250
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D9
U 1 1 5F4D5472
P 6350 5300
F 0 "D9" H 6550 5250 50  0000 C CNN
F 1 "1N4148" H 6100 5250 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 5125 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 5300 50  0001 C CNN
	1    6350 5300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D10
U 1 1 5F4D5478
P 6350 5500
F 0 "D10" H 6550 5450 50  0000 C CNN
F 1 "1N4148" H 6100 5450 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 5325 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 5500 50  0001 C CNN
	1    6350 5500
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D11
U 1 1 5F4D547E
P 6350 5700
F 0 "D11" H 6550 5650 50  0000 C CNN
F 1 "1N4148" H 6100 5650 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 5525 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 5700 50  0001 C CNN
	1    6350 5700
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D8
U 1 1 5F4D5484
P 6350 5100
F 0 "D8" H 6550 5050 50  0000 C CNN
F 1 "1N4148" H 6100 5050 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 4925 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 6350 5100 50  0001 C CNN
	1    6350 5100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5F593EA5
P 4450 6000
F 0 "D1" H 4650 5950 50  0000 C CNN
F 1 "1N4148" H 4200 5950 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 4450 5825 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4450 6000 50  0001 C CNN
	1    4450 6000
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5F597723
P 4450 6200
F 0 "D2" H 4650 6150 50  0000 C CNN
F 1 "1N4148" H 4200 6150 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 4450 6025 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 4450 6200 50  0001 C CNN
	1    4450 6200
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0131
U 1 1 5F65B679
P 5000 5950
F 0 "#PWR0131" H 5000 5800 50  0001 C CNN
F 1 "+12V" H 5015 6123 50  0000 C CNN
F 2 "" H 5000 5950 50  0001 C CNN
F 3 "" H 5000 5950 50  0001 C CNN
	1    5000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0132
U 1 1 5F67127F
P 4500 4050
F 0 "#PWR0132" H 4500 3900 50  0001 C CNN
F 1 "+12V" H 4515 4223 50  0000 C CNN
F 2 "" H 4500 4050 50  0001 C CNN
F 3 "" H 4500 4050 50  0001 C CNN
	1    4500 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4150 4500 4150
Wire Wire Line
	4500 4150 4500 4050
Wire Wire Line
	4400 4250 4500 4250
Wire Wire Line
	4500 4250 4500 4150
Connection ~ 4500 4150
Wire Wire Line
	4400 4350 4500 4350
Wire Wire Line
	4500 4350 4500 4250
Connection ~ 4500 4250
$Comp
L power:+12V #PWR0133
U 1 1 5F6B27E4
P 4500 1550
F 0 "#PWR0133" H 4500 1400 50  0001 C CNN
F 1 "+12V" H 4515 1723 50  0000 C CNN
F 2 "" H 4500 1550 50  0001 C CNN
F 3 "" H 4500 1550 50  0001 C CNN
	1    4500 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1650 4500 1650
Wire Wire Line
	4500 1650 4500 1550
Wire Wire Line
	4400 1750 4500 1750
Wire Wire Line
	4500 1750 4500 1650
Connection ~ 4500 1650
Wire Wire Line
	4400 1850 4500 1850
Wire Wire Line
	4500 1850 4500 1750
Connection ~ 4500 1750
Wire Wire Line
	3550 6100 3550 6250
Wire Wire Line
	3550 5600 3550 5750
Wire Wire Line
	3550 7200 3550 7350
Wire Wire Line
	3550 7700 3550 7850
$Comp
L power:GND #PWR0134
U 1 1 5F00A095
P 4100 6550
F 0 "#PWR0134" H 4100 6300 50  0001 C CNN
F 1 "GND" V 4105 6422 50  0000 R CNN
F 2 "" H 4100 6550 50  0001 C CNN
F 3 "" H 4100 6550 50  0001 C CNN
	1    4100 6550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 5F0217FF
P 4700 6650
F 0 "#PWR0135" H 4700 6500 50  0001 C CNN
F 1 "+5V" V 4715 6778 50  0000 L CNN
F 2 "" H 4700 6650 50  0001 C CNN
F 3 "" H 4700 6650 50  0001 C CNN
	1    4700 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 6550 4150 6550
Wire Wire Line
	4300 6200 4150 6200
Wire Wire Line
	4150 6200 4150 6550
Connection ~ 4150 6550
Wire Wire Line
	4150 6550 4200 6550
Wire Wire Line
	4300 6000 4150 6000
Wire Wire Line
	4150 6000 4150 6200
Connection ~ 4150 6200
Wire Wire Line
	4700 6550 5000 6550
Wire Wire Line
	5000 5950 5000 6000
Wire Wire Line
	4600 6000 5000 6000
Connection ~ 5000 6000
Wire Wire Line
	5000 6000 5000 6200
Wire Wire Line
	4600 6200 5000 6200
Connection ~ 5000 6200
Wire Wire Line
	5000 6200 5000 6550
Wire Wire Line
	3550 5750 3750 5750
Connection ~ 3550 5750
Wire Wire Line
	3550 5750 3550 5900
Wire Wire Line
	3550 6250 3650 6250
Wire Wire Line
	3650 6250 3650 6650
Connection ~ 3550 6250
Wire Wire Line
	3550 6250 3550 6400
$Comp
L power:GND #PWR0136
U 1 1 5F0E78A3
P 4100 6750
F 0 "#PWR0136" H 4100 6500 50  0001 C CNN
F 1 "GND" V 4105 6622 50  0000 R CNN
F 2 "" H 4100 6750 50  0001 C CNN
F 3 "" H 4100 6750 50  0001 C CNN
	1    4100 6750
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 6750 4150 6750
Wire Wire Line
	4150 6550 4150 6750
Connection ~ 4150 6750
Wire Wire Line
	4150 6750 4100 6750
$Comp
L power:+5V #PWR0137
U 1 1 5F1110D8
P 4700 6850
F 0 "#PWR0137" H 4700 6700 50  0001 C CNN
F 1 "+5V" V 4715 6978 50  0000 L CNN
F 2 "" H 4700 6850 50  0001 C CNN
F 3 "" H 4700 6850 50  0001 C CNN
	1    4700 6850
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 6750 5000 6750
Wire Wire Line
	5000 6750 5000 6550
Connection ~ 5000 6550
Wire Wire Line
	5000 6750 5000 6950
Wire Wire Line
	5000 6950 4700 6950
Connection ~ 5000 6750
Wire Wire Line
	5000 6950 5000 7050
Wire Wire Line
	5000 7050 4700 7050
Connection ~ 5000 6950
Wire Wire Line
	3550 7350 3650 7350
Wire Wire Line
	3650 7350 3650 7050
Connection ~ 3550 7350
Wire Wire Line
	3550 7350 3550 7500
Wire Wire Line
	3550 7850 3750 7850
Connection ~ 3550 7850
Wire Wire Line
	3550 7850 3550 8000
$Comp
L power:GND #PWR0138
U 1 1 5F19BDDD
P 4100 7150
F 0 "#PWR0138" H 4100 6900 50  0001 C CNN
F 1 "GND" V 4105 7022 50  0000 R CNN
F 2 "" H 4100 7150 50  0001 C CNN
F 3 "" H 4100 7150 50  0001 C CNN
	1    4100 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 7150 4200 7150
Wire Wire Line
	5000 7050 5000 7150
Wire Wire Line
	5000 7150 4700 7150
Connection ~ 5000 7050
Wire Wire Line
	9350 1850 9400 1850
$Comp
L SBIO3-rescue:IRF9313PBF-N-Channel U7
U 1 1 5F00B48A
P 9350 2250
F 0 "U7" H 9050 2915 50  0000 C CNN
F 1 "IRF9313PBF" H 9050 2824 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 9350 3500 50  0001 C CNN
F 3 "" H 9350 3500 50  0001 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1600 3550 1750
Wire Wire Line
	3550 1100 3550 1250
Wire Wire Line
	3550 1250 3800 1250
Wire Wire Line
	3800 1250 3800 1750
Wire Wire Line
	3800 1750 3900 1750
Connection ~ 3550 1250
Wire Wire Line
	3550 1250 3550 1400
Wire Wire Line
	3550 1750 3700 1750
Wire Wire Line
	3700 1750 3700 1650
Wire Wire Line
	3700 1650 3900 1650
Connection ~ 3550 1750
Wire Wire Line
	3550 1750 3550 1900
Wire Wire Line
	3700 3250 3700 1850
Wire Wire Line
	3700 1850 3900 1850
Wire Wire Line
	3550 2600 3550 2750
Wire Wire Line
	3550 2750 3800 2750
Wire Wire Line
	3800 2750 3800 4150
Wire Wire Line
	3800 4150 3900 4150
Connection ~ 3550 2750
Wire Wire Line
	3550 2750 3550 2900
Wire Wire Line
	3550 4100 3550 4250
Wire Wire Line
	3550 4600 3550 4750
Wire Wire Line
	3550 4750 3800 4750
Wire Wire Line
	3800 4750 3800 4250
Wire Wire Line
	3800 4250 3900 4250
Connection ~ 3550 4750
Wire Wire Line
	3550 4750 3550 4900
Wire Wire Line
	3550 4250 3700 4250
Wire Wire Line
	3700 4250 3700 4350
Wire Wire Line
	3700 4350 3900 4350
Connection ~ 3550 4250
Wire Wire Line
	3550 4250 3550 4400
Wire Wire Line
	3750 6850 4200 6850
Wire Wire Line
	3750 5750 3750 6850
Wire Wire Line
	4200 6650 3650 6650
Wire Wire Line
	3750 6950 4200 6950
Wire Wire Line
	3750 6950 3750 7850
Wire Wire Line
	4200 7050 3650 7050
$Comp
L Connector_Generic:Conn_02x07_Top_Bottom J4
U 1 1 5F2FCF6F
P 4400 6850
F 0 "J4" H 4450 7367 50  0000 C CNN
F 1 "Con_PU_HE_LÜ" H 4450 7276 50  0000 C CNN
F 2 "Conn_Lib:Wanne-14Pol" H 4400 6850 50  0001 C CNN
F 3 "~" H 4400 6850 50  0001 C CNN
	1    4400 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1850 9400 2000
Wire Wire Line
	9400 2350 9400 2500
Wire Wire Line
	9400 3350 9400 3500
Wire Wire Line
	9400 3850 9400 4000
Wire Wire Line
	9400 4850 9400 5000
Wire Wire Line
	9400 5350 9400 5500
Wire Wire Line
	9400 6350 9400 6500
Wire Wire Line
	9400 6850 9400 7000
Wire Wire Line
	9650 1750 9650 2000
Wire Wire Line
	9650 2000 9400 2000
Connection ~ 9400 2000
Wire Wire Line
	9400 2000 9400 2150
Wire Wire Line
	9650 2000 9650 2500
Wire Wire Line
	9650 2500 9400 2500
Connection ~ 9650 2000
Connection ~ 9400 2500
Wire Wire Line
	9400 2500 9400 2650
Wire Wire Line
	9650 2500 9650 3500
Wire Wire Line
	9650 3500 9400 3500
Connection ~ 9650 2500
Connection ~ 9400 3500
Wire Wire Line
	9400 3500 9400 3650
Wire Wire Line
	9650 3500 9650 4000
Wire Wire Line
	9650 4000 9400 4000
Connection ~ 9650 3500
Connection ~ 9400 4000
Wire Wire Line
	9400 4000 9400 4150
Wire Wire Line
	9650 4000 9650 5000
Wire Wire Line
	9650 5000 9400 5000
Connection ~ 9650 4000
Connection ~ 9400 5000
Wire Wire Line
	9400 5000 9400 5150
Wire Wire Line
	9650 5000 9650 5500
Wire Wire Line
	9650 5500 9400 5500
Connection ~ 9650 5000
Connection ~ 9400 5500
Wire Wire Line
	9400 5500 9400 5650
Wire Wire Line
	9650 5500 9650 6500
Wire Wire Line
	9650 6500 9400 6500
Connection ~ 9650 5500
Connection ~ 9400 6500
Wire Wire Line
	9400 6500 9400 6650
Wire Wire Line
	9650 6500 9650 7000
Wire Wire Line
	9650 7000 9400 7000
Connection ~ 9650 6500
Connection ~ 9400 7000
Wire Wire Line
	9400 7000 9400 7150
Wire Wire Line
	8750 6350 8700 6350
Wire Wire Line
	8700 6350 8700 6150
Wire Wire Line
	8700 6150 8500 6150
Wire Wire Line
	8500 6150 8500 6350
Wire Wire Line
	8750 6850 8700 6850
Wire Wire Line
	8700 6850 8700 6700
Wire Wire Line
	8700 6700 8500 6700
Wire Wire Line
	8500 6700 8500 6850
Wire Wire Line
	8750 5350 8700 5350
Wire Wire Line
	8700 5350 8700 5200
Wire Wire Line
	8700 5200 8500 5200
Wire Wire Line
	8500 5200 8500 5350
Wire Wire Line
	8750 4850 8700 4850
Wire Wire Line
	8700 4850 8700 4600
Wire Wire Line
	8700 4600 8500 4600
Wire Wire Line
	8500 4600 8500 4850
Wire Wire Line
	8750 3850 8700 3850
Wire Wire Line
	8700 3850 8700 3700
Wire Wire Line
	8700 3700 8500 3700
Wire Wire Line
	8500 3700 8500 3850
Wire Wire Line
	8750 3350 8700 3350
Wire Wire Line
	8700 3350 8700 3150
Wire Wire Line
	8700 3150 8500 3150
Wire Wire Line
	8500 3150 8500 3350
Wire Wire Line
	8750 2350 8700 2350
Wire Wire Line
	8700 2350 8700 2200
Wire Wire Line
	8700 2200 8500 2200
Wire Wire Line
	8500 2200 8500 2350
Wire Wire Line
	8750 1850 8700 1850
Wire Wire Line
	8700 1850 8700 1650
Wire Wire Line
	8700 1650 8500 1650
Wire Wire Line
	8500 1650 8500 1850
Wire Wire Line
	6700 6850 6700 5700
Wire Wire Line
	6800 6350 6800 5500
Wire Wire Line
	6900 5350 6900 5300
Wire Wire Line
	6800 3350 6800 3650
Wire Wire Line
	6800 3350 7200 3350
Wire Wire Line
	6900 2350 6900 3450
Wire Wire Line
	6900 2350 8500 2350
Wire Wire Line
	7000 1850 7000 3250
Wire Wire Line
	7000 1850 8500 1850
$Comp
L power:GND #PWR0182
U 1 1 5F42EBEE
P 5950 5850
F 0 "#PWR0182" H 5950 5600 50  0001 C CNN
F 1 "GND" V 5955 5722 50  0000 R CNN
F 2 "" H 5950 5850 50  0001 C CNN
F 3 "" H 5950 5850 50  0001 C CNN
	1    5950 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5850 5950 5700
Wire Wire Line
	5950 5700 6200 5700
Wire Wire Line
	5950 5700 5950 5500
Wire Wire Line
	5950 5500 6200 5500
Connection ~ 5950 5700
Wire Wire Line
	5950 5500 5950 5300
Wire Wire Line
	5950 5300 6200 5300
Connection ~ 5950 5500
Wire Wire Line
	5950 5300 5950 5100
Wire Wire Line
	5950 5100 6200 5100
Connection ~ 5950 5300
Wire Wire Line
	5950 5100 5950 4950
Connection ~ 5950 5100
Wire Wire Line
	5950 4850 5950 4750
Connection ~ 5950 4850
Wire Wire Line
	5950 4750 5950 4650
Connection ~ 5950 4750
Wire Wire Line
	5950 4650 5950 4550
Connection ~ 5950 4650
Wire Wire Line
	5950 4550 5950 4450
Connection ~ 5950 4550
Wire Wire Line
	5950 4450 5950 4350
Connection ~ 5950 4450
Wire Wire Line
	5950 4350 5950 4250
Connection ~ 5950 4350
Connection ~ 5950 4250
Wire Wire Line
	5950 3850 6200 3850
Wire Wire Line
	5950 3850 5950 3650
Wire Wire Line
	5950 3650 6200 3650
Connection ~ 5950 3850
Wire Wire Line
	5950 3650 5950 3450
Wire Wire Line
	5950 3450 6200 3450
Connection ~ 5950 3650
Wire Wire Line
	5950 3450 5950 3250
Wire Wire Line
	5950 3250 6200 3250
Connection ~ 5950 3450
Wire Wire Line
	6500 5100 7150 5100
Wire Wire Line
	7150 5100 7150 4850
Wire Wire Line
	7150 4850 7350 4850
Wire Wire Line
	6500 5300 6900 5300
Wire Wire Line
	6500 5500 6800 5500
Wire Wire Line
	6500 5700 6700 5700
Wire Wire Line
	6500 3650 6800 3650
Wire Wire Line
	6500 3450 6900 3450
Wire Wire Line
	6500 3250 7000 3250
Wire Wire Line
	5950 4250 6100 4250
Wire Wire Line
	5950 4350 6100 4350
Wire Wire Line
	5950 4450 6100 4450
Wire Wire Line
	5950 4550 6100 4550
Wire Wire Line
	5950 4650 6100 4650
Wire Wire Line
	5950 4750 6100 4750
Wire Wire Line
	5950 4850 6100 4850
Wire Wire Line
	6500 3850 7100 3850
Wire Wire Line
	6900 3450 6900 4250
Wire Wire Line
	6900 4250 6600 4250
Connection ~ 6900 3450
Wire Wire Line
	7000 3250 7000 4350
Wire Wire Line
	7000 4350 6600 4350
Connection ~ 7000 3250
Wire Wire Line
	7100 3850 7100 4450
Wire Wire Line
	7100 4450 6600 4450
Connection ~ 7100 3850
Wire Wire Line
	7100 3850 8500 3850
Wire Wire Line
	7200 3350 7200 4550
Wire Wire Line
	7200 4550 6600 4550
Connection ~ 7200 3350
Wire Wire Line
	7200 3350 8500 3350
Wire Wire Line
	5950 3850 5950 4250
Wire Wire Line
	6900 5350 7450 5350
Wire Wire Line
	6600 4650 7450 4650
Wire Wire Line
	7450 4650 7450 5350
Connection ~ 7450 5350
Wire Wire Line
	7450 5350 8500 5350
Wire Wire Line
	7350 4750 7350 4850
Connection ~ 7350 4850
Wire Wire Line
	7350 4850 8500 4850
Wire Wire Line
	6600 4750 7350 4750
Wire Wire Line
	6800 6350 7000 6350
Wire Wire Line
	6700 6850 7100 6850
Wire Wire Line
	6600 4850 7100 4850
Wire Wire Line
	7100 4850 7100 6850
Connection ~ 7100 6850
Wire Wire Line
	7100 6850 8500 6850
Wire Wire Line
	6600 4950 7000 4950
Wire Wire Line
	7000 4950 7000 6350
Connection ~ 7000 6350
Wire Wire Line
	7000 6350 8500 6350
Wire Wire Line
	6100 4950 5950 4950
Connection ~ 5950 4950
Wire Wire Line
	5950 4950 5950 4850
$EndSCHEMATC
