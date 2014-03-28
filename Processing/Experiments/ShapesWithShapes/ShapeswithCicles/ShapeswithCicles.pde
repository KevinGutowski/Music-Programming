import controlP5.*;

ControlP5 cp5;
int NumberOfCircles = 50;
float xpos;
float ypos;
float step = .1;
float multx = 5;
float multy = -3;

void setup() {
  size(600, 600);
  colorMode(HSB);
  background(40, 80, 90);
  stroke(255);
  noFill();
  smooth();
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("NumberOfCircles")
     .setPosition(width-100,height-100)
     .setRange(1,400)
     .setSize(20,80)
     ;
  
  cp5.addSlider("step")
     .setPosition(width-140,height-100)
     .setRange(1,5)
     .setSize(20,80)
     ;
     
  cp5.addSlider("multx")
     .setPosition(width-180,height-100)
     .setRange(-20,+20)
     .setSize(20,80)
     ;
     
  cp5.addSlider("multy")
     .setPosition(width-220,height-100)
     .setRange(-20.,+20.)
     .setSize(20,80)
     ;


}


void draw() {

  background(40, 80, 90);
  
  float i = 0;
  xpos = width/2;
  ypos = height/2;

  while(i<NumberOfCircles) {
    strokeWeight(.1);
    ellipse(xpos + i,ypos,100+i*multx,100+i*multy);
    i = i + step;
  }
}

