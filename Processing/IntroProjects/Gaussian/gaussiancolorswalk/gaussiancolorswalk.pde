//Kevin Gutowski - BROKEN
//Idea was to take Gaussian Colors and have the whole object move with random Perlin Noise
float t = 0;

Circles c;

void setup() {
  size(640, 640);
  background(255);
  
  c = new Circles();
}

void draw() {
  //Run Circles Object
  c.walk();
  c.display();
  
}



