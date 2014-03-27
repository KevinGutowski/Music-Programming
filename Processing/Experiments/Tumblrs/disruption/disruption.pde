float y;
PImage img;
float num;

void setup() {
  img = loadImage("KskiMusicLogo1.jpg");
  size(img.width, img.height);
  background(0);
  noFill();
  strokeCap(SQUARE);
  image(img, 0, 0);
    
}
  
  

void draw() {
  for (int y=0; y<height;y++) {
  stroke(get(width/2,y),255);
  num = (.00005 + num);
  line((width/num)-10,y,width,y);  
  stroke(0);
  line(width,y,(width/num) + random(width/2-20),y); 
  println(num);
  }
}

void keyPressed() {
  save(random(3434)+".jpg");
}
