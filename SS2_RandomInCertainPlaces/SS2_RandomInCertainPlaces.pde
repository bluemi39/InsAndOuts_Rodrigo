/*

Rodrigo A Vega Cruz. To make sure you get a certain shape when a key is pressed.
Make sure to look at the conditional statements, and the value of timelyValue
being printed on the console. You can click within the window and you should 
get a shape on the screen.

I am somewhat deviating from my previous theme of exploration, relaxation, beauty, 
and not sure what else exactly. I think I am going more for abstract relaxing 
minimalism.

*/

float xData = 100;
int yData = 60;
int timelyValue = 0;

void setup() {
 size(1920,1080);
}

void draw() {
  strokeWeight(1);
  fill(255,255,random(255));
  triangle(256,400,yData,xData,350,400);

  timelyValue ++;
  println(timelyValue);
}

void keyPressed() {
  if(timelyValue > 800){ 
    strokeWeight(40);
    fill(250,10,48);
    rect(504,202,303,156);
  } else if (timelyValue < 200){
      strokeWeight(25);
      fill(186,91,155);
      ellipse(251, 500, 285, 100);
  } else {
    strokeWeight(20);
    fill(255,30,68);
    rect(506,101,303,136);
  }
  
 }
  
  
  void mousePressed(){
    strokeWeight(20);
    fill(255,30,68);
    rect(606,303,202,247);
    
  }
  
  
