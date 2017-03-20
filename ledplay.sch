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
Sheet 1 4
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
L MKE04Z8VWJ4 U1
U 1 1 5782B212
P 8650 3350
F 0 "U1" H 8400 4250 60  0000 C CNN
F 1 "MKE04Z8VWJ4" H 8650 3000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-20_7.5x12.8mm_Pitch1.27mm" H 8650 3350 60  0001 C CNN
F 3 "" H 8650 3350 60  0000 C CNN
	1    8650 3350
	1    0    0    -1  
$EndComp
$Comp
L ARM_JTAG J2
U 1 1 57831D46
P 5150 2500
F 0 "J2" H 5050 1650 60  0000 C CNN
F 1 "CORTEX_DEBUG" H 5200 2550 60  0000 C CNN
F 2 "ledplay:CORTEX_DEBUG" H 5150 2500 60  0001 C CNN
F 3 "" H 5150 2500 60  0000 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR13
U 1 1 5788AF2B
P 4650 3300
F 0 "#PWR13" H 4650 3050 50  0001 C CNN
F 1 "GNDD" H 4650 3150 50  0000 C CNN
F 2 "" H 4650 3300 50  0000 C CNN
F 3 "" H 4650 3300 50  0000 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Text Label 9250 3000 0    60   ~ 0
UART0_RX
Text Label 9250 3100 0    60   ~ 0
UART0_TX
$Comp
L JUMPER JP1
U 1 1 5788E2D9
P 6100 2900
F 0 "JP1" H 6100 3050 50  0000 C CNN
F 1 "JUMPER" H 6100 2820 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 6100 2900 50  0001 C CNN
F 3 "" H 6100 2900 50  0000 C CNN
	1    6100 2900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 578A3422
P 7400 3600
F 0 "R4" V 7480 3600 50  0000 C CNN
F 1 "10k" V 7400 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7330 3600 50  0001 C CNN
F 3 "" H 7400 3600 50  0000 C CNN
	1    7400 3600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR19
U 1 1 578A35A1
P 7400 3450
F 0 "#PWR19" H 7400 3300 50  0001 C CNN
F 1 "+3V3" H 7400 3590 50  0000 C CNN
F 2 "" H 7400 3450 50  0000 C CNN
F 3 "" H 7400 3450 50  0000 C CNN
	1    7400 3450
	1    0    0    -1  
$EndComp
Text Label 7700 3300 0    60   ~ 0
NMI
$Comp
L GNDD #PWR14
U 1 1 578A48D9
P 4700 5700
F 0 "#PWR14" H 4700 5450 50  0001 C CNN
F 1 "GNDD" H 4700 5550 50  0000 C CNN
F 2 "" H 4700 5700 50  0000 C CNN
F 3 "" H 4700 5700 50  0000 C CNN
	1    4700 5700
	1    0    0    -1  
$EndComp
Text Label 4700 5500 0    60   ~ 0
UART0_RX
Text Label 4700 5400 0    60   ~ 0
UART0_TX
$Comp
L R R6
U 1 1 578A678E
P 8850 1750
F 0 "R6" V 8930 1750 50  0000 C CNN
F 1 "330" V 8850 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 1750 50  0001 C CNN
F 3 "" H 8850 1750 50  0000 C CNN
	1    8850 1750
	0    1    1    0   
$EndComp
$Comp
L GNDD #PWR23
U 1 1 578A72EC
P 9750 1850
F 0 "#PWR23" H 9750 1600 50  0001 C CNN
F 1 "GNDD" H 9750 1700 50  0000 C CNN
F 2 "" H 9750 1850 50  0000 C CNN
F 3 "" H 9750 1850 50  0000 C CNN
	1    9750 1850
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 578A8BBC
P 8650 1950
F 0 "C7" H 8675 2050 50  0000 L CNN
F 1 "100 nF" H 8675 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8688 1800 50  0001 C CNN
F 3 "" H 8650 1950 50  0000 C CNN
	1    8650 1950
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR21
U 1 1 578A8CF8
P 8650 2100
F 0 "#PWR21" H 8650 1850 50  0001 C CNN
F 1 "GNDD" H 8650 1950 50  0000 C CNN
F 2 "" H 8650 2100 50  0000 C CNN
F 3 "" H 8650 2100 50  0000 C CNN
	1    8650 2100
	1    0    0    -1  
