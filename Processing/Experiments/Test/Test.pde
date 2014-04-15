  float xstart = random(10);
  float ynoise = random(10);

void setup() {
  size(500,500);
  background(150);

  stroke(0,50);


  

}


void draw() {
   fill(random(0,255),random(0,255),random(0,255),6);
  translate(width/2,height/2);
  for (float y = -(height/8); y <= (height/8); y +=3) {
    ynoise += .02;
    float xnoise = xstart;
    for (float x = -(width/8); x <= (width/8); x +=3) {
      xnoise += .02;
      drawPoint(x,y,noise(xnoise,ynoise));
    }
  }
}
void drawPoint(float x, float y, float noiseFactor) {
  pushMatrix();
    translate(x * noiseFactor * 4, y * noiseFactor * 4);
    float edgeSize = noiseFactor * 26;
    rect(0,0,edgeSize,edgeSize);
  popMatrix();
}
  
