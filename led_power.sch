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
Sheet 3 4
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
L LT1610 U4
U 1 1 578D898F
P 5550 3400
F 0 "U4" H 5250 3550 60  0000 C CNN
F 1 "LT1610" H 5625 3125 60  0000 C CNN
F 2 "ledplay:MSOP-8" H 5550 3400 60  0001 C CNN
F 3 "" H 5550 3400 60  0000 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 578D899E
P 6950 2900
F 0 "D2" H 6950 3000 50  0000 C CNN
F 1 "MBR0520LT3G" H 6900 2800 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 6950 2900 50  0001 C CNN
F 3 "" H 6950 2900 50  0000 C CNN
	1    6950 2900
	-1   0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 578D89A5
P 4250 3200
F 0 "C12" H 4275 3300 50  0000 L CNN
F 1 "22 uF" H 4275 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4288 3050 50  0001 C CNN
F 3 "" H 4250 3200 50  0000 C CNN
	1    4250 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR52
U 1 1 578D89AC
P 4550 3450
F 0 "#PWR52" H 4550 3200 50  0001 C CNN
F 1 "GND" H 4550 3300 50  0000 C CNN
F 2 "" H 4550 3450 50  0000 C CNN
F 3 "" H 4550 3450 50  0000 C CNN
	1    4550 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR54
U 1 1 578D89B2
P 5750 4400
F 0 "#PWR54" H 5750 4150 50  0001 C CNN
F 1 "GND" H 5750 4250 50  0000 C CNN
F 2 "" H 5750 4400 50  0000 C CNN
F 3 "" H 5750 4400 50  0000 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 578D89B8
P 6350 3350
F 0 "R29" V 6430 3350 50  0000 C CNN
F 1 "560k" V 6350 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3350 50  0001 C CNN
F 3 "" H 6350 3350 50  0000 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 578D89BF
P 6350 3700
F 0 "R30" V 6430 3700 50  0000 C CNN
F 1 "787k" V 6350 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6280 3700 50  0001 C CNN
F 3 "" H 6350 3700 50  0000 C CNN
	1    6350 3700
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 578D8A04
P 5100 4000
F 0 "R27" V 5180 4000 50  0000 C CNN
F 1 "NP" V 5100 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5030 4000 50  0001 C CNN
F 3 "" H 5100 4000 50  0000 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L R R28
U 1 1 578D8A11
P 5450 4550
F 0 "R28" V 5530 4550 50  0000 C CNN
F 1 "220k" V 5450 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5380 4550 50  0001 C CNN
F 3 "" H 5450 4550 50  0000 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 578D8A18
P 5450 4900
F 0 "C15" H 5475 5000 50  0000 L CNN
F 1 "220 pF" H 5475 4800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5488 4750 50  0001 C CNN
F 3 "" H 5450 4900 50  0000 C CNN
	1    5450 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR53
U 1 1 578D8A1F
P 5450 5100
F 0 "#PWR53" H 5450 4850 50  0001 C CNN
F 1 "GND" H 5450 4950 50  0000 C CNN
F 2 "" H 5450 5100 50  0000 C CNN
F 3 "" H 5450 5100 50  0000 C CNN
	1    5450 5100
	1    0    0    -1  
$EndComp
Text HLabel 4450 3950 0    60   Input ~ 0
~LED_SHDN
Text HLabel 7850 2900 2    60   Output ~ 0
VCC_LED
Text HLabel 3950 2900 0    60   Input ~ 0
VCC_BATTERY
$Comp
L C C13
U 1 1 5797F251
P 4550 3200
F 0 "C13" H 4575 3300 50  0000 L CNN
F 1 "1 uF" H 4575 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4588 3050 50  0001 C CNN
F 3 "" H 4550 3200 50  0000 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5797F297
P 4850 3200
F 0 "C14" H 4875 3300 50  0000 L CNN
F 1 "100 nF" H 4875 3100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4888 3050 50  0001 C CNN
F 3 "" H 4850 3200 50  0000 C CNN
	1    4850 3200
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 57993070
P 7300 3600
F 0 "C16" H 7325 3700 50  0000 L CNN
F 1 "1 uF" H 7325 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7338 3450 50  0001 C CNN
F 3 "" H 7300 3600 50  0000 C CNN
	1    7300 3600
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 57993076
P 7600 3600
F 0 "C17" H 7625 3700 50  0000 L CNN
F 1 "22 uF" H 7625 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7638 3450 50  0001 C CNN
F 3 "" H 7600 3600 50  0000 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L C C21
U 1 1 5791F109
P 6050 2900
F 0 "C21" H 6075 3000 50  0000 L CNN
F 1 "1 uF" H 6075 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6088 2750 50  0001 C CNN
F 3 "" H 6050 2900 50  0000 C CNN
	1    6050 2900
	0    -1   -1   0   
