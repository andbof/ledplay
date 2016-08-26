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
Sheet 2 4
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
L CONN_01X05 P2
U 1 1 578C78C4
P 2000 2000
F 0 "P2" H 2000 2300 50  0000 C CNN
F 1 "CONN_01X05" V 2100 2000 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_5pin_straight" H 2000 2000 50  0001 C CNN
F 3 "" H 2000 2000 50  0000 C CNN
	1    2000 2000
	-1   0    0    -1  
$EndComp
Text Label 2350 1900 0    60   ~ 0
GND_LED1
$Comp
L 4093 U2
U 1 1 578C78CC
P 3750 2400
F 0 "U2" H 3800 2450 50  0000 C CNN
F 1 "4093" H 3800 2350 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 3750 2400 60  0001 C CNN
F 3 "" H 3750 2400 60  0000 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 578C78DA
P 3050 2200
F 0 "R13" V 3130 2200 50  0000 C CNN
F 1 "100k" V 3050 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2980 2200 50  0001 C CNN
F 3 "" H 3050 2200 50  0000 C CNN
	1    3050 2200
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 578C78E1
P 2750 2850
F 0 "R11" V 2830 2850 50  0000 C CNN
F 1 "100k" V 2750 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0000 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 578C78E8
P 2350 2200
F 0 "R7" V 2430 2200 50  0000 C CNN
F 1 "1k" V 2350 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2280 2200 50  0001 C CNN
F 3 "" H 2350 2200 50  0000 C CNN
	1    2350 2200
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 578C78EF
P 2550 2100
F 0 "R9" V 2630 2100 50  0000 C CNN
F 1 "1k" V 2550 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2480 2100 50  0001 C CNN
F 3 "" H 2550 2100 50  0000 C CNN
	1    2550 2100
	0    1    1    0   
$EndComp
$Comp
L BSS138 Q1
U 1 1 578C78F6
P 3550 1500
F 0 "Q1" H 3750 1575 50  0000 L CNN
F 1 "BSS138" H 3750 1500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3750 1425 50  0000 L CIN
F 3 "" H 3550 1500 50  0000 L CNN
	1    3550 1500
	-1   0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 578C78FD
P 3800 1750
F 0 "R15" V 3880 1750 50  0000 C CNN
F 1 "100k" V 3800 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3730 1750 50  0001 C CNN
F 3 "" H 3800 1750 50  0000 C CNN
	1    3800 1750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR024
U 1 1 578C7905
P 3050 2000
F 0 "#PWR024" H 3050 1850 50  0001 C CNN
F 1 "+3V3" H 3050 2140 50  0000 C CNN
F 2 "" H 3050 2000 50  0000 C CNN
F 3 "" H 3050 2000 50  0000 C CNN
	1    3050 2000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR025
U 1 1 578C790B
P 2750 2650
F 0 "#PWR025" H 2750 2500 50  0001 C CNN
F 1 "+3V3" H 2750 2790 50  0000 C CNN
F 2 "" H 2750 2650 50  0000 C CNN
F 3 "" H 2750 2650 50  0000 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR026
U 1 1 578C7912
P 2850 2050
F 0 "#PWR026" H 2850 1800 50  0001 C CNN
F 1 "GNDD" H 2850 1900 50  0000 C CNN
F 2 "" H 2850 2050 50  0000 C CNN
F 3 "" H 2850 2050 50  0000 C CNN
	1    2850 2050
	1    0    0    -1  
$EndComp
$Comp
L GNDLED #PWR027
U 1 1 578C7919
P 3800 1950
F 0 "#PWR027" H 3800 1700 50  0001 C CNN
F 1 "GNDLED" H 3800 1800 50  0000 C CNN
F 2 "" H 3800 1950 50  0000 C CNN
F 3 "" H 3800 1950 50  0000 C CNN
	1    3800 1950
	1    0    0    -1  