$EndComp
Text Label 6350 3200 0    60   ~ 0
~MCU_RESET
Text Label 9250 2600 0    60   ~ 0
SWCLK
Text Label 6450 2900 0    60   ~ 0
UART0_TX
$Comp
L R R3
U 1 1 578BB25D
P 6050 2350
F 0 "R3" V 6130 2350 50  0000 C CNN
F 1 "10k" V 6050 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6050 3300 50  0000 C CNN
F 3 "" H 6050 2350 50  0000 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR15
U 1 1 578BB30F
P 6050 2500
F 0 "#PWR15" H 6050 2250 50  0001 C CNN
F 1 "GNDD" H 6050 2350 50  0000 C CNN
F 2 "" H 6050 2500 50  0000 C CNN
F 3 "" H 6050 2500 50  0000 C CNN
	1    6050 2500
	1    0    0    -1  
$EndComp
Text Label 6150 2150 0    60   ~ 0
SWCLK
Text Label 6150 1800 0    60   ~ 0
SWDIO
Text Label 7700 2700 0    60   ~ 0
SWDIO
$Comp
L R R5
U 1 1 578BC6D7
P 7750 2200
F 0 "R5" V 7830 2200 50  0000 C CNN
F 1 "10k" V 7750 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7680 2200 50  0001 C CNN
F 3 "" H 7750 2200 50  0000 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR20
U 1 1 578BC7A6
P 7600 1850
F 0 "#PWR20" H 7600 1700 50  0001 C CNN
F 1 "+3V3" H 7600 1990 50  0000 C CNN
F 2 "" H 7600 1850 50  0000 C CNN
F 3 "" H 7600 1850 50  0000 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 578BE6A0
P 7500 2150
F 0 "D1" H 7500 2250 50  0000 C CNN
F 1 "MBR0520LT3G" H 7500 2050 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 7500 2150 50  0001 C CNN
F 3 "" H 7500 2150 50  0000 C CNN
	1    7500 2150
	0    -1   1    0   
$EndComp
$Sheet
S 1400 3050 1350 1350
U 578C70A0
F0 "LEDSWITCH_CTRL" 60
F1 "ledswitch_ctrl.sch" 60
F2 "SW1_STATE" O R 2750 3200 60 
F3 "LED1_CTRL" I L 1400 3200 60 
F4 "SW3_STATE" O R 2750 3900 60 
F5 "LED3_CTRL" I L 1400 3900 60 
F6 "SW2_STATE" O R 2750 3550 60 
F7 "LED2_CTRL" I L 1400 3550 60 
F8 "SW4_STATE" O R 2750 4250 60 
F9 "LED4_CTRL" I L 1400 4250 60 
$EndSheet
$Comp
L +3V3 #PWR11
U 1 1 578E1480
P 3300 2300
F 0 "#PWR11" H 3300 2150 50  0001 C CNN
F 1 "+3V3" H 3300 2440 50  0000 C CNN
F 2 "" H 3300 2300 50  0000 C CNN
F 3 "" H 3300 2300 50  0000 C CNN
	1    3300 2300
	1    0    0    -1  
$EndComp
$Comp
L +LED #PWR10
U 1 1 578E25D3
P 3300 1200
F 0 "#PWR10" H 3300 1050 50  0001 C CNN
F 1 "+LED" H 3300 1340 50  0000 C CNN
F 2 "" H 3300 1200 50  0000 C CNN
F 3 "" H 3300 1200 50  0000 C CNN
	1    3300 1200
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR2
U 1 1 578E2A86
P 1150 1000
F 0 "#PWR2" H 1150 850 50  0001 C CNN
F 1 "+BATT" H 1150 1140 50  0000 C CNN
F 2 "" H 1150 1000 50  0000 C CNN
F 3 "" H 1150 1000 50  0000 C CNN
	1    1150 1000
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR3
U 1 1 578E2B59
P 1150 2300
F 0 "#PWR3" H 1150 2150 50  0001 C CNN
F 1 "+BATT" H 1150 2440 50  0000 C CNN
F 2 "" H 1150 2300 50  0000 C CNN
F 3 "" H 1150 2300 50  0000 C CNN
	1    1150 2300
	1    0    0    -1  
