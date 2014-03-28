int num = 50;
int sw = 1;
float[] offSet = new float[num];
float offSetY = -50;
color bg = #361826;
color s = #ffffff;
float theta, th;
 
void setup() {
  size(500, 500);
  background(bg);
  noFill();
  strokeWeight(sw);
 

}
 
void draw() {
  
  translate(0, height/2);
  background(bg);
  stroke(s, 150);
    float vari = map(sin(theta), -1, 1, -120, 120);
    bezier(0,0,width/3,+vari,2*width/3,-vari,width,0);
    
  theta += .1;
}

