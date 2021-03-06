EESchema Schematic File Version 4
LIBS:zm31-tandymod-plus-rom-adapter-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "IBM PCjr TandyMod+ ROM Adapter"
Date "2019-10-13"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS157 U1
U 1 1 5DA3C72D
P 2850 3200
F 0 "U1" H 3250 2600 50  0000 C CNN
F 1 "ZM31 Socket" H 3450 2500 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 2850 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS157" H 2850 3200 50  0001 C CNN
	1    2850 3200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5DA3F8BC
P 2150 1500
F 0 "SW1" H 2150 1785 50  0000 C CNN
F 1 "SW_DPDT_x2" H 2150 1694 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 2150 1500 50  0001 C CNN
F 3 "~" H 2150 1500 50  0001 C CNN
	1    2150 1500
	0    1    1    0   
$EndComp
$Comp
L Memory_EPROM:27C512 U2
U 1 1 5DA41534
P 5700 3350
F 0 "U2" H 5700 4631 50  0000 C CNN
F 1 "ROM Socket" H 5700 4540 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket_LongPads" H 5700 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc0015.pdf" H 5700 3350 50  0001 C CNN
	1    5700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2250 5000 2250
Wire Wire Line
	2850 2250 2850 2300
NoConn ~ 3350 3500
NoConn ~ 2350 3500
NoConn ~ 2350 3600
Wire Wire Line
	5700 4450 5000 4450
Wire Wire Line
	2850 4450 2850 4200
NoConn ~ 6100 2750
NoConn ~ 6100 2850
NoConn ~ 6100 2950
NoConn ~ 6100 3050
NoConn ~ 6100 3150
Wire Wire Line
	5300 3950 5000 3950
Wire Wire Line
	5000 3950 5000 4450
Connection ~ 5000 4450
Wire Wire Line
	5000 4450 4600 4450
Wire Wire Line
	5300 3850 5000 3850
Wire Wire Line
	5000 3850 5000 3750
Connection ~ 5000 2250
Wire Wire Line
	5000 2250 2850 2250
Wire Wire Line
	5300 3750 5000 3750
Connection ~ 5000 3750
Wire Wire Line
	5000 3750 5000 2250
Wire Wire Line
	5300 3650 4600 3650
Wire Wire Line
	4600 3650 4600 4450
Connection ~ 4600 4450
Wire Wire Line
	4600 4450 2850 4450
Wire Wire Line
	5300 3550 4600 3550
Wire Wire Line
	4600 3550 4600 3650
Connection ~ 4600 3650
Wire Wire Line
	5300 3350 4600 3350
Wire Wire Line
	4600 3350 4600 3450
Connection ~ 4600 3550
Wire Wire Line
	5300 3250 4600 3250
Wire Wire Line
	4600 3250 4600 3350
Connection ~ 4600 3350
Wire Wire Line
	5300 3450 4600 3450
Connection ~ 4600 3450
Wire Wire Line
	4600 3450 4600 3550
Wire Wire Line
	3550 1750 3550 2600
Wire Wire Line
	3550 2600 3350 2600
Wire Wire Line
	3350 2900 3650 2900
Wire Wire Line
	3650 2900 3650 1850
Wire Wire Line
	3350 3200 3750 3200
Wire Wire Line
	3750 3200 3750 1950
Wire Wire Line
	3750 1950 6350 1950
Wire Wire Line
	6350 1950 6350 2650
Wire Wire Line
	6350 2650 6100 2650
Wire Wire Line
	3650 1850 6450 1850
Wire Wire Line
	6450 1850 6450 2550
Wire Wire Line
	6450 2550 6100 2550
Wire Wire Line
	6100 2450 6550 2450
Wire Wire Line
	6550 2450 6550 1750
Wire Wire Line
	6550 1750 3550 1750
Wire Wire Line
	5300 2450 5250 2450
Wire Wire Line
	5250 1300 2150 1300
Wire Wire Line
	5250 1300 5250 2450
Wire Wire Line
	2350 3900 2350 4250
