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
LIBS:switches
LIBS:modules
LIBS:switches2
LIBS:Main_board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Main Board robot de carreras educativo"
Date ""
Rev ""
Comp "Liga Nacional de Robótica de Competición"
Comment1 "www.lnrc.es"
Comment2 "Diseño de Rubén Espino San José"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X03 J1
U 1 1 591D76D8
P 1150 1400
F 0 "J1" H 1150 1600 50  0000 C CNN
F 1 "LIPO 2S" V 1250 1400 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 1150 1400 50  0001 C CNN
F 3 "" H 1150 1400 50  0001 C CNN
	1    1150 1400
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 J8
U 1 1 591D7748
P 7700 5750
F 0 "J8" H 7700 5950 50  0000 C CNN
F 1 "DIST_IZQ" V 7800 5750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.00mm" H 7700 5750 50  0001 C CNN
F 3 "" H 7700 5750 50  0001 C CNN
	1    7700 5750
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 J10
U 1 1 591D77EC
P 8850 5750
F 0 "J10" H 8850 5950 50  0000 C CNN
F 1 "DIST_FRONT" V 8950 5750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.00mm" H 8850 5750 50  0001 C CNN
F 3 "" H 8850 5750 50  0001 C CNN
	1    8850 5750
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 J12
U 1 1 591D7827
P 10000 5750
F 0 "J12" H 10000 5950 50  0000 C CNN
F 1 "DIST_DCHA" V 10100 5750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.00mm" H 10000 5750 50  0001 C CNN
F 3 "" H 10000 5750 50  0001 C CNN
	1    10000 5750
	-1   0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 591D7DB8
P 1500 4250
F 0 "R1" V 1580 4250 50  0000 C CNN
F 1 "220" V 1500 4250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1430 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 591D7E43
P 1900 4250
F 0 "R2" V 1980 4250 50  0000 C CNN
F 1 "220" V 1900 4250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1830 4250 50  0001 C CNN
F 3 "" H 1900 4250 50  0001 C CNN
	1    1900 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 591D7F9D
P 1700 4500
F 0 "#PWR01" H 1700 4250 50  0001 C CNN
F 1 "GND" H 1700 4350 50  0000 C CNN
F 2 "" H 1700 4500 50  0001 C CNN
F 3 "" H 1700 4500 50  0001 C CNN
	1    1700 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 591D7FD5
P 1750 1600
F 0 "#PWR02" H 1750 1350 50  0001 C CNN
F 1 "GND" H 1750 1450 50  0000 C CNN
F 2 "" H 1750 1600 50  0001 C CNN
F 3 "" H 1750 1600 50  0001 C CNN
	1    1750 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 591D8C3F
P 6000 1200
F 0 "#PWR03" H 6000 1050 50  0001 C CNN
F 1 "VCC" H 6000 1350 50  0000 C CNN
F 2 "" H 6000 1200 50  0001 C CNN
F 3 "" H 6000 1200 50  0001 C CNN
	1    6000 1200
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 591D8DA7
P 1600 1250
F 0 "#FLG04" H 1600 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 1600 1400 50  0000 C CNN
F 2 "" H 1600 1250 50  0001 C CNN
F 3 "" H 1600 1250 50  0001 C CNN
	1    1600 1250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 J6
U 1 1 593D2DA4
P 5250 4600
F 0 "J6" H 5250 4950 50  0000 C CNN
F 1 "HC-05" V 5350 4600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 5250 4600 50  0001 C CNN
F 3 "" H 5250 4600 50  0001 C CNN
	1    5250 4600
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 593D39B8
P 1500 3900
F 0 "D1" H 1500 4000 50  0000 C CNN
F 1 "ROJO" H 1500 3800 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 1500 3900 50  0001 C CNN
F 3 "" H 1500 3900 50  0001 C CNN
	1    1500 3900
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 593D3A91
P 1900 3900
F 0 "D2" H 1900 4000 50  0000 C CNN
F 1 "VERDE" H 1900 3800 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 1900 3900 50  0001 C CNN
F 3 "" H 1900 3900 50  0001 C CNN
	1    1900 3900
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 593D4264
P 6150 4500
F 0 "R5" V 6230 4500 50  0000 C CNN
F 1 "82k" V 6150 4500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6080 4500 50  0001 C CNN
F 3 "" H 6150 4500 50  0001 C CNN
	1    6150 4500
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 593D4314
P 6150 4900
F 0 "R6" V 6230 4900 50  0000 C CNN
F 1 "120k" V 6150 4900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6080 4900 50  0001 C CNN
F 3 "" H 6150 4900 50  0001 C CNN
	1    6150 4900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 593D438D
P 6150 5050
F 0 "#PWR05" H 6150 4800 50  0001 C CNN
F 1 "GND" H 6150 4900 50  0000 C CNN
F 2 "" H 6150 5050 50  0001 C CNN
F 3 "" H 6150 5050 50  0001 C CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 593D4513
P 6450 4500
F 0 "D3" H 6450 4600 50  0000 C CNN
F 1 "1N4001" H 6450 4400 50  0000 C CNN
F 2 "Diodes_THT:D_A-405_P10.16mm_Horizontal" H 6450 4500 50  0001 C CNN
F 3 "" H 6450 4500 50  0001 C CNN
	1    6450 4500
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW2
U 1 1 593D4B49
P 2650 4100
F 0 "SW2" H 2700 4200 50  0000 L CNN
F 1 "SW_Push" H 2650 4040 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2650 4300 50  0001 C CNN
F 3 "" H 2650 4300 50  0001 C CNN
	1    2650 4100
	0    1    1    0   
