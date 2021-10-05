import busio
import digitalio
import board
import time 

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
BTN=23
level = 0
modes = [10, 5, 1]
period = modes[level]

V0 = 0.5
TC = 0.01
def setup():
	GPIO.setup(btn_pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)
	GPIO.add_event_detect(btn_pin, GPIO.RISING, callback=increment_index, bouncetime=250)
	pass


def printADC():
	"""
	This function formats the prinnting of the ADC values
	"""
	TA = (Temp.voltage-V0)/TC
	
	

	print(str(int(round(run_time, 0)))+'s\t\t'+ str(Temp.value)+'\t\t\t'+str(round(TA,2))+" C\t\t"+str(LDR.value))
	

	

def print_sensor_thread():
	"""
	This function prints the ADC sensor values to the screen every ten seconds
	"""
	period = modes[level]
	thread = threading.Timer(period, print_sensor_thread)
	thread.daemon = True  # Daemon threads exit when the program does
	thread.start()
	global runtime
	runtime=time.time()-tic
	printADC()
	pass

def increment_index(self):
	global level
	if (level > 1):
		level = 0
	else:
		level += 1
	
	pass

if __name__ == "__main__":
	
	print("Runtime\t\tTemp Reading\t\tTemp\t\tLight Reading")
	tic=time.time()
	print_sensor_thread() # call it once to start the thread

	# Tell our program to run indefinitely
	while True:
		pass

