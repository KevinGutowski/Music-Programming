int num = int(random(400, 800));
float [] posx = new float[num];
float [] posy = new float[num];
float [] rad = new float[num];
int [] filler = new int[num];

//globals for Shimmering Stars
float t = 0;

//gloals for CircleDrops
int r = 0;
float percent = 0;
float fx = 0;
float radius = 0;


ArrayList<Circle> drops;


void setup() {
  size(1000, 800);

  background(0);
  noStroke();
  drops=new ArrayList();
  for (int i = 0; i < num; i++) {
    posx[i] = int(random(0, width));
    posy[i] = int(random(0, height));
    rad[i] = random(0, 2.5);
  }
}



void draw() {


  //-------Background---------
  background(0);
  //pushMatrix(); Add rotation? * If add rotation need to kill ellipses out of screen and generate new ones offscreen
  t = t + 0.005;
  //rotate(t*PI/500); *
  //shimmer
  for (int i = 0; i < num; i++) {
    int noisy = int(100*noise(t*i));
    filler[i] = 100+ int(map(noisy, 0, 100, -40, 80));
  }

  //load randomized skymap
  for (int i = 0; i < posx.length; i++) {
    noStroke();
    fill(255, filler[i]);
    ellipse(posx[i], posy[i], rad[i], rad[i]);
  }
  //popMatrix(); *


  //Phrase 1
  for (int i=0; i<drops.size(); i++) {
    Circle drop=drops.get(i);
    drop.display();
    drop.movement();
  } 
  if (frameCount>100) {
    if (frameCount%100 == 1) {
      drops.add(new Circle(width/2, height/2, r, radius));
    }
  }
  
  if (frameCount>400) {
    if (frameCount%100 == 1) {
      drops.add(new Circle(0, 0, r, radius));
    }
  }
  
  if (frameCount>800) {
    if (frameCount%100 == 1) {
      drops.add(new Circle(width, 0, r, radius));
    }
  }
  
  if (frameCount>1200) {
    if (frameCount%100 == 1) {
      drops.add(new Circle(0, height, r, radius));
    }
  }
  
  if (frameCount>1600) {
    if (frameCount%100 == 1) {
      drops.add(new Circle(width, height, r, radius));
    }
  }
}

class Circle {
  float rad;
  float x;
  float y;
  Circle(float tempX, float tempY, float tempR, float tempRadius) {
    x = tempX;
    y = tempY;
    rad = tempR;
    radius = tempRadius;
  }

  void display() {
    noFill();
    strokeWeight(2);
    stroke(255, 255, 255, 255-radius/4);
    ellipse(x, y, radius, radius);
  }

  void movement() {
    rad++;
    percent = map(rad, 0, 1000, 0, 1);
    fx = 1 - exp(-4*percent*percent);
    radius = lerp(0, width*2, fx);
    if (255-rad/2==0) {
      drops.remove(0);
    }
  }
}