$EndComp
$Comp
L SW_Push SW3
U 1 1 593D4D1A
P 3250 4100
F 0 "SW3" H 3300 4200 50  0000 L CNN
F 1 "SW_Push" H 3250 4040 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 3250 4300 50  0001 C CNN
F 3 "" H 3250 4300 50  0001 C CNN
	1    3250 4100
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 593D4DC1
P 2650 3750
F 0 "R3" V 2730 3750 50  0000 C CNN
F 1 "10K" V 2650 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2580 3750 50  0001 C CNN
F 3 "" H 2650 3750 50  0001 C CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 593D4E4F
P 3250 3750
F 0 "R4" V 3330 3750 50  0000 C CNN
F 1 "10K" V 3250 3750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 3750 50  0001 C CNN
F 3 "" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 593D4F18
P 2650 4300
F 0 "#PWR06" H 2650 4050 50  0001 C CNN
F 1 "GND" H 2650 4150 50  0000 C CNN
F 2 "" H 2650 4300 50  0001 C CNN
F 3 "" H 2650 4300 50  0001 C CNN
	1    2650 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR07
U 1 1 593D5371
P 2650 3600
F 0 "#PWR07" H 2650 3450 50  0001 C CNN
F 1 "+5V" H 2650 3740 50  0000 C CNN
F 2 "" H 2650 3600 50  0001 C CNN
F 3 "" H 2650 3600 50  0001 C CNN
	1    2650 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR08
U 1 1 593D53BF
P 6450 4350
F 0 "#PWR08" H 6450 4200 50  0001 C CNN
F 1 "+5V" H 6450 4490 50  0000 C CNN
F 2 "" H 6450 4350 50  0001 C CNN
F 3 "" H 6450 4350 50  0001 C CNN
	1    6450 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 J2
U 1 1 593D7B9F
P 1250 6500
F 0 "J2" H 1250 6850 50  0000 C CNN
F 1 "MOT_IZQ" V 1350 6500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.00mm" H 1250 6500 50  0001 C CNN
F 3 "" H 1250 6500 50  0001 C CNN
	1    1250 6500
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X06 J7
U 1 1 593D7D2B
P 6050 6500
F 0 "J7" H 6050 6850 50  0000 C CNN
F 1 "MOT_DER" V 6150 6500 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.00mm" H 6050 6500 50  0001 C CNN
F 3 "" H 6050 6500 50  0001 C CNN
	1    6050 6500
	1    0    0    1   
$EndComp
$Comp
L CONN_01X05 J9
U 1 1 593D87DE
P 8750 4650
F 0 "J9" H 8750 4950 50  0000 C CNN
F 1 "CAMARA" V 8850 4650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x05_Pitch2.54mm" H 8750 4650 50  0001 C CNN
F 3 "" H 8750 4650 50  0001 C CNN
	1    8750 4650
	1    0    0    1   
$EndComp
$Comp
L +5V #PWR09
U 1 1 593DDD0E
P 4800 4200
F 0 "#PWR09" H 4800 4050 50  0001 C CNN
F 1 "+5V" H 4800 4340 50  0000 C CNN
F 2 "" H 4800 4200 50  0001 C CNN
F 3 "" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 593DE799
P 4800 4900
F 0 "#PWR010" H 4800 4650 50  0001 C CNN
F 1 "GND" H 4800 4750 50  0000 C CNN
F 2 "" H 4800 4900 50  0001 C CNN
F 3 "" H 4800 4900 50  0001 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 593DF080
P 10300 4750
F 0 "#PWR011" H 10300 4500 50  0001 C CNN
F 1 "GND" H 10300 4600 50  0000 C CNN
F 2 "" H 10300 4750 50  0001 C CNN
F 3 "" H 10300 4750 50  0001 C CNN
	1    10300 4750
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 593DF86B
P 10300 4550
F 0 "#PWR012" H 10300 4400 50  0001 C CNN
F 1 "+5V" H 10300 4690 50  0000 C CNN
F 2 "" H 10300 4550 50  0001 C CNN
F 3 "" H 10300 4550 50  0001 C CNN
	1    10300 4550
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 593E0382
P 10300 5550
F 0 "#PWR013" H 10300 5400 50  0001 C CNN
F 1 "+5V" H 10300 5690 50  0000 C CNN
F 2 "" H 10300 5550 50  0001 C CNN
F 3 "" H 10300 5550 50  0001 C CNN
	1    10300 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 593E03E1
P 8100 5950
F 0 "#PWR014" H 8100 5700 50  0001 C CNN
F 1 "GND" H 8100 5800 50  0000 C CNN
F 2 "" H 8100 5950 50  0001 C CNN
F 3 "" H 8100 5950 50  0001 C CNN
	1    8100 5950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 593E0600
P 8250 4350
F 0 "#PWR015" H 8250 4200 50  0001 C CNN
F 1 "+5V" H 8250 4490 50  0000 C CNN
F 2 "" H 8250 4350 50  0001 C CNN
F 3 "" H 8250 4350 50  0001 C CNN
	1    8250 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 593E065F
