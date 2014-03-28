import gifAnimation.*;
GifMaker gifExport;

float randx = width/2;
float randy = height/2;
int time = 0;
int pulserate = 50;
int counter = 0;
int numFrames = 200;

void setup() {
  background(0);
  size(500,500);
  smooth();
}

void draw() {
  stroke(0);
  for (int i=0; i<100; i++) {
    line(random(width),random(height),random(width),random(height));
  }
  rectMode(CENTER);
  time++;
  float randomer=-2;
  pushMatrix();
  if (time%pulserate == 0) {
    randx = random(-1*width/4, width/4);
    randy = random(-1*height/4, height/4);
    randomer = random(-5,5);
    fill(random(0,255),random(0,255),random(0,255));
    counter++;
  }
  float pulse = 50*sin(PI*time/pulserate);

  translate(width/2,height/2);
  rotate(PI*time*randomer/100);
  noStroke();
  ellipse(randx,randy,pulse,pulse);
  popMatrix();
  
  float num = norm(frameCount % numFrames, 0, numFrames);
    

}
