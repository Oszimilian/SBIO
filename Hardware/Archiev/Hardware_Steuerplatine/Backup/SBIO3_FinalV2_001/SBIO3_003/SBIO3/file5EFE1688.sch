EESchema Schematic File Version 4
LIBS:SBIO3-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L SBIO3-rescue:ATmega64-16AU-MCU_Microchip_ATmega U1
U 1 1 5EFE1A86
P 5500 4000
F 0 "U1" H 5500 1911 50  0000 C CNN
F 1 "ATmega64-16AU" H 5500 1820 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_14x14mm_P0.8mm" H 5500 4000 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2490-8-bit-avr-microcontroller-atmega64-l_datasheet.pdf" H 5500 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5EFE5663
P 5600 1500
F 0 "#PWR0101" H 5600 1350 50  0001 C CNN
F 1 "+5V" H 5615 1673 50  0000 C CNN
F 2 "" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EFE6323
P 5850 1950
F 0 "C6" V 5950 2100 50  0000 C CNN
F 1 "100nF" V 5700 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5888 1800 50  0001 C CNN
F 3 "~" H 5850 1950 50  0001 C CNN
	1    5850 1950
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 5EFE6531
P 5600 1750
F 0 "L1" H 5653 1796 50  0000 L CNN
F 1 "10uH" H 5653 1705 50  0000 L CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5600 1750 50  0001 C CNN
F 3 "~" H 5600 1750 50  0001 C CNN
	1    5600 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EFEA965
P 6000 1950
F 0 "#PWR0102" H 6000 1700 50  0001 C CNN
F 1 "GND" V 6005 1822 50  0000 R CNN
F 2 "" H 6000 1950 50  0001 C CNN
F 3 "" H 6000 1950 50  0001 C CNN
	1    6000 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5EFEBCC4
P 5300 1950
F 0 "C5" V 5048 1950 50  0000 C CNN
F 1 "100nF" V 5139 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5338 1800 50  0001 C CNN
F 3 "~" H 5300 1950 50  0001 C CNN
	1    5300 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EFEC72E
P 5150 1950
F 0 "#PWR0103" H 5150 1700 50  0001 C CNN
F 1 "GND" V 5155 1822 50  0000 R CNN
F 2 "" H 5150 1950 50  0001 C CNN
F 3 "" H 5150 1950 50  0001 C CNN
	1    5150 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 1950 5500 1950
Wire Wire Line
	5500 1950 5500 2000
Wire Wire Line
	5700 1950 5600 1950
Wire Wire Line
	5600 1950 5600 1900
Wire Wire Line
	5600 2000 5600 1950
Connection ~ 5600 1950
Wire Wire Line
	5500 1950 5500 1550
Wire Wire Line
	5500 1550 5600 1550
Wire Wire Line
	5600 1550 5600 1600
Connection ~ 5500 1950
Wire Wire Line
	5600 1550 5600 1500
Connection ~ 5600 1550
$Comp
L Device:C C2
U 1 1 5EFF194A
P 3700 2450
F 0 "C2" V 3952 2450 50  0000 C CNN
F 1 "22pF" V 3861 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3738 2300 50  0001 C CNN
F 3 "~" H 3700 2450 50  0001 C CNN
	1    3700 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5EFF2850
P 3700 2750
F 0 "C3" V 3850 2750 50  0000 C CNN
F 1 "22pF" V 3550 2750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3738 2600 50  0001 C CNN
F 3 "~" H 3700 2750 50  0001 C CNN
	1    3700 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EFF3128
P 3550 2450
F 0 "#PWR0104" H 3550 2200 50  0001 C CNN
F 1 "GND" V 3555 2322 50  0000 R CNN
F 2 "" H 3550 2450 50  0001 C CNN
F 3 "" H 3550 2450 50  0001 C CNN
	1    3550 2450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EFF3F6A
P 3550 2750
F 0 "#PWR0105" H 3550 2500 50  0001 C CNN
F 1 "GND" V 3555 2622 50  0000 R CNN
F 2 "" H 3550 2750 50  0001 C CNN
F 3 "" H 3550 2750 50  0001 C CNN
	1    3550 2750
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5EFF4F83
P 4450 3100
F 0 "C4" V 4700 3100 50  0000 C CNN
F 1 "10nF" V 4600 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4488 2950 50  0001 C CNN
F 3 "~" H 4450 3100 50  0001 C CNN
	1    4450 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 2950 4450 2900
$Comp
L power:GND #PWR0106
U 1 1 5EFF70D2
P 4450 3250
F 0 "#PWR0106" H 4450 3000 50  0001 C CNN
F 1 "GND" H 4455 3077 50  0000 C CNN
F 2 "" H 4450 3250 50  0001 C CNN
F 3 "" H 4450 3250 50  0001 C CNN
	1    4450 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5EFF7DF8