P 8250 4950
F 0 "#PWR016" H 8250 4700 50  0001 C CNN
F 1 "GND" H 8250 4800 50  0000 C CNN
F 2 "" H 8250 4950 50  0001 C CNN
F 3 "" H 8250 4950 50  0001 C CNN
	1    8250 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 593E1E7A
P 1750 6850
F 0 "#PWR017" H 1750 6600 50  0001 C CNN
F 1 "GND" H 1750 6700 50  0000 C CNN
F 2 "" H 1750 6850 50  0001 C CNN
F 3 "" H 1750 6850 50  0001 C CNN
	1    1750 6850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR018
U 1 1 593E2339
P 1750 6150
F 0 "#PWR018" H 1750 6000 50  0001 C CNN
F 1 "+5V" H 1750 6290 50  0000 C CNN
F 2 "" H 1750 6150 50  0001 C CNN
F 3 "" H 1750 6150 50  0001 C CNN
	1    1750 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 593E268C
P 5550 6850
F 0 "#PWR019" H 5550 6600 50  0001 C CNN
F 1 "GND" H 5550 6700 50  0000 C CNN
F 2 "" H 5550 6850 50  0001 C CNN
F 3 "" H 5550 6850 50  0001 C CNN
	1    5550 6850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 593E26EB
P 5450 6150
F 0 "#PWR020" H 5450 6000 50  0001 C CNN
F 1 "+5V" H 5450 6290 50  0000 C CNN
F 2 "" H 5450 6150 50  0001 C CNN
F 3 "" H 5450 6150 50  0001 C CNN
	1    5450 6150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 J5
U 1 1 593E42B0
P 4100 1350
F 0 "J5" H 4100 1600 50  0000 C CNN
F 1 "DC-DC_5V" V 4200 1350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x04_Pitch2.54mm" H 4100 1350 50  0001 C CNN
F 3 "" H 4100 1350 50  0001 C CNN
	1    4100 1350
	1    0    0    1   
$EndComp
$Comp
L +5V #PWR021
U 1 1 593E5A26
P 3700 1100
F 0 "#PWR021" H 3700 950 50  0001 C CNN
F 1 "+5V" H 3700 1240 50  0000 C CNN
F 2 "" H 3700 1100 50  0001 C CNN
F 3 "" H 3700 1100 50  0001 C CNN
	1    3700 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 593E6398
P 3700 1600
F 0 "#PWR022" H 3700 1350 50  0001 C CNN
F 1 "GND" H 3700 1450 50  0000 C CNN
F 2 "" H 3700 1600 50  0001 C CNN
F 3 "" H 3700 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Nano_v3.x A1
U 1 1 593D3834
P 6100 2250
F 0 "A1" H 5900 3275 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" H 5900 3200 50  0000 R CNN
F 2 "Modules:Arduino_Nano" H 6250 1300 50  0001 L CNN
F 3 "" H 6100 1250 50  0001 C CNN
	1    6100 2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 593D6203
P 6300 1200
F 0 "#PWR023" H 6300 1050 50  0001 C CNN
F 1 "+5V" H 6300 1340 50  0000 C CNN
F 2 "" H 6300 1200 50  0001 C CNN
F 3 "" H 6300 1200 50  0001 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 593D6268
P 6150 3350
F 0 "#PWR024" H 6150 3100 50  0001 C CNN
F 1 "GND" H 6150 3200 50  0000 C CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG025
U 1 1 593EB12C
P 1450 1550
F 0 "#FLG025" H 1450 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 1450 1700 50  0000 C CNN
F 2 "" H 1450 1550 50  0001 C CNN
F 3 "" H 1450 1550 50  0001 C CNN
	1    1450 1550
	-1   0    0    1   
$EndComp
$Comp
L Jumper_NO_Small JP1
U 1 1 593EEA4C
P 3550 2000
F 0 "JP1" H 3550 2080 50  0000 C CNN
F 1 "Jumper" H 3560 1940 50  0000 C CNN
F 2 "Connectors:GS2" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	-1   0    0    1   
$EndComp
Text GLabel 1500 3650 1    47   Input ~ 0
LED_R
Text GLabel 1900 3650 1    47   Input ~ 0
LED_G
Wire Wire Line
	1750 1500 1750 1600
Wire Wire Line
	1350 1500 1750 1500
Wire Wire Line
	1450 1550 1450 1500
Connection ~ 1450 1500
Wire Wire Line
	6150 4650 6150 4750
Wire Wire Line
	6150 4700 6650 4700
Connection ~ 6150 4700
Wire Wire Line
	6450 4650 6450 4700
Connection ~ 6450 4700
Wire Wire Line
	1500 4400 1500 4450
Wire Wire Line
	1500 4450 1900 4450
Wire Wire Line
	1900 4450 1900 4400
Wire Wire Line
	1500 4100 1500 4050
Wire Wire Line
	1900 4100 1900 4050
Wire Wire Line
	1900 3650 1900 3750
Wire Wire Line
	1500 3650 1500 3750
Wire Wire Line
	2650 3900 2800 3900
Wire Wire Line
	3250 3900 3400 3900
Text GLabel 2800 3900 2    47   Output ~ 0
B1
Text GLabel 3400 3900 2    47   Output ~ 0
B2
$Comp
L GND #PWR026
U 1 1 593F4237
P 3250 4300
F 0 "#PWR026" H 3250 4050 50  0001 C CNN
F 1 "GND" H 3250 4150 50  0000 C CNN
F 2 "" H 3250 4300 50  0001 C CNN
F 3 "" H 3250 4300 50  0001 C CNN
	1    3250 4300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR027
