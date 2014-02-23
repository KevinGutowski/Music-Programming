Mover[] movers = new Mover[20]; //an array of objects (20)

void setup() {
  size(640,360);
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(); //initalize each object
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
}

class Mover {
   
  PVector position;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover() {
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 4;
  }
  
  void update() {
    //algorithm for calculating acceleration
    PVector mouse = new PVector(mouseX,mouseY); //find the vector pointing towards the mouse
    PVector dir = PVector.sub(mouse,position); 
    dir.normalize(); //Normalize
    dir.mult(0.4); //Scale
    acceleration = dir; //Set to acceleration
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(position.x,position.y,40,40);
  }
  
  void checkEdges() {
    if (position.x > width) {
      position.x = 0;
    } else if (position.x < 0) {
      position.y = height;
    }
  }
}
      