$EndComp
$Comp
L +LED #PWR028
U 1 1 578C791F
P 2700 1700
F 0 "#PWR028" H 2700 1550 50  0001 C CNN
F 1 "+LED" H 2700 1840 50  0000 C CNN
F 2 "" H 2700 1700 50  0000 C CNN
F 3 "" H 2700 1700 50  0000 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
Text HLabel 4850 2400 2    60   Output ~ 0
SW1_STATE
Text HLabel 4850 1550 2    60   Input ~ 0
LED1_CTRL
Text Label 2350 2000 0    60   ~ 0
GND_SW1
$Comp
L CONN_01X05 P3
U 1 1 578C940E
P 2000 4300
F 0 "P3" H 2000 4600 50  0000 C CNN
F 1 "CONN_01X05" V 2100 4300 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_5pin_straight" H 2000 4300 50  0001 C CNN
F 3 "" H 2000 4300 50  0000 C CNN
	1    2000 4300
	-1   0    0    -1  
$EndComp
Text Label 2350 4200 0    60   ~ 0
GND_LED2
$Comp
L 4093 U2
U 3 1 578C9415
P 3750 4700
F 0 "U2" H 3800 4750 50  0000 C CNN
F 1 "4093" H 3800 4650 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 3750 4700 60  0001 C CNN
F 3 "" H 3750 4700 60  0000 C CNN
	3    3750 4700
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 578C9421
P 3050 4500
F 0 "R14" V 3130 4500 50  0000 C CNN
F 1 "100k" V 3050 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2980 4500 50  0001 C CNN
F 3 "" H 3050 4500 50  0000 C CNN
	1    3050 4500
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 578C9427
P 2750 5150
F 0 "R12" V 2830 5150 50  0000 C CNN
F 1 "100k" V 2750 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 5150 50  0001 C CNN
F 3 "" H 2750 5150 50  0000 C CNN
	1    2750 5150
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 578C942D
P 2350 4500
F 0 "R8" V 2430 4500 50  0000 C CNN
F 1 "1k" V 2350 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2280 4500 50  0001 C CNN
F 3 "" H 2350 4500 50  0000 C CNN
	1    2350 4500
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 578C9433
P 2550 4400
F 0 "R10" V 2630 4400 50  0000 C CNN
F 1 "1k" V 2550 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2480 4400 50  0001 C CNN
F 3 "" H 2550 4400 50  0000 C CNN
	1    2550 4400
	0    1    1    0   
$EndComp
$Comp
L BSS138 Q2
U 1 1 578C9439
P 3550 3800
F 0 "Q2" H 3750 3875 50  0000 L CNN
F 1 "BSS138" H 3750 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3750 3725 50  0000 L CIN
F 3 "" H 3550 3800 50  0000 L CNN
	1    3550 3800
	-1   0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 578C943F
P 3800 4050
F 0 "R16" V 3880 4050 50  0000 C CNN
F 1 "100k" V 3800 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3730 4050 50  0001 C CNN
F 3 "" H 3800 4050 50  0000 C CNN
	1    3800 4050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR029
U 1 1 578C9445
P 3050 4300
F 0 "#PWR029" H 3050 4150 50  0001 C CNN
F 1 "+3V3" H 3050 4440 50  0000 C CNN
F 2 "" H 3050 4300 50  0000 C CNN
F 3 "" H 3050 4300 50  0000 C CNN
	1    3050 4300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR030
U 1 1 578C944B
P 2750 4950
F 0 "#PWR030" H 2750 4800 50  0001 C CNN
F 1 "+3V3" H 2750 5090 50  0000 C CNN
F 2 "" H 2750 4950 50  0000 C CNN
F 3 "" H 2750 4950 50  0000 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR031
U 1 1 578C9451
P 2850 4350
F 0 "#PWR031" H 2850 4100 50  0001 C CNN
F 1 "GNDD" H 2850 4200 50  0000 C CNN
F 2 "" H 2850 4350 50  0000 C CNN
F 3 "" H 2850 4350 50  0000 C CNN
	1    2850 4350
	1    0    0    -1  