U 1 1 593F42FA
P 3250 3600
F 0 "#PWR027" H 3250 3450 50  0001 C CNN
F 1 "+5V" H 3250 3740 50  0000 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Text GLabel 6650 4700 2    47   Output ~ 0
BAT
Wire Wire Line
	6300 1250 6300 1200
Wire Wire Line
	6150 3350 6150 3300
Wire Wire Line
	6100 3300 6200 3300
Wire Wire Line
	6100 3300 6100 3250
Wire Wire Line
	6200 3300 6200 3250
Connection ~ 6150 3300
Wire Wire Line
	2550 1400 3900 1400
Wire Wire Line
	3300 1350 3300 2000
Text Notes 3900 1200 2    39   ~ 0
VO+
Text Notes 3900 1400 2    39   ~ 0
IN+
Text Notes 3900 1500 2    39   ~ 0
EN
Text Notes 3900 1300 2    39   ~ 0
GND
Wire Wire Line
	3700 1600 3700 1300
Wire Wire Line
	3700 1300 3900 1300
Wire Wire Line
	3900 1200 3700 1200
Connection ~ 3300 1400
$Comp
L VCC #PWR028
U 1 1 593FEA42
P 3950 1950
F 0 "#PWR028" H 3950 1800 50  0001 C CNN
F 1 "VCC" H 3950 2100 50  0000 C CNN
F 2 "" H 3950 1950 50  0001 C CNN
F 3 "" H 3950 1950 50  0001 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Text Notes 3200 2300 0    39   ~ 0
Conectar jumper si no se utiliza\nDC-DC externo de 5V
Wire Wire Line
	5500 1650 5600 1650
Wire Wire Line
	5500 1750 5600 1750
Wire Wire Line
	5500 1850 5600 1850
Wire Wire Line
	5500 1950 5600 1950
Wire Wire Line
	5500 2050 5600 2050
Wire Wire Line
	5500 2150 5600 2150
Wire Wire Line
	5500 2250 5600 2250
Wire Wire Line
	5500 2350 5600 2350
Wire Wire Line
	5500 2450 5600 2450
Wire Wire Line
	5500 2550 5600 2550
Wire Wire Line
	5500 2650 5600 2650
Wire Wire Line
	5500 2750 5600 2750
Wire Wire Line
	5500 2850 5600 2850
Wire Wire Line
	5500 2950 5600 2950
Wire Wire Line
	6700 2250 6600 2250
Wire Wire Line
	6700 2350 6600 2350
Wire Wire Line
	6700 2450 6600 2450
Wire Wire Line
	6700 2550 6600 2550
Wire Wire Line
	6700 2650 6600 2650
Wire Wire Line
	6700 2750 6600 2750
Wire Wire Line
	6700 2850 6600 2850
Wire Wire Line
	6700 2950 6600 2950
Text GLabel 6700 2250 2    47   Input ~ 0
BAT
Text GLabel 6700 2350 2    47   Input ~ 0
ANALOG_CAM
Text GLabel 6700 2450 2    47   Input ~ 0
LINEA_1
Text GLabel 6700 2550 2    47   Input ~ 0
LINEA_2
Text GLabel 6700 2650 2    47   Input ~ 0
LINEA_3
Text GLabel 6700 2950 2    47   Input ~ 0
DIST_IZQ
Text GLabel 6700 2850 2    47   Input ~ 0
DIST_FRONT
Text GLabel 6700 2750 2    47   Input ~ 0
DIST_DCHA
Text GLabel 5500 1650 0    47   Input ~ 0
BT_TX
Text GLabel 5500 1750 0    47   Output ~ 0
BT_RX
Text GLabel 5500 2850 0    47   Output ~ 0
LINEA_SEL_1
Text GLabel 5500 2950 0    47   Output ~ 0
LINEA_SEL_2
Text GLabel 5500 2050 0    47   BiDi ~ 0
I2C_SDA
Text GLabel 5500 2150 0    47   Output ~ 0
I2C_SCL
Text GLabel 5500 2550 0    47   Input ~ 0
ENC_IZQ_A
Text GLabel 5500 2450 0    47   Input ~ 0
ENC_IZQ_B
Text GLabel 5500 2650 0    47   Input ~ 0
ENC_DER_A
Text GLabel 5500 2750 0    47   Input ~ 0
ENC_DER_B
Text GLabel 5500 2250 0    47   Output ~ 0
PWM_IZQ
Text GLabel 5500 1950 0    47   Output ~ 0
PWM_DER
Text GLabel 5500 1850 0    47   Output ~ 0
CLK_CAM
Text GLabel 5500 2350 0    47   Output ~ 0
SI_CAM
Wire Wire Line
	6000 1250 6000 1200
$Comp
L +BATT #PWR029
U 1 1 594090A7
P 2000 1250
F 0 "#PWR029" H 2000 1100 50  0001 C CNN
F 1 "+BATT" H 2000 1390 50  0000 C CNN
F 2 "" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2000 3450 2000
Wire Wire Line
	3650 2000 4250 2000
Wire Wire Line
	3950 2000 3950 1950
Wire Notes Line
	750  800  750  2450
