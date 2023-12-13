/*


  Ultrasonic Sensor HC-SR04 and Arduino Tutorial

  by Dejan Nedelkovski,
  www.HowToMechatronics.com

  Now I (Rodrigo) will add the ability to have support for potentiameter.

*/

// defines pins numbers
const int trigPin = 9;
const int echoPin = 10;


  const int Potentiameter = A0;
  int val = 0;
  int valData = 0;

// defines variables
long duration;
int distance;

void setup() {
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input

  pinMode (Potentiameter, INPUT);

  Serial.begin(9600); // Starts the serial communication
}

void loop() {
  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echoPin, HIGH);

  // Calculating the distance
  distance = duration * 0.034 / 2;


  //Stuff to make the potentiameter work
  val = analogRead(Potentiameter);
  delay(100);





  // Code by Rodrigo
 // valData = valueProcessing(val);
 // serial write only no serial print for more final work.


  // Prints the distance on the Serial Monitor
  //Serial.print("Distance: ");
  //Serial.println(distance);

  // Data to be received by Processing
  //                                 
  Serial.write(map(distance,0,1023,1,239));
  Serial.write(map(val,0,1023,240,255));
  
}