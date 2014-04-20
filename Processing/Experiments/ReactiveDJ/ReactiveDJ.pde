int num = int(random(400, 800));
float [] posx = new float[num];
float [] posy = new float[num];
float [] rad = new float[num];
int [] filler = new int[num];

boolean tester = false;

float T = 0;

//globals for Shimmering Stars
float t = 0;

//Spring Constants
float finalRadius = 100;
float dampConstant = 0.19;
float springConstant = .9;
float velocity = 0;
float position = 0;


void setup() {
  size(1000, 800);

  background(0);
  noStroke();
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
  

  

  //Phrase 1
  stroke(255);
  noFill();
  drawParabL(width/2,height*3/4);
  drawParabR(width/2,height*3/4);
  println(frameRate);
  //if (tester == true) {
    T++;
    finalRadius = min(100, exp(T*0.15));
    float acceleration = springConstant*(finalRadius - position) - dampConstant*velocity;
    velocity += acceleration;
    position += velocity;
    drawParabL(width/2-position,height*3/4);
    drawParabR(width/2-position,height*3/4);

    
    /*
    drawParabL(width/2-20,height*3/4);
    drawParabR(width/2-20,height*3/4);
    
    drawParabL(width/2+20,height*3/4);
    drawParabR(width/2+20,height*3/4);
    
    drawParabL(width/2+40,height*3/4);
    drawParabR(width/2+40,height*3/4);
    */
  //}
  
  
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

  
}

void drawParabR(float posX, float posY) {
  pushMatrix();

  translate(posX, posY);
  rotate(PI);
  float x = 0;
  float y = height/2;
  
  while (y <= height/2) {
    beginShape();
    float a = .1;
    //calculate y based on current x
    y = a * (x) * x + x/10;
    //add vertex at x, y for our parabola
    vertex(-x, y);
    //step x to draw point a little to the right 
    float step = 20;
    /*
    if (t > 4) {
      step = .01;
      x += step;
    } 
    else {
      step = 20/(t*t*t*t);
      x += step;
    }
    */
    
    step = .01;
    x += step;
    
    endShape();
  }
  popMatrix();
}

void drawParabL(float posX, float posY) {
  pushMatrix();

  translate(posX, posY);
  rotate(PI);
  float x = 0;
  float y = height/2;
  
  while (y <= height/2) {
    beginShape();
    float a = .1;
    //calculate y based on current x
    y = a * (x) * x + x/10;
    //add vertex at x, y for our parabola
    vertex(x, y);
    //step x to draw point a little to the right 
    float step = 20;
    
    /*
    if (t > 4) {
      step = .01;
      x += step;
      tester = true;
      
    } 
    else {
      step = 20/(t*t*t*t);
      x += step;
    }
    */
    
    step = .01;
    x += step;
    
    endShape();
  }
  popMatrix();
}
