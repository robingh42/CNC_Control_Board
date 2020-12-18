EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "General CNC Board"
Date ""
Rev ""
Comp "Robin Graham-Hayes"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR011
U 1 1 5F93C9FE
P 4975 5575
F 0 "#PWR011" H 4975 5325 50  0001 C CNN
F 1 "GND" H 4980 5402 50  0000 C CNN
F 2 "" H 4975 5575 50  0001 C CNN
F 3 "" H 4975 5575 50  0001 C CNN
	1    4975 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 5425 4975 5425
$Comp
L power:GND #PWR019
U 1 1 5F9216C2
P 6975 4025
F 0 "#PWR019" H 6975 3775 50  0001 C CNN
F 1 "GND" H 6980 3852 50  0000 C CNN
F 2 "" H 6975 4025 50  0001 C CNN
F 3 "" H 6975 4025 50  0001 C CNN
	1    6975 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	6975 4025 6975 3925
Wire Wire Line
	6975 3925 7075 3925
Text GLabel 7075 3775 0    50   Input ~ 0
3.3_V
NoConn ~ 4825 5325
$Comp
L Diode:1N4004 D3
U 1 1 5F93D7DB
P 9375 4800
F 0 "D3" V 9325 4650 50  0000 L CNN
F 1 "1N4004" V 9425 4425 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9375 4625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9375 4800 50  0001 C CNN
F 4 "‎1N4004-E3/54GICT-ND‎" H 9375 4800 50  0001 C CNN "Digi-Key_PN"
	1    9375 4800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5F93F378
P 9775 5650
F 0 "#PWR029" H 9775 5400 50  0001 C CNN
F 1 "GND" H 9780 5477 50  0000 C CNN
F 2 "" H 9775 5650 50  0001 C CNN
F 3 "" H 9775 5650 50  0001 C CNN
	1    9775 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9375 5075 9375 4950
Wire Wire Line
	9375 4650 9375 4575
Wire Wire Line
	9375 4575 9775 4575
Wire Wire Line
	9775 4575 9775 4425
Wire Wire Line
	9775 4425 9875 4425
Text GLabel 9875 4425 2    50   Input ~ 0
12_V
Wire Wire Line
	9775 5075 9775 5250
Text GLabel 9175 5550 0    50   Input ~ 0
Solenoid
$Comp
L Device:R_US R3
U 1 1 5FA7BCCD
P 9375 5800
F 0 "R3" V 9170 5800 50  0000 C CNN
F 1 "10K" V 9261 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9415 5790 50  0001 C CNN
F 3 "~" H 9375 5800 50  0001 C CNN
F 4 "10.0KXTR-ND" H 9375 5800 50  0001 C CNN "Digi-Key_PN"
	1    9375 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 5425 4975 5575
Wire Wire Line
	900  3100 900  3275
$Comp
L power:GND #PWR03
U 1 1 5FA43E52
P 900 3275
F 0 "#PWR03" H 900 3025 50  0001 C CNN
F 1 "GND" H 905 3102 50  0000 C CNN
F 2 "" H 900 3275 50  0001 C CNN
F 3 "" H 900 3275 50  0001 C CNN
	1    900  3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6900 900  7075
$Comp
L power:GND #PWR04
U 1 1 5F911BBF
P 900 7075
F 0 "#PWR04" H 900 6825 50  0001 C CNN
F 1 "GND" H 905 6902 50  0000 C CNN
F 2 "" H 900 7075 50  0001 C CNN
F 3 "" H 900 7075 50  0001 C CNN
	1    900  7075
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J7
U 1 1 5F8CA084
P 4525 5325
F 0 "J7" H 4582 5642 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 4582 5551 50  0000 C CNN
F 2 "digikey-footprints:Barrel_Jack_CUI_PJ-002AH" H 4575 5285 50  0001 C CNN
F 3 "~" H 4575 5285 50  0001 C CNN
F 4 "CP-002AH-ND‎" H 4525 5325 50  0001 C CNN "Digi-Key_PN"
	1    4525 5325
	1    0    0    -1  
$EndComp
Text GLabel 1800 7000 0    50   Input ~ 0
Red_LED
Text GLabel 1800 7100 0    50   Input ~ 0
Green_LED
Wire Wire Line
	900  6900 1800 6900
Text GLabel 1800 7300 0    50   Input ~ 0
I2C_SCL
Text GLabel 1800 7400 0    50   Input ~ 0
I2C_SDA
Text GLabel 1800 6500 0    50   Input ~ 0
A19_PWM_SDA1
Text GLabel 1800 6400 0    50   Input ~ 0
A18_PWM_SDL1
Text GLabel 1800 6300 0    50   Input ~ 0
A17_PWM
Text GLabel 1800 6200 0    50   Input ~ 0
A16_PWM
Text GLabel 1800 6100 0    50   Input ~ 0
A15_RX5
Text GLabel 1800 6000 0    50   Input ~ 0
A14_TX5
Text GLabel 1800 4400 0    50   Input ~ 0
Rot_B
Text GLabel 1800 4300 0    50   Input ~ 0
Rot_A
Text GLabel 1800 4200 0    50   Input ~ 0
Button
Text GLabel 1800 4100 0    50   Input ~ 0
Solenoid
Text GLabel 1800 4000 0    50   Input ~ 0
Servo_PWM
Text GLabel 1800 3800 0    50   Input ~ 0
STEP_2
Text GLabel 1800 3900 0    50   Input ~ 0
DIRECTION_2
Text GLabel 1800 3700 0    50   Input ~ 0
ENABLE_2
Text GLabel 1800 3500 0    50   Input ~ 0
STEP_1
Text GLabel 1800 3600 0    50   Input ~ 0
DIRECTION_1
Text GLabel 1800 3400 0    50   Input ~ 0
ENABLE_1
Wire Wire Line
	900  3100 1800 3100
Text GLabel 1800 5100 0    50   Input ~ 0
D29_PWM
Text GLabel 1800 5000 0    50   Input ~ 0
D28
Text GLabel 1800 4900 0    50   Input ~ 0
D27_RX1
Text GLabel 1800 5200 0    50   Input ~ 0
D30_PWM
Text GLabel 1800 4800 0    50   Input ~ 0
D26_TX1
Text GLabel 1800 4700 0    50   Input ~ 0
D25
Wire Wire Line
	5475 6600 5700 6600
