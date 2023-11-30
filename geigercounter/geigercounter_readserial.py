#!/usr/bin/env python
# Read data from serial output of Mightyohm Geigercounter (http://mightyohm.com/blog/products/geiger-counter/)
# Requires python3 and pyserial. -> sudo pip3 install pyserial
import time
import serial

geigercounter = serial.Serial(
        port='/dev/ttyUSB0',
        baudrate = 9600,
        parity=serial.PARITY_NONE,
        stopbits=serial.STOPBITS_ONE,
        bytesize=serial.EIGHTBITS,
        timeout=1
)
counter=0

#while 1:
output=geigercounter.readline().decode("utf-8").rstrip()
print(output)
