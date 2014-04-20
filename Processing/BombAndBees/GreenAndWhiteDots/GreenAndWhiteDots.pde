void setup() {
  setup_();
  result = new int[width*height][3];
  result_ = new int[width*height][3];
}
 
int[][] result, result_;
float time;
 
void draw_() {
  for (int i=0; i<width*height; i++)
    for (int a=0; a<3; a++)
      result_[i][a] = 0;
 
  for (int a=0; a<3; a++) {
    pushMatrix();
    translate(width/2, height/2);
    scale(1+0.008*a*aberrationAmount);
    translate(-width/2, -height/2);
    draw__();
    popMatrix();
    loadPixels();
    for (int i=0; i<pixels.length; i++) {
      result_[i][a] = pixels[i] >> (8*(2-a)) & 0xff;
    }
  }
 
  loadPixels();
  for (int i=0; i<pixels.length; i++)
    pixels[i] = 0xff << 24 | result_[i][0] << 16 | 
      result_[i][1] << 8 | result_[i][2];
  updatePixels();
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
 
  saveFrame("f##.gif");
  if (frameCount==numFrames)
    exit();
}
 
float aberrationAmount = 0.5;
 
int samplesPerFrame = 16;
int numFrames = 32;        
float shutterAngle = .5;
 
////////////////////////////////////////////////////
 
void setup_() {
  size(500,500);
  noStroke();
}
 
float x, y, t, sp, d = 24, tt;
int N = 8;
color c1 = color(0,220,180), c2 = color(255), cb = color(0);
 
void draw__() {
  t = max(0,time*48/47.0 - 1/47.0);
  t = .5*t + 1.5*t*t - t*t*t;
  tt = 3*time*time - 2*time*time*time;
  
  sp = 55*pow(2,t);
  background(cb);
  pushMatrix();
  translate(250,250);
  rotate(HALF_PI*t);
  for(int i=-N; i<=N; i++){
    for(int j=-N; j<=N; j++){
      x = i*sp; y = j*sp;
      fill(c1);
      ellipse(x,y,d,d);
      x = (i+.5)*sp; y = (j+.5)*sp;
      fill(lerpColor(c2,c1,t));
      ellipse(x,y,.5*d + .5*d*t,.5*d + .5*d*t);
      x = i*sp; y = (j+.5)*sp;
      fill(lerpColor(cb,c1,sqrt(t)));
      ellipse(x,y,d*t,d*t);
      x = (i+.5)*sp; y = j*sp;
      fill(lerpColor(cb,c1,sqrt(t)));
      ellipse(x,y,d*t,d*t);
      x = (i+.5)*.5*sp; y = (j+.5)*.5*sp;
      fill(lerpColor(cb,c2,t*t));
      ellipse(x,y,.5*d*t*t,.5*d*t*t);
    }
  }
  popMatrix();
}
