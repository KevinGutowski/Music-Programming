void setup() {
  size(800,800);
  background(0);
  smooth();
}


int t = 0;

void draw() {
  background(0);
  t++;
  translate(height/2,width/2);
  rotate(PI*t/120);
  
  
  /*
  //static objects
  noFill();
  strokeWeight(1);
  ellipse(0,0,250,250);
  */
  
  float radius = 12;
  float r3 = 245;
  float n3 = 200;
  noStroke();
  fill(0,40);
  
  for (int i=0; i<n3; i++) {
   colorMode(RGB);
   if (i>=0 && i<(n3/3)) {
     fill(255,0,0,10);
   } else if (i>=(n3/3) && i<(2*n3/3)) {
     fill(0,0,255,10);
   } else if (i>=(2*n3/3) && i<n3) {
     fill(0,255,0,10);
   }
   float middlex = r3*cos(2*PI*i/n3+t*PI/200)*tan(2*PI*i/n3+t*PI/300);
   float middley = r3*sin(2*PI*i/n3+t*PI/100)*tan(2*PI*i/n3+t*PI/250);
   triangle(radius*cos(PI/6)-middlex,radius*sin(PI/6)+middley,radius*cos(PI/6)+middlex,radius*sin(PI/6)+middley, 0,-radius);
  }
    
  
  
  /*fill(0);
  int n2 = 20;
  float r2 = 250;
  for (int i=0; i<n2; i++) {
    ellipse(r2*cos(2*PI*i/n2),r2*sin(2*PI*i/n2),8,8);
  }
  
  
  
  //moving objects
  pushMatrix();
    rotate(PI*t/500);
    
    int n1 = 20;
    float r1 = 150;
    for (int i=0; i < n1; i++) {
      ellipse(r1*cos(2*PI*i/n1),r1*sin(2*PI*i/n1),8,8);
    }
  popMatrix();
  */
  
}
