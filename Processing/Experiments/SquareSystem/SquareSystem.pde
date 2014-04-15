// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

ArrayList<Particle> particles;
float baseHue = random(255);
float randomHue1 = random(0,200);
float randomHue2 = random(80,20);
  
void setup() {
  size(800,800);
  particles = new ArrayList<Particle>();
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(baseHue,randomHue1,randomHue2);

  particles.add(new Particle(new PVector(width/2,50)));
  
  // Looping through backwards to delete
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.run();
    if (p.isDead()) {
      particles.remove(i);
    }
  }
}




