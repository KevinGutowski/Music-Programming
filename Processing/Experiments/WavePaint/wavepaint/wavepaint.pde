
float angle = 0;
float angleVel = .1;
float tester = 0;
float counter = 0;
int choose = 1; //choose color [1] or black n white [0]

void setup() {
  size(800,800);
  background(255);
  strokeWeight(1);
  noFill();
  stroke(255);
}

void draw() {

  beginShape();
  for (int x = 0; x <= width; x += 5) {
    float y = map(cos(angle),-1,1,0,height);
    vertex(x,y);
    angle +=angleVel;
  } 
  endShape();
  
  
  if (choose == 0) {
    tester = angle%8000;
    if (tester > 4000) {
      stroke(255);
    } else {
      stroke(0);
    }
  } else if (choose == 1) {
    tester = angle%10000;
    if (tester< 2000) {
      stroke(241,241,241,100);
    } else if ((tester >= 2000) && (tester < 4000)) {
      stroke(65,42,62,100);
    } else if ((tester >= 4000) && (tester < 6000)) {
      stroke(167,57,81,100);
    } else if ((tester >= 6000) && (tester < 8000)) {
      stroke(215,91,98,100);
    } else if ((tester >= 8000) && (tester < 10000)) {
      stroke(43,17,80,100);
    }
  }

println(tester);
}