P 4900 3100
F 0 "#PWR0107" H 4900 2950 50  0001 C CNN
F 1 "+5V" V 4915 3228 50  0000 L CNN
F 2 "" H 4900 3100 50  0001 C CNN
F 3 "" H 4900 3100 50  0001 C CNN
	1    4900 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5EFFB356
P 1500 950
F 0 "R1" H 1570 996 50  0000 L CNN
F 1 "R" H 1570 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1430 950 50  0001 C CNN
F 3 "~" H 1500 950 50  0001 C CNN
	1    1500 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EFFBD64
P 1150 1500
F 0 "C1" H 1265 1546 50  0000 L CNN
F 1 "10nF" H 1265 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1188 1350 50  0001 C CNN
F 3 "~" H 1150 1500 50  0001 C CNN
	1    1150 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EFFCF54
P 1500 1900
F 0 "#PWR0108" H 1500 1650 50  0001 C CNN
F 1 "GND" H 1505 1727 50  0000 C CNN
F 2 "" H 1500 1900 50  0001 C CNN
F 3 "" H 1500 1900 50  0001 C CNN
	1    1500 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1650 1150 1850
Wire Wire Line
	1150 1850 1500 1850
Wire Wire Line
	1500 1900 1500 1850
Wire Wire Line
	1150 1350 1150 1150
Wire Wire Line
	1150 1150 1500 1150
Wire Wire Line
	1500 1150 1500 1100
$Comp
L power:+5V #PWR0109
U 1 1 5F0005CE
P 1500 800
F 0 "#PWR0109" H 1500 650 50  0001 C CNN
F 1 "+5V" H 1515 973 50  0000 C CNN
F 2 "" H 1500 800 50  0001 C CNN
F 3 "" H 1500 800 50  0001 C CNN
	1    1500 800 
	1    0    0    -1  
$EndComp
Text GLabel 1500 1150 2    50   Input ~ 0
RESET
Text GLabel 4900 2300 0    50   Input ~ 0
RESET
$Comp
L SBIO3-rescue:AVR-JTAG-10-Connector J1
U 1 1 5F001F0F
P 1550 3500
AR Path="/5F001F0F" Ref="J1"  Part="1" 
AR Path="/5EFE1689/5F001F0F" Ref="J1"  Part="1" 
F 0 "J1" H 1170 3546 50  0000 R CNN
F 1 "AVR-JTAG-10" H 1170 3455 50  0000 R CNN
F 2 "Conn_Lib:Con-JTAG" V 1400 3650 50  0001 C CNN
F 3 " ~" H 275 2950 50  0001 C CNN
	1    1550 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5F003350
P 1500 2800
F 0 "#PWR0110" H 1500 2650 50  0001 C CNN
F 1 "+5V" H 1515 2973 50  0000 C CNN
F 2 "" H 1500 2800 50  0001 C CNN
F 3 "" H 1500 2800 50  0001 C CNN
	1    1500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2900 1450 2850
Wire Wire Line
	1450 2850 1500 2850
Wire Wire Line
	1500 2850 1500 2800
Wire Wire Line
	1550 2900 1550 2850
Wire Wire Line
	1550 2850 1500 2850
Connection ~ 1500 2850
$Comp
L power:GND #PWR0111
U 1 1 5F004BA1
P 1550 4100
F 0 "#PWR0111" H 1550 3850 50  0001 C CNN
F 1 "GND" H 1555 3927 50  0000 C CNN
F 2 "" H 1550 4100 50  0001 C CNN
F 3 "" H 1550 4100 50  0001 C CNN
	1    1550 4100
	1    0    0    -1  
