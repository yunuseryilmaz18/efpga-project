import serial
baud_rate = 1152000
port = '/dev/ttyUSB0'
ser = serial.Serial(port, baud_rate)
while True:
    user_input = input()
    ser.write(user_input.encode())
    ser.write( '\n'.encode())
