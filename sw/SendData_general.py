#!/usr/bin/env python
import serial

com_port = input("Enter the COM port (e.g. COM5): ")
baud_rate = 9600
data_file = input("Enter the path to the data file (e.g. C:/.../test.hex): ")
sequence = 'TEKNOFEST'

try:
    with open(data_file, 'r') as file:
        data = file.read()
except FileNotFoundError:
    print(f'\nError: file not found: {data_file}')
    exit()

instructions = data.split('\n')

if len(instructions) == 0:
    print('\nError: no instructions found')
    exit()

with serial.Serial(com_port, baud_rate, timeout=1) as ser:
    ser.write(sequence.encode('utf-8'))
    print(f'\nSent program sequence: {sequence}')

    num_instructions = len(instructions)-1
    hex_num_instructions = hex(num_instructions)
    print(f'\nNumber of instructions: {num_instructions} = {hex_num_instructions}\n')
    num_instructions_bytes = int(hex_num_instructions, 16).to_bytes(4, 'big')
    ser.write(num_instructions_bytes)

    for i, instruction in enumerate(instructions):
        if len(instruction) == 0:
             print(f'\nInstructions sent successfully ')
        elif len(instruction) < 8:
            print(f'\nError: invalid instruction format on line {i+1}: {instruction}')
            exit()
        else:
            instruction_bytes = int(instruction, 16).to_bytes(4, 'big')
            ser.write(instruction_bytes)
            print(f'Sent instruction {i+1}: {instruction}')
    ser.write('done'.encode('utf-8'))
