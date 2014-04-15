
float xmag, ymag = 0;
float newXmag, newYmag = 0;
int Delay=7;
void setup() 
{
  size(400, 400,P3D);
  colorMode(RGB, 100);
  background(90, 90, 90);
}

void draw() 
{
  background(90, 90, 90);
  translate(width/2, height/2, -70);
  newXmag = mouseX/(float)(width) * TWO_PI;
  newYmag = mouseY/(float)(height) * TWO_PI;
 
  float diff = xmag-newXmag;
  if (abs(diff) >  0.01f) { 
    xmag -= diff/Delay; 
  }
  
  diff = ymag-newYmag;
  if (abs(diff) >  0.01f) {
    ymag -= diff/Delay;
  }
  
  rotateX(ymag);
  rotateY(xmag);
 calculate(80,0,0,0);
 

}
void calculate (int lato, int xloc, int yloc, int zloc) {
 draw_target(lato,xloc,yloc,zloc);
 if(lato>10){
 calculate(lato/2,-lato*2,yloc,zloc);
 calculate(lato/2,lato*2,yloc,zloc);
  calculate(lato/2,xloc,lato*2,zloc);
 calculate(lato/2,xloc,-lato*2,zloc);
   calculate(lato/2,xloc,yloc,lato*2);
 calculate(lato/2,xloc,yloc,-lato*2);
 
  }
}
void draw_target(int lato, int xloc, int yloc, int zloc) 
{
 pushMatrix();
   translate(xloc, yloc, zloc);
   fill(lato*3, lato*3, lato*3);
   box(lato);
 popMatrix();

}


