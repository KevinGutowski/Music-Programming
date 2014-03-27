float Redval = 192;
float Grnval = 64;
float Bluval = 0;
color MyColor;
color Bar1Color;
color Bar2Color;
String Responce = "Click the Inner Rectangle!";
int Score = 0;
int Lives = 3;
int Multiplier;
PVector Speed;
boolean test = false;

Zone[] zones = new Zone[2];

void setup() {
  size(800,800);
  smooth();
  MyColor = color(Redval,Grnval,Bluval);
  Bar1Color = color(200,100,200);
  Bar2Color = color(100,100,240);
  background(MyColor);
  zones[0] = new Zone(60,height/2,width/2);
  zones[1] = new Zone(20,height/2,width/2);
}

void draw() {
  background(MyColor);
  float scoredig = float(Score);
  if (zones[0].velocity.x >0) {
  Speed = new PVector(map(scoredig, 0.0, 500.0, 0, .3),0);
  } else {
  Speed = new PVector(map(scoredig, 0.0, 500.0, 0, -.3),0);
  }
  
  zones[0].update(Speed, test);
  zones[1].update(Speed, test);
  zones[0].display(Bar1Color);
  zones[1].display(Bar2Color);
  zones[0].checkEdges();
  zones[1].checkEdges();
  
  fill(0,0,0,40);
  textSize(32);
  textAlign(RIGHT);
  text(Responce, width-20, 3*height/4);
  text(str(Score), width-20, 3*height/4+40);
  
  switch (Lives) {
    case 3:
      ellipse(width-100, 50, 30, 30);
      ellipse(width-75, 50, 30, 30);
      ellipse(width-50, 50, 30, 30);
      test = false;
      break;
    case 2:
      ellipse(width-75, 50, 30, 30);
      ellipse(width-50, 50, 30, 30);
      break;
    case 1:
      ellipse(width-50, 50, 30, 30);
      break;
  }
    
  if (Lives < 1) {
    background(0);
    fill(255,255,255);
    textAlign(CENTER);
    text("Final Score " + str(Score), height/2, width/2);
    text("Retry?", width/2, height/2 + 50);
  }
  
  
}

void mousePressed() {
  if (Lives > 0) {
    float distance = abs(zones[0].position.x - mouseX);
    if (distance < 10) {
      Score += 20;
      Responce = ("BULLS EYE!");
    } else if (distance < 30) {
      Score += 5;
      Responce = ("Close!");
    } else {
      Score -= 5;
      Responce = ("Come ON");
      Lives = Lives - 1;
    } 
  } else {
    float retrydistancex = abs(width/2 - mouseX);
    float retrydistancey = abs(height/2 + 50 - mouseY);
    if ((retrydistancex < 300) && (retrydistancey < 300)) {
      Lives = 3;
      Score = 0;
      Responce = ("Click the Inner Rectangle!");
      Speed = new PVector(0,0);
      test = true;
    }
  }
}
  
  
  
  
class Zone {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Zone(float z, float x, float y) {
    mass = z; //mass here will determine the width of each rectangle
    position = new PVector(x,y);
    velocity = new PVector(10,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update(PVector Speed, boolean test) {
    velocity.add(Speed);
    position.add(velocity);
    acceleration.mult(0);
    if (test) {
      velocity = new PVector(10,0);
    }
  }
  
  void display(color c) {
    strokeWeight(0);
    rectMode(CENTER);
    rect(position.x, position.y, mass, height);
    rectMode(CORNERS);
    fill(c);
  }
  
  void checkEdges() {
    if (position.x > (width-30)) {
      position.x = (width-30);
      velocity.x *= -1;
    } else if (position.x < 30) {
      velocity.x *= -1;
      position.x = 30;
    }
  }
}
      
    
    

