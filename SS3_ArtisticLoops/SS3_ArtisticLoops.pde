/*

Rodrigo A Vega Cruz. ArtisticLoops
You get random circles on the screen, and depending on the 
position of you're mouse within the canvas. You will see a triangle either more towards 
the left or the right side of the canvas.

*/

float xData = 100;
int yData = 60;

void setup() {
 size(1920,1080);
 
 //frameRate(1);
 
}

void draw() {
  
  background(255);
    
  for (int y = 0; y <= height + 220; y= y + 220){
    for (int x = 0; x <= width + 220; x = x + 220) {
      noStroke();
      fill(random(255),random(255),random(255),100);
      ellipse(x,y,220,220);
    }
  }

  if (mouseX >= width/2) {
      strokeWeight(1);
      stroke(255);
      fill(255,255,random(255));
      triangle(256,400,yData,xData,350,400);
  } else if(mouseX < width/2){
      strokeWeight(1);
      stroke(255);
      fill(255,255,random(255));
      triangle(1756,400,yData + 1500,xData,1850,400);
  }

}
