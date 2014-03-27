float Redval = 192;
float Grnval = 64;
float Bluval = 0;
color MyColor;
color Bar1Color;
color Bar2Color;
String Responce;
int Score;

Zone[] zones = new Zone[2];

void setup() {
  size(800,800);
  smooth();
  MyColor = color(Redval,Grnval,Bluval);
  Bar1Color = color(200,100,200);
  Bar2Color = color(100,100,240);
  background(MyColor);
  zones[0] = new Zone(60,height/2,width/2);
  zones[1] = new Zone(20,height/2,width/2);
}

void draw() {
  background(MyColor);
  
  zones[0].update();
  zones[1].update();
  zones[0].display(Bar1Color);
  zones[1].display(Bar2Color);
  zones[0].checkEdges();
  zones[1].checkEdges();
}

void mousePressed() {
  float distance = abs(zones[0].position.x - mouseX);
  if (distance < 10) {
    Score += 20;
    Responce = ("BULLS EYE!");
  } else if (distance < 30) {
    Score += 5;
    Responce = ("Close!");
  } else {
    Score -= 5;
    Responce = 
  
  
  
