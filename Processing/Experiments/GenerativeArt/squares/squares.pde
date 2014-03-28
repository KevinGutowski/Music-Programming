int frame = 0;

void setup() {
  size(600, 600);
  background(11,72,107);
}

void draw() {
  noFill();
  stroke(207,240,158,100);
  translate(width/2,height/2);
  rotate(PI*frame/120);
  float fx2Max = 120;
  float fx2Scale = 200;
  frame++;
  float tween = fx2Scale*sin(PI*frame/100);
  rectMode(CENTER);
  rect(fx2Scale*sin(PI*frame/200),fx2Scale*sin(PI*frame/100),abs(tween),abs(tween));
  
  if (keyPressed) {
  saveFrame("images/art-####.png");
  println("Image Saved!");
  }
}


