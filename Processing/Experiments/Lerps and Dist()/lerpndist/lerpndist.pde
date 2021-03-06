float x = 0;
float y = 0;

void setup() {
  size(500, 400);
  fill(255, 0, 0);
  noStroke();  
}
void draw() {
  background(255);
  ellipse(x, y, 20, 20);
  
  x = lerp(x, mouseX, 0.2);
  y = lerp(y, mouseY, 0.2);
  
  float d = dist(x,y, mouseX, mouseY);
  
  if(d < 20) {
    noFill();
    stroke(255,0,0);
    ellipse(x,y,-d+40,50-d);
    fill(255,0,0);
    noStroke();
  }
}
