color MyGreen;
color MyBlue;
color MyRed;
float angle;
float velgauss;
Particle p;

void setup() {
  smooth();
  background(189,204,212);
  MyGreen = color(122,201,67,100);
  MyRed = color(255,29,37,100);
  MyBlue = color(63,169,245,100);
  noStroke();
}

void draw() {
  background(189,204,212);
  fill(MyRed);
  p.run();
  if (p.isDead()) {
    println("Particle dead!");
  }
  
  //Angle Randomized
  
  float angnum = randomGaussian();
  float angsd = 60;
  float angmean = 320;
  float anggauss = (angsd*angnum) + angmean;
  
  if ((anggauss > 240) && (anggauss < 400)) {
    angle = map(anggauss,240,400,0,2*PI);
  } else if ((anggauss >=400) && (anggauss < 700)) {
    angle = map(anggauss,400,700,2*PI,0);
  } else if (anggauss <= 240) {
    angle = map(anggauss,240,0,0,2*PI);
  } else {
    float angle = random(2*PI);
  }
  
  //Velocity Magnitude Randomized
  float velnum = randomGaussian();
  float velsd = 60;
  float velmean = 320;
  float velgauss = (velsd*velnum) + velmean;
  
  
}

class Particle {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  Particle(PVector l) {
    velocity = new PVector
  
  
  
}
