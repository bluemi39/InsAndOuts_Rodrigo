// I took code from SS1_Shapes_in_their_places and based this code off it.
// Go closer to the middle of the ellipse to turn on a blue light, go further away to turn of the light.

import processing.serial.*;

Serial thePort;

void setup() {
 size(1080,720);
 
 String portName = Serial.list()[0];
 thePort = new Serial(this, portName, 9600);
 
}

void draw() {
  strokeWeight(2);
  fill(255,255,230);
  triangle(256,400,60,100,350,400);
  
  strokeWeight(50);
  fill(230,0,38);
  rect(500,200,300,150);
  
  strokeWeight(25);
  fill(0,0,200);
  ellipse(250, 600, 270, 200);
  
  if (mouseX >= 200 && mouseX <= 300 && mouseY >= 560 && mouseY <= 600){
      thePort.write(1);
      println("1");
    } else {
      thePort.write(0);
      println("0");
    }
    
  }