$EndComp
Text Label 9250 3400 0    60   ~ 0
LED1_CTRL
Text Label 9250 3500 0    60   ~ 0
LED2_CTRL
Text Label 7700 3500 0    60   ~ 0
LED3_CTRL
Text Label 7700 3400 0    60   ~ 0
LED4_CTRL
Text Label 600  3200 0    60   ~ 0
LED1_CTRL
Text Label 600  3550 0    60   ~ 0
LED2_CTRL
Text Label 600  3900 0    60   ~ 0
LED3_CTRL
Text Label 600  4250 0    60   ~ 0
LED4_CTRL
Text Label 3200 3200 0    60   ~ 0
SW1_STATE
Text Label 3200 3550 0    60   ~ 0
SW2_STATE
Text Label 3200 3900 0    60   ~ 0
SW3_STATE
Text Label 3200 4250 0    60   ~ 0
SW4_STATE
Text Label 9250 2700 0    60   ~ 0
SW1_STATE
Text Label 9250 2800 0    60   ~ 0
SW2_STATE
Text Label 9250 2900 0    60   ~ 0
SW3_STATE
Text Label 9250 3200 0    60   ~ 0
SW4_STATE
Text Label 7700 3100 0    60   ~ 0
XTAL
Text Label 7700 3000 0    60   ~ 0
EXTAL
Text Label 7700 3200 0    60   ~ 0
~LED_SHDN
Text Label 600  1450 0    60   ~ 0
~LED_SHDN
$Comp
L +3V3 #PWR17
U 1 1 57904551
P 7100 2650
F 0 "#PWR17" H 7100 2500 50  0001 C CNN
F 1 "+3V3" H 7100 2790 50  0000 C CNN
F 2 "" H 7100 2650 50  0000 C CNN
F 3 "" H 7100 2650 50  0000 C CNN
	1    7100 2650
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR18
U 1 1 57904653
P 7100 3150
F 0 "#PWR18" H 7100 2900 50  0001 C CNN
F 1 "GNDD" H 7100 3000 50  0000 C CNN
F 2 "" H 7100 3150 50  0000 C CNN
F 3 "" H 7100 3150 50  0000 C CNN
	1    7100 3150
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 57907470
P 7350 2900
F 0 "C4" H 7375 3000 50  0000 L CNN
F 1 "100 nF" H 7375 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7388 2750 50  0001 C CNN
F 3 "" H 7350 2900 50  0000 C CNN
	1    7350 2900
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 579076A6
P 7100 2900
F 0 "C3" H 7125 3000 50  0000 L CNN
F 1 "10 uF" H 7125 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7138 2750 50  0001 C CNN
F 3 "" H 7100 2900 50  0000 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR12
U 1 1 5790AD5D
P 4650 2300
F 0 "#PWR12" H 4650 2150 50  0001 C CNN
F 1 "+3V3" H 4650 2440 50  0000 C CNN
F 2 "" H 4650 2300 50  0000 C CNN
F 3 "" H 4650 2300 50  0000 C CNN
	1    4650 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W6
U 1 1 57913951
P 6900 2400
F 0 "W6" H 6900 2670 50  0000 C CNN
F 1 "TEST_1P" H 6900 2600 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7100 2400 50  0001 C CNN
F 3 "" H 7100 2400 50  0000 C CNN
	1    6900 2400
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 5791B068
P 1200 1450
F 0 "W1" H 1200 1720 50  0000 C CNN
F 1 "TEST_1P" H 1200 1650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1400 1450 50  0001 C CNN
F 3 "" H 1400 1450 50  0000 C CNN
	1    1200 1450
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W5
U 1 1 5791B858
P 3000 2350
F 0 "W5" H 3000 2620 50  0000 C CNN
F 1 "TEST_1P" H 3000 2550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0000 C CNN
	1    3000 2350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W4
