# DRC Mars Rover Intro Project

## What is this Project?

Welcome to the software and electrical introductory project for the Duke Robotics Club! Over the next couple of meetings, we'll use Arduino and TinkerCAD to create a virtual Mars rover that can maneuver, detect obstacles, and display the ambient temperature.

You don't need to have any prior knowledge about coding or robotics to complete this project. Once you're finished you'll be familiar with creating circuits, reading schematics, and writing Arduino code. Although you should complete the project individually, we encourage you to collaborate and discuss within your groups.


## Introduction to TinkerCAD

TinkerCAD is a free on-line modeling tool for electrical circuits and micro-controllers that runs in a web browser. For this project, we'll use it to build and simulate our rover.

First, you'll need to register for an account at www.tinkercad.com. Once you reach the dashboard, navigate to the Circuits tab and create a new circuit. Drag and drop the *Arduino with Breadboard* starter kit from the components section into the workspace. This will become the base for the rest of our rover.


## Introduction to Arduino

### Background

An Arduino is a micro-controller, which is essentially a computer. Think of it as the brain of our rover; it tells all of the hardware components of the rover what to do via pin connections and code. 

A breadboard is a base for electronic prototyping. Instead of having many direct connections to the Arduino, we can plug our electronics into the holes in a breadboard to help organize our circuitry. The *Arduino with Breadboard* starter kit already has the 5V and ground lines of the Arduino connected to the breadboard, so we're ready to start building circuits. ([Image source](https://computers.tutsplus.com/tutorials/how-to-use-a-breadboard-and-build-a-led-circuit--mac-54746))

![Breadboard rows and columns](https://i.imgur.com/wSx3oIi.png)

The digital pins on the Arduino are interfaces for inputting and transmitting "data" to and from other electrical components. Output pins are able to send current to other devices, which can be used to turn them on. If you're new to Arduino, we suggest that you take a look at https://www.arduino.cc/en/tutorial/blink, which will guide you through creating a blinking LED circuit.

### Task

We're going to start off by wiring four LEDs to the Arduino. The two front LEDs should turn on if the rover is moving forward, and the two back LEDs should turn on if the rover is moving backward. 

To represent the moving state (forward/backward), consider creating a variable inside of the code that has set values for stopped, moving forward, and moving backward. This may come in handy later when we wire up some motors to the rover.


## Making the Rover Move

### Background

To allow our rover to "move", we need to attach and wire motors to the Arduino. (It won't actually move on the screen - we'll just make some motors spin.) However, we won't directly connect them to the Arduino digital pins. If we only wanted to move in a single direction, we could use a simple transistor. Instead, because we want bi-directional movement, we'll connect them to an H-bridge Motor Controller. The digital pins on the Arduino can't supply enough current to run the motors, which is why we have to take this intermediary step. 

https://create.arduino.cc/projecthub/electropeak/the-beginner-s-guide-to-control-motors-by-arduino-and-l293d-139307 has more information on how the H-bridge and motors work.

### Task
Connect two hobby gearmotors to the rover through an L293D H-Bridge Motor Driver. The two motors should be able to spin clockwise together, and counterclockwise together. To control whether they spin clockwise or counterclockwise, consider using the state variable that we mentioned in the previous task.

For more information on how to wire the gearmotors and H-Bridge, visit https://learn.adafruit.com/adafruit-arduino-lesson-15-dc-motor-reversing/an-experiment. On TinkerCAD, if you mouse over the connection pins on the gearmotors and H-Bridge, you should see a pop-up with a description of what that pin does.

## Detecting and Avoiding Obstacles

### Background
Currently, our rover has no means of collecting data and making decisions about its surrounding environment. We want the rover to move independently; it should be able to avoid any obstacles that come in its path. To do this, we'll use ultrasonic sensors that can determine the distance of objects in front of and behind the rover.

The Ping Ultrasonic Sensor works by sending out bursts of ultrasound and waiting for an echo. Once an echo is detected, it determines the distance from an object using the known speed of sound and echo time. The shorter it takes for an echo to return, the closer the object is to the sensor. (Fun fact: this is the same way [bats navigate](https://animals.howstuffworks.com/mammals/bat2.htm).)

### Task

Wire two ultrasonic sensors to the rover, one in the front and one in the back. When an object comes "close" to either side of the rover, the motors should begin to move in the opposite direction. For instance, if an object comes close to the front sensor, then the rover should move backwards. If there isn't an object near either sensor, then the robot should move forward. If there are objects near both the front and the back, then the robot should stop.

For starter code and more information on connecting ultrasonic sensors, visit https://www.arduino.cc/en/tutorial/ping.

## Adding More Sensors to the Rover
### Background
Now that our rover can move independently, we can focus on adding more sensors to enhance its capabilities. We want our rover to be able to read the ambient temperature and transmit that back to our computers. To do this, we'll attach a TMP36 Temperature Sensor to the rover, and manipulate and print its output to the Serial Monitor.

For more information on how to wire and interpret the output from a temperature sensor, visit https://learn.adafruit.com/tmp36-temperature-sensor/using-a-temp-sensor.

### Task
Wire a temperature sensor and print the ambient temperature to the serial monitor. To view the serial monitor, open the code tab in TinkerCAD and press the Serial Monitor button at the bottom of the screen. Make sure that the temperature readout in the Serial Monitor matches its actual setting to +/- 1 degree (Celsius).

## Conclusion

You're done! You've made a rover worthy of navigating the surface of Mars (kinda). Let one of the subteam leads know, but in the meantime, feel free to help other people in your group.
