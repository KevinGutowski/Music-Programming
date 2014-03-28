void setup() {
  size(1236, 800);
  smooth();
 
}
void draw() {
  background(255);
 
  noFill();
  stroke(0);
 
  //curve that I want an object/sprite to move down
  bezier(800, 0,1000,10,900,450,700,682);
 
 
  float t =  (frameCount/100.0)%1;
  float x = bezierPoint(800, 1000, 900, 700, t);
  float y = bezierPoint( 0, 10, 450, 682, t);
 
 fill(255,0,0);
  ellipse(x, y, 35, 35);
 
 
 
}
