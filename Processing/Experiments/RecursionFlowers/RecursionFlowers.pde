// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Simple Recursion
int n = 1;
int c = 40;


void setup() {
  size(640,360);  
  background(255);
  noStroke();
}

void draw() {
  translate(width/2,height/2);
  n++;
  float r = c*sqrt(n);
  float radius = 10;
  float theta = n*PI*(3-sqrt(5));
  
  fill(62,map(r/2,1,width,0,255),138,100);
  ellipse(r*cos(theta)/4,r*sin(theta)/4,radius,radius);
  rotate(theta);

}


