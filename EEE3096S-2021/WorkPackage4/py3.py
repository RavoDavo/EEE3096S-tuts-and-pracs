import busio
import digitalio
import board
from time import sleep
import adafruit_mcp3xxx.mcp3008 as MCP
from adafruit_mcp3xxx.analog_in import AnalogIn

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
TA = (Temp.voltage-V0)/TC

def printADC():
	TA = (Temp.voltage-V0)/TC
	print("Runtime        Temp Reading    Temp          Light Reading      ")
	i = 0

	print(str(i)+'s             '+ str(Temp.value)+'           '+str(TA)+" C       "+str(LDR.value))
	i = i+10

	while (True):
		print(str(i)+'s            '+ str(Temp.value)+'  	       '+str(TA)+" C       "+str(LDR.value))
		#print('ADC Voltage: ' + str(chan.voltage) + 'V')
		i = i+10
		sleep(1.5)

if __name__ == "__main__":
	printADC()
