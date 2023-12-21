/*
Might contain strobing.
Code based on SS1_Shapes_in_their_places with my own modifications
Website that I used to help me pick colors https://coolors.co

To make the shapes bigger get closer to the ultrasonic sensor. To make the shapes
smaller in size, get futher away from the ultrasonic sensor.

To make the background color closer to a blue
put the potentiameter closer to the right. To make the color closer to a white
put the potentiameter closer to the left.

Switching from if statements to while loops

Tried using while loops and it did not work as intended.
*/

import processing.serial.*;

Serial myPort;
int potentiameter = 0;
int distance = 0;
int value = 0;

void setup() {
 size(1080,720);
 
 printArray(Serial.list());
 String portName = Serial.list()[0];
 myPort = new Serial(this,portName,9600);
 
 frameRate(24);
}












void draw() {
  
  if ( myPort.available() > 0) { // If data is available,
   value = myPort.read(); // read it and store it in val
  }
  
  // try to re arrange some values.
  
  //           128             150
  if (value >= 240 && value <= 245 ){
    
    // Dark color blue
    background(0,0,255);
    
    //           151             170
  } if (value >= 246 && value <= 250) {
    
    // Vivid sky blue color
    background(0,216,255);
    
  } if (value >= 251 && value <= 255) {
    
    // white color
    background(255);
      
  }
  
  //minimum 5 and maximum 25. 127 to be more exact.
  // new mininum 1 and maximum 255
    
  //          5             10
  //          1             90
  //          1             24
  if (value >= 1 && value <= 4) {
        
  // Small size
  strokeWeight(2);
  fill(255,255,230);
  triangle(256,320,20,100,270,400);
  //          -80 -40    -80 
  
  strokeWeight(50);
  fill(230,0,38);
  rect(500,200,220,70);
  //           -80 -80
  
  strokeWeight(25);
  fill(179,191,255);
  ellipse(250, 600, 190, 120);
  //                -80  -80
  
  //             11             20
  //             91             150
  //             25             35
  } if (value >= 5 && value <= 7){
        
  // Medium size
  strokeWeight(2);
  fill(255,255,230);
  triangle(256,400,60,100,350,400);
  
  strokeWeight(50);
  fill(230,0,38);
  rect(500,200,300,150);
  
  strokeWeight(25);
  fill(179,191,255);
  ellipse(250, 600, 270, 200);
      
      
      //         think 21        think 127
      //         151             239
      //                        50
      //         36             50
      //                        20 10 thing
  } if (value >= 8 && value <= 239){
    
    // Large size
  strokeWeight(2);
  fill(255,255,230);
  triangle(256,500,120,100,450,400);
  //          +100 +60    +100 
  
  strokeWeight(50);
  fill(230,0,38);
  rect(500,200,400,250);
  //           +100 +100
  
  strokeWeight(25);
  fill(179,191,255);
  ellipse(250, 600, 370, 300);
  //                +100  +100
  
  }
  
  println(value);
  
}