U 1 1 5791B9BB
P 3000 1250
F 0 "W4" H 3000 1520 50  0000 C CNN
F 1 "TEST_1P" H 3000 1450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3200 1250 50  0001 C CNN
F 3 "" H 3200 1250 50  0000 C CNN
	1    3000 1250
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 57924879
P 6800 5300
F 0 "Y1" H 6800 5450 50  0000 C CNN
F 1 "14.7456 MHz" H 6800 5150 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-SD_SMD" H 6800 5300 50  0001 C CNN
F 3 "" H 6800 5300 50  0000 C CNN
	1    6800 5300
	1    0    0    -1  
$EndComp
Text Label 6450 4800 1    60   ~ 0
XTAL
Text Label 7150 4800 1    60   ~ 0
EXTAL
$Comp
L C C5
U 1 1 57924D6B
P 6450 5650
F 0 "C5" H 6475 5750 50  0000 L CNN
F 1 "18 pF" H 6475 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6488 5500 50  0001 C CNN
F 3 "" H 6450 5650 50  0000 C CNN
	1    6450 5650
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 57924E54
P 7150 5650
F 0 "C6" H 7175 5750 50  0000 L CNN
F 1 "18 pF" H 7175 5550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7188 5500 50  0001 C CNN
F 3 "" H 7150 5650 50  0000 C CNN
	1    7150 5650
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR16
U 1 1 5792546F
P 6800 5900
F 0 "#PWR16" H 6800 5650 50  0001 C CNN
F 1 "GNDD" H 6800 5750 50  0000 C CNN
F 2 "" H 6800 5900 50  0000 C CNN
F 3 "" H 6800 5900 50  0000 C CNN
	1    6800 5900
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR8
U 1 1 5792F068
P 2450 5850
F 0 "#PWR8" H 2450 5600 50  0001 C CNN
F 1 "GNDD" H 2450 5700 50  0000 C CNN
F 2 "" H 2450 5850 50  0000 C CNN
F 3 "" H 2450 5850 50  0000 C CNN
	1    2450 5850
	1    0    0    -1  
$EndComp
$Comp
L GNDLED #PWR9
U 1 1 5792F112
P 2750 5850
F 0 "#PWR9" H 2750 5600 50  0001 C CNN
F 1 "GNDLED" H 2750 5700 50  0000 C CNN
F 2 "" H 2750 5850 50  0000 C CNN
F 3 "" H 2750 5850 50  0000 C CNN
	1    2750 5850
	1    0    0    -1  
$EndComp
$Comp
L PWRCON_01X02 P1
U 1 1 57935562
P 1400 5500
F 0 "P1" H 1400 5650 50  0000 C CNN
F 1 "PWRCON_01X02" V 1500 5500 50  0000 C CNN
F 2 "Sockets_MOLEX_KK-System:Socket_MOLEX-KK-RM2-54mm_Lock_2pin_straight" H 1400 5500 50  0001 C CNN
F 3 "" H 1400 5500 50  0000 C CNN
	1    1400 5500
	-1   0    0    1   
$EndComp
$Comp
L +BATT #PWR5
U 1 1 5793C5E2
P 1750 5150
F 0 "#PWR5" H 1750 5000 50  0001 C CNN
F 1 "+BATT" H 1750 5290 50  0000 C CNN
F 2 "" H 1750 5150 50  0000 C CNN
F 3 "" H 1750 5150 50  0000 C CNN
	1    1750 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5793C76C
P 1750 5850
F 0 "#PWR6" H 1750 5600 50  0001 C CNN
F 1 "GND" H 1750 5700 50  0000 C CNN
F 2 "" H 1750 5850 50  0000 C CNN
F 3 "" H 1750 5850 50  0000 C CNN
	1    1750 5850
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57941BC2
P 2100 5500
F 0 "C1" H 2125 5600 50  0000 L CNN
F 1 "22 uF" H 2125 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2138 5350 50  0001 C CNN
F 3 "" H 2100 5500 50  0000 C CNN
	1    2100 5500
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57941C8B
P 2450 5500
F 0 "C2" H 2475 5600 50  0000 L CNN
F 1 "100 nF" H 2475 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2488 5350 50  0001 C CNN
F 3 "" H 2450 5500 50  0000 C CNN
	1    2450 5500
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W2
U 1 1 57943E66
P 2100 5250
F 0 "W2" H 2100 5520 50  0000 C CNN
F 1 "TEST_1P" H 2100 5450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2300 5250 50  0001 C CNN
F 3 "" H 2300 5250 50  0000 C CNN
	1    2100 5250
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W3
U 1 1 57944190
P 2100 5750
F 0 "W3" H 2100 6020 50  0000 C CNN
F 1 "TEST_1P" H 2100 5950 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2300 5750 50  0001 C CNN
F 3 "" H 2300 5750 50  0000 C CNN
	1    2100 5750
	1    0    0    1   
