class Mover {
   PVector position;
   PVector velocity;
   PVector acceleration;
   float mass;
   int color1;
   int color2;
   int color3;
   int posx;
   int posy;
  
  
 //Inital Conditions
 Mover() {
   mass = 16;
   position = new PVector(20,20);
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
  
 }
 
 void applyForce(PVector force) {
   PVector f = PVector.div(force,mass);
   acceleration.add(f);
 }
 
  //Environment Physics
 void update() {
   velocity.add(acceleration);
   position.add(velocity);
   acceleration.mult(0);
 }
  
 void display(){
   colorMode(HSB);
   stroke(0);
   posx = int(position.x);
   posy = int(position.y);
   color1 = int(map(posx,0,640,0,255));
   color2 = int(map(posy,0,360,0,255));
   fill(color1,color2,100);
   color3 = int(map(abs(velocity.y),0,4,0,255));
   ellipse(position.x,position.y,mass*2,mass*2);
   println(color3);
 }
  
 void checkEdges() {
   if (position.x > width) {
     position.x=width;
     velocity.x *= -1;
   } else if (position.x <0) {
     velocity.x *= -1;
     position.x = 0;
   }
    
   if (position.y > height) {
     position.y=height;
     velocity.y *= -1;
   } else if (position.y <0) {
     velocity.y *= -1;
     position.y = 0;
   }
 }
}
