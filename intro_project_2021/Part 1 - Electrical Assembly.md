
## Components

* **Chassis:** The body of the vehicle.
* **Motors:** Spin the wheels.
* **Raspberry Pi:** A miniature computer.
  * Requires a constant voltage to be supplied.
* **Portable Battery:** Holds the batteries.
* **Motor Controller:** Provides power for the motors.

## Tools

* **Wire Strippers:** Used to remove the rubber casing of wires.
* **Wire Cutters:** Used to cut wires.
* **Soldering Iron:** Used to make connections between wires and other electrical components.
* **Power Supply:** Can provide voltage at either a constant voltage or current.
* **Multimeter:** A versatile tool that can measure voltage, current, connectivity, and has many other functions

# Part 1 - Electrical Assembly

## Goal

You should explore the robots and try to figure out how to wire/assemble the bot so that they should be ready for code.

## Tips
The Rasberry PI requires a 5V power source that should be fed through the usb-c port. 

The motor controller (the red device with the fins) also requires power and ground that should be accessible from the PI. Additionally, you should look to connect the wires from the motor to the motor controller.

You should also connect the GPIO Pins on the PI to the motor controller using Female to Female wires.

# Part 2 - Basic Movement

## Goal

The robot should flash an LED light and drive in the shape of a square 1 time. We will cause these with a python script using the `gpiozero` library.

## Resources

The script will be written in the coding language [Python](https://www.python.org/downloads/). To write a Python script, you may use any text editor of your choice. If you do not have a preferred editor, [sublime](https://www.sublimetext.com/) is recommended for the intro project. If you are unfamilliar with Python, or have forgotten something, great resources to use are the [W3schools tutorial](https://www.w3schools.com/python/) and [this GitHub document](https://github.com/adambard/learnxinyminutes-docs/blob/master/python.html.markdown)

We will be using the [gpiozero library](https://gpiozero.readthedocs.io/en/stable/index.html) to control the GPIO pins on your raspberry pi. For controlling your LED, use the [LED documentation](https://gpiozero.readthedocs.io/en/stable/api_output.html#led) For controlling your motors, use the [Motor documentation](https://gpiozero.readthedocs.io/en/stable/api_output.html#motor).

## Tips

In general, when writing a python script import statements go at the top of your script, with the rest of the code below them. If you see the documentation ask for a line like `import x` or like `from y import x`, these lines should be placed at the top of your script.

To repeat a section of code a fixed number of times, a structure called a [**for loop**](https://www.w3schools.com/python/python_for_loops.asp) is used. To repeat a section of code forever, a structure called a [**while loop**](https://www.w3schools.com/python/python_while_loops.asp) is used. For both of these loops, you must put a delay somewhere within the loop (ask for help with this if you are not sure how).

// Potentially need to check which pins are PWM and what kind of motor to use from gpiozero

## Uploading your code
//need to check actual rasberry pi's first

## Steps

1. Read through [gpiozero library](https://gpiozero.readthedocs.io/en/stable/index.html) to understand and pick out which functions you will need
2. Code LED to blink 2 times a second for 6 seconds
3. Code robot to drive in square shape 1 time
4. Check your code for any unnecessary repetitions or inefficiencies (ask for help with this)

# Schedule

## Saturday meeting

    12:10-12:30 Introduction to project, basic instruction on tools/components for electrical
    12:30-12:45 LED connected to pi and tested working
    12:45-1:15  Voltage regulator done with switch, battery, pi connected
    1:15-1:45   Motors connected to motor controller and pi and tested working
    1:45-2:00   Wrap Up, Clean Up, etc...
    
## Weekday meeting
    
    7:10-7:30 Introduction to coding, python, gpiozero, pi software, etc; also send away people who are brand new to do electrical
    7:30-7:45 Installation help, reviewing docs
    7:45-8:15 LED flashing using script and installed on pi
    8:15-8:50 Robot moves in a square
    8:50-9:00 Wrap Up, Clean Up, tell them to install stuff for ros tutorial, etc...
    
# What to do on campus
* Find finalized parts list with quantities
* Figure out comprehensive assembly guide using parts and electrical schematic
* Ensure all parts that need to be soldered/constructed are done before projects begin
* Install software on all pis
    * raspian, gpiozero, method to upload code, maybe have it autorun?
* Test all hardware
* Make master sd card with functional software for both LED and motor testing
* Finalize documentation with new information