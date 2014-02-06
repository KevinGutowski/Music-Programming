void setup() {
  size(400 ,400);
  stroke(255, 128, 0, 128);
}

void draw() {
  background(192, 64, 0);
  line(150, 25, mouseX, mouseY);
  line(380, 380, mouseX, mouseY);
}