Wire Wire Line
	4675 6300 4675 6600
Text GLabel 4675 6300 1    50   Input ~ 0
5_V
$Comp
L power:GND #PWR09
U 1 1 5F910DC1
P 4750 6975
F 0 "#PWR09" H 4750 6725 50  0001 C CNN
F 1 "GND" H 4755 6802 50  0000 C CNN
F 2 "" H 4750 6975 50  0001 C CNN
F 3 "" H 4750 6975 50  0001 C CNN
	1    4750 6975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6600 4675 6600
Text GLabel 4100 6800 2    50   Input ~ 0
3.3_V
NoConn ~ 5700 6800
Text GLabel 4100 7100 2    50   Input ~ 0
ENABLE_3
Text GLabel 4100 6900 2    50   Input ~ 0
DIRECTION_3
Text GLabel 4100 7000 2    50   Input ~ 0
STEP_3
Wire Wire Line
	4100 6700 4750 6700
Text GLabel 8125 3925 2    50   Input ~ 0
I2C_SDA
Text GLabel 8125 3775 2    50   Input ~ 0
I2C_SCL
Wire Wire Line
	9775 5075 9375 5075
$Comp
L Connector:Screw_Terminal_01x02 J15
U 1 1 5FC62814
P 9975 4750
F 0 "J15" H 10055 4742 50  0000 L CNN
F 1 "Solenoid" H 10055 4651 50  0000 L CNN
F 2 "digikey-footprints:Terminal_CUI_TB003V-500-P02BE" H 9975 4750 50  0001 C CNN
F 3 "https://www.cuidevices.com/product/resource/tb003v-500.pdf" H 9975 4750 50  0001 C CNN
F 4 "https://www.amazon.com/Tulead-Solenoid-Electronic-Actuator-Electromagnet/dp/B07VC5JKYG/ref=sr_1_4?dchild=1&keywords=12v%2Bsolenoid&qid=1603054304&sr=8-4&th=1" H 9975 4750 50  0001 C CNN "Amazon"
F 5 "102-6171-ND" H 9975 4750 50  0001 C CNN "Digi-Key_PN"
	1    9975 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 4575 9775 4750
Connection ~ 9775 4575
Wire Wire Line
	9775 4850 9775 5075
Connection ~ 9775 5075
Text GLabel 1800 6600 0    50   Input ~ 0
Limit_1
Text GLabel 1800 6700 0    50   Input ~ 0
Limit_2
Text GLabel 1800 6800 0    50   Input ~ 0
Limit_3
$Comp
L CNC_Board:I2C_OLED_.96" U3
U 1 1 5F91ABAF
P 7525 3925
F 0 "U3" H 7525 3925 50  0000 C CNN
F 1 "I2C_OLED_.96\"" H 7525 3775 50  0000 C CNN
F 2 "CNC_Board:0.96_OLED" H 7525 3925 50  0001 C CNN
F 3 "" H 7525 3925 50  0001 C CNN
F 4 "https://www.amazon.com/DIYmall-Serial-128x64-Display-Arduino/dp/B00O2KDQBE?th=1" H 7525 3925 50  0001 C CNN "Amazon"
	1    7525 3925
	1    0    0    -1  
$EndComp
NoConn ~ 4100 3100
NoConn ~ 4100 3200
NoConn ~ 4100 3300
NoConn ~ 4100 3400
NoConn ~ 4100 3500
NoConn ~ 4100 3600
NoConn ~ 4100 3700
NoConn ~ 4100 3800
NoConn ~ 4100 3900
NoConn ~ 4100 4000
NoConn ~ 4100 4100
NoConn ~ 4100 4200
NoConn ~ 4100 4300
NoConn ~ 4100 4400
NoConn ~ 4100 4500
NoConn ~ 4100 4600
NoConn ~ 4100 4700
NoConn ~ 4100 4800
NoConn ~ 4100 4900
NoConn ~ 4100 5000
NoConn ~ 4100 5100
NoConn ~ 4100 5200
NoConn ~ 4100 5300
NoConn ~ 4100 5400
NoConn ~ 4100 5500
NoConn ~ 4100 5600
NoConn ~ 4100 5700
NoConn ~ 4100 5800
NoConn ~ 4100 5900
NoConn ~ 4100 6200
NoConn ~ 4100 6300
NoConn ~ 4100 6400
NoConn ~ 4100 7200
NoConn ~ 4100 7300
NoConn ~ 4100 7400
NoConn ~ 1800 7200
NoConn ~ 1800 5300
NoConn ~ 1800 5400
NoConn ~ 1800 5500
NoConn ~ 1800 5600
NoConn ~ 1800 5700
NoConn ~ 1800 5800
NoConn ~ 1800 4500
NoConn ~ 1800 4600
NoConn ~ 1800 3200
NoConn ~ 1800 3300
NoConn ~ 5175 5525
Wire Wire Line
	8575 1425 8575 1350
NoConn ~ 8100 1750
NoConn ~ 8100 1650
NoConn ~ 8100 1550
NoConn ~ 8100 1450
Wire Wire Line
	8150 1450 8100 1450
Wire Wire Line
	8150 1350 8150 1450
Wire Wire Line
	8575 1350 8150 1350
Wire Wire Line
	8225 1550 8100 1550
Wire Wire Line
	8225 1425 8225 1550
Wire Wire Line
	8375 1425 8225 1425
Wire Wire Line
	8175 1650 8100 1650
Wire Wire Line
	8175 1625 8175 1650
Wire Wire Line
	8175 1750 8100 1750
Wire Wire Line
	8175 1825 8175 1750
Wire Wire Line
	7650 1550 7775 1550
Wire Wire Line
	7650 1500 7650 1550
Wire Wire Line
	7650 1650 7775 1650
Wire Wire Line
	7650 1700 7650 1650
Wire Wire Line
	7775 1800 7775 1750
Wire Wire Line
	7775 1400 7775 1450
Wire Wire Line
	7650 1400 7775 1400
$Comp
L CNC_Board:Pololu_DRV8825_Stepper A2
U 1 1 5F984F25
P 7250 1500
F 0 "A2" V 7250 1400 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" V 7350 1500 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 7450 700 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 7350 1200 50  0001 C CNN
F 4 "2183-2977-ND" H 7250 1500 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.amazon.com/KINGPRINT-DRV8825-Stepper-Driver-Printer/dp/B075XH1TSJ/ref=sr_1_4?keywords=drv8825+stepper+motor+driver&qid=1572358911&sr=8-4" H 7250 1500 50  0001 C CNN "Amazon"
	1    7250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2300 7250 2300
