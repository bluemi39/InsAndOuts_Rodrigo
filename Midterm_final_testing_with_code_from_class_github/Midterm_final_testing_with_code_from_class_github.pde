// STROBING WARNING. PROCCED WITH CAUTION BEFORE RUNNING THE CODE.



/*
//////////////////////////////////////////////
 another demo on state changes
 
 press 1, 2, 3 key to change the animation scene / state
 
 (note: using key press for state changes is a good strategy for early testing of
 program flow and functionality, before shifting to a more intuitive
 interactive experience for the user.)
 
 //////////////////////////////////////////////
 
 
 BY rodrigo
 
 entire code based on demo2_steastes demo2_states_keyPress. from THe top to the bottom.
 
 Void do scene 1 bassed off my ss1 work
 Void do scene 2 based off my ss2 work. Something will be outisde the void. one line of code in the draw based off ss2.
 Void do scene 3 based off my 2 ss3 work. Something will be outisde the void.
 */

int scene=1; //creating state variable called scene
float expand=0; //used in scene 3 animation

int timelyValue = 0;

float xData = 100;
int yData = 60;

void setup() {
 // size (500, 500);
 size(1920,1080);
}


void draw() {
  background(255);//Changed by me delted latert.
  if (scene!=3) {  //if scene does not = 3
    expand=0;  //reset value of expand
  }
  if (scene==1) {
    doScene1();
  } else if (scene==2) {
    doScene2();
  } else if (scene==3) {
    doScene3();
    println(scene);
  }
  
  timelyValue ++;
  println(timelyValue);
}


void keyPressed() {
  if (key== '1') {
    scene=1;
  } else if (key== '2') {
    scene=2;
  } else if (key=='3') {
    scene=3;
  }
}

void doScene1() {
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

void doScene2() {
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

void doScene3() {
  
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
