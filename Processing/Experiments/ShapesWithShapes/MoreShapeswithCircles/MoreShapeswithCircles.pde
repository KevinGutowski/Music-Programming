ArrayList<Circle> drops;
void setup() {
  size(800,800);
  drops=new ArrayList();
}

float r=0, rprime = 0;
color v;
void draw() {
  fill(108,192,255,100);
  noStroke();
  translate(width/2,height/2);
  rotate(rprime);
  rprime = rprime + .013;
  rect(0, 0, 100, height);
  for (int i=0;i<drops.size();i++) {
    Circle drop=drops.get(i);
    drop.display();
    drop.movement();
  }
 v=color(random(255), random(255), random(255));
}
 
void mousePressed() {
  drops.add(new Circle(mouseX-width/2, mouseY-height/2, r));
}
void keyPressed(){
if (key==' '){
drops=new ArrayList();
}
}
 
 
class Circle{
  float x;
  float y;

  float rad;
 // color c;
Circle(float tempX,float tempY,float tempR){
x=tempX;
y=tempY;
rad=tempR;
//c=tempC;
}
void display(){
  noFill();
  stroke(255);
  strokeWeight(0.5);
  ellipse(x, y,rad,rad);
 
}
 
void movement(){
 rad++;
}
 
 
}