$Comp
L Connector_Generic:Conn_01x04 J11
U 1 1 5F984F1B
P 7975 1550
F 0 "J11" H 7925 1750 50  0000 L CNN
F 1 "Stepper_Conn" H 7575 1225 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 7975 1550 50  0001 C CNN
F 3 "~" H 7975 1550 50  0001 C CNN
F 4 "WM4202-ND" H 7975 1550 50  0001 C CNN "Digi-Key_PN"
	1    7975 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2800 7250 2800
Wire Wire Line
	6550 2900 7250 2900
Wire Wire Line
	6550 1900 6550 2900
Wire Wire Line
	6700 2000 6700 2800
Text GLabel 7250 800  1    50   Input ~ 0
12_V
$Comp
L Device:CP1 C2
U 1 1 5F984F10
P 7500 850
F 0 "C2" V 7752 850 50  0000 C CNN
F 1 "100 uF" V 7661 850 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7500 850 50  0001 C CNN
F 3 "~" H 7500 850 50  0001 C CNN
F 4 "UPS1H101MPD-ND‎" H 7500 850 50  0001 C CNN "Digi-Key_PN"
	1    7500 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 900  7250 850 
Wire Wire Line
	7250 850  7350 850 
Connection ~ 7250 850 
Wire Wire Line
	7250 850  7250 800 
Text GLabel 6850 1200 0    50   Input ~ 0
3.3_V
Text GLabel 6850 1300 0    50   Input ~ 0
3.3_V
Wire Wire Line
	6850 2000 6700 2000
Wire Wire Line
	6850 1900 6550 1900
Wire Wire Line
	7650 850  7850 850 
Wire Wire Line
	7850 850  7850 1000
Wire Wire Line
	6850 2100 6850 2700
Wire Wire Line
	7750 2800 7750 2700
Connection ~ 7750 2800
Wire Wire Line
	7750 2900 7750 2800
Wire Wire Line
	6850 2700 7250 2700
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J10
U 1 1 5F984EFA
P 7450 2800
F 0 "J10" H 7500 2475 50  0000 C CNN
F 1 "Micro_Stepping" H 7500 2575 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x03_P2.00mm_Vertical" H 7450 2800 50  0001 C CNN
F 3 "~" H 7450 2800 50  0001 C CNN
F 4 "609-2583-ND‎" H 7450 2800 50  0001 C CNN "Digi-Key_PN"
	1    7450 2800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F984EF3
P 7850 1000
F 0 "#PWR023" H 7850 750 50  0001 C CNN
F 1 "GND" H 7855 827 50  0000 C CNN
F 2 "" H 7850 1000 50  0001 C CNN
F 3 "" H 7850 1000 50  0001 C CNN
	1    7850 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F984EED
P 7250 2300
F 0 "#PWR020" H 7250 2050 50  0001 C CNN
F 1 "GND" H 7100 2250 50  0000 C CNN
F 2 "" H 7250 2300 50  0001 C CNN
F 3 "" H 7250 2300 50  0001 C CNN
	1    7250 2300
	1    0    0    -1  
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M2
U 1 1 5F984EE7
P 8475 1725
F 0 "M2" H 8425 1550 50  0000 L CNN
F 1 "Stepper_Motor" V 8675 1500 50  0000 L CNN
F 2 "" H 8485 1715 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 8485 1715 50  0001 C CNN
F 4 "‎WM4202-ND‎" H 8475 1725 50  0001 C CNN "Digi-Key_PN"
	1    8475 1725
	1    0    0    -1  
$EndComp
Text GLabel 7750 2800 2    50   Input ~ 0
3.3_V
Text GLabel 6850 1600 0    50   Input ~ 0
STEP_2
Text GLabel 6850 1700 0    50   Input ~ 0
DIRECTION_2
Text GLabel 6850 1500 0    50   Input ~ 0
ENABLE_2
NoConn ~ 6850 1100
NoConn ~ 5675 1750
NoConn ~ 5675 1650
NoConn ~ 5675 1550
NoConn ~ 5675 1450
Wire Wire Line
	5725 1450 5675 1450
Wire Wire Line
	5725 1350 5725 1450
Wire Wire Line
	6150 1350 5725 1350
Wire Wire Line
	6150 1425 6150 1350
Wire Wire Line
	5800 1550 5675 1550
Wire Wire Line
	5800 1425 5800 1550
Wire Wire Line
	5950 1425 5800 1425
Wire Wire Line
	5750 1650 5675 1650
Wire Wire Line
	5750 1625 5750 1650
Wire Wire Line
	5750 1750 5675 1750
Wire Wire Line
	5750 1825 5750 1750
Wire Wire Line
	5225 1550 5350 1550
Wire Wire Line
	5225 1500 5225 1550
Wire Wire Line
	5225 1650 5350 1650
Wire Wire Line
	5225 1700 5225 1650
Wire Wire Line
	5350 1800 5350 1750
Wire Wire Line
	5350 1400 5350 1450
Wire Wire Line
	5225 1400 5350 1400
$Comp
L CNC_Board:Pololu_DRV8825_Stepper A1
U 1 1 5F94EF1A
P 4825 1500
F 0 "A1" V 4825 1400 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" V 4925 1500 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 5025 700 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 4925 1200 50  0001 C CNN
F 4 "2183-2977-ND" H 4825 1500 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.amazon.com/KINGPRINT-DRV8825-Stepper-Driver-Printer/dp/B075XH1TSJ/ref=sr_1_4?keywords=drv8825+stepper+motor+driver&qid=1572358911&sr=8-4" H 4825 1500 50  0001 C CNN "Amazon"
	1    4825 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4925 2300 4825 2300
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 5F9354E0
P 5550 1550
F 0 "J9" H 5500 1750 50  0000 L CNN
F 1 "Stepper_Conn" H 5150 1225 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 5550 1550 50  0001 C CNN
F 3 "~" H 5550 1550 50  0001 C CNN
F 4 "WM4202-ND" H 5550 1550 50  0001 C CNN "Digi-Key_PN"
	1    5550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 1900 4125 2900
Wire Wire Line
	4275 2000 4275 2800