$EndComp
$Comp
L GNDLED #PWR032
U 1 1 578C9458
P 3800 4250
F 0 "#PWR032" H 3800 4000 50  0001 C CNN
F 1 "GNDLED" H 3800 4100 50  0000 C CNN
F 2 "" H 3800 4250 50  0000 C CNN
F 3 "" H 3800 4250 50  0000 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
$Comp
L +LED #PWR033
U 1 1 578C945E
P 2700 4000
F 0 "#PWR033" H 2700 3850 50  0001 C CNN
F 1 "+LED" H 2700 4140 50  0000 C CNN
F 2 "" H 2700 4000 50  0000 C CNN
F 3 "" H 2700 4000 50  0000 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
Text HLabel 4950 4700 2    60   Output ~ 0
SW2_STATE
Text Label 2350 4300 0    60   ~ 0
GND_SW2
$Comp
L CONN_01X05 P4
U 1 1 578CA110
P 6400 2100
F 0 "P4" H 6400 2400 50  0000 C CNN
F 1 "CONN_01X05" V 6500 2100 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_5pin_straight" H 6400 2100 50  0001 C CNN
F 3 "" H 6400 2100 50  0000 C CNN
	1    6400 2100
	-1   0    0    -1  
$EndComp
Text Label 6750 2000 0    60   ~ 0
GND_LED3
$Comp
L R R23
U 1 1 578CA123
P 7450 2300
F 0 "R23" V 7530 2300 50  0000 C CNN
F 1 "100k" V 7450 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7380 2300 50  0001 C CNN
F 3 "" H 7450 2300 50  0000 C CNN
	1    7450 2300
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 578CA129
P 7150 2950
F 0 "R21" V 7230 2950 50  0000 C CNN
F 1 "100k" V 7150 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7080 2950 50  0001 C CNN
F 3 "" H 7150 2950 50  0000 C CNN
	1    7150 2950
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 578CA12F
P 6750 2300
F 0 "R17" V 6830 2300 50  0000 C CNN
F 1 "1k" V 6750 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6680 2300 50  0001 C CNN
F 3 "" H 6750 2300 50  0000 C CNN
	1    6750 2300
	0    1    1    0   
$EndComp
$Comp
L R R19
U 1 1 578CA135
P 6950 2200
F 0 "R19" V 7030 2200 50  0000 C CNN
F 1 "1k" V 6950 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6880 2200 50  0001 C CNN
F 3 "" H 6950 2200 50  0000 C CNN
	1    6950 2200
	0    1    1    0   
$EndComp
$Comp
L BSS138 Q3
U 1 1 578CA13B
P 7950 1600
F 0 "Q3" H 8150 1675 50  0000 L CNN
F 1 "BSS138" H 8150 1600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8150 1525 50  0000 L CIN
F 3 "" H 7950 1600 50  0000 L CNN
	1    7950 1600
	-1   0    0    -1  
$EndComp
$Comp
L R R25
U 1 1 578CA141
P 8200 1850
F 0 "R25" V 8280 1850 50  0000 C CNN
F 1 "100k" V 8200 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8130 1850 50  0001 C CNN
F 3 "" H 8200 1850 50  0000 C CNN
	1    8200 1850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR034
U 1 1 578CA147
P 7450 2100
F 0 "#PWR034" H 7450 1950 50  0001 C CNN
F 1 "+3V3" H 7450 2240 50  0000 C CNN
F 2 "" H 7450 2100 50  0000 C CNN
F 3 "" H 7450 2100 50  0000 C CNN
	1    7450 2100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR035
U 1 1 578CA14D
P 7150 2750
F 0 "#PWR035" H 7150 2600 50  0001 C CNN
F 1 "+3V3" H 7150 2890 50  0000 C CNN
F 2 "" H 7150 2750 50  0000 C CNN
F 3 "" H 7150 2750 50  0000 C CNN
	1    7150 2750
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR036
U 1 1 578CA153
P 7250 2150
F 0 "#PWR036" H 7250 1900 50  0001 C CNN
F 1 "GNDD" H 7250 2000 50  0000 C CNN
F 2 "" H 7250 2150 50  0000 C CNN
F 3 "" H 7250 2150 50  0000 C CNN
	1    7250 2150
	1    0    0    -1  
