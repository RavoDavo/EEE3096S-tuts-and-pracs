# Import libraries
import RPi.GPIO as GPIO
import random
import ES2EEPROMUtils
import os
import time

# some global variables that need to change as we run the program
end_of_game = None  # set if the user wins or ends the game

# DEFINE THE PINS USED HERE
LED_value = [11, 13, 15] # guess number LEDS
LED_accuracy = 32 # pwm accuracy LEDs
btn_submit = 16
btn_increase = 18
buzzer = 33
eeprom = ES2EEPROMUtils.ES2EEPROM()

# Defining variables for guess, number of submitted guesses and the random value
value=0
guess=0
guessNo=0
pwm_led = None
pwm_buzzer = None
# Print the game banner


def welcome():
    os.system('clear')
    print("  _   _                 _                  _____ _            __  __ _")
    print("| \ | |               | |                / ____| |          / _|/ _| |")
    print("|  \| |_   _ _ __ ___ | |__   ___ _ __  | (___ | |__  _   _| |_| |_| | ___ ")
    print("| . ` | | | | '_ ` _ \| '_ \ / _ \ '__|  \___ \| '_ \| | | |  _|  _| |/ _ \\")
    print("| |\  | |_| | | | | | | |_) |  __/ |     ____) | | | | |_| | | | | | |  __/")
    print("|_| \_|\__,_|_| |_| |_|_.__/ \___|_|    |_____/|_| |_|\__,_|_| |_| |_|\___|")
    print("")
    print("Guess the number and immortalise your name in the High Score Hall of Fame!")


# Print the game menu
def menu():
    global end_of_game, value, guess, guessNo 
	
    option = input("Select an option:   H - View High Scores     P - Play Game       Q - Quit\n")
    option = option.upper()

    if option == "H":
        os.system('clear')
        print("HIGH SCORES!!")
        #save_scores()
        s_count, ss = fetch_scores()
        display_scores(s_count, ss)

    elif option == "P":
        os.system('clear')
        print("Starting a new round!")
        print("Use the buttons on the Pi to make and submit your guess!")
        print("Press and hold the guess button to cancel your game")
        value = generate_number()
        guess = 0

        guessNo=0
        while not end_of_game:
            pass
        guess=0 # reset the number of guesses so that the game may be played again
        end_of_game=False
    elif option == "Q":
        print("Come back soon!")
        exit()

    else:
        print("Invalid option. Please select a valid one!")

	
def display_scores(count, raw_data):
    # print the scores to the screen in the expected format
    print("There are ", count," scores. Here are the top 3!".format(count))
	
    # Orders the array of high scores in terms of best and worst scores
    sorted_scores = sorted(raw_data, key = lambda x: x[1])

    # print out the scores in the required format
    print("1 - "+sorted_scores[0][0]+" took ", sorted_scores[0][1]," guesses")
    print("2 - "+sorted_scores[1][0]+" took ", sorted_scores[1][1]," guesses")
    print("3 - "+sorted_scores[2][0]+" took ", sorted_scores[2][1]," guesses")

    pass

    # def printTest(channel):
    # print("Button Submit Pressed")

	
