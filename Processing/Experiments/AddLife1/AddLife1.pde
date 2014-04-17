void setup() {
  size(500, 500);
  background(255);
}

int T = 0;

void draw() {
  fill(255, 200);
  rect(0, 0, width, height);
  //println((frameCount));

  //phrase1
  if (frameCount <= 30) {
    //println("Phrase1");
    T++;
    float percent = map(frameCount, 0, 30, 0, 1);
    float v = exp(-4*percent*percent);
    float w = 1 - v;
    float r = lerp(0, 20, sin(w*PI/2));
    stroke(0);
    strokeWeight(4);
    fill(255);
    ellipse(width/2, height/2, r+11, r+11);
    noStroke();
    fill(0);
    ellipse(width/2, height/2, r, r);

    if (frameCount == 30) {
      //println("Phrase1 - Left");
      leave();
    }
  } 
  else if ((frameCount > 30)) {
    //println("Phrase2");
    T++;
    translate(width/2, height/2);
    rotate(PI*T/120); 
    float percent = map(T, 0, 30, 0, 1);
    float v = exp(-4*percent*percent);
    float w = 1 - v;
    float centery = lerp(0, 200, w);
    float r = 20;

    for (int i = 0; i < 8; i++) {
      stroke(0);
      strokeWeight(4);
      fill(255);
      ellipse(centery*cos(PI*i/4), centery*sin(PI*i/4), r+11, r+11);
      noStroke();
      fill(0);
      ellipse(centery*cos(PI*i/4), centery*sin(PI*i/4), r, r);
    }
  }
}

void leave() {
  T = 0;
}

