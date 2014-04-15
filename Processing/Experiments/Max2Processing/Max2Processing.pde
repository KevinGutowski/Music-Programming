import oscP5.*;

OscP5 oscP5;

ArrayList<Circle> drops;
void setup() {
  size(1000,800);
  drops=new ArrayList();
  oscP5 = new OscP5(this, 12000);
}
float r=0;
//color v;
void draw() {
  fill(108, 192, 255);
  noStroke();
  rect(0, 0, width, height);
  for (int i=0;i<drops.size();i++) {
    Circle drop=drops.get(i);
    drop.display();
    drop.movement();
  }
 // v=color(random(255), random(255), random(255));
}
 
void oscEvent(OscMessage m) {
  println(m.addrPattern());
  println(m.arguments());
  synchronized(this) {
    if(m.checkAddrPattern("bang")) {
      drops.add(new Circle(width/2, height/2, r));
    }
  }
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
 rad= 5 + rad;
}
 
 
}