# Setup Pins
def setup():
    global pwm_led, pwm_buzzer
	
    # Setup board mode
    GPIO.setmode(GPIO.BOARD) #Sets the GPIO numbering to board numbers

    # Setup regular GPIO
    GPIO.setup(LED_value[0], GPIO.OUT)
    GPIO.output(LED_value[0], GPIO.LOW)
    GPIO.setup(LED_value[1], GPIO.OUT)
    GPIO.output(LED_value[1], GPIO.LOW)
    GPIO.setup(LED_value[2], GPIO.OUT)
    GPIO.output(LED_value[2], GPIO.LOW)

    # Setup PWM LED channel
    GPIO.setup(LED_accuracy, GPIO.OUT)
    GPIO.output(LED_accuracy, GPIO.LOW)
    pwm_led = GPIO.PWM(LED_accuracy, 10000) #setting the frequency of the pwm_led

    # Setup PWM buzzer channel
    GPIO.setup(buzzer, GPIO.OUT)
    #GPIO.output(buzzer, GPIO.LOW)
    pwm_buzzer = GPIO.PWM(buzzer, 1) #setting the frequency of the pwm_buzzer

    # Setup for the push buttonss
    GPIO.setup(btn_submit, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(btn_increase, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    # Setup debouncing and callbacks
    GPIO.add_event_detect(btn_submit, GPIO.FALLING, callback=btn_guess_pressed, bouncetime=300)
    # GPIO.add_event_detect(btn_submit,GPIO.FALLING,callback=printTest, bouncetime=150)
    # GPIO.add_event_detect(btn_submit,GPIO.FALLING, bouncetime=150)
    # GPIO.add_event_callback(btn_submit,btn_guess_pressed)
    # GPIO.add_event_callback(btn_submit,printTest)
    GPIO.add_event_detect(btn_increase, GPIO.FALLING, callback=btn_increase_pressed, bouncetime=150)

    pass


# Load high scores
def fetch_scores():
	global eeprom, score_count
	
	score_count = eeprom.read_byte(0) # reads byte 0 of block 0 which is where the no. of scores is stored.

    	# get however many scores there are
	temp = eeprom.read_block(1,score_count*4) # reads python list of bytes from the eeprom containing all the score
    	# [1, 1122, 22, 333]

    	# convert the codes back to ascii
	for i in range(len(temp)):
		if ((i+1)%4 != 0):
			temp[i] = chr(temp[i])
		else:
			temp[i] = int(temp[i])

	rows, cols = score_count, 2
	
	# create a 2D array to store the name and score of the player
	scores = [[0 for i in range(cols)] for j in range(rows)]
	# print(temp)

	# concatenate the names and populate the 2D array
	z = 0
	for i in range(0,len(temp),4):
		# print("I is ",i," and z is ", z)
		scores[z][0] = temp[i]+temp[i+1]+temp[i+2]
		scores[z][1] = temp[i+3]
		# print(scores)
		z+=1

    	# return back the results
	# print(scores)
	return score_count, scores


# Save high scores
def save_scores(newScore):
        # fetch scores
	score_count, scores = fetch_scores()
	# scores = temp[1]
	# score_count = temp[0]

	score_count += 1 # increment the total number of scores
	scores.append(newScore) # add new score and name to list of scores

        # include new score
	eeprom.write_block(0, [score_count])  # update the total number of scores stored in the eeprom
	time.sleep(0.01)
	# scores = [["ChB", 5], ["Ada", 7], ["LSu", 4], ["EEE", 8]]

	# sorts the scores
	scores.sort(key=lambda x: x[1])

	for i, score in enumerate(scores):
		data_to_write = [] # creates an array called data_to_write
          	
		for letter in score[0]:
			data_to_write.append(ord(letter))
		data_to_write.append(score[1])
		eeprom.write_block(i+1, data_to_write)  # update total amount of scores
		time.sleep(0.01)
	
	#print(fetch_scores())
	pass


# Generate guess number
def generate_number():
    return random.randint(0, pow(2, 3)-1)


# Increase button pressed
def btn_increase_pressed(channel):
    	# Increase the value shown on the LEDs
	global guess # You can choose to have a global variable store the user's current guess,
	guess+=1
	print("btn pressed: ",guess) # Allows the player to view their current guess value
	
	if guess == 1:
		GPIO.output(LED_value[0], GPIO.HIGH)
		GPIO.output(LED_value[1], GPIO.LOW)
		GPIO.output(LED_value[2], GPIO.LOW)

	elif guess == 2:
		GPIO.output(LED_value[0], GPIO.LOW)
		GPIO.output(LED_value[1], GPIO.HIGH)
		GPIO.output(LED_value[2], GPIO.LOW)

	elif guess == 3:
		GPIO.output(LED_value[0], GPIO.LOW)
		GPIO.output(LED_value[1], GPIO.LOW)
		GPIO.output(LED_value[2], GPIO.HIGH)

	elif guess == 4:
		GPIO.output(LED_value[0], GPIO.HIGH)
		GPIO.output(LED_value[1], GPIO.LOW)
		GPIO.output(LED_value[2], GPIO.HIGH)

	elif guess == 5:
		GPIO.output(LED_value[0], GPIO.LOW)
		GPIO.output(LED_value[1], GPIO.HIGH)
		GPIO.output(LED_value[2], GPIO.HIGH)

	elif guess == 6:
		GPIO.output(LED_value[0], GPIO.HIGH)
		GPIO.output(LED_value[1], GPIO.HIGH)
		GPIO.output(LED_value[2], GPIO.HIGH)

	else:
		GPIO.output(LED_value[0], GPIO.LOW)
		GPIO.output(LED_value[1], GPIO.LOW)
		GPIO.output(LED_value[2], GPIO.LOW)

	pass


# Guess button
def btn_guess_pressed(channel):
	global pwm_led, pwm_buzzer, end_of_game, value, guessNo, guess # global variable definitions
	guessNo+=1
	
	# timing the elapsed time that occurs after the button is pressed
	start = time.time()
	while GPIO.input(channel) == 0:
        	time.sleep(0.005)
	end = time.time()
	elapsed = end - start

	# If they've pressed and held the button, clear up the GPIO and take them back to the menu screen
	if elapsed >= 2:
		# GPIO.cleanup()
		pwm_buzzer.stop()
		pwm_led.stop()
		GPIO.output(tuple(LED_value), GPIO.LOW)
		end_of_game = True
		# menu()
		return
	else:
		# guessNo += 1
		# Compare the actual value with the user value displayed on the LEDs
		if guess == value: # if it's an exact guess:
			# print("True true")

			pwm_buzzer.stop() # - Disable LEDs and Buzzer
			pwm_led.stop() # Change the PWM LED
			print("You guessed correctly, the number is: ", value)
			name = ""
			temp = ""
			name = input("Enter your name, the first three letters will be taken: ") # - tell the user and prompt them for a name
			for  letter in name:
				if len(temp)<3:
					temp += letter
				pass

			name = temp
			newScore = [name,guessNo] # - add the new score
			save_scores(newScore)  # - Store the scores back to the EEPROM, being sure to update the score count
			end_of_game = True # end of game
			GPIO.output(tuple(LED_value),GPIO.LOW) # reset all the guessing LEDS
			menu() # display menu options
			return
		else:
			
			# print("This is the else guess no: ",guessNo, "and guess: ",guess)
			# guessNo+=1
			accuracy_leds() # see how close the guess was to the value 
			time.sleep(0.01)
			trigger_buzzer() # if it's close enough, adjust the buzzer
			time.sleep(1.5)
			pwm_led.stop() # stop both the PWM LED and Buzzer after 1.5 seconds
			pwm_buzzer.stop()
	# pass


# LED Brightness
def accuracy_leds():
        # Set the brightness of the LED based on how close the guess is to the answer
        # - For example if the answer is 6 and a user guesses 4, the brightness should be at 4/6*100 = 66%
	global pwm_led
	
	if guess > value:
		# - If they guessed 7, the brightness would be at ((8-7)/(8-6)*100 = 50%
		percent = (((8-guess)/(8-value))*100)  # - The % brightness should be directly proportional to the % "closeness"
		#dutCycle=100-percent
		#pwm_led.start(dutCycle)
	else:
		percent = (guess/value)
		#dutCycle = 100-percent
		#pwm_led.start(dutCycle)
		
	pwm_led.start(percent)

	pass

# Sound Buzzer
def trigger_buzzer():
	# When the brightness of the LED changes(duty cycle), the frequency of the buzzer should change
	global guess, value, pwm_buzzer

	# If the user is off by an absolute value of 3, the buzzer should sound once every second
	if abs(guess-value) ==  1:
		pwm_buzzer.start(50)
		pwm_buzzer.ChangeFrequency(1)
		
	# If the user is off by an absolute value of 2, the buzzer should sound twice every second
	elif abs(guess-value) ==  2:
		pwm_buzzer.start(50)
		pwm_buzzer.ChangeFrequency(2)
		
	# If the user is off by an absolute value of 1, the buzzer should sound 4 times a second
	elif abs(guess-value) ==  3:
		pwm_buzzer.start(50)
		pwm_buzzer.ChangeFrequency(4)
	pass


if __name__ == "__main__":
	try:
	# Call setup function
		setup()
		welcome()
		# eeprom.populate_mock_scores()
		while True:
			menu()
			pass
	except Exception as e:
		print(e)
	finally:
		GPIO.cleanup()