$EndComp
$Comp
L GNDLED #PWR037
U 1 1 578CA15A
P 8200 2050
F 0 "#PWR037" H 8200 1800 50  0001 C CNN
F 1 "GNDLED" H 8200 1900 50  0000 C CNN
F 2 "" H 8200 2050 50  0000 C CNN
F 3 "" H 8200 2050 50  0000 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
$Comp
L +LED #PWR038
U 1 1 578CA160
P 7100 1800
F 0 "#PWR038" H 7100 1650 50  0001 C CNN
F 1 "+LED" H 7100 1940 50  0000 C CNN
F 2 "" H 7100 1800 50  0000 C CNN
F 3 "" H 7100 1800 50  0000 C CNN
	1    7100 1800
	1    0    0    -1  
$EndComp
Text HLabel 9250 2500 2    60   Output ~ 0
SW3_STATE
Text HLabel 9250 1650 2    60   Input ~ 0
LED3_CTRL
Text Label 6750 2100 0    60   ~ 0
GND_SW3
$Comp
L CONN_01X05 P5
U 1 1 578CB523
P 6400 4300
F 0 "P5" H 6400 4600 50  0000 C CNN
F 1 "CONN_01X05" V 6500 4300 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_5pin_straight" H 6400 4300 50  0001 C CNN
F 3 "" H 6400 4300 50  0000 C CNN
	1    6400 4300
	-1   0    0    -1  
$EndComp
Text Label 6750 4200 0    60   ~ 0
GND_LED4
$Comp
L R R24
U 1 1 578CB536
P 7450 4500
F 0 "R24" V 7530 4500 50  0000 C CNN
F 1 "100k" V 7450 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7380 4500 50  0001 C CNN
F 3 "" H 7450 4500 50  0000 C CNN
	1    7450 4500
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 578CB53C
P 7150 5150
F 0 "R22" V 7230 5150 50  0000 C CNN
F 1 "100k" V 7150 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7080 5150 50  0001 C CNN
F 3 "" H 7150 5150 50  0000 C CNN
	1    7150 5150
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 578CB542
P 6750 4500
F 0 "R18" V 6830 4500 50  0000 C CNN
F 1 "1k" V 6750 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6680 4500 50  0001 C CNN
F 3 "" H 6750 4500 50  0000 C CNN
	1    6750 4500
	0    1    1    0   
$EndComp
$Comp
L R R20
U 1 1 578CB548
P 6950 4400
F 0 "R20" V 7030 4400 50  0000 C CNN
F 1 "1k" V 6950 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6880 4400 50  0001 C CNN
F 3 "" H 6950 4400 50  0000 C CNN
	1    6950 4400
	0    1    1    0   
$EndComp
$Comp
L BSS138 Q4
U 1 1 578CB54E
P 7950 3800
F 0 "Q4" H 8150 3875 50  0000 L CNN
F 1 "BSS138" H 8150 3800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8150 3725 50  0000 L CIN
F 3 "" H 7950 3800 50  0000 L CNN
	1    7950 3800
	-1   0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 578CB554
P 8200 4050
F 0 "R26" V 8280 4050 50  0000 C CNN
F 1 "100k" V 8200 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8130 4050 50  0001 C CNN
F 3 "" H 8200 4050 50  0000 C CNN
	1    8200 4050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR039
U 1 1 578CB55A
P 7450 4300
F 0 "#PWR039" H 7450 4150 50  0001 C CNN
F 1 "+3V3" H 7450 4440 50  0000 C CNN
F 2 "" H 7450 4300 50  0000 C CNN
F 3 "" H 7450 4300 50  0000 C CNN
	1    7450 4300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR040
U 1 1 578CB560
P 7150 4950
F 0 "#PWR040" H 7150 4800 50  0001 C CNN
F 1 "+3V3" H 7150 5090 50  0000 C CNN
F 2 "" H 7150 4950 50  0000 C CNN
F 3 "" H 7150 4950 50  0000 C CNN
	1    7150 4950
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR041
U 1 1 578CB566
P 7250 4350
F 0 "#PWR041" H 7250 4100 50  0001 C CNN
F 1 "GNDD" H 7250 4200 50  0000 C CNN
F 2 "" H 7250 4350 50  0000 C CNN
F 3 "" H 7250 4350 50  0000 C CNN
	1    7250 4350
	1    0    0    -1  
