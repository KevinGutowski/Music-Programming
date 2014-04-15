import controlP5.*;

ControlP5 cp5;

int c = 35;
float radius = 20;
int offset = 0;

void setup() {
  size(800, 800);  
  background(255);
  noStroke();



  cp5 = new ControlP5(this);
  
  cp5.addSlider("c")
     .setPosition(20,50)
     .setRange(1,100)
     ;
     
  cp5.addSlider("radius")
     .setPosition(20,100)
     .setRange(1,100)
     ;
     
  cp5.addSlider("offset")
     .setPosition(20,150)
     .setRange(-200,200)
     ;
     
}

void draw() {
    background(255);
    pushMatrix();
      translate(width/2, height/2);
      circles();
    popMatrix();
}

void circles() {
  for (int n = 1; n < 10000; n++) {
    float r = c*sqrt(n);
    float theta = (n*PI*(3-sqrt(5)))+offset/5;

    fill(62, map(r/2, 1, width, 0, 255), 138, 100);

    ellipse(r*cos(theta)/5, r*sin(theta)/5, radius, radius);
  }
}