$EndComp
$Sheet
S 1400 900  1350 700 
U 578D82C6
F0 "LED_POWER" 60
F1 "led_power.sch" 60
F2 "~LED_SHDN" I L 1400 1450 60 
F3 "VCC_LED" O R 2750 1250 60 
F4 "VCC_BATTERY" I L 1400 1050 60 
$EndSheet
$Sheet
S 1400 2100 1350 500 
U 578DEFDD
F0 "3V3_POWER" 60
F1 "3v3_power.sch" 60
F2 "VCC_BATTERY" I L 1400 2350 60 
F3 "VCC_3V3" O R 2750 2350 60 
$EndSheet
$Comp
L SW_PUSH SW1
U 1 1 579BC9B1
P 9350 1750
F 0 "SW1" H 9500 1860 50  0000 C CNN
F 1 "SW_PUSH" H 9350 1670 50  0000 C CNN
F 2 "ledplay:SW_KSEM31G" H 9350 1750 50  0001 C CNN
F 3 "" H 9350 1750 50  0000 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
Text Label 9250 3300 0    60   ~ 0
AUX
Wire Wire Line
	9250 2600 9100 2600
Wire Wire Line
	4800 2750 4650 2750
Wire Wire Line
	4650 2750 4650 3300
Wire Wire Line
	4650 2900 4800 2900
Connection ~ 4650 2900
Wire Wire Line
	9100 3000 9250 3000
Wire Wire Line
	9100 3100 9250 3100
Wire Wire Line
	7600 3300 8150 3300
Wire Wire Line
	9050 1750 9000 1750
Wire Wire Line
	9750 1850 9750 1750
Wire Wire Line
	9750 1750 9650 1750
Wire Wire Line
	8650 1800 8650 1750
Connection ~ 8650 1750
Wire Wire Line
	5800 2900 5750 2900
Wire Wire Line
	6400 2900 6450 2900
Wire Wire Line
	5750 2750 5900 2750
Wire Wire Line
	5900 2750 5900 2150
Wire Wire Line
	5900 2150 6150 2150
Connection ~ 6050 2150
Wire Wire Line
	5750 2600 5800 2600
Wire Wire Line
	5800 2600 5800 1800
Wire Wire Line
	7700 2700 8150 2700
Wire Wire Line
	7400 3750 7400 3800
Wire Wire Line
	7400 3800 7600 3800
Wire Wire Line
	7600 3800 7600 3300
Wire Wire Line
	7500 2000 7500 1900
Wire Wire Line
	7500 1900 7750 1900
Wire Wire Line
	7750 1900 7750 2050
Connection ~ 7600 1900
Wire Wire Line
	7600 1850 7600 1900
Wire Wire Line
	3300 2350 3300 2300
Wire Wire Line
	3300 1250 3300 1200
Wire Wire Line
	1400 2350 1150 2350
Wire Wire Line
	6050 2200 6050 2150
Wire Wire Line
	9100 3400 9250 3400
Wire Wire Line
	9100 3500 9250 3500
Wire Wire Line
	7700 3400 8150 3400
Wire Wire Line
	7700 3500 8150 3500
Wire Wire Line
	9100 2900 9250 2900
Wire Wire Line
	9100 2800 9250 2800
Wire Wire Line
	9100 2700 9250 2700
Wire Wire Line
	9100 3200 9250 3200
Wire Wire Line
	8150 3100 7700 3100
Wire Wire Line
	8150 3000 7700 3000
Wire Wire Line
	8150 3200 7700 3200
Wire Wire Line
	8000 2600 8150 2600
Wire Wire Line
	6900 2400 8000 2400
Wire Wire Line
	7750 2400 7750 2350
Wire Wire Line
	7500 2400 7500 2300
Connection ~ 7750 2400
Connection ~ 7500 2400
Wire Wire Line
	6900 3200 5750 3200