$EndComp
$Comp
L GNDLED #PWR042
U 1 1 578CB56D
P 8200 4250
F 0 "#PWR042" H 8200 4000 50  0001 C CNN
F 1 "GNDLED" H 8200 4100 50  0000 C CNN
F 2 "" H 8200 4250 50  0000 C CNN
F 3 "" H 8200 4250 50  0000 C CNN
	1    8200 4250
	1    0    0    -1  
$EndComp
$Comp
L +LED #PWR043
U 1 1 578CB573
P 7100 4000
F 0 "#PWR043" H 7100 3850 50  0001 C CNN
F 1 "+LED" H 7100 4140 50  0000 C CNN
F 2 "" H 7100 4000 50  0000 C CNN
F 3 "" H 7100 4000 50  0000 C CNN
	1    7100 4000
	1    0    0    -1  
$EndComp
Text HLabel 9250 4700 2    60   Output ~ 0
SW4_STATE
Text HLabel 9250 3850 2    60   Input ~ 0
LED4_CTRL
Text Label 6750 4300 0    60   ~ 0
GND_SW4
$Comp
L 4093 U3
U 1 1 578CC51B
P 8150 2500
F 0 "U3" H 8200 2550 50  0000 C CNN
F 1 "4093" H 8200 2450 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 8150 2500 60  0001 C CNN
F 3 "" H 8150 2500 60  0000 C CNN
	1    8150 2500
	1    0    0    -1  
$EndComp
$Comp
L 4093 U3
U 2 1 578CC594
P 8150 3050
F 0 "U3" H 8200 3100 50  0000 C CNN
F 1 "4093" H 8200 3000 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 8150 3050 60  0001 C CNN
F 3 "" H 8150 3050 60  0000 C CNN
	2    8150 3050
	1    0    0    -1  
$EndComp
$Comp
L 4093 U3
U 3 1 578CCFE9
P 8150 4700
F 0 "U3" H 8200 4750 50  0000 C CNN
F 1 "4093" H 8200 4650 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 8150 4700 60  0001 C CNN
F 3 "" H 8150 4700 60  0000 C CNN
	3    8150 4700
	1    0    0    -1  
$EndComp
$Comp
L 4093 U3
U 4 1 578CD05A
P 8150 5250
F 0 "U3" H 8200 5300 50  0000 C CNN
F 1 "4093" H 8200 5200 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 8150 5250 60  0001 C CNN
F 3 "" H 8150 5250 60  0000 C CNN
	4    8150 5250
	1    0    0    -1  
$EndComp
$Comp
L 4093 U2
U 2 1 578D2EB2
P 3750 2950
F 0 "U2" H 3800 3000 50  0000 C CNN
F 1 "4093" H 3800 2900 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 3750 2950 60  0001 C CNN
F 3 "" H 3750 2950 60  0000 C CNN
	2    3750 2950
	1    0    0    -1  
$EndComp
$Comp
L 4093 U2
U 4 1 578D2FB1
P 3750 5250
F 0 "U2" H 3800 5300 50  0000 C CNN
F 1 "4093" H 3800 5200 50  0000 C CNN
F 2 "SMD_Packages:SOIC-14_N" H 3750 5250 60  0001 C CNN
F 3 "" H 3750 5250 60  0000 C CNN
	4    3750 5250
	1    0    0    -1  
$EndComp
Text HLabel 4850 3850 2    60   Input ~ 0
LED2_CTRL
$Comp
L +3V3 #PWR044
U 1 1 57975FC0
P 4400 4150
F 0 "#PWR044" H 4400 4000 50  0001 C CNN
F 1 "+3V3" H 4400 4290 50  0000 C CNN
F 2 "" H 4400 4150 50  0000 C CNN
F 3 "" H 4400 4150 50  0000 C CNN
	1    4400 4150
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR045
U 1 1 579760CF
P 3550 5500
F 0 "#PWR045" H 3550 5250 50  0001 C CNN
F 1 "GNDD" H 3550 5350 50  0000 C CNN
F 2 "" H 3550 5500 50  0000 C CNN
F 3 "" H 3550 5500 50  0000 C CNN
	1    3550 5500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR046
