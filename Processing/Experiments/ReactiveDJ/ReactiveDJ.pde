int num = int(random(400, 800));
float [] posx = new float[num];
float [] posy = new float[num];
float [] rad = new float[num];
int [] filler = new int[num];
int T=0;
float t = 0;



void setup() {
  size(1000, 800);

  background(0);
  noStroke();
  println(num);
  for (int i = 0; i < num; i++) {
    posx[i] = int(random(0, width));
    posy[i] = int(random(0, height));
    rad[i] = random(0, 2.5);
  }
}



void draw() {
  
  
  //-------Background---------
  background(0);
  //pushMatrix(); Add rotation? * If add rotation need to kill ellipses out of screen and generate new ones offscreen
    t = t + 0.005;
    //rotate(t*PI/500); *
    //shimmer
    for (int i = 0; i < num; i++) {
      int noisy = int(100*noise(t*i));
      filler[i] = 100+ int(map(noisy, 0, 100, -40, 80));
    }
  
    //load randomized skymap
    for (int i = 0; i < posx.length; i++) {
      noStroke();
      fill(255, filler[i]);
      ellipse(posx[i], posy[i], rad[i], rad[i]);
    }
  //popMatrix(); *
  
  
  //Phrase 1
  if (frameCount > 30) {
    T++;
    float percent = map(T,0,20,0,1);
    float fx = 1 - exp(-4*percent*percent);
    float radius = lerp(0,100,fx);
    noFill();
    strokeWeight(3);
    stroke(255);
    ellipse(width/2,height/2,radius,radius);
  }
}

