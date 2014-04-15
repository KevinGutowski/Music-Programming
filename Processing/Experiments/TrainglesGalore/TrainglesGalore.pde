//Kevin Gutowski
//http://www.ocf.berkeley.edu/~keving/
//April 9th 2014

ArrayList<Particle> particles;
float x= mouseX;
float y = mouseY;

void setup() {
  size(800,400);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(0);
  if (mousePressed == false) {
  x = lerp(x, mouseX, 0.2);
  y = lerp(y, mouseY, 0.2);
  particles.add(new Particle(new PVector(x,y)));
  }
  // Looping through backwards to delete
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.run();
    if (p.isDead()) {
      particles.remove(i);
    }
  }
}