Text GLabel 4825 800  1    50   Input ~ 0
12_V
$Comp
L Device:CP1 C1
U 1 1 5F94EEFF
P 5075 850
F 0 "C1" V 5327 850 50  0000 C CNN
F 1 "100 uF" V 5236 850 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5075 850 50  0001 C CNN
F 3 "~" H 5075 850 50  0001 C CNN
F 4 "UPS1H101MPD-ND‎" H 5075 850 50  0001 C CNN "Digi-Key_PN"
	1    5075 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4825 900  4825 850 
Wire Wire Line
	4825 850  4925 850 
Connection ~ 4825 850 
Wire Wire Line
	4825 850  4825 800 
Text GLabel 4425 1200 0    50   Input ~ 0
3.3_V
Text GLabel 4425 1300 0    50   Input ~ 0
3.3_V
Wire Wire Line
	4425 2000 4275 2000
Wire Wire Line
	4425 1900 4125 1900
Wire Wire Line
	5225 850  5425 850 
Wire Wire Line
	5425 850  5425 1000
Wire Wire Line
	4425 2100 4425 2700
$Comp
L power:GND #PWR015
U 1 1 5F94EF43
P 5425 1000
F 0 "#PWR015" H 5425 750 50  0001 C CNN
F 1 "GND" H 5430 827 50  0000 C CNN
F 2 "" H 5425 1000 50  0001 C CNN
F 3 "" H 5425 1000 50  0001 C CNN
	1    5425 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5F94EF12
P 4825 2300
F 0 "#PWR010" H 4825 2050 50  0001 C CNN
F 1 "GND" H 4675 2250 50  0000 C CNN
F 2 "" H 4825 2300 50  0001 C CNN
F 3 "" H 4825 2300 50  0001 C CNN
	1    4825 2300
	1    0    0    -1  
$EndComp
$Comp
L Motor:Stepper_Motor_bipolar M1
U 1 1 5F94EEF8
P 6050 1725
F 0 "M1" H 6000 1550 50  0000 L CNN
F 1 "Stepper_Motor" V 6250 1500 50  0000 L CNN
F 2 "" H 6060 1715 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 6060 1715 50  0001 C CNN
F 4 "‎WM4202-ND‎" H 6050 1725 50  0001 C CNN "Digi-Key_PN"
	1    6050 1725
	1    0    0    -1  
$EndComp
Text GLabel 5325 2800 2    50   Input ~ 0
3.3_V
Text GLabel 4425 1600 0    50   Input ~ 0
STEP_1
Text GLabel 4425 1700 0    50   Input ~ 0
DIRECTION_1
Text GLabel 4425 1500 0    50   Input ~ 0
ENABLE_1
NoConn ~ 4425 1100
NoConn ~ 9275 1100
Text GLabel 9275 1500 0    50   Input ~ 0
ENABLE_3
Text GLabel 9275 1700 0    50   Input ~ 0
DIRECTION_3
Text GLabel 9275 1600 0    50   Input ~ 0
STEP_3
$Comp
L Motor:Stepper_Motor_bipolar M3
U 1 1 5F9A5B8A
P 10900 1725
F 0 "M3" H 10850 1550 50  0000 L CNN
F 1 "Stepper_Motor" V 11100 1500 50  0000 L CNN
F 2 "" H 10910 1715 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 10910 1715 50  0001 C CNN
F 4 "‎WM4202-ND‎" H 10900 1725 50  0001 C CNN "Digi-Key_PN"
	1    10900 1725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5F9A5B90
P 9675 2300
F 0 "#PWR028" H 9675 2050 50  0001 C CNN
F 1 "GND" H 9525 2250 50  0000 C CNN
F 2 "" H 9675 2300 50  0001 C CNN
F 3 "" H 9675 2300 50  0001 C CNN
	1    9675 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5F9A5B96
P 10275 1000
F 0 "#PWR030" H 10275 750 50  0001 C CNN
F 1 "GND" H 10280 827 50  0000 C CNN
F 2 "" H 10275 1000 50  0001 C CNN
F 3 "" H 10275 1000 50  0001 C CNN
	1    10275 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10275 850  10275 1000
Wire Wire Line
	10075 850  10275 850 
Wire Wire Line
	9275 1900 8975 1900
Wire Wire Line
	9275 2000 9125 2000
Text GLabel 9275 1300 0    50   Input ~ 0
3.3_V
Text GLabel 9275 1200 0    50   Input ~ 0
3.3_V
Wire Wire Line
	9675 850  9675 800 
Connection ~ 9675 850 
Wire Wire Line
	9675 850  9775 850 
Wire Wire Line
	9675 900  9675 850 
$Comp
L Device:CP1 C3
U 1 1 5F9A5BB3
P 9925 850
F 0 "C3" V 10177 850 50  0000 C CNN
F 1 "100 uF" V 10086 850 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 9925 850 50  0001 C CNN
F 3 "~" H 9925 850 50  0001 C CNN
F 4 "UPS1H101MPD-ND‎" H 9925 850 50  0001 C CNN "Digi-Key_PN"
	1    9925 850 
	0    -1   -1   0   
$EndComp
Text GLabel 9675 800  1    50   Input ~ 0
12_V
$Comp
L Connector_Generic:Conn_01x04 J13
U 1 1 5F9A5BBE
P 10400 1550
F 0 "J13" H 10350 1750 50  0000 L CNN
F 1 "Stepper_Conn" H 10000 1225 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 10400 1550 50  0001 C CNN
F 3 "~" H 10400 1550 50  0001 C CNN
F 4 "WM4202-ND" H 10400 1550 50  0001 C CNN "Digi-Key_PN"
	1    10400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9775 2300 9675 2300
$Comp
L CNC_Board:Pololu_DRV8825_Stepper A3
U 1 1 5F9A5BC8
P 9675 1500
F 0 "A3" V 9675 1400 50  0000 C CNN
F 1 "Pololu_Breakout_DRV8825" V 9775 1500 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 9875 700 50  0001 L CNN
F 3 "https://www.pololu.com/product/2982" H 9775 1200 50  0001 C CNN
F 4 "2183-2977-ND" H 9675 1500 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.amazon.com/KINGPRINT-DRV8825-Stepper-Driver-Printer/dp/B075XH1TSJ/ref=sr_1_4?keywords=drv8825+stepper+motor+driver&qid=1572358911&sr=8-4" H 9675 1500 50  0001 C CNN "Amazon"
	1    9675 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10075 1400 10200 1400
