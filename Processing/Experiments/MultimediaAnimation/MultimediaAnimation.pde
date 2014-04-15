PFont font;
String[] lines;
String joinedText;

String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ,.;:!?-";
int[] counters = new int[alphabet.length()];
boolean[]drawLetters = new boolean[alphabet.length()];

float charSize;
color charColor = 0;
int posX = 20;
int posY = 50;
float time= 0;
int state=1;

void setup() {
  size(1200,800);
  lines = loadStrings("text.txt");
  joinedText = join(lines, " ");
  
  font = createFont("Courier", 10);
  
  for (int i = 0; i < alphabet.length(); i++) {
    drawLetters[i] = true;
  }
  
  //countCharacters();
}

void draw() {
  colorMode(HSB, 360, 100, 100, 100);
  textFont(font);
  background(360);
  noStroke();
  fill(0);
  smooth();
  
  translate(50,0);
  
  posX  = 0;
  posY = 200;
  float[] sortPositionsX = new float[alphabet.length()];
  float[] oldPositionsX = new float[alphabet.length()];
  float[] oldPositionsY = new float[alphabet.length()];
  float oldX = 0;
  float oldY = 0;
  


  if (time == 0) {
    state = 1;
  } else if (time == 8) {
    state = 2;
  } else if (time == 16) {
    state = 3;
  } 
  
  time = time + .05;
  println(time);
}
