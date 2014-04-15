// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Simple Particle System

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float randomer = random(40,200);
  float randoma = random(0,200);
  float randomb = random(0,80);
  float randomc = random(80,200);
  float randomrotate = random(-1.,1.);
  float time;

  int colorAmount = 1 + int(random(3));

  Particle(PVector l) {
    acceleration = new PVector(0, 0);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    location = new PVector(random(0, width), random(0, height));
    lifespan = 400.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update location
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 2.0;
    time = time + .5;
  }

  // Method to display
  void display() {
    float displaycount=0;
    displaycount++;
    float hu = (baseHue + (displaycount%colorAmount) * (255/colorAmount)) % 255;
    fill(hu, randomb, randomc, lifespan);
    pushMatrix();
    translate(location.x,location.y);
    rotate(PI*randomrotate*time/50);
    rect(0, 0, randomer, randomer);
    popMatrix();
  }

  // Is the particle still useful?
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
}