$EndComp
$Comp
L L_coupled L1
U 1 1 579364B5
P 5600 2900
F 0 "L1" H 5700 2950 50  0000 L CNN
F 1 "22 uH" H 5700 2850 50  0000 L CNN
F 2 "ledplay:SRF0703" H 5650 2900 50  0001 C CNN
F 3 "" H 5650 2900 50  0000 C CNN
	1    5600 2900
	0    1    -1   0   
$EndComp
Wire Wire Line
	5450 2900 5450 3100
Wire Wire Line
	3950 2900 5500 2900
Wire Wire Line
	5700 2900 5900 2900
Wire Wire Line
	5750 2900 5750 3100
Connection ~ 5450 2900
Wire Wire Line
	5750 4300 5750 4400
Wire Wire Line
	6100 3550 6350 3550
Wire Wire Line
	6350 3550 6350 3500
Wire Wire Line
	7100 2900 7850 2900
Connection ~ 5750 2900
Wire Wire Line
	6350 3850 6350 4350
Wire Wire Line
	6350 3850 6200 3850
Wire Wire Line
	6200 3850 6200 3800
Wire Wire Line
	6200 3800 6100 3800
Wire Wire Line
	5150 3550 4950 3550
Wire Wire Line
	4950 3550 4950 3950
Wire Wire Line
	4950 3950 4450 3950
Wire Wire Line
	5100 3850 5100 3800
Wire Wire Line
	5100 3800 5150 3800
Wire Wire Line
	5450 4300 5450 4400
Wire Wire Line
	5450 4350 5100 4350
Wire Wire Line
	5100 4350 5100 4150
Wire Wire Line
	5450 5100 5450 5050
Wire Wire Line
	5450 4750 5450 4700
Connection ~ 5450 4350
Wire Wire Line
	4250 3350 4250 3400
Wire Wire Line
	4250 3400 4850 3400
Wire Wire Line
	4850 3400 4850 3350
Wire Wire Line
	4550 3350 4550 3450
Connection ~ 4550 3400
Wire Wire Line
	4850 2900 4850 3050
Wire Wire Line
	4550 3050 4550 2900
Connection ~ 4850 2900
Wire Wire Line
	4250 2900 4250 3050
Connection ~ 4550 2900
Connection ~ 4250 2900
Wire Wire Line
	7300 2900 7300 3450
Connection ~ 7300 2900
Wire Wire Line
	5750 4350 7600 4350
Wire Wire Line
	6700 2400 6700 4350
Connection ~ 5750 4350
Wire Wire Line
	6350 3200 6350 3100
Wire Wire Line
	6350 3100 7300 3100
Connection ~ 7300 3100
Wire Wire Line
	7300 3200 7600 3200
Wire Wire Line
	7600 3200 7600 3450
Connection ~ 7300 3200
Connection ~ 6350 4350
Wire Wire Line
	7300 4350 7300 3750
Connection ~ 6700 4350
Wire Wire Line
	7600 4350 7600 3750
Connection ~ 7300 4350
Wire Wire Line
	6200 2900 6800 2900
Wire Wire Line
	5500 2850 5450 2850
Connection ~ 6350 2900
Wire Wire Line
	5450 2400 6700 2400
Wire Wire Line
	6350 2550 6350 2900
Wire Wire Line
	5750 2850 5700 2850
Wire Wire Line
	5750 2850 5750 2550
Wire Wire Line
	5750 2550 6350 2550
Wire Wire Line
	5450 2850 5450 2400
$EndSCHEMATC