U 1 1 57978B54
P 7950 5500
F 0 "#PWR046" H 7950 5250 50  0001 C CNN
F 1 "GNDD" H 7950 5350 50  0000 C CNN
F 2 "" H 7950 5500 50  0000 C CNN
F 3 "" H 7950 5500 50  0000 C CNN
	1    7950 5500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR047
U 1 1 57978BB0
P 8800 4150
F 0 "#PWR047" H 8800 4000 50  0001 C CNN
F 1 "+3V3" H 8800 4290 50  0000 C CNN
F 2 "" H 8800 4150 50  0000 C CNN
F 3 "" H 8800 4150 50  0000 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1900 2850 1900
Wire Wire Line
	4350 2950 4400 2950
Wire Wire Line
	4400 2950 4400 2700
Wire Wire Line
	3100 2650 4400 2650
Wire Wire Line
	4400 2700 3050 2700
Wire Wire Line
	3100 2650 3100 2850
Wire Wire Line
	3100 2850 3150 2850
Wire Wire Line
	4350 2400 4850 2400
Wire Wire Line
	4400 2650 4400 2400
Wire Wire Line
	3150 2500 3050 2500
Wire Wire Line
	3050 2500 3050 2700
Connection ~ 4400 2400
Wire Wire Line
	2700 2400 3150 2400
Wire Wire Line
	3050 2400 3050 2350
Wire Wire Line
	3150 2400 3150 2300
Connection ~ 3050 2400
Wire Wire Line
	2850 1250 3450 1250
Wire Wire Line
	3750 1550 4850 1550
Connection ~ 3800 1550
Wire Wire Line
	2750 2650 2750 2700
Wire Wire Line
	2500 3050 3150 3050
Wire Wire Line
	2750 3050 2750 3000
Connection ~ 2750 3050
Wire Wire Line
	2850 1900 2850 1250
Wire Wire Line
	2200 2000 2850 2000
Wire Wire Line
	2500 2200 2500 3050
Wire Wire Line
	2400 2100 2200 2100
Wire Wire Line
	2700 2100 2700 2400
Wire Wire Line
	2850 2000 2850 2050
Wire Wire Line
	3050 2000 3050 2050
Wire Wire Line
	3450 1250 3450 1300
Wire Wire Line
	3800 1600 3800 1550
Wire Wire Line
	3800 1950 3800 1900
Wire Wire Line
	3800 1900 3450 1900
Wire Wire Line
	3450 1900 3450 1700
Wire Wire Line
	2200 4200 2850 4200
Wire Wire Line
	4350 5250 4400 5250
Wire Wire Line
	4400 5250 4400 5000
Wire Wire Line
	3100 4950 4400 4950
Wire Wire Line
	4400 5000 3050 5000
Wire Wire Line
	3100 4950 3100 5150
Wire Wire Line
	3100 5150 3150 5150
Wire Wire Line
	4350 4700 4950 4700
Wire Wire Line
	4400 4950 4400 4700
Wire Wire Line
	3150 4800 3050 4800
Wire Wire Line
	3050 4800 3050 5000
Connection ~ 4400 4700
Wire Wire Line
	2700 4700 3150 4700
Wire Wire Line
	3050 4700 3050 4650
Wire Wire Line
	3150 4700 3150 4600
Connection ~ 3050 4700
Wire Wire Line
	2850 3550 3450 3550
Wire Wire Line
	3750 3850 4850 3850
Connection ~ 3800 3850
Wire Wire Line
	2750 4950 2750 5000
Wire Wire Line
	2500 5350 3150 5350
Wire Wire Line
	2750 5350 2750 5300
Connection ~ 2750 5350
Wire Wire Line
	2850 4200 2850 3550
Wire Wire Line
	2200 4300 2850 4300
Wire Wire Line
	2200 4100 2700 4100
Wire Wire Line
	2500 4500 2500 5350
