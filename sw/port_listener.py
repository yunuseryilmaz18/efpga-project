import serial
ser = serial.Serial('/dev/ttyUSB0', 115200, timeout = 0.3)
while True:
    message = ser.read(1000).decode() 
    print(message,end="")
    