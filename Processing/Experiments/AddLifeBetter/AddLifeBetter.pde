float finalRadius = 196;
float radius = 0;
float velocity = 0;
 
//Play around with these until you get the result you want:    
float dampConstant = 0.19;
float springConstant = 0.1;
float angVel = 0.01;
 
int r = 24;
 
void setup() {
  size(500, 500);
 
  smooth();
}
 
void draw() {
 
  int T = frameCount % 200;   //Loop the animation
 
  background(255);   //Use background() instead of drawing a white rectangle!
  translate(width/2, height/2);
 
 
  if (T<8) {   //Reset the variables
 
    radius = 0;
    velocity = 0;
  }
 
  if ((T>=8) ) {
    finalRadius = min(196,exp(T*0.15));
 
    float acceleration = springConstant*(finalRadius - radius) - dampConstant*velocity;
    velocity += acceleration;
    radius += velocity;
  }
 
  for (int i = 0; i < 8; i++) {
    stroke(0);
    strokeWeight(4);
    fill(255);
    ellipse((radius)*cos(PI*i/4+radius*angVel), (radius)*sin(PI*i/4+radius*angVel), r+11 ,r+11);
    noStroke();
    fill(0);
    ellipse(radius*cos(PI*i/4+radius*angVel), radius*sin(PI*i/4+radius*angVel), r, r);
 
  }
}