Wire Wire Line
	2400 4400 2200 4400
Wire Wire Line
	2700 4400 2700 4700
Wire Wire Line
	2850 4300 2850 4350
Wire Wire Line
	3050 4300 3050 4350
Wire Wire Line
	2700 4100 2700 4000
Wire Wire Line
	3450 3550 3450 3600
Wire Wire Line
	3800 4250 3800 4200
Wire Wire Line
	3800 4200 3450 4200
Wire Wire Line
	3450 4200 3450 4000
Wire Wire Line
	6600 2000 7250 2000
Wire Wire Line
	8750 3050 8800 3050
Wire Wire Line
	8800 3050 8800 2800
Wire Wire Line
	7500 2750 8800 2750
Wire Wire Line
	8800 2800 7450 2800
Wire Wire Line
	7500 2750 7500 2950
Wire Wire Line
	7500 2950 7550 2950
Wire Wire Line
	8750 2500 9250 2500
Wire Wire Line
	8800 2750 8800 2500
Wire Wire Line
	7550 2600 7450 2600
Wire Wire Line
	7450 2600 7450 2800
Connection ~ 8800 2500
Wire Wire Line
	7100 2500 7550 2500
Wire Wire Line
	7450 2500 7450 2450
Wire Wire Line
	7550 2500 7550 2400
Connection ~ 7450 2500
Wire Wire Line
	7250 1350 7850 1350
Wire Wire Line
	8150 1650 9250 1650
Connection ~ 8200 1650
Wire Wire Line
	7150 2750 7150 2800
Wire Wire Line
	6900 3150 7550 3150
Wire Wire Line
	7150 3150 7150 3100
Connection ~ 7150 3150
Wire Wire Line
	7250 2000 7250 1350
Wire Wire Line
	6600 2100 7250 2100
Wire Wire Line
	6600 1900 7100 1900
Wire Wire Line
	6900 2300 6900 3150
Wire Wire Line
	6800 2200 6600 2200
Wire Wire Line
	7100 2200 7100 2500
Wire Wire Line
	7250 2100 7250 2150
Wire Wire Line
	7450 2100 7450 2150
Wire Wire Line
	7100 1900 7100 1800
Wire Wire Line
	7850 1350 7850 1400
Wire Wire Line
	8200 1700 8200 1650
Wire Wire Line
	8200 2050 8200 2000
Wire Wire Line
	8200 2000 7850 2000
Wire Wire Line
	7850 2000 7850 1800
Wire Wire Line
	6600 4200 7250 4200
Wire Wire Line
	8750 5250 8800 5250
Wire Wire Line
	8800 5250 8800 5000
Wire Wire Line
	7500 4950 8800 4950
Wire Wire Line
	8800 5000 7450 5000
Wire Wire Line
	7500 4950 7500 5150
Wire Wire Line
	7500 5150 7550 5150
Wire Wire Line
	8750 4700 9250 4700
Wire Wire Line
	8800 4950 8800 4700
Wire Wire Line
	7550 4800 7450 4800
Wire Wire Line
	7450 4800 7450 5000
Connection ~ 8800 4700
Wire Wire Line
	7100 4700 7550 4700
Wire Wire Line
	7450 4700 7450 4650
Wire Wire Line
	7550 4700 7550 4600
Connection ~ 7450 4700
Wire Wire Line
	7250 3550 7850 3550
Wire Wire Line
	8150 3850 9250 3850
Connection ~ 8200 3850
Wire Wire Line
	7150 4950 7150 5000
Wire Wire Line
	6900 5350 7550 5350
Wire Wire Line
	7150 5350 7150 5300
Connection ~ 7150 5350
Wire Wire Line
	7250 4200 7250 3550
Wire Wire Line
	6600 4300 7250 4300
Wire Wire Line
	6600 4100 7100 4100
Wire Wire Line
	6900 4500 6900 5350
Wire Wire Line
	6800 4400 6600 4400
Wire Wire Line
	7100 4400 7100 4700
Wire Wire Line
	7250 4300 7250 4350
Wire Wire Line
	7450 4300 7450 4350
