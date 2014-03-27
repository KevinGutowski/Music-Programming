float angle=0;
int counter = 0;
float t = 0;

void setup() {
  size(800,800);
  background(255);
  smooth();
}

void draw() {
  t += .3;
  angle += (.01*PI);
  if (angle > 2*PI) {
    counter = counter + 1;
  }
  angle = angle%(2*PI);
  
  if (counter%2 == 0) {
    fill(0);
  } else if (counter%2 == 1) {
    fill(255);
  }
  noStroke();
  rectMode(CENTER);
  translate(width/2+t,height/2+t);
  rotate(angle);
  ellipse(20,20, 100, 50);
  println(t);
}
