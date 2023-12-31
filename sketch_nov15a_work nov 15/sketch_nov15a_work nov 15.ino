/* FSR testing sketch. 
 
Connect one end of FSR to 5V, the other end to Analog 0.
Then connect one end of a 10K resistor from Analog 0 to ground
Connect LED from pin 11 through a resistor to ground 
 
For more information see www.ladyada.net/learn/sensors/fsr.html */

/*
sources of code. I have done edits

https://learn.adafruit.com/force-sensitive-resistor-fsr/using-an-fsr

https://www.youtube.com/watch?v=eW3SQCi0aTE
Source I used for the wiring.

*/
 
int fsrAnalogPin = 0; // FSR is connected to analog 0
int LEDpin = 11;      // connect Red LED to pin 11 (PWM pin)
int fsrReading;      // the analog reading from the FSR resistor divider
int LEDbrightness;
 
void setup(void) {
  Serial.begin(9600);   // We'll send debugging information via the Serial monitor
  pinMode(LEDpin, OUTPUT);
}
 
void loop(void) {
  fsrReading = analogRead(fsrAnalogPin);
  Serial.print("Analog reading = ");
  Serial.println(fsrReading);
 
  // we'll need to change the range from the analog reading (0-1023) down to the range
  // used by analogWrite (0-255) with map!+++++++++++++++++
  LEDbrightness = map(fsrReading, 1023, 0, 0, 255);// I(Rodrigo A Vega Cruz) switched the positions for values 1023 and 0
  // LED gets brighter the harder you press
  analogWrite(LEDpin, LEDbrightness);
 
  //delay(100);
}