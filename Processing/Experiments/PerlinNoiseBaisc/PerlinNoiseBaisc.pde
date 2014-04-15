float step;
int t=0;

void setup() {
  size(800,800);
}

void draw() {
  colorMode(HSB);
  t++;
  fill(t%255,t%100+100,100,10);
  rect(0,0,width,height);
  noStroke();
  fill(t%200,100,244);
  step += .05;
  float perliner1 = width*noise(step);
  float perliner2 = width*noise(step*1.01);
  ellipse(perliner1, perliner2, perliner1*50/width, perliner2*50/width);

}