Wire Wire Line
	10200 1400 10200 1450
Wire Wire Line
	10200 1800 10200 1750
Wire Wire Line
	10075 1700 10075 1650
Wire Wire Line
	10075 1650 10200 1650
Wire Wire Line
	10075 1500 10075 1550
Wire Wire Line
	10075 1550 10200 1550
Wire Wire Line
	10600 1825 10600 1750
Wire Wire Line
	10600 1750 10525 1750
Wire Wire Line
	10600 1625 10600 1650
Wire Wire Line
	10600 1650 10525 1650
Wire Wire Line
	10800 1425 10650 1425
Wire Wire Line
	10650 1425 10650 1550
Wire Wire Line
	10650 1550 10525 1550
Wire Wire Line
	11000 1425 11000 1350
Wire Wire Line
	11000 1350 10575 1350
Wire Wire Line
	10575 1350 10575 1450
Wire Wire Line
	10575 1450 10525 1450
NoConn ~ 10525 1450
NoConn ~ 10525 1550
NoConn ~ 10525 1650
NoConn ~ 10525 1750
Wire Wire Line
	9125 2800 9675 2800
Wire Wire Line
	8975 2900 9675 2900
Wire Wire Line
	8975 1900 8975 2900
Wire Wire Line
	9125 2000 9125 2800
Wire Wire Line
	9275 2100 9275 2700
Wire Wire Line
	10175 2800 10175 2700
Connection ~ 10175 2800
Wire Wire Line
	10175 2900 10175 2800
Wire Wire Line
	9275 2700 9675 2700
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J12
U 1 1 5F9A5B9D
P 9875 2800
F 0 "J12" H 9925 2475 50  0000 C CNN
F 1 "Micro_Stepping" H 9925 2575 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x03_P2.00mm_Vertical" H 9875 2800 50  0001 C CNN
F 3 "~" H 9875 2800 50  0001 C CNN
F 4 "609-2583-ND‎" H 9875 2800 50  0001 C CNN "Digi-Key_PN"
	1    9875 2800
	1    0    0    1   
$EndComp
Text GLabel 10175 2800 2    50   Input ~ 0
3.3_V
$Comp
L power:GND #PWR027
U 1 1 5F967644
P 9575 3825
F 0 "#PWR027" H 9575 3575 50  0001 C CNN
F 1 "GND" H 9580 3652 50  0000 C CNN
F 2 "" H 9575 3825 50  0001 C CNN
F 3 "" H 9575 3825 50  0001 C CNN
	1    9575 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	9575 3725 9575 3825
Wire Wire Line
	9675 3725 9575 3725
Text GLabel 8950 3625 0    50   Input ~ 0
5_V
Text GLabel 9675 3525 0    50   Input ~ 0
Servo_PWM
$Comp
L Motor:Motor_Servo M4
U 1 1 5F940A95
P 10300 3625
F 0 "M4" H 10100 3825 50  0000 L CNN
F 1 "Motor_Servo" V 10625 3400 50  0000 L CNN
F 2 "" H 10300 3435 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 10300 3435 50  0001 C CNN
	1    10300 3625
	1    0    0    -1  
$EndComp
NoConn ~ 10000 3525
NoConn ~ 10000 3625
NoConn ~ 10000 3725
$Comp
L Connector_Generic:Conn_01x03 J14
U 1 1 5F9DDAD9
P 9875 3625
F 0 "J14" H 9825 3825 50  0000 L CNN
F 1 "Servo_Conn" H 9600 3425 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9875 3625 50  0001 C CNN
F 3 "~" H 9875 3625 50  0001 C CNN
	1    9875 3625
	1    0    0    1   
$EndComp
Wire Wire Line
	9000 3625 9000 3700
Wire Wire Line
	8950 3625 9000 3625
Connection ~ 9000 3625
$Comp
L Device:CP1 C8
U 1 1 5F9FF61F
P 9000 3850
F 0 "C8" V 8775 3850 50  0000 C CNN
F 1 "100 uF" V 8850 3850 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 9000 3850 50  0001 C CNN
F 3 "~" H 9000 3850 50  0001 C CNN
F 4 "493-5356-1-ND" H 9000 3850 50  0001 C CNN "Digi-Key_PN"
	1    9000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3625 9375 3625
$Comp
L Device:C C9
U 1 1 5FA12AFB
P 9375 3850
F 0 "C9" V 9150 3850 50  0000 C CNN
F 1 "0.1 uF" V 9225 3850 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.0mm_P2.50mm_MKS02_FKP02" H 9375 3850 50  0001 C CNN
F 3 "~" H 9375 3850 50  0001 C CNN
F 4 "399-9824-ND" H 9375 3850 50  0001 C CNN "Digi-Key_PN"
	1    9375 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9375 3700 9375 3625
Connection ~ 9375 3625
Wire Wire Line
	9375 3625 9675 3625
$Comp
L power:GND #PWR024
U 1 1 5FA2D29F
P 9000 4000
F 0 "#PWR024" H 9000 3750 50  0001 C CNN
F 1 "GND" H 9005 3827 50  0000 C CNN
F 2 "" H 9000 4000 50  0001 C CNN
F 3 "" H 9000 4000 50  0001 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5FA2DB36
P 9375 4000
F 0 "#PWR025" H 9375 3750 50  0001 C CNN
F 1 "GND" H 9380 3827 50  0000 C CNN
F 2 "" H 9375 4000 50  0001 C CNN
F 3 "" H 9375 4000 50  0001 C CNN
	1    9375 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6600 5100 6675
$Comp
L Device:C C4
U 1 1 5FA35233
P 5100 6825
F 0 "C4" V 4875 6825 50  0000 C CNN
F 1 "0.1 uF" V 4950 6825 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.0mm_P2.50mm_MKS02_FKP02" H 5100 6825 50  0001 C CNN
F 3 "~" H 5100 6825 50  0001 C CNN
F 4 "399-9824-ND" H 5100 6825 50  0001 C CNN "Digi-Key_PN"
	1    5100 6825
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 5FA3523A
P 5475 6825
F 0 "C6" V 5250 6825 50  0000 C CNN
F 1 "10 uF" V 5325 6825 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5475 6825 50  0001 C CNN
F 3 "~" H 5475 6825 50  0001 C CNN
F 4 "493-11317-1-ND" H 5475 6825 50  0001 C CNN "Digi-Key_PN"
	1    5475 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 6675 5475 6600
