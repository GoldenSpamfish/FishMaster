import serial

ser = serial.Serial('COM5', 115200, timeout=0)
written="test"
ser.write(b'written')
s=ser.read(32)
print(s)