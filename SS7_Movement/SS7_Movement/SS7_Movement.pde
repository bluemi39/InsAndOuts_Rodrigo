// Most of the code is based of SS1_Shapes_in_their_places

// Shapes in their places by Rodrigo A Vega Cruz

//

/*
I think I want to explore the concept of exploration, relaxation, beauty, 
and not sure what else that can be beautiful.
This first sketch ties into it in some sort of way because I want to start with something
easy. 
*/

// Might use stuff from the Processing reference
// I plan to use internet to serach for RGB values of colors
// https://rgbcolorcode.com/color/FFFFE6

import processing.serial.*;

Serial myPort;
int value=0;

void setup() {
 size(1080,720);
 
 printArray(Serial.list()); // this line prints the port list to the console
 String portName = Serial.list()[0]; //change the number in the [] for the port you need
 myPort = new Serial(this, portName, 9600);
 
}

void draw() {
  
   if ( myPort.available() > 0) { // If data is available,
   value = myPort.read(); // read it and store it in val
  }
  
  
  
  background(255);
  
  
  
  if (value >= 0 && value <= 140){
    
    strokeWeight(2);
    fill(255,255,230);
    triangle(256,400,60,100,350,400);
    
    strokeWeight(50);
    fill(230,0,38);
    rect(500,200,300,150);
    
    strokeWeight(25);
    fill(179,191,255);
    ellipse(250, 600, 270, 200);
    
  } else if (value >= 141 && value <= 180) {
      strokeWeight(3);
      fill(255,255,230);
      triangle(246,410,70,101,356,440);
      
      strokeWeight(25);
      fill(230,0,38);
      rect(550,235,360,155);
      
      strokeWeight(15);
      fill(179,191,255);
      ellipse(230, 607, 275, 230);
  } else if (value >= 181 && value <= 255) {
     
      strokeWeight(3);
      fill(236,255,260);
      triangle(224,310,80,110,656,444);
      
      strokeWeight(25);
      fill(240,10,58);
      rect(556,335,388,255);
      
      strokeWeight(15);
      fill(199,119,155);
      ellipse(235, 608, 375, 236);
  }
  

}
