// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

float t = 0;

void setup() {
  size(800,800);
}

void draw() {
  background(255);
  t += .01;
  float logger = 1/( exp(t));
  float period = 120;
  float amplitude = 300*logger;
  // Calculating horizontal location according to formula for simple harmonic motion
  float y = amplitude * cos(TWO_PI * frameCount / period);  
  stroke(0);
  strokeWeight(2);
  fill(127);
  translate(width/2,height/2);
  line(0,-400,0,abs(y)-400);
  ellipse(0,abs(y)-400,48,48);
  println(logger);
}
