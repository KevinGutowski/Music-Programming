PFont font;
String[] lines;
String joinedText;

String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ,.;:!? ";
int[] counters = new int[alphabet.length()];
boolean[] drawLetters = new boolean[alphabet.length()];

float charSize;
color charColor = 0;
int posX = 20;
int posY = 50;

boolean drawGreyLines = false;
boolean drawColoredLines = true;
boolean drawText = true;

int time = 0;
float mouse= 0;
int time2 = 0;
int time3 = 0;
int time5 = 0;



void setup() {
  size(1200, 800);
  lines = loadStrings("faust_kurz.txt");  //laden des zu analysierenden textes
  joinedText = join(lines, " ");

  font = createFont("Courier", 10);

  for (int i = 0; i < alphabet.length(); i++) {
    drawLetters[i] = true;
  }

  countCharacters();
}


void draw() {
  time++;
  float alpha = (1 - width/2)*(2/width);
  mouse = (width/2)*sin(time*PI/300) + width/2;


  //time is controlling the overall phase where time2 and time3 pause time for a particular (time then continues)
  if (mouse < 1) {
    time = 420;
    time2++;
  } 
  else if (time2 > 12) {
    time = 455;
    time2 = 0;
  }

  if (mouse > 1180) {
    time = 146;
    time3++;
  } 
  if (time3 > 900) {
    time = 175;
    time3 = 0;
  }

  //want time3 to also control fill and stroke weight however we need something that ramps from {255,0} and from {0,255} over different durations
  int time4 = time3;
  if (time3 > 600) {
    time5 = time5 + 3; //want to count up twice as fast as time3
    time4 = time4 - time5;
  }

  if (time4 < 0) {
    time4 = 0;
  }


  float[] timings = {
    time, time2, mouse
  };
  //println(time4);


  colorMode(HSB, 360, 100, 100, 100);
  textFont(font);
  background(360);
  strokeWeight(1);





  smooth();

  translate(50, 0);

  posX = 0;
  posY = 200;
  float[] sortPositionsX = new float[alphabet.length()];
  float[] oldPositionsX = new float[alphabet.length()];
  float[] oldPositionsY = new float[alphabet.length()];
  float oldX = 0;
  float oldY = 0;
  fill(255, 255, 0);
  // draw counters
  if (mouse >= width-50) {
    textSize(10);
    for (int i = 0; i < alphabet.length(); i++) {
      textAlign(LEFT);
      text(alphabet.charAt(i), -15, i*20+40);
      textAlign(RIGHT);
      text(counters[i], -20, i*20+40);
    }
  }
  fill(255, 255, 0, map(time4, 0, 200, 255, 0));

  // go through all characters in the text to draw them
  textAlign(LEFT);
  textSize(18);

  for (int i = 0; i < joinedText.length(); i++) {
    // again, find the index of the current letter in the alphabet
    String s = str(joinedText.charAt(i)).toUpperCase();
    char uppercaseChar = s.charAt(0);
    int index = alphabet.indexOf(uppercaseChar);
    if (index < 0) continue;

    float m = map(mouse, 50, width-50, 0, 1);
    m = constrain(m, 0, 1);

    float sortX = sortPositionsX[index];
    float interX = lerp(posX, sortX, m);

    float sortY = index*20+40;
    float interY = lerp(posY, sortY, m);

    if (drawLetters[index]) {
      if (drawGreyLines) {
        if (oldX!=0 && oldY!=0) {
          stroke(0, 10);
          line(oldX, oldY, interX, interY);
        }
        oldX = interX;
        oldY = interY;
      }

      if (drawColoredLines) {
        if (oldPositionsX[index]!=0 && oldPositionsY[index]!=0) {
          stroke(index*10, 80, 60, 50);
          line(oldPositionsX[index], oldPositionsY[index], interX, interY);
        }
        oldPositionsX[index] = interX;
        oldPositionsY[index] = interY;
      }

      if (drawText) {
        text(joinedText.charAt(i), interX, interY);
      }
    }
    else {
      oldX = 0;
      oldY = 0;
    }

    sortPositionsX[index] += textWidth(joinedText.charAt(i));
    posX += textWidth(joinedText.charAt(i));
    if (posX >= width-200 && uppercaseChar == ' ') {
      posY += 40;
      posX = 0;
    }
  }
}


void countCharacters() {
  for (int i = 0; i < joinedText.length(); i++) {
    // get one char from the text, convert it to a string and turn it to uppercase
    String s = str(joinedText.charAt(i)).toUpperCase();
    // convert it back to a char
    char uppercaseChar = s.charAt(0);
    // get the position of this char inside the alphabet string
    int index = alphabet.indexOf(uppercaseChar);
    // increase the respective counter
    if (index >= 0) counters[index]++;
  }
}






