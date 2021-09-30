import busio
import digitalio
import board
from time import sleep
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn
import threading
#board.D16 for the GPIO16

# create the spi bus
spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)

# create the cs (chip select)
cs = digitalio.DigitalInOut(board.D5)

# create the mcp object
mcp = MCP.MCP3008(spi, cs)

# create an analog input channel on pin 0
Temp = AnalogIn(mcp, MCP.P1)
LDR = AnalogIn(mcp, MCP.P2)

V0 = 0.5
TC = 0.01


def printADC():
	"""
	This function formats the prinnting of the ADC values
	"""
	TA = (Temp.voltage-V0)/TC
	
	

	print(str(i)+'s\t\t'+ str(Temp.value)+'\t\t\t'+str(round(TA,2))+" C\t\t"+str(LDR.value))
	

	

def print_sensor_thread():
	"""
	This function prints the ADC sensor values to the screen every ten seconds
	"""
	thread = threading.Timer(10.0, print_sensor_thread)
	thread.daemon = True  # Daemon threads exit when the program does
	thread.start()
	printADC()

if __name__ == "__main__":
	
	print("Runtime\t\tTemp Reading\t\tTemp\t\tLight Reading")
	print_sensor_thread() # call it once to start the thread

	# Tell our program to run indefinitely
	while True:
		pass

