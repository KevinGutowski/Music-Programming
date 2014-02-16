int Hueval = 0;
int Satval = 110;
int Brival = 110;
color Mycolor;

void setup() {
  size(600,600);
  colorMode(HSB);
  Mycolor = color(Hueval, Satval, Brival);
  colorMode(RGB);
  background(Mycolor);
}

void draw() {
  Hueval = (Hueval+1) % 256;
  colorMode(HSB);
  Mycolor = color(Hueval, Satval, Brival);
  colorMode(RGB);
  background(Mycolor);
}