$Comp
L power:GND #PWR013
U 1 1 5FA35241
P 5100 6975
F 0 "#PWR013" H 5100 6725 50  0001 C CNN
F 1 "GND" H 5105 6802 50  0000 C CNN
F 2 "" H 5100 6975 50  0001 C CNN
F 3 "" H 5100 6975 50  0001 C CNN
	1    5100 6975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FA35247
P 5475 6975
F 0 "#PWR016" H 5475 6725 50  0001 C CNN
F 1 "GND" H 5480 6802 50  0000 C CNN
F 2 "" H 5475 6975 50  0001 C CNN
F 3 "" H 5475 6975 50  0001 C CNN
	1    5475 6975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6125 7100 6000 7100
$Comp
L power:GND #PWR018
U 1 1 5F93A1D6
P 6000 7100
F 0 "#PWR018" H 6000 6850 50  0001 C CNN
F 1 "GND" H 6005 6927 50  0000 C CNN
F 2 "" H 6000 7100 50  0001 C CNN
F 3 "" H 6000 7100 50  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
Text GLabel 6050 6300 1    50   Input ~ 0
12_V
Wire Wire Line
	4675 6600 5100 6600
Connection ~ 4675 6600
Connection ~ 5475 6600
Connection ~ 5100 6600
Wire Wire Line
	5100 6600 5475 6600
Wire Wire Line
	4750 6700 4750 6975
Wire Wire Line
	5800 5125 5800 5200
Wire Wire Line
	6175 5200 6175 5125
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB8721PBF Q1
U 1 1 5FACC332
P 9775 5450
F 0 "Q1" H 9883 5503 60  0000 L CNN
F 1 "IRLB8721PBF" H 9883 5397 60  0000 L CNN
F 2 "digikey-footprints:TO-220-3" H 9975 5650 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 9975 5750 60  0001 L CNN
F 4 "IRLB8721PBF-ND" H 9975 5850 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB8721PBF" H 9975 5950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9975 6050 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9975 6150 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 9975 6250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB8721PBF/IRLB8721PBF-ND/2127670" H 9975 6350 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 30V 62A TO-220AB" H 9975 6450 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 9975 6550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9975 6650 60  0001 L CNN "Status"
	1    9775 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FB02616
P 9375 5950
F 0 "#PWR026" H 9375 5700 50  0001 C CNN
F 1 "GND" H 9380 5777 50  0000 C CNN
F 2 "" H 9375 5950 50  0001 C CNN
F 3 "" H 9375 5950 50  0001 C CNN
	1    9375 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9475 5550 9375 5550
Wire Wire Line
	9375 5550 9375 5650
Wire Wire Line
	9375 5550 9175 5550
Connection ~ 9375 5550
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5F93E52F
P 5300 3950
F 0 "SW1" H 5300 4317 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 5300 4226 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 5150 4110 50  0001 C CNN
F 3 "~" H 5300 4210 50  0001 C CNN
F 4 "377" H 5300 3950 50  0001 C CNN "Adafruit"
	1    5300 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F9213E8
P 5275 4250
F 0 "#PWR012" H 5275 4000 50  0001 C CNN
F 1 "GND" H 5280 4077 50  0000 C CNN
F 2 "" H 5275 4250 50  0001 C CNN
F 3 "" H 5275 4250 50  0001 C CNN
	1    5275 4250
	1    0    0    -1  
$EndComp
Text GLabel 5000 3850 0    50   Input ~ 0
Rot_A
Text GLabel 5000 4050 0    50   Input ~ 0
Rot_B
Wire Wire Line
	5000 3950 4675 3950
Wire Wire Line
	4675 4250 5275 4250
Wire Wire Line
	5275 4250 5700 4250
Connection ~ 5275 4250
Wire Wire Line
	4675 3950 4675 4250
Wire Wire Line
	5700 4050 5600 4050
Wire Wire Line
	5700 4250 5700 4050
Text GLabel 5600 3850 2    50   Input ~ 0
Button
$Comp
L Device:LED D1
U 1 1 5FA0E417
P 7825 5100
F 0 "D1" H 7818 4845 50  0000 C CNN
F 1 "LED" H 7818 4936 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7825 5100 50  0001 C CNN
F 3 "~" H 7825 5100 50  0001 C CNN
F 4 "LTL-4231NLC" H 7825 5100 50  0001 C CNN "Digi-Key_PN"
	1    7825 5100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FA1A828
P 8050 5200
F 0 "#PWR021" H 8050 4950 50  0001 C CNN
F 1 "GND" H 8055 5027 50  0000 C CNN
F 2 "" H 8050 5200 50  0001 C CNN
F 3 "" H 8050 5200 50  0001 C CNN
	1    8050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 5100 8050 5100
Wire Wire Line
	8050 5100 8050 5200
$Comp
L Device:LED D2
U 1 1 5FA201EC
P 7825 5575
F 0 "D2" H 7818 5320 50  0000 C CNN
F 1 "LED" H 7818 5411 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7825 5575 50  0001 C CNN
F 3 "~" H 7825 5575 50  0001 C CNN
F 4 "LTL-4221NLC" H 7825 5575 50  0001 C CNN "Digi-Key_PN"
	1    7825 5575
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5FA201F8
P 8050 5675
F 0 "#PWR022" H 8050 5425 50  0001 C CNN
F 1 "GND" H 8055 5502 50  0000 C CNN
F 2 "" H 8050 5675 50  0001 C CNN
F 3 "" H 8050 5675 50  0001 C CNN
	1    8050 5675
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 5575 8050 5575
Wire Wire Line
	8050 5575 8050 5675
$Comp
L Device:R_US R1
U 1 1 5FA72ACE
P 7525 5100
F 0 "R1" V 7320 5100 50  0000 C CNN
F 1 "100" V 7411 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7565 5090 50  0001 C CNN
F 3 "~" H 7525 5100 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B01HRR7EBG/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1" H 7525 5100 50  0001 C CNN "Amazon"
F 5 "100XTR-ND" H 7525 5100 50  0001 C CNN "Digi-Key_PN"
	1    7525 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5FA74931