Wire Notes Line
	750  2450 4500 2450
Wire Notes Line
	4500 2450 4500 800 
Wire Notes Line
	4500 800  750  800 
Text Notes 750  800  0    47   ~ 0
Alimentación
Wire Notes Line
	4800 800  4800 3700
Wire Notes Line
	4800 3700 7350 3700
Wire Notes Line
	7350 3700 7350 800 
Wire Notes Line
	7350 800  4800 800 
Text Notes 4800 800  0    47   ~ 0
Microcontrolador
Wire Notes Line
	950  3050 3900 3050
Wire Notes Line
	3900 3050 3900 4850
Wire Notes Line
	3900 4850 950  4850
Wire Notes Line
	950  4850 950  3050
Text Notes 950  3050 0    47   ~ 0
Leds y pulsadores
Text Notes 5750 3950 0    47   ~ 0
Monitorización de batería
Wire Notes Line
	5750 3950 7150 3950
Wire Notes Line
	7150 3950 7150 5450
Wire Notes Line
	7150 5450 5750 5450
Wire Notes Line
	5750 5450 5750 3950
$Comp
L CONN_01X08 J3
U 1 1 594165FD
P 3450 6550
F 0 "J3" H 3450 7000 50  0000 C CNN
F 1 "TB6612FNG_A" V 3550 6550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x08_Pitch2.54mm" H 3450 6550 50  0001 C CNN
F 3 "" H 3450 6550 50  0001 C CNN
	1    3450 6550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 J4
U 1 1 594168F4
P 3850 6550
F 0 "J4" H 3850 7000 50  0000 C CNN
F 1 "TB6612FNG_B" V 3950 6550 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x08_Pitch2.54mm" H 3850 6550 50  0001 C CNN
F 3 "" H 3850 6550 50  0001 C CNN
	1    3850 6550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3100 6200 3250 6200
Wire Wire Line
	2850 6300 3250 6300
Wire Wire Line
	3000 6400 3250 6400
Wire Wire Line
	2900 6500 3250 6500
Wire Wire Line
	2900 6600 3250 6600
Wire Wire Line
	2900 6700 3250 6700
Wire Wire Line
	3250 6800 2900 6800
Wire Wire Line
	3000 6900 3250 6900
Wire Wire Line
	4300 6200 4050 6200
Wire Wire Line
	4300 6300 4050 6300
Wire Wire Line
	4300 6400 4050 6400
Wire Wire Line
	4300 6500 4050 6500
Wire Wire Line
	4300 6600 4050 6600
Wire Wire Line
	4300 6700 4050 6700
Wire Wire Line
	4300 6800 4050 6800
Wire Wire Line
	4050 6900 4250 6900
Text Notes 3250 6200 2    47   ~ 0
VM
Text Notes 3250 6300 2    47   ~ 0
V_DIG
Text Notes 3250 6400 2    47   ~ 0
GND
Text Notes 3250 6500 2    47   ~ 0
A01
Text Notes 3250 6600 2    47   ~ 0
A02
Text Notes 3250 6700 2    47   ~ 0
B02
Text Notes 3250 6800 2    47   ~ 0
B01
Text Notes 3250 6900 2    47   ~ 0
GND
Text Notes 4050 6900 0    47   ~ 0
GND
Text Notes 4050 6800 0    47   ~ 0
PWMB
Text Notes 4050 6200 0    47   ~ 0
PWMA
Text Notes 4050 6300 0    47   ~ 0
AIN2
Text Notes 4050 6400 0    47   ~ 0
AIN1
Text Notes 4050 6500 0    47   ~ 0
STBY
Text Notes 4050 6600 0    47   ~ 0
BIN1
Text Notes 4050 6700 0    47   ~ 0
BIN2
Wire Wire Line
	1450 6250 1850 6250
Wire Wire Line
	1450 6350 1750 6350
Wire Wire Line
	1850 6450 1450 6450
Wire Wire Line
	1850 6550 1450 6550
Wire Wire Line
	1450 6650 1750 6650
Wire Wire Line
	1850 6750 1450 6750
$Comp
L +BATT #PWR030
U 1 1 59421C27
P 3100 6100
F 0 "#PWR030" H 3100 5950 50  0001 C CNN
F 1 "+BATT" H 3100 6240 50  0000 C CNN
F 2 "" H 3100 6100 50  0001 C CNN
F 3 "" H 3100 6100 50  0001 C CNN
	1    3100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6200 3100 6100
$Comp
L +5V #PWR031
U 1 1 59422C98
P 2850 6050
F 0 "#PWR031" H 2850 5900 50  0001 C CNN
F 1 "+5V" H 2850 6190 50  0000 C CNN
F 2 "" H 2850 6050 50  0001 C CNN
F 3 "" H 2850 6050 50  0001 C CNN
	1    2850 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6300 2850 6050
$Comp
L GND #PWR032
U 1 1 59423BB5
P 3000 7000
F 0 "#PWR032" H 3000 6750 50  0001 C CNN
F 1 "GND" H 3000 6850 50  0000 C CNN
F 2 "" H 3000 7000 50  0001 C CNN
F 3 "" H 3000 7000 50  0001 C CNN
	1    3000 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6400 3000 7000
