void setup() {
  size(400,400);
}

void draw() {
  background(239,227,188);
  drawCircle(width/2,height/2,200);
}

void drawCircle(float x, float y, float radius) {
  noFill();
  rectMode(CENTER);
  ellipse(x,y,radius,radius);
  if(radius > 8) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
  if (x%5 == 0) {
    stroke(1,37,48);
  } else if ((x%5 > 0) && (x%5 < 3)) {
    stroke(69,178,157);
  } else {
    stroke(223,90,73);
  }
}