P 7525 5575
F 0 "R2" V 7320 5575 50  0000 C CNN
F 1 "100" V 7411 5575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7565 5565 50  0001 C CNN
F 3 "~" H 7525 5575 50  0001 C CNN
F 4 "https://www.amazon.com/gp/product/B01HRR7EBG/ref=ppx_yo_dt_b_asin_title_o03_s00?ie=UTF8&psc=1" H 7525 5575 50  0001 C CNN "Amazon"
F 5 "100XTR-ND" H 7525 5575 50  0001 C CNN "Digi-Key_PN"
	1    7525 5575
	0    1    1    0   
$EndComp
NoConn ~ 4100 6100
$Comp
L CNC_Board:5V_Buck_Conv U2
U 1 1 5F935C94
P 6050 6700
F 0 "U2" H 6000 6700 50  0000 L CNN
F 1 "5V_Buck_Conv" V 6225 6450 50  0000 L CNN
F 2 "CNC_Board:Pololu_5V_D24V25F5" H 6150 6700 50  0001 C CNN
F 3 "" H 6150 6700 50  0001 C CNN
F 4 "2183-2850-ND" H 6050 6700 50  0001 C CNN "Digi-Key_PN"
	1    6050 6700
	1    0    0    -1  
$EndComp
Text GLabel 1200 1425 0    50   Input ~ 0
A19_PWM_SDA1
Text GLabel 1200 1325 0    50   Input ~ 0
A18_PWM_SDL1
Text GLabel 1200 1225 0    50   Input ~ 0
A17_PWM
Text GLabel 1200 1125 0    50   Input ~ 0
A16_PWM
Text GLabel 1200 1025 0    50   Input ~ 0
A15_RX5
Text GLabel 1200 925  0    50   Input ~ 0
A14_TX5
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5FC9DB67
P 1400 1325
F 0 "J1" H 1480 1317 50  0000 L CNN
F 1 "Analog_Conn" H 1000 800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1400 1325 50  0001 C CNN
F 3 "~" H 1400 1325 50  0001 C CNN
	1    1400 1325
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FCCD752
P 700 1725
F 0 "#PWR01" H 700 1475 50  0001 C CNN
F 1 "GND" H 705 1552 50  0000 C CNN
F 2 "" H 700 1725 50  0001 C CNN
F 3 "" H 700 1725 50  0001 C CNN
	1    700  1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1725 700  1625
Text GLabel 1200 1525 0    50   Input ~ 0
3.3_V
Wire Wire Line
	1200 1625 700  1625
Wire Wire Line
	1200 2675 700  2675
Text GLabel 1200 2575 0    50   Input ~ 0
3.3_V
Wire Wire Line
	700  2775 700  2675
$Comp
L power:GND #PWR02
U 1 1 5FCECB40
P 700 2775
F 0 "#PWR02" H 700 2525 50  0001 C CNN
F 1 "GND" H 705 2602 50  0000 C CNN
F 2 "" H 700 2775 50  0001 C CNN
F 3 "" H 700 2775 50  0001 C CNN
	1    700  2775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5FC9F74D
P 1400 2375
F 0 "J2" H 1480 2367 50  0000 L CNN
F 1 "Digital_Conn" H 1000 1850 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1400 2375 50  0001 C CNN
F 3 "~" H 1400 2375 50  0001 C CNN
	1    1400 2375
	1    0    0    1   
$EndComp
Wire Wire Line
	1925 1075 2500 1075
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5FB5DF8A
P 2700 1175
F 0 "J3" H 2780 1167 50  0000 L CNN
F 1 "I2C_Conn" H 2780 1076 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2700 1175 50  0001 C CNN
F 3 "~" H 2700 1175 50  0001 C CNN
	1    2700 1175
	1    0    0    1   
$EndComp
Text GLabel 2500 975  0    50   Input ~ 0
3.3_V
Text GLabel 2500 1275 0    50   Input ~ 0
I2C_SDA
Text GLabel 2500 1175 0    50   Input ~ 0
I2C_SCL
Wire Wire Line
	2500 2050 2375 2050
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5FCC4D73
P 2700 2050
F 0 "J5" H 2780 2042 50  0000 L CNN
F 1 "Limit_Switch_Conn" H 2780 1951 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2700 2050 50  0001 C CNN
F 3 "~" H 2700 2050 50  0001 C CNN
F 4 "819" H 2700 2050 50  0001 C CNN "Adafruit"
F 5 "WM2700-ND" H 2700 2050 50  0001 C CNN "Digi-Key_PN"
	1    2700 2050
	1    0    0    1   
$EndComp
Text GLabel 2500 1950 0    50   Input ~ 0
Limit_2
$Comp
L power:GND #PWR07
U 1 1 5FCC4D79
P 2375 2050
F 0 "#PWR07" H 2375 1800 50  0001 C CNN
F 1 "GND" H 2380 1877 50  0000 C CNN
F 2 "" H 2375 2050 50  0001 C CNN
F 3 "" H 2375 2050 50  0001 C CNN
	1    2375 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 1175 1925 1075
$Comp
L power:GND #PWR05
U 1 1 5FB59F61
P 1925 1175
F 0 "#PWR05" H 1925 925 50  0001 C CNN
F 1 "GND" H 1930 1002 50  0000 C CNN
F 2 "" H 1925 1175 50  0001 C CNN
F 3 "" H 1925 1175 50  0001 C CNN
	1    1925 1175
	1    0    0    -1  
$EndComp
Text GLabel 2500 2350 0    50   Input ~ 0
Limit_3
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5FCC9E50
P 2700 2450
F 0 "J6" H 2780 2442 50  0000 L CNN
F 1 "Limit_Switch_Conn" H 2780 2351 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2700 2450 50  0001 C CNN
F 3 "~" H 2700 2450 50  0001 C CNN
F 4 "819" H 2700 2450 50  0001 C CNN "Adafruit"
F 5 "WM2700-ND" H 2700 2450 50  0001 C CNN "Digi-Key_PN"
	1    2700 2450
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5FCA00F2
P 2700 1650
F 0 "J4" H 2780 1642 50  0000 L CNN
F 1 "Limit_Switch_Conn" H 2780 1551 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 2700 1650 50  0001 C CNN
F 3 "~" H 2700 1650 50  0001 C CNN
F 4 "819" H 2700 1650 50  0001 C CNN "Adafruit"
F 5 "WM2700-ND" H 2700 1650 50  0001 C CNN "Digi-Key_PN"
	1    2700 1650
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FCA5D3B
P 2375 1650
F 0 "#PWR06" H 2375 1400 50  0001 C CNN
F 1 "GND" H 2380 1477 50  0000 C CNN
F 2 "" H 2375 1650 50  0001 C CNN
F 3 "" H 2375 1650 50  0001 C CNN
	1    2375 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1650 2375 1650
