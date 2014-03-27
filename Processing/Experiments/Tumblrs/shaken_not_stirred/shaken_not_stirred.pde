float x,y,n;
PImage img;
float counter;
float ramp;

void setup() {
  img = loadImage("craig.jpg");
  size(img.width+50, img.height+50);
  background(0);
  noFill();
  imageMode(CENTER);
}

void draw() {
  counter = (++counter);
  ramp = map(counter,0,500,0,1);
  if (ramp < 1) {
    x = width/2+ ramp*noise(n)*20;
    y = height/2 + ramp*noise(n+20)*20;   
  } else {
  x = width/2+ noise(n)*20;
  y = height/2 + noise(n+20)*20;
  }
  tint(255, 50); 
  image(img, x-10, y-10);

  n += .5;

}
