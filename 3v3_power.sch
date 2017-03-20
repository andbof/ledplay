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
LIBS:ledplay
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:logo
LIBS:maxim
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:ledplay-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "ledplay"
Date ""
Rev "v1.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LTC3429 U5
U 1 1 578DFC31
P 5500 3500
F 0 "U5" H 5250 3600 60  0000 C CNN
F 1 "LTC3429" H 5500 3200 60  0000 C CNN
F 2 "ledplay:SOT-23" H 5500 3500 60  0001 C CNN
F 3 "" H 5500 3500 60  0000 C CNN
	1    5500 3500
	1    0    0    -1  
$EndComp
$Comp
L L_Small L2
U 1 1 578DFC38
P 5300 3200
F 0 "L2" H 5330 3240 50  0000 L CNN
F 1 "6.8 uH" H 5330 3160 50  0000 L CNN
F 2 "ledplay:INDUCTOR_1812" H 5300 3200 50  0001 C CNN
F 3 "" H 5300 3200 50  0000 C CNN
	1    5300 3200
	0    1    -1   0   
$EndComp
$Comp
L C C18
U 1 1 578DFC3F
P 4250 3450
F 0 "C18" H 4275 3550 50  0000 L CNN
F 1 "10 uF" H 4275 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4288 3300 50  0001 C CNN
F 3 "" H 4250 3450 50  0000 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR55
U 1 1 578DFC46
P 4450 3800
F 0 "#PWR55" H 4450 3550 50  0001 C CNN
F 1 "GND" H 4450 3650 50  0000 C CNN
F 2 "" H 4450 3800 50  0000 C CNN
F 3 "" H 4450 3800 50  0000 C CNN
	1    4450 3800
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 578DFC4C
P 6350 3850
F 0 "R31" V 6430 3850 50  0000 C CNN
F 1 "1M" V 6350 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3850 50  0001 C CNN
F 3 "" H 6350 3850 50  0000 C CNN
	1    6350 3850
	1    0    0    -1  
$EndComp
$Comp
L R R33
U 1 1 578DFC53
P 6350 4600
F 0 "R33" V 6430 4600 50  0000 C CNN
F 1 "604k" V 6350 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 4600 50  0001 C CNN
F 3 "" H 6350 4600 50  0000 C CNN
	1    6350 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR56
U 1 1 578DFC5A
P 5500 4450
F 0 "#PWR56" H 5500 4200 50  0001 C CNN
F 1 "GND" H 5500 4300 50  0000 C CNN
F 2 "" H 5500 4450 50  0000 C CNN
F 3 "" H 5500 4450 50  0000 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR57
U 1 1 578DFC67
P 6350 4800
F 0 "#PWR57" H 6350 4550 50  0001 C CNN
F 1 "GNDD" H 6350 4650 50  0000 C CNN
F 2 "" H 6350 4800 50  0000 C CNN
F 3 "" H 6350 4800 50  0000 C CNN
	1    6350 4800
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR58
U 1 1 578DFC6D
P 6850 4150
F 0 "#PWR58" H 6850 3900 50  0001 C CNN
F 1 "GNDD" H 6850 4000 50  0000 C CNN
F 2 "" H 6850 4150 50  0000 C CNN
F 3 "" H 6850 4150 50  0000 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 578DFC7F
P 6850 3950
F 0 "C20" H 6875 4050 50  0000 L CNN
F 1 "10 uF" H 6875 3850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6888 3800 50  0001 C CNN
F 3 "" H 6850 3950 50  0000 C CNN
	1    6850 3950
	1    0    0    -1  
$EndComp
Text HLabel 4000 3200 0    60   Input ~ 0
VCC_BATTERY
Text HLabel 7150 3650 2    60   Output ~ 0
VCC_3V3
Wire Wire Line
	5500 3250 5500 3200
Wire Wire Line
	5500 3200 5400 3200
Wire Wire Line
	5000 3650 4950 3650
Wire Wire Line
	4950 3200 4950 3950
Wire Wire Line
	4000 3200 5200 3200
Connection ~ 4950 3200
Wire Wire Line
	4600 3700 4600 3600
Wire Wire Line
	4600 3300 4600 3200
Connection ~ 4600 3200
Wire Wire Line
	6000 3650 7150 3650
Wire Wire Line
	6850 3650 6850 3800
Wire Wire Line
	4950 3950 5000 3950
Connection ~ 4950 3650
Connection ~ 6850 3650
Wire Wire Line
	6000 3950 6050 3950
Wire Wire Line
	6050 3950 6050 4400
$Comp
L C C19
U 1 1 57983D38
P 4600 3450
F 0 "C19" H 4625 3550 50  0000 L CNN
F 1 "100 nF" H 4625 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4638 3300 50  0001 C CNN
F 3 "" H 4600 3450 50  0000 C CNN
	1    4600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3200 4250 3300
Connection ~ 4250 3200
Wire Wire Line
	4250 3700 4600 3700
Wire Wire Line
	4250 3700 4250 3600
Connection ~ 4450 3700
Wire Wire Line
	4450 3800 4450 3700
$Comp
L R R32
U 1 1 5798E0F1
P 6350 4200
F 0 "R32" V 6430 4200 50  0000 C CNN
F 1 "20k" V 6350 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 4200 50  0001 C CNN
F 3 "" H 6350 4200 50  0000 C CNN
	1    6350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3650 6350 3700
Connection ~ 6350 3650
Wire Wire Line
	6350 4000 6350 4050
Wire Wire Line
	6350 4350 6350 4450
Wire Wire Line
	6050 4400 6350 4400
Connection ~ 6350 4400
Wire Wire Line
	6350 4800 6350 4750
Wire Wire Line
	5500 4450 5500 4400
Wire Wire Line
	6850 4150 6850 4100
$EndSCHEMATC