Wire Wire Line
	2350 4250 5200 4250
Wire Wire Line
	5300 4150 5200 4150
Wire Wire Line
	5200 4150 5200 4250
Connection ~ 5200 4250
Wire Wire Line
	5200 4250 5300 4250
Wire Wire Line
	5300 3150 4450 3150
Wire Wire Line
	4450 3150 4450 4350
Wire Wire Line
	4450 4350 2250 4350
Wire Wire Line
	2250 4350 2250 3800
Wire Wire Line
	2250 3800 2350 3800
Wire Wire Line
	5300 3050 5150 3050
Wire Wire Line
	5150 3050 5150 2050
Wire Wire Line
	5150 2050 2350 2050
Wire Wire Line
	2350 2050 2350 2600
Wire Wire Line
	5300 2950 4900 2950
Wire Wire Line
	4900 2950 4900 2150
Wire Wire Line
	4900 2150 2250 2150
Wire Wire Line
	2250 2150 2250 2700
Wire Wire Line
	2250 2700 2350 2700
Wire Wire Line
	5300 2850 4350 2850
Wire Wire Line
	4350 2850 4350 4150
Wire Wire Line
	5300 2750 4250 2750
Wire Wire Line
	4250 2750 4250 4550
Wire Wire Line
	4250 4550 2150 4550
Wire Wire Line
	2150 4550 2150 3000
Wire Wire Line
	2150 3000 2350 3000
Wire Wire Line
	2350 2900 2050 2900
Wire Wire Line
	2050 2900 2050 4150
Wire Wire Line
	2050 4150 4350 4150
Wire Wire Line
	5300 2650 4150 2650
Wire Wire Line
	4150 2650 4150 4650
Wire Wire Line
	4150 4650 1950 4650
Wire Wire Line
	1950 4650 1950 3200
Wire Wire Line
	1950 3200 2350 3200
Wire Wire Line
	5300 2550 4050 2550
Wire Wire Line
	4050 2550 4050 4750
Wire Wire Line
	4050 4750 1850 4750
Wire Wire Line
	1850 4750 1850 3300
Wire Wire Line
	1850 3300 2350 3300
Wire Wire Line
	2850 2250 2850 1900
Wire Wire Line
	2850 1900 2250 1900
Wire Wire Line
	2250 1900 2250 1700
Connection ~ 2850 2250
Wire Wire Line
	2050 1700 1700 1700
Wire Wire Line
	1700 1700 1700 4450
Wire Wire Line
	1700 4450 2850 4450
Connection ~ 2850 4450
Text Label 3950 2250 0    50   ~ 0
VCC
Text Label 5150 4450 0    50   ~ 0
GND
Text Label 3200 1300 0    50   ~ 0
~TANDY
Text Label 3100 4750 0    50   ~ 0
XA16
Text Label 3100 4650 0    50   ~ 0
PG2
Text Label 3100 4550 0    50   ~ 0
XA15
Text Label 3100 4450 0    50   ~ 0
GND
Text Label 3100 4350 0    50   ~ 0
SEL
Text Label 3100 4250 0    50   ~ 0
~ENABLE
Text Label 3100 4150 0    50   ~ 0
PG1
Text Label 4400 2850 0    50   ~ 0
PG1
Text Label 4400 2750 0    50   ~ 0
XA15
Text Label 4400 2650 0    50   ~ 0
PG2
Text Label 4400 2550 0    50   ~ 0
XA16
Text Label 3950 2150 0    50   ~ 0
XA14
Text Label 3950 2050 0    50   ~ 0
PG0
Text Label 3950 1750 0    50   ~ 0
OUT14
Text Label 3950 1850 0    50   ~ 0
OUT15
Text Label 3950 1950 0    50   ~ 0
OUT16
Text Label 2300 1900 0    50   ~ 0
VCC
Text Label 1800 1700 0    50   ~ 0
GND
Text Label 4650 3150 0    50   ~ 0
SEL
$EndSCHEMATC