Text GLabel 2500 1550 0    50   Input ~ 0
Limit_1
Wire Wire Line
	2500 2450 2375 2450
$Comp
L power:GND #PWR08
U 1 1 5FCC9E56
P 2375 2450
F 0 "#PWR08" H 2375 2200 50  0001 C CNN
F 1 "GND" H 2380 2277 50  0000 C CNN
F 2 "" H 2375 2450 50  0001 C CNN
F 3 "" H 2375 2450 50  0001 C CNN
	1    2375 2450
	1    0    0    -1  
$EndComp
Text GLabel 1200 2475 0    50   Input ~ 0
D30_PWM
Text GLabel 1200 1975 0    50   Input ~ 0
D25
Text GLabel 1200 2075 0    50   Input ~ 0
D26_TX1
Text GLabel 1200 2175 0    50   Input ~ 0
D27_RX1
Text GLabel 1200 2275 0    50   Input ~ 0
D28
Text GLabel 1200 2375 0    50   Input ~ 0
D29_PWM
Wire Wire Line
	10075 1800 10200 1800
Wire Wire Line
	5225 1800 5350 1800
Wire Wire Line
	7650 1800 7775 1800
NoConn ~ 1800 5900
Connection ~ 5325 2800
Wire Wire Line
	5325 2900 5325 2800
Wire Wire Line
	5325 2800 5325 2700
Wire Wire Line
	4125 2900 4825 2900
Wire Wire Line
	4275 2800 4825 2800
Wire Wire Line
	4425 2700 4825 2700
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J8
U 1 1 5F982701
P 5025 2800
F 0 "J8" H 5075 2475 50  0000 C CNN
F 1 "Micro_Stepping" H 5075 2575 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x03_P2.00mm_Vertical" H 5025 2800 50  0001 C CNN
F 3 "~" H 5025 2800 50  0001 C CNN
F 4 "609-2583-ND‎" H 5025 2800 50  0001 C CNN "Digi-Key_PN"
	1    5025 2800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FA64C5C
P 6175 5500
F 0 "#PWR017" H 6175 5250 50  0001 C CNN
F 1 "GND" H 6180 5327 50  0000 C CNN
F 2 "" H 6175 5500 50  0001 C CNN
F 3 "" H 6175 5500 50  0001 C CNN
	1    6175 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FA64C56
P 5800 5500
F 0 "#PWR014" H 5800 5250 50  0001 C CNN
F 1 "GND" H 5805 5327 50  0000 C CNN
F 2 "" H 5800 5500 50  0001 C CNN
F 3 "" H 5800 5500 50  0001 C CNN
	1    5800 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FA64C4F
P 6175 5350
F 0 "C7" V 5950 5350 50  0000 C CNN
F 1 "0.1 uF" V 6025 5350 50  0000 C CNN
F 2 "Capacitor_THT:C_Rect_L4.6mm_W3.0mm_P2.50mm_MKS02_FKP02" H 6175 5350 50  0001 C CNN
F 3 "~" H 6175 5350 50  0001 C CNN
F 4 "399-9824-ND" H 6175 5350 50  0001 C CNN "Digi-Key_PN"
	1    6175 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5FA64C48
P 5800 5350
F 0 "C5" V 5575 5350 50  0000 C CNN
F 1 "100 uF" V 5650 5350 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5800 5350 50  0001 C CNN
F 3 "~" H 5800 5350 50  0001 C CNN
F 4 "493-5356-1-ND" H 5800 5350 50  0001 C CNN "Digi-Key_PN"
	1    5800 5350
	1    0    0    -1  
$EndComp
Text GLabel 6350 5125 2    50   Input ~ 0
12_V
$Comp
L dk_Toggle-Switches:100SP1T2B4M6QE S1
U 1 1 5FA804A8
P 5275 5225
F 0 "S1" H 5275 5580 50  0000 C CNN
F 1 "Power_Switch" H 5275 5489 50  0000 C CNN
F 2 "digikey-footprints:Toggle_Switch_100SP1T2B4M6QE" H 5475 5425 50  0001 L CNN
F 3 "http://spec_sheets.e-switch.com/specs/T111069.pdf" H 5475 5525 60  0001 L CNN
F 4 "EG2362-ND" H 5475 5625 60  0001 L CNN "Digi-Key_PN"
F 5 "100SP1T2B4M6QE" H 5475 5725 60  0001 L CNN "MPN"
F 6 "Switches" H 5475 5825 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 5475 5925 60  0001 L CNN "Family"
F 8 "http://spec_sheets.e-switch.com/specs/T111069.pdf" H 5475 6025 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/e-switch/100SP1T2B4M6QE/EG2362-ND/378831" H 5475 6125 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 5A 120V" H 5475 6225 60  0001 L CNN "Description"
F 11 "E-Switch" H 5475 6325 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5475 6425 60  0001 L CNN "Status"
	1    5275 5225
	1    0    0    -1  
$EndComp
NoConn ~ 5475 5325
Wire Wire Line
	6350 5125 6175 5125
Connection ~ 5800 5125
Wire Wire Line
	5800 5125 5475 5125
Connection ~ 6175 5125
Wire Wire Line
	6175 5125 5800 5125
Wire Wire Line
	5075 5225 4825 5225
$Comp
L Teensy:Teensy3.6 U1
U 1 1 5F8F6F14
P 2950 5250
F 0 "U1" H 2950 7687 60  0000 C CNN
F 1 "Teensy3.6" H 2950 7581 60  0000 C CNN
F 2 "CNC_Board:Teensy36_no_inside" V 2975 5300 60  0000 C CNN
F 3 "" H 2950 5300 60  0000 C CNN
F 4 "3266" H 2950 5250 50  0001 C CNN "Adafruit"
F 5 "102-6171-ND" H 2950 5250 50  0001 C CNN "Digi-Key_PN"
	1    2950 5250
	1    0    0    -1  
$EndComp
Text GLabel 7375 5575 0    50   Input ~ 0
Red_LED
Text GLabel 7375 5100 0    50   Input ~ 0
Green_LED
$EndSCHEMATC
