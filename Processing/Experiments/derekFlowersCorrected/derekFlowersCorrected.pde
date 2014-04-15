

int n = 1;
int c = 10;


void setup() {
  size(640,360);  
  background(255);
  noStroke();
}

void circle(){
  n++;
  float r = c*sqrt(n*2);
  float radius = 10;
  float theta = n*PI*(3-sqrt(5));
  
  fill(62,map(r,1,width,0,255),138,100);
  ellipse(r*cos(theta)/4,r*sin(theta)/4,radius,radius);
  //rotate(theta);
}

void draw() {
  if (n == 1) {
      translate(width/2,height/2);
      for (int i=0;i < 20000;i++){
        circle();
      }
  }
 
}


