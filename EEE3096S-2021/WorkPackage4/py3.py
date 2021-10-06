# importing the various libraries needed for the practical
import busio # allow for the use of the various buses to interface
import digitalio # allows to read the ADC values and other functions
import board 
import time # used in the threading to determine the sampling rate
import RPi.GPIO as GPIO # used to set up the debouncing and trigger button
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn
import threading 

# create the spi bus
spi = busio.SPI(clock=board.SCK, MISO=board.MISO, MOSI=board.MOSI)

# create the cs (chip select)
cs = digitalio.DigitalInOut(board.D5)

# create the mcp object
mcp = MCP.MCP3008(spi, cs)

# creating analog input channels
Temp = AnalogIn(mcp, MCP.P1) # analogue input channel for temperature component is pin 2 channel 1 (MCP9700)
LDR = AnalogIn(mcp, MCP.P2) # analogue input channel for LDR component is pin 3 channel 2
BTN=23 # GPIO pin the button is connected to on the Pi
level = 0 # incrementer for the button pressed
modes = [10, 5, 1] # the various sampling rates that can be chosen 
period = modes[level] # period for the sample rate chosen

V0 = 0.5 # sensor output voltage at 0 degrees for the MCP9700
TC = 0.01 # temperature coefficient of the MCP9700

def setup():
	"""
	This function setups up the button press and any other GPIO pins needed in this prac
	"""
	GPIO.setup(BTN, GPIO.IN, pull_up_down=GPIO.PUD_UP) 
	GPIO.add_event_detect(BTN, GPIO.FALLING, callback=increment_index, bouncetime=250) # adding an event detection that calls the 
	pass									           # increment_index function when the button is pressed
	
def printADC():
	"""
	This function formats the prinnting of the ADC values
	"""
	TA = (Temp.voltage-V0)/TC # the transfer function of the output voltage was used to derive a formula for the ambient temperature TA
	print(str(int(round(runtime, 0)))+'s\t\t'+ str(Temp.value)+'\t\t\t'+str(round(TA,2))+" C\t\t"+str(LDR.value)) # print out the ADC and temp values
	
def print_sensor_thread():
	"""
	This function prints the ADC sensor values to the screen every ten seconds
	"""
	global runtime
	
	period = modes[level]
	thread = threading.Timer(period, print_sensor_thread) # threading being used to implement the timer
	thread.daemon = True  # Daemon threads exit when the program does
	
	thread.start() # starts timer
	runtime = time.time() - ticc #time lapesed calculated
	printADC() # invoke the printADC function to print the various sensor values
	pass

def increment_index(self):
	"""
	This function incremenets the level each time the button is pressed where the level is used to determine a sampling rate of either 10s, 5s or 1s
	"""
	global level
	
	if (level == 2):
		level = 0
	else:
		level += 1
	
	pass

if __name__ == "__main__":
	try:
		setup() # setups GPIO button press for the button
		print("Runtime\t\tTemp Reading\t\tTemp\t\tLight Reading")
		tic=time.time() # takes the current time
		print_sensor_thread() # call it once to start the thread

		# Tell our program to run indefinitely
		while True:
			pass

	except Exception as e:
		# throws an exception if any error occurs and prints the error
		print(e)
		
	finally:
		# cleans up all GPIO pins
		GPIO.cleanup()