Wire Wire Line
	7100 2700 7550 2700
Wire Wire Line
	7550 2700 7550 2800
Wire Wire Line
	7550 2800 8150 2800
Wire Wire Line
	7100 3050 7100 3150
Wire Wire Line
	7100 3100 7550 3100
Wire Wire Line
	7350 3100 7350 3050
Connection ~ 7100 3100
Wire Wire Line
	7100 2650 7100 2750
Connection ~ 7100 2700
Wire Wire Line
	7350 2750 7350 2700
Connection ~ 7350 2700
Wire Wire Line
	7550 3100 7550 2900
Wire Wire Line
	7550 2900 8150 2900
Connection ~ 7350 3100
Wire Wire Line
	4650 2600 4800 2600
Wire Wire Line
	4650 2300 4650 2600
Wire Wire Line
	8000 1750 8000 2600
Wire Wire Line
	6900 3200 6900 2400
Wire Wire Line
	600  1450 1400 1450
Connection ~ 1200 1450
Wire Wire Line
	2750 1250 3300 1250
Connection ~ 3000 1250
Wire Wire Line
	2750 2350 3300 2350
Connection ~ 3000 2350
Connection ~ 8000 2400
Wire Wire Line
	6650 5300 6450 5300
Wire Wire Line
	6450 4800 6450 5500
Wire Wire Line
	6950 5300 7150 5300
Wire Wire Line
	7150 4800 7150 5500
Connection ~ 7150 5300
Connection ~ 6450 5300
Wire Wire Line
	7150 5850 7150 5800
Wire Wire Line
	6450 5800 6450 5850
Wire Wire Line
	6450 5850 7150 5850
Wire Wire Line
	6800 5850 6800 5900
Connection ~ 6800 5850
Wire Wire Line
	1750 5450 1600 5450
Wire Wire Line
	1750 5150 1750 5450
Wire Wire Line
	1600 5550 1750 5550
Wire Wire Line
	1750 5550 1750 5850
Wire Wire Line
	1750 5300 2450 5300
Wire Wire Line
	2100 5250 2100 5350
Connection ~ 1750 5300
Connection ~ 2100 5300
Wire Wire Line
	2450 5650 2450 5850
Wire Wire Line
	1750 5700 2750 5700
Connection ~ 1750 5700
Wire Wire Line
	2100 5650 2100 5750
Connection ~ 2100 5700
Connection ~ 2450 5700
Wire Wire Line
	2750 5700 2750 5850
Wire Wire Line
	1150 2350 1150 2300
Wire Wire Line
	1150 1000 1150 1050
Wire Wire Line
	1150 1050 1400 1050
Wire Wire Line
	2450 5300 2450 5350
Wire Wire Line
	9100 3300 9250 3300
Wire Wire Line
	5800 1800 6150 1800
Wire Wire Line
	600  3200 1400 3200
Wire Wire Line
	600  3550 1400 3550
Wire Wire Line
	1400 3900 600  3900
Wire Wire Line
	600  4250 1400 4250
Wire Wire Line
	2750 4250 3200 4250
Wire Wire Line
	3200 3900 2750 3900
Wire Wire Line
	2750 3550 3200 3550
Wire Wire Line
	3200 3200 2750 3200
$Comp
L UART_CONN J1
U 1 1 57A1CB20
P 4100 5350
F 0 "J1" H 4050 5200 60  0000 C CNN
F 1 "UART_CONN" H 4200 5800 60  0000 C CNN
F 2 "ledplay:UART_CONN" H 4150 5100 60  0000 C CNN
F 3 "" H 4100 5350 60  0000 C CNN
	1    4100 5350
	1    0    0    1   
$EndComp
Wire Wire Line
	4450 5600 4700 5600
Wire Wire Line
	4700 5600 4700 5700
Wire Wire Line
	4700 5400 4450 5400
Wire Wire Line
	4450 5500 4700 5500
$Comp
L CONN_01X02 P6
U 1 1 57A52ED4
P 8600 5350
F 0 "P6" H 8600 5500 50  0000 C CNN
F 1 "CONN_01X02" V 8700 5350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 8600 5350 50  0001 C CNN
F 3 "" H 8600 5350 50  0000 C CNN
	1    8600 5350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 5300 9000 5300
