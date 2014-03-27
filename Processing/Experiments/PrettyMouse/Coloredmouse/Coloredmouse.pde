color MyRed;
color MyGreen;
color MyBlue;
color MyColor;
int BR = 10;
float t = 0;
PVector mouse;
float velgauss;
float sizegauss;
float anglegauss;
float angle;
Mover mover;

void setup() {
  size(600,600);
  smooth();
  background(189, 204, 212);
  MyGreen = color(122, 201,67,100);
  MyRed = color(255, 29, 37,100);
  MyBlue = color(63,169,245, 100);
  noStroke();
/*  fill(MyRed);
 ellipse(200,300,40,40);
  fill(MyGreen);
  ellipse(220,280,50,50);
  fill(MyBlue);
  ellipse(210,250,70,70);
  */
  mover = new Mover();
}

void draw() {
  background(189,204,212);
  mouse = new PVector(mouseX,mouseY);
  /*--generate three gaussian distributions
  -1 control velocity of birthed circles
  -2 control size of circles
  -3 control angle of birth ---*/
  
  //Velocity Randomized
  float num1 = randomGaussian(); 
  float sd1 = 5;
  float mean1 = 10;
  velgauss = ( sd1 * num1 ) + mean1;
  
  //Size Randomized
  float num2 = randomGaussian(); 
  float sd2 = 30;
  float mean2 = 70;
  sizegauss = ( sd2 * num2 ) + mean2;
  
  //Angle Randomized
  float num3 = randomGaussian(); 
  float sd3 = 60;
  float mean3 = 320;
  float anglegauss = ( sd3 * num3 ) + mean3;
  
  //mapping gaussian distribution to some angle
/*
  if ((anglegauss > 240) || (anglegauss < 400)) {
    float angle = map(anglegauss,240,400,0,2*PI);
  } else if ((angleguass >= 400) || (anglegauss < 700)) {
    float angle = map(anglegauss,400,700,2*PI,0);
  } else if (anglegauss <= 240) {
    float angle = map(anglegauss,240,0,0,2*PI);
  } else {
    float angle = random(2*PI);
  }
  */
  
  float angle = random(2*PI);
  
  //Perlin Noise Generation for Color
  float n = noise(t);
  t += 0.01;
  
  if (n<=.33) {
    color MyColor = MyGreen;
  } else if ((n>0.33) || (n<=0.66)) {
    color MyColor = MyRed;
  } else {
    color MyColor = MyBlue;
  }
  
  //update mover object(s) paramaters
  mover.update();
  mover.checkEdges();
  mover.display();
}

class Mover {
  PVector position;
  PVector velocity;
  
  Mover() {
  position = new PVector(mouse.x,mouse.y);
  //convert from polar to cartesian for veloctiy -- must look for polar mode of PVector
  velocity = new PVector(velgauss*sin(angle),velgauss*cos(angle));
  }
  
  void update() {
    position.add(velocity);
  }

  void display() {
    stroke(0);
    fill(MyColor);
    ellispe(position.x,position.y,sizeguass,sizegauss);
  }
  
  void checkEdges() {
    if (position.x > width) {
      position.x = 0;
    } else if (position.x < 0) {
      position.x = width;
    }
    
    if (position.y > height) {
      postion.y = 0;
    } else if (position.y < 0) {
      position.y = height;
    }
  }
}
    
  
  
  