Connection ~ 3000 6900
$Comp
L GND #PWR033
U 1 1 594240F6
P 4250 7000
F 0 "#PWR033" H 4250 6750 50  0001 C CNN
F 1 "GND" H 4250 6850 50  0000 C CNN
F 2 "" H 4250 7000 50  0001 C CNN
F 3 "" H 4250 7000 50  0001 C CNN
	1    4250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6900 4250 7000
Wire Wire Line
	5350 6250 5850 6250
Wire Wire Line
	5550 6350 5850 6350
Wire Wire Line
	5350 6450 5850 6450
Wire Wire Line
	5350 6550 5850 6550
Wire Wire Line
	5450 6650 5850 6650
Wire Wire Line
	5350 6750 5850 6750
Text GLabel 2900 6500 0    47   Output ~ 0
M_IZQ_+
Text GLabel 2900 6600 0    47   Output ~ 0
M_IZQ_-
Text GLabel 2900 6700 0    47   Output ~ 0
M_DER_-
Text GLabel 2900 6800 0    47   Output ~ 0
M_DER_+
Text GLabel 4300 6200 2    47   Input ~ 0
PWM_IZQ
Text GLabel 4300 6800 2    47   Input ~ 0
PWM_DER
Text GLabel 4300 6400 2    47   Input ~ 0
DIR_IZQ_1
Text GLabel 4300 6300 2    47   Input ~ 0
DIR_IZQ_2
Text GLabel 4300 6600 2    47   Input ~ 0
DIR_DER_1
Text GLabel 4300 6700 2    47   Input ~ 0
DIR_DER_2
Text Notes 1450 6250 0    47   ~ 0
M2
Text Notes 1450 6750 0    47   ~ 0
M1
Text Notes 1450 6350 0    47   ~ 0
VCC
Text Notes 1450 6650 0    47   ~ 0
GND
Text Notes 1450 6450 0    47   ~ 0
C2
Text Notes 1450 6550 0    47   ~ 0
C1
Text Notes 5850 6750 2    47   ~ 0
M2
Text Notes 5850 6250 2    47   ~ 0
M1
Text Notes 5850 6350 2    47   ~ 0
GND
Text Notes 5850 6650 2    47   ~ 0
VCC
Text Notes 5850 6550 2    47   ~ 0
C2
Text Notes 5850 6450 2    47   ~ 0
C1
Wire Wire Line
	1750 6350 1750 6150
Wire Wire Line
	1750 6650 1750 6850
Text GLabel 1850 6750 2    47   Input ~ 0
M_IZQ_+
Text GLabel 1850 6250 2    47   Input ~ 0
M_IZQ_-
Text GLabel 1850 6550 2    47   Output ~ 0
ENC_IZQ_A
Text GLabel 1850 6450 2    47   Output ~ 0
ENC_IZQ_B
Wire Notes Line
	3300 6000 4000 6000
Wire Notes Line
	4000 6000 4000 7100
Wire Notes Line
	4000 7100 3300 7100
Wire Notes Line
	3300 7100 3300 6000
Text Notes 3300 6000 0    47   ~ 0
TB6612FNG
Wire Wire Line
	5450 6150 5450 6650
Wire Wire Line
	5550 6350 5550 6850
Text GLabel 4300 6500 2    47   Input ~ 0
STBY_MOT
Text GLabel 5350 6250 0    47   Input ~ 0
M_DER_-
Text GLabel 5350 6750 0    47   Input ~ 0
M_DER_+
Text GLabel 5350 6550 0    47   Output ~ 0
ENC_DER_A
Text GLabel 5350 6450 0    47   Output ~ 0
ENC_DER_B
Wire Notes Line
	950  5650 6350 5650
Wire Notes Line
	6350 5650 6350 7450
Wire Notes Line
	6350 7450 950  7450
Wire Notes Line
	950  7450 950  5650
Text Notes 950  5650 0    47   ~ 0
Motores
Wire Wire Line
	2550 1800 2700 1800
Text GLabel 2700 1800 2    47   Output ~ 0
STBY_MOT
$Comp
L +5V #PWR034
U 1 1 59441164
P 2050 1650
F 0 "#PWR034" H 2050 1500 50  0001 C CNN
F 1 "+5V" H 2050 1790 50  0000 C CNN
F 2 "" H 2050 1650 50  0001 C CNN
F 3 "" H 2050 1650 50  0001 C CNN
	1    2050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1700 2050 1700
Wire Wire Line
	2050 1700 2050 1650
Wire Wire Line
	4800 4450 5050 4450
Wire Wire Line
	4800 4550 5050 4550
Wire Wire Line
	4700 4650 5050 4650
Wire Wire Line
	4700 4750 5050 4750
Text Notes 5050 4350 2    47   ~ 0
EN
Text Notes 5050 4450 2    47   ~ 0
+5V
Text Notes 5050 4550 2    47   ~ 0
GND
Text Notes 5050 4650 2    47   ~ 0
TX
Text Notes 5050 4750 2    47   ~ 0
RX
Text Notes 5050 4850 2    47   ~ 0
STATE
Wire Wire Line
	4800 4450 4800 4200
Wire Wire Line
	4800 4550 4800 4900
Text GLabel 4700 4650 0    47   Output ~ 0
BT_TX
Text GLabel 4700 4750 0    47   Input ~ 0
BT_RX
Wire Notes Line
	4250 3950 5550 3950
Wire Notes Line
	5550 3950 5550 5450
Wire Notes Line
	5550 5450 4250 5450