Wire Wire Line
	7100 4100 7100 4000
Wire Wire Line
	7850 3550 7850 3600
Wire Wire Line
	8200 3900 8200 3850
Wire Wire Line
	8200 4250 8200 4200
Wire Wire Line
	8200 4200 7850 4200
Wire Wire Line
	7850 4200 7850 4000
Wire Wire Line
	2700 1700 2700 1800
Wire Wire Line
	2700 1800 2200 1800
Wire Wire Line
	3550 4450 3550 4500
Wire Wire Line
	3550 5500 3550 5450
Wire Wire Line
	7950 4450 7950 4500
Wire Wire Line
	7950 5500 7950 5450
Wire Wire Line
	3800 3900 3800 3850
$Comp
L C C8
U 1 1 579E0256
P 4500 4350
F 0 "C8" H 4525 4450 50  0000 L CNN
F 1 "1 uF" H 4525 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4538 4200 50  0001 C CNN
F 3 "" H 4500 4350 50  0000 C CNN
	1    4500 4350
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 579E02CF
P 4800 4350
F 0 "C9" H 4825 4450 50  0000 L CNN
F 1 "100 nF" H 4825 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4838 4200 50  0001 C CNN
F 3 "" H 4800 4350 50  0000 C CNN
	1    4800 4350
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR048
U 1 1 579E04A2
P 4500 4500
F 0 "#PWR048" H 4500 4250 50  0001 C CNN
F 1 "GNDD" H 4500 4350 50  0000 C CNN
F 2 "" H 4500 4500 50  0000 C CNN
F 3 "" H 4500 4500 50  0000 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR049
U 1 1 579E0545
P 4800 4500
F 0 "#PWR049" H 4800 4250 50  0001 C CNN
F 1 "GNDD" H 4800 4350 50  0000 C CNN
F 2 "" H 4800 4500 50  0000 C CNN
F 3 "" H 4800 4500 50  0000 C CNN
	1    4800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4200 4800 4200
Wire Wire Line
	4400 4200 4400 4150
Connection ~ 4500 4200
Wire Wire Line
	4100 4200 4100 4450
Wire Wire Line
	4100 4450 3550 4450
Connection ~ 4400 4200
Wire Wire Line
	8800 4150 8800 4200
Wire Wire Line
	8500 4200 9200 4200
Wire Wire Line
	8500 4200 8500 4450
Wire Wire Line
	8500 4450 7950 4450
$Comp
L C C10
U 1 1 579E43C3
P 8900 4350
F 0 "C10" H 8925 4450 50  0000 L CNN
F 1 "1 uF" H 8925 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8938 4200 50  0001 C CNN
F 3 "" H 8900 4350 50  0000 C CNN
	1    8900 4350
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 579E4815
P 9200 4350
F 0 "C11" H 9225 4450 50  0000 L CNN
F 1 "100 nF" H 9225 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9238 4200 50  0001 C CNN
F 3 "" H 9200 4350 50  0000 C CNN
	1    9200 4350
	1    0    0    -1  
$EndComp
Connection ~ 8800 4200
Connection ~ 8900 4200
$Comp
L GNDD #PWR050
U 1 1 579E4A40
P 8900 4500
F 0 "#PWR050" H 8900 4250 50  0001 C CNN
F 1 "GNDD" H 8900 4350 50  0000 C CNN
F 2 "" H 8900 4500 50  0000 C CNN
F 3 "" H 8900 4500 50  0000 C CNN
	1    8900 4500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR051
U 1 1 579E4B40
P 9200 4500
F 0 "#PWR051" H 9200 4250 50  0001 C CNN
F 1 "GNDD" H 9200 4350 50  0000 C CNN
F 2 "" H 9200 4500 50  0000 C CNN
F 3 "" H 9200 4500 50  0000 C CNN
	1    9200 4500
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG052
U 1 1 57916DBF
P 2200 1800
F 0 "#FLG052" H 2200 1895 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 1980 50  0000 C CNN
F 2 "" H 2200 1800 50  0000 C CNN
F 3 "" H 2200 1800 50  0000 C CNN
	1    2200 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
