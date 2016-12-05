EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:PCR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "PCR_Schematic"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Earth #PWR01
U 1 1 5840801B
P 2100 4500
F 0 "#PWR01" H 2100 4250 50  0001 C CNN
F 1 "Earth" H 2100 4350 50  0001 C CNN
F 2 "" H 2100 4500 50  0000 C CNN
F 3 "" H 2100 4500 50  0000 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR02
U 1 1 5840802F
P 4000 5200
F 0 "#PWR02" H 4000 4950 50  0001 C CNN
F 1 "Earth" H 4000 5050 50  0001 C CNN
F 2 "" H 4000 5200 50  0000 C CNN
F 3 "" H 4000 5200 50  0000 C CNN
	1    4000 5200
	1    0    0    -1  
$EndComp
$Comp
L +24V #PWR03
U 1 1 58408091
P 5600 4750
F 0 "#PWR03" H 5600 4600 50  0001 C CNN
F 1 "+24V" H 5600 4890 50  0000 C CNN
F 2 "" H 5600 4750 50  0000 C CNN
F 3 "" H 5600 4750 50  0000 C CNN
	1    5600 4750
	1    0    0    -1  
$EndComp
$Comp
L BC413 Q1
U 1 1 58409174
P 4600 4100
F 0 "Q1" H 4800 4175 50  0000 L CNN
F 1 "BC413" H 4800 4100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4800 4025 50  0000 L CIN
F 3 "" H 4600 4100 50  0000 L CNN
	1    4600 4100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 584091EE
P 5800 4050
F 0 "R2" V 5880 4050 50  0000 C CNN
F 1 "Nichrome Wire" V 5800 4050 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.50mmDrill_LargePad" V 5730 4050 50  0001 C CNN
F 3 "" H 5800 4050 50  0000 C CNN
	1    5800 4050
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 58409226
P 5500 4100
F 0 "D1" H 5500 4200 50  0000 C CNN
F 1 "D" H 5500 4000 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_P600_Horizontal" H 5500 4100 50  0001 C CNN
F 3 "" H 5500 4100 50  0000 C CNN
	1    5500 4100
	0    1    1    0   
$EndComp
$Comp
L TemperatureSensor U1
U 1 1 584093E7
P 1400 2100
F 0 "U1" H 1650 1700 60  0000 C CNN
F 1 "TemperatureSensor" H 1650 1800 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1650 1800 60  0001 C CNN
F 3 "" H 1650 1800 60  0001 C CNN
	1    1400 2100
	1    0    0    -1  
$EndComp
$Comp
L TemperatureSensor U3
U 1 1 58409418
P 3100 2100
F 0 "U3" H 3350 1700 60  0000 C CNN
F 1 "TemperatureSensor" H 3350 1800 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3350 1800 60  0001 C CNN
F 3 "" H 3350 1800 60  0001 C CNN
	1    3100 2100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 584099E6
P 4250 4750
F 0 "R1" V 4330 4750 50  0000 C CNN
F 1 "R" V 4250 4750 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM30mm" V 4180 4750 50  0001 C CNN
F 3 "" H 4250 4750 50  0000 C CNN
	1    4250 4750
	1    0    0    -1  
$EndComp
$Comp
L Arduino U2
U 1 1 58409A9E
P 3050 3700
F 0 "U2" H 3200 3550 60  0000 C CNN
F 1 "Arduino" H 3200 3050 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 3150 3100 60  0001 C CNN
F 3 "" H 3150 3100 60  0001 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4300 4700 5200
Wire Wire Line
	4000 5200 5600 5200
Wire Wire Line
	3850 4900 4250 4900
Wire Wire Line
	4000 5200 4000 4900
Wire Wire Line
	3850 4100 4400 4100
Wire Wire Line
	4250 4100 4250 4600
Connection ~ 4250 4100
Wire Wire Line
	3850 4350 3850 4900
Connection ~ 4000 4900
Wire Wire Line
	5600 4650 5600 4250
Wire Wire Line
	5500 4250 5800 4250
Wire Wire Line
	5800 4250 5800 4200
Connection ~ 5600 4250
Wire Wire Line
	5500 3950 5500 3900
Wire Wire Line
	5500 3900 5800 3900
Wire Wire Line
	5650 3900 4700 3900
Connection ~ 5650 3900
Wire Wire Line
	5600 5200 5600 4750
Connection ~ 4700 5200
Wire Wire Line
	3750 2950 3750 3500
Wire Wire Line
	3750 3500 2050 3500
Wire Wire Line
	2050 2950 2050 4500
Wire Wire Line
	2050 4500 2100 4500
Connection ~ 2050 3500
Wire Wire Line
	2600 3850 2600 2950
Wire Wire Line
	2600 2950 2800 2950
Wire Wire Line
	1100 2950 1100 3300
Wire Wire Line
	1100 3300 2600 3300
Connection ~ 2600 3300
Wire Wire Line
	2600 3950 2050 3950
Wire Wire Line
	2050 3950 2050 4000
Connection ~ 2050 4000
Wire Wire Line
	2600 4100 1500 4100
Wire Wire Line
	1500 4100 1500 2950
Wire Wire Line
	2550 4200 2600 4200
Wire Wire Line
	2550 4200 2550 3400
Wire Wire Line
	2550 3400 3200 3400
Wire Wire Line
	3200 3400 3200 2950
$EndSCHEMATC
