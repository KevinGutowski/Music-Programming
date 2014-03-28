void setup() {
  size(500, 500);
  background(255);
}
//this technique utilizes the strokeWeight of the Ellipse
void draw() {
  noStroke();
  fill(255,10);
  rectMode(CORNER);
  rect(0,0,width,height);
  noFill();
  stroke(1);
  for (int i=0; i<100; i++) {
    line(random(width),random(height),random(width),random(height));
    strokeWeight(random(1, 2));
  }
  stroke(255);
  strokeWeight(120);
  filter(BLUR);
  rectMode(CENTER);
  ellipse(width/2, height/2, width*1.15, width*1.15);
}

