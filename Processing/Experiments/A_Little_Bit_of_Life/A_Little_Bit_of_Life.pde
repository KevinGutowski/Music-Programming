void setup() {
  size(500, 500);
  background(255);
}

int T = 0;

void draw() {
  T++;

  fill(255,120);
  rect(0,0,width,height);
  int xpos = 50;
  translate(width/2, height/2);
  float radius = 0;
  float r = 0;
  if (T<8) {
    r = T*3;
  } 
  if ((T<16) && (T>=8)) {
    r = 24 + 3*sin((T-8)*PI/8);
  } 
  if ((T>=16) && (T<30)) {
    r = 24;
    radius = (T-16)*(T-16);
    rotate(PI*T/28);
  } 
  if ((T>=30) && (T<50)) {
    r = 24;
    radius = (14*14)+20*sin(2*PI*(T-30)/10);
    rotate(sin(2*PI*(T-30)/10)*PI/20);
  } 
  else if (T>=50) {
    r = 24;
    radius = (14*14);
  }
  for (int i = 0; i < 8; i++) {
    stroke(0);
    strokeWeight(4);
    fill(255);
    ellipse((radius)*cos(PI*i/4), (radius)*sin(PI*i/4), r+11 ,r+11);
    noStroke();
    fill(0);
    ellipse(radius*cos(PI*i/4), radius*sin(PI*i/4), r, r);
    
  }
}

