int[][] result;
float time;
 
void setup() {
  setup_();
  result = new int[width*height][3];
}
 
void draw() {
  for (int i=0; i<width*height; i++)
    for (int a=0; a<3; a++)
      result[i][a] = 0;
 
  for (int sa=0; sa<samplesPerFrame; sa++) {
    time = map(frameCount-1 + sa*shutterAngle/samplesPerFrame, 0, numFrames, 0, 1);
    draw_();
    loadPixels();
    for (int i=0; i<pixels.length; i++) {
      result[i][0] += pixels[i] >> 16 & 0xff;
      result[i][1] += pixels[i] >> 8 & 0xff;
      result[i][2] += pixels[i] & 0xff;
    }
  }
 
  loadPixels();
  for (int i=0; i<pixels.length; i++)
    pixels[i] = 0xff << 24 | (result[i][0]/samplesPerFrame) << 16 | 
      (result[i][1]/samplesPerFrame) << 8 | (result[i][2]/samplesPerFrame);
  updatePixels();
 
  //saveFrame("f##.gif");
  //if (frameCount==numFrames)
  //  exit();
}
 
//////////////////////////////////////////////////////////////////////////////
 
int samplesPerFrame = 32;
int numFrames = 48;        
float shutterAngle = 1;
 
void setup_() {
  size(500, 500);
  fill(255);
  rectMode(CENTER);
}
 
void draw_() {
  background(0);
  pushMatrix();
  translate(width/2, height/2);
  pushMatrix();
  rotate(PI*time);
  fill(255);
  rect(0, 0, 200, 200);
  popMatrix();
  pushMatrix();
  rotate(-HALF_PI*time);
  fill(0);
  rect(0, 0, 130, 130);
  popMatrix();
  popMatrix();
}
