int time;
PFont font;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  background(0);
  time++;
  font = loadFont("BattlefieldLaserItalic-48.vlw");
  textFont(font,32);
  textAlign(CENTER);
  fill(255,255,255,time);
  text("KSKI",width/2,time/3+100);
  strokeWeight(5);
  stroke(0, 0, 240, 0+time*10);
  rectMode(CENTER);
  noFill();
  if (time < 43) {
    arc(width/2, height, height, height,PI+PI/3.5,PI+PI/3.5+time/(10*PI));
  } else {
    arc(width/2, height, height, height,PI+PI/3.5,PI+PI/3.5+43/(10*PI));
  }
}