Text Label 9000 5300 0    60   ~ 0
AUX
Wire Wire Line
	8800 5400 8900 5400
Wire Wire Line
	8900 5400 8900 5500
$Comp
L GNDD #PWR22
U 1 1 57A532DA
P 8900 5900
F 0 "#PWR22" H 8900 5650 50  0001 C CNN
F 1 "GNDD" H 8900 5750 50  0000 C CNN
F 2 "" H 8900 5900 50  0000 C CNN
F 3 "" H 8900 5900 50  0000 C CNN
	1    8900 5900
	1    0    0    -1  
$EndComp
NoConn ~ 4800 3200
$Comp
L R R2
U 1 1 57A53A24
P 8900 5650
F 0 "R2" V 8980 5650 50  0000 C CNN
F 1 "10k" V 8900 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8830 5650 50  0001 C CNN
F 3 "" H 8900 5650 50  0000 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5900 8900 5800
$Comp
L PLATED_HOLE MP1
U 1 1 5791BAA4
P 1250 6850
F 0 "MP1" H 1250 6600 60  0000 C CNN
F 1 "PLATED_HOLE" H 1250 7100 60  0000 C CNN
F 2 "ledplay:PLATED_HOLE" H 1250 6850 60  0001 C CNN
F 3 "" H 1250 6850 60  0000 C CNN
	1    1250 6850
	1    0    0    -1  
$EndComp
$Comp
L PLATED_HOLE MP2
U 1 1 5791BB49
P 1950 6850
F 0 "MP2" H 1950 6600 60  0000 C CNN
F 1 "PLATED_HOLE" H 1950 7100 60  0000 C CNN
F 2 "ledplay:PLATED_HOLE" H 1950 6850 60  0001 C CNN
F 3 "" H 1950 6850 60  0000 C CNN
	1    1950 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 5791D3B4
P 1600 6950
F 0 "#PWR4" H 1600 6700 50  0001 C CNN
F 1 "GND" H 1600 6800 50  0000 C CNN
F 2 "" H 1600 6950 50  0000 C CNN
F 3 "" H 1600 6950 50  0000 C CNN
	1    1600 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 5791D4AC
P 2300 6950
F 0 "#PWR7" H 2300 6700 50  0001 C CNN
F 1 "GND" H 2300 6800 50  0000 C CNN
F 2 "" H 2300 6950 50  0000 C CNN
F 3 "" H 2300 6950 50  0000 C CNN
	1    2300 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6950 2300 6850
Wire Wire Line
	1600 6850 1600 6950
$Comp
L R R34
U 1 1 57920F0B
P 1100 1650
F 0 "R34" V 1180 1650 50  0000 C CNN
F 1 "100k" V 1100 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1030 1650 50  0001 C CNN
F 3 "" H 1100 1650 50  0000 C CNN
	1    1100 1650
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR1
U 1 1 5792320A
P 1100 1850
F 0 "#PWR1" H 1100 1600 50  0001 C CNN
F 1 "GNDD" H 1100 1700 50  0000 C CNN
F 2 "" H 1100 1850 50  0000 C CNN
F 3 "" H 1100 1850 50  0000 C CNN
	1    1100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1850 1100 1800
Wire Wire Line
	1100 1500 1100 1450
Connection ~ 1100 1450
$Comp
L R R1
U 1 1 57DC48D8
P 6800 4950
F 0 "R1" V 6880 4950 50  0000 C CNN
F 1 "1M" V 6800 4950 50  0000 C CNN
F 2 "" V 6730 4950 50  0000 C CNN
F 3 "" H 6800 4950 50  0000 C CNN
	1    6800 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	6650 4950 6450 4950
Connection ~ 6450 4950
Wire Wire Line
	6950 4950 7150 4950
Connection ~ 7150 4950
$Comp
L D_Schottky D3
U 1 1 57DC728D
P 8300 1750
F 0 "D3" H 8300 1850 50  0000 C CNN
F 1 "MBR0520LT3G" H 8300 1650 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" H 8300 1750 50  0001 C CNN
F 3 "" H 8300 1750 50  0000 C CNN
	1    8300 1750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 1750 8150 1750
Wire Wire Line
	8450 1750 8700 1750
$EndSCHEMATC