Wire Notes Line
	4250 5450 4250 3950
Text Notes 4250 3950 0    47   ~ 0
Bluetooth
Wire Wire Line
	8150 4650 8550 4650
Wire Wire Line
	8250 4950 8250 4850
Wire Wire Line
	8150 4550 8550 4550
Wire Wire Line
	8550 4450 8150 4450
Wire Wire Line
	8250 4850 8550 4850
Wire Wire Line
	8250 4350 8250 4750
Wire Wire Line
	8250 4750 8550 4750
Text Notes 8550 4850 2    47   ~ 0
GND
Text Notes 8550 4750 2    47   ~ 0
+5V
Text Notes 8550 4650 2    47   ~ 0
ANALOG
Text Notes 8550 4550 2    47   ~ 0
CLK
Text Notes 8550 4450 2    47   ~ 0
SI
Text GLabel 8150 4450 0    47   Input ~ 0
SI_CAM
Text GLabel 8150 4550 0    47   Input ~ 0
CLK_CAM
Text GLabel 8150 4650 0    47   Output ~ 0
ANALOG_CAM
Wire Wire Line
	10100 4550 10100 4600
Wire Wire Line
	10100 4600 10300 4600
Wire Wire Line
	10300 4600 10300 4550
Wire Wire Line
	10000 4550 10000 4700
Wire Wire Line
	10000 4700 10300 4700
Wire Wire Line
	10300 4700 10300 4750
Wire Wire Line
	9900 4550 9900 4650
Wire Wire Line
	9800 4650 9800 4550
Wire Wire Line
	9700 4650 9700 4550
Wire Wire Line
	9600 4650 9600 4550
Wire Wire Line
	9500 4650 9500 4550
Text GLabel 9900 4650 3    47   Output ~ 0
LINEA_1
Text GLabel 9800 4650 3    47   Output ~ 0
LINEA_2
Text GLabel 9700 4650 3    47   Output ~ 0
LINEA_3
Text GLabel 9600 4650 3    47   Input ~ 0
LINEA_SEL_1
Text GLabel 9500 4650 3    47   Input ~ 0
LINEA_SEL_2
$Comp
L CONN_01X07 J11
U 1 1 59455EA7
P 9800 4350
F 0 "J11" H 9800 4750 50  0000 C CNN
F 1 "SENSORES_LINEA" V 9900 4350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x07_Pitch2.54mm" H 9800 4350 50  0001 C CNN
F 3 "" H 9800 4350 50  0001 C CNN
	1    9800 4350
	0    1    -1   0   
$EndComp
$Comp
L +5V #PWR035
U 1 1 594578A0
P 8000 5550
F 0 "#PWR035" H 8000 5400 50  0001 C CNN
F 1 "+5V" H 8000 5690 50  0000 C CNN
F 2 "" H 8000 5550 50  0001 C CNN
F 3 "" H 8000 5550 50  0001 C CNN
	1    8000 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5650 8100 5650
Wire Wire Line
	8000 5550 8000 5850
Wire Wire Line
	8000 5850 7900 5850
Wire Wire Line
	7900 5750 8100 5750
Wire Wire Line
	8100 5750 8100 5950
$Comp
L +5V #PWR036
U 1 1 59457EA4
P 9150 5550
F 0 "#PWR036" H 9150 5400 50  0001 C CNN
F 1 "+5V" H 9150 5690 50  0000 C CNN
F 2 "" H 9150 5550 50  0001 C CNN
F 3 "" H 9150 5550 50  0001 C CNN
	1    9150 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 59457F06
P 9250 5950
F 0 "#PWR037" H 9250 5700 50  0001 C CNN
F 1 "GND" H 9250 5800 50  0000 C CNN
F 2 "" H 9250 5950 50  0001 C CNN
F 3 "" H 9250 5950 50  0001 C CNN
	1    9250 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5750 9250 5750
Wire Wire Line
	9250 5750 9250 5950
Wire Wire Line
	9050 5850 9150 5850
Wire Wire Line
	9150 5850 9150 5550
Wire Wire Line
	9050 5650 9250 5650
Wire Wire Line
	10200 5650 10400 5650
Wire Wire Line
	10200 5750 10400 5750
Wire Wire Line
	10400 5750 10400 5950
Wire Wire Line
	10200 5850 10300 5850
Wire Wire Line
	10300 5850 10300 5550
$Comp
L GND #PWR038
U 1 1 59458A95
P 10400 5950
F 0 "#PWR038" H 10400 5700 50  0001 C CNN
F 1 "GND" H 10400 5800 50  0000 C CNN
F 2 "" H 10400 5950 50  0001 C CNN
F 3 "" H 10400 5950 50  0001 C CNN
	1    10400 5950
	1    0    0    -1  
$EndComp
Text GLabel 8100 5650 2    47   Output ~ 0
DIST_IZQ
Text GLabel 9250 5650 2    47   Output ~ 0
DIST_FRONT
Text GLabel 10400 5650 2    47   Output ~ 0
DIST_DCHA
Wire Notes Line
	7400 3950 11000 3950
Wire Notes Line
	11000 3950 11000 6300
Wire Notes Line
	11000 6300 7400 6300
Wire Notes Line
	7400 6300 7400 3950
Text Notes 7400 3950 0    47   ~ 0
Sensores
Wire Notes Line
	8000 1050 10650 1050