$EndComp
Text GLabel 2050 3400 2    50   Input ~ 0
TCK
Text GLabel 2050 3500 2    50   Input ~ 0
TMS
Text GLabel 2050 3600 2    50   Input ~ 0
TDO
Text GLabel 2050 3700 2    50   Input ~ 0
TDI
Text GLabel 2050 3200 2    50   Input ~ 0
RESET
Text GLabel 4900 4800 0    50   Input ~ 0
TDI
Text GLabel 4900 4700 0    50   Input ~ 0
TDO
Text GLabel 4900 4600 0    50   Input ~ 0
TMS
Text GLabel 4900 4500 0    50   Input ~ 0
TCK
Text GLabel 4900 4300 0    50   Input ~ 0
Voltage_Controle
Text GLabel 4900 4400 0    50   Input ~ 0
Current_Controle
Text GLabel 4900 4200 0    50   Input ~ 0
GND_HUMI2
Text GLabel 4900 4100 0    50   Input ~ 0
GND_HUMI1
Text GLabel 4900 5000 0    50   Input ~ 0
UART_RXD
Text GLabel 4900 5100 0    50   Input ~ 0
UART_TXD
Text GLabel 4900 5200 0    50   Input ~ 0
UART_DIR
Text GLabel 6100 5000 2    50   Input ~ 0
I²C_SCL
Text GLabel 6100 5100 2    50   Input ~ 0
I²C_SDA
Text GLabel 6100 2600 2    50   Input ~ 0
PWM_PUMPE
Text GLabel 6100 2700 2    50   Input ~ 0
HEIZUNG
Text GLabel 6100 2800 2    50   Input ~ 0
PWM_LUEFTER1
Text GLabel 6100 2900 2    50   Input ~ 0
PWM_LUEFTER2
Text GLabel 6100 4700 2    50   Input ~ 0
RGB1_ROT
Text GLabel 6100 4600 2    50   Input ~ 0
RGB1_GRUEN
Text GLabel 6100 4500 2    50   Input ~ 0
RGB1_BLAU
Text GLabel 6100 3000 2    50   Input ~ 0
RGB2_ROT
Text GLabel 4900 3500 0    50   Input ~ 0
RGB2_GRUEN
Text GLabel 6100 4800 2    50   Input ~ 0
RGB2_BLAU
Text GLabel 6100 5700 2    50   Input ~ 0
SM1_1
Text GLabel 6100 5600 2    50   Input ~ 0
SM1_2
Text GLabel 4900 3400 0    50   Input ~ 0
SM1_3
Text GLabel 6100 4100 2    50   Input ~ 0
SM2_2
Text GLabel 6100 4400 2    50   Input ~ 0
SM2_3
Text GLabel 6100 4300 2    50   Input ~ 0
SM2_4
Text GLabel 6100 3800 2    50   Input ~ 0
SR_Takt
Text GLabel 6100 3700 2    50   Input ~ 0
SR_Daten
Text GLabel 6100 3600 2    50   Input ~ 0
SR_Latch
Text GLabel 6100 3500 2    50   Input ~ 0
Dbg1
Text GLabel 6100 3400 2    50   Input ~ 0
Dbg2
Text GLabel 6100 3300 2    50   Input ~ 0
Start
Text GLabel 6100 3200 2    50   Input ~ 0
Stop
Text GLabel 4900 5700 0    50   Input ~ 0
NOTAUS
Text GLabel 6100 4200 2    50   Input ~ 0
SM2_1
Text GLabel 4900 3300 0    50   Input ~ 0
SM1_4
Text GLabel 6100 2500 2    50   Input ~ 0
NOT-AUS
Text GLabel 6100 2400 2    50   Input ~ 0
INPUT2
Text GLabel 6100 2300 2    50   Input ~ 0
INPUT1
$Comp
L power:GND #PWR0178
U 1 1 5F072E0D
P 5500 6000
F 0 "#PWR0178" H 5500 5750 50  0001 C CNN
F 1 "GND" H 5505 5827 50  0000 C CNN
F 2 "" H 5500 6000 50  0001 C CNN
F 3 "" H 5500 6000 50  0001 C CNN
	1    5500 6000
	1    0    0    -1  
$EndComp
$Comp
L SBIO3-rescue:16Mhz-Quarz-Small-Projekt_E-Shema U18
U 1 1 5F07E072
P 4450 2550
AR Path="/5F07E072" Ref="U18"  Part="1" 
AR Path="/5EFE1689/5F07E072" Ref="U18"  Part="1" 
F 0 "U18" V 4454 2438 50  0000 L CNN
F 1 "16Mhz-Quarz-Small" V 4500 1350 50  0000 L CNN
F 2 "Projekt Footprints:16Mhz Quarz Small" H 4450 2550 50  0001 C CNN
F 3 "" H 4450 2550 50  0001 C CNN
	1    4450 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 2700 4350 2900
Wire Wire Line
	4350 2900 4250 2900
Wire Wire Line
	4350 2700 4900 2700
Wire Wire Line
	4450 2900 4900 2900
Wire Wire Line
	4350 2500 4350 2300
Wire Wire Line
	4350 2300 4250 2300
Wire Wire Line
	4350 2500 4900 2500
Wire Wire Line
	4250 2300 4250 2250
Wire Wire Line
	4250 2250 3850 2250
Wire Wire Line
	3850 2250 3850 2450
Wire Wire Line
	4250 2900 4250 2950
Wire Wire Line
	4250 2950 3850 2950
Wire Wire Line
	3850 2950 3850 2750
Text GLabel 4900 5300 0    50   Input ~ 0
Adress_Press1
Text GLabel 4900 5400 0    50   Input ~ 0
Adress_Press2
$EndSCHEMATC
