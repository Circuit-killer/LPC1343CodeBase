import serial
import sys

def printProgram(port):
	port.write("list\n")
	response = port.readlines()
	for line in response:
		print line

def uploadProgram(port, program):
	lineNo = 1;
	port.write("stop\n")
	port.readline()
	port.readline()
	port.write("purge\n")
	port.readline()
	port.readline()
	for command in program:
		if len(command.rstrip()) > 8 :
			toSend = "add " + str(lineNo) + " " + command
			print "sending [" + toSend.rstrip() + "]"
			lineNo += 1
			port.write(toSend)
			port.readline()
			print port.readline()
			port.readline()
	port.write("start\n")
	port.readline()

if len(sys.argv) != 2:
	print "Usage: pecius.py programfile"
	sys.exit(1)

programFile = open(sys.argv[1], "r")
port = serial.Serial("/dev/ttyACM0", 19200, timeout=1)
port.readlines()#clean up the buffer if there was something
uploadProgram(port, programFile.readlines())
printProgram(port)
port.close()