Wire Notes Line
	10650 1050 10650 3300
Wire Notes Line
	10650 3300 8000 3300
Wire Notes Line
	8000 3300 8000 1050
Text Notes 8000 1050 0    47   ~ 0
Expansor I2C
Text Notes 4350 5350 0    47   ~ 0
Desconectar bluetooth para\ncargar programa en la Arduino
$Comp
L +5V #PWR039
U 1 1 5948BBA5
P 9250 1500
F 0 "#PWR039" H 9250 1350 50  0001 C CNN
F 1 "+5V" H 9250 1640 50  0000 C CNN
F 2 "" H 9250 1500 50  0001 C CNN
F 3 "" H 9250 1500 50  0001 C CNN
	1    9250 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5948C01B
P 9250 2900
F 0 "#PWR040" H 9250 2650 50  0001 C CNN
F 1 "GND" H 9250 2750 50  0000 C CNN
F 2 "" H 9250 2900 50  0001 C CNN
F 3 "" H 9250 2900 50  0001 C CNN
	1    9250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4500 1700 4450
Connection ~ 1700 4450
Text GLabel 9900 2400 2    47   Input ~ 0
B2
Text GLabel 9900 2500 2    47   Input ~ 0
B1
Text GLabel 9900 1900 2    47   Output ~ 0
LED_R
Text GLabel 9900 1800 2    47   Output ~ 0
LED_G
Text GLabel 9900 2000 2    47   Output ~ 0
DIR_IZQ_1
Text GLabel 9900 2100 2    47   Output ~ 0
DIR_IZQ_2
Text GLabel 9900 2200 2    47   Output ~ 0
DIR_DER_1
Text GLabel 9900 2300 2    47   Output ~ 0
DIR_DER_2
Text GLabel 8600 1800 0    47   Input ~ 0
I2C_SCL
Text GLabel 8600 1900 0    47   BiDi ~ 0
I2C_SDA
$Comp
L PCF8574 U1
U 1 1 5949302A
P 9250 2200
F 0 "U1" H 8900 2800 50  0000 L CNN
F 1 "PCF8574" H 9350 2800 50  0000 L CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 9250 2200 50  0001 C CNN
F 3 "" H 9250 2200 50  0001 C CNN
	1    9250 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 59493E0F
P 8600 2350
F 0 "#PWR041" H 8600 2100 50  0001 C CNN
F 1 "GND" H 8600 2200 50  0000 C CNN
F 2 "" H 8600 2350 50  0001 C CNN
F 3 "" H 8600 2350 50  0001 C CNN
	1    8600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2100 8600 2350
Wire Wire Line
	8600 2100 8750 2100
Wire Wire Line
	8750 2200 8600 2200
Connection ~ 8600 2200
Wire Wire Line
	8750 2300 8600 2300
Connection ~ 8600 2300
Wire Wire Line
	8750 1800 8600 1800
Wire Wire Line
	8600 1900 8750 1900
Wire Wire Line
	9750 1800 9900 1800
Wire Wire Line
	9900 1900 9750 1900
Wire Wire Line
	9750 2000 9900 2000
Wire Wire Line
	9900 2100 9750 2100
Wire Wire Line
	9750 2200 9900 2200
Wire Wire Line
	9900 2300 9750 2300
Wire Wire Line
	9750 2400 9900 2400
Wire Wire Line
	9900 2500 9750 2500
NoConn ~ 1350 1400
NoConn ~ 2550 1200
NoConn ~ 2550 1600
Wire Wire Line
	1350 1300 2150 1300
NoConn ~ 5050 4350
NoConn ~ 5050 4850
$Comp
L PWR_FLAG #FLG042
U 1 1 593F001D
P 4250 2000
F 0 "#FLG042" H 4250 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 2150 50  0000 C CNN
F 2 "" H 4250 2000 50  0001 C CNN
F 3 "" H 4250 2000 50  0001 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
Connection ~ 3950 2000
NoConn ~ 8750 2600
NoConn ~ 6600 1750
NoConn ~ 6600 1650
NoConn ~ 6600 2050
NoConn ~ 6200 1250
Wire Wire Line
	1600 1250 1600 1300
Connection ~ 1600 1300
Wire Wire Line
	2000 1250 2000 1300
Connection ~ 2000 1300
$Comp
L VDD #PWR043
U 1 1 5951DF11
P 3300 1350
F 0 "#PWR043" H 3300 1200 50  0001 C CNN
F 1 "VDD" H 3300 1500 50  0000 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR044
U 1 1 5951EDDF
P 6150 4350
F 0 "#PWR044" H 6150 4200 50  0001 C CNN
F 1 "VDD" H 6150 4500 50  0000 C CNN
F 2 "" H 6150 4350 50  0001 C CNN
F 3 "" H 6150 4350 50  0001 C CNN
	1    6150 4350
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG045
U 1 1 595201A0
P 2900 1350
F 0 "#FLG045" H 2900 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2900 1500 50  0000 C CNN
F 2 "" H 2900 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1350 2900 1400
Connection ~ 2900 1400
$Comp
L SW_DPDT SW1
U 1 1 5952343A
P 2350 1300
F 0 "SW1" H 2350 1470 50  0000 C CNN
F 1 "SW_DPDT" H 2350 650 50  0000 C CNN
F 2 "Main_board:switch_DPDT" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1200 3700 1100
$EndSCHEMATC
