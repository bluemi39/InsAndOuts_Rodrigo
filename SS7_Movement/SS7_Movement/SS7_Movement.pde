// Shapes in their places by Rodrigo A Vega Cruz

/*
I think I want to explore the concept of exploration, relaxation, beauty, 
and not sure what else that can be beautiful.
This first sketch ties into it in some sort of way because I want to start with something
easy. 
*/

// Might use stuff from the Processing reference
// I plan to use internet to serach for RGB values of colors
// https://rgbcolorcode.com/color/FFFFE6

void setup() {
 size(1080,720); 
 noLoop();
}

void draw() {
  strokeWeight(2);
  fill(255,255,230);
  triangle(256,400,60,100,350,400);
  
  strokeWeight(50);
  fill(230,0,38);
  rect(500,200,300,150);
  
  strokeWeight(25);
  fill(179,191,255);
  ellipse(250, 600, 270, 200);
}
