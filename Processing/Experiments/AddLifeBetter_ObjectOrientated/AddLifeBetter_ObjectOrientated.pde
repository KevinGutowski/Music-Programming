float finalRadius = 196;
float radius = 0;
float velocity = 0;

//Play around with these until you get the result you want:    
float dampConstant = 0.19;
float springConstant = 0.1;
float angVel = 0.01;
int T;


SpiralOut [] Circles;

void setup() {
  size(500, 500);
  smooth();
  buildCircles();
}

void draw() {

  int T = frameCount % 200;   //Loop the animation

  background(255);   //Use background() instead of drawing a white rectangle!
  translate(width/2, height/2);


  if (T<8) {   //Reset the variables

    radius = 0;
    velocity = 0;
  }

  for (int i = 0; i < Circles.length; i++) {
    Circles[i].move();
    Circles[i].render();
  }
}

void buildCircles() {
  Circles = new SpiralOut[8];
  for (int i=0; i<Circles.length; i++) {
    float xPos = 0;
    float yPos = 0;
    int r = 24;
    Circles[i] = new SpiralOut(xPos, yPos, radius, r);
  }
}

class SpiralOut {
  float xPos;
  float yPos;
  float radius;
  int r;

  SpiralOut (float axPos, float ayPos, float aradius, int ar) {
    xPos = axPos;
    yPos = ayPos;
    radius = aradius;
    r = ar;
  }

  void render() {
    stroke(0);
    strokeWeight(4);
    fill(255);
    ellipse(xPos, yPos, r+11, r+11);
    noStroke();
    fill(0);
    ellipse(xPos, yPos, r, r);
  }

  void move() {
    finalRadius = min(196, exp(T*0.15));
    float acceleration = springConstant*(finalRadius - radius) - dampConstant*velocity;
    velocity += acceleration;
    radius += velocity;
    for (int i = 0; i < Circles.length; i++) {
      xPos = radius*cos(PI*i/4+radius*angVel);
      yPos = radius*sin(PI*i/4+radius*angVel);
    }
  }
}


