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
      
    
    
