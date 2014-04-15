//tick_140412a

ArrayList<PointPosition> pointPosition = new ArrayList();
boolean alternate = true;
int threshold = 135;
int interval = 24;
int width = 500;
int height = 720;
int[] directions = {
  (width*-1)-1,
  (width*-1)+1,
  width+1,
  width-1
};

// int minThreshold | int maxThreshold | float lerpSpeed | float lineLength | float rectOpacity | color pointColor | boolean blur
SketchSettings setVals = new SketchSettings(50,255,0.1,0,50,color(255),true); 
SketchSettings sv = setVals;

void setup() {
  size(width,height);
  frameRate(24);
  startScatter(width);
}

void draw() {
  threshold = sv.setThreshold(threshold,sv.minThreshold,sv.maxThreshold);
  sv.updatePoints();
  sv.alterPixels();
  if (sv.blur) {
    filter(BLUR,0.58);
  }
}

class SketchSettings {
  int minThreshold, maxThreshold;
  float lerpSpeed, lineLength, rectOpacity;
  color pointColor;
  boolean blur;

  SketchSettings(
    int minThreshold,
    int maxThreshold,
    float lerpSpeed,
    float lineLength,
    float rectOpacity,
    color pointColor,
    boolean blur
    ) {
      this.minThreshold = minThreshold;
      this.maxThreshold = maxThreshold;
      this.lerpSpeed = lerpSpeed;
      this.lineLength = lineLength;
      this.rectOpacity = rectOpacity;
      this.pointColor = pointColor;
      this.blur = blur;
  }

  void updatePoints() {
    fill(255-pointColor,rectOpacity);
    rect(-2,-2,width+5,height+5);
    for(PointPosition p:pointPosition){
      PVector thisPos = getPointPos(p.pos.x,p.tpos.x,p.pos.y,p.tpos.y);
      p.tpos.x = thisPos.x;
      p.tpos.y = thisPos.y;
      p.update(lerpSpeed);
      p.render(lineLength,pointColor);
      p.lpos.x = p.tpos.x;
      p.lpos.y = p.tpos.y;
    }
  }

  void alterPixels() {
    loadPixels();
      for (int i=0; i<pixels.length; i++) {
        if (i > max(directions) && i < pixels.length+min(directions)) {
          int pModifier = selectRandom(directions);
          if (firstSelector(brightness(pixels[i]))) {
            firstModifier(i,pModifier);
          } else if (secondSelector(brightness(pixels[i]))) {
            secondModifier(i,pModifier);
          } else {
            defaultModifier(i,pModifier);
          }
        }
      }
    updatePixels();
  }

  int setThreshold(int threshold, int minThreshold, int maxThreshold) {
    if (threshold < maxThreshold && threshold > minThreshold && alternate) {
      threshold++;
    } else if (threshold < maxThreshold && threshold > minThreshold) {
      threshold--;
    } else if (alternate) {
      threshold = maxThreshold;
      alternate = !alternate;
    } else {
      threshold = minThreshold;
      alternate = !alternate;
    }
    return threshold;
  }   
};

class PointPosition {
  PVector pos = new PVector();
  PVector lpos = new PVector();
  PVector tpos = new PVector();
  void update(float lerpSpeed){
    pos.lerp(tpos,lerpSpeed);
  }
  void render(float maxLineLength, color pointColor){
    stroke(pointColor);
    float pDist = dist(lpos.x,lpos.y,pos.x,pos.y);
    if (pDist < maxLineLength) {
      line(lpos.x,lpos.y,pos.x,pos.y);
    }
    point(pos.x,pos.y);
  }
};

PVector getPointPos(float posX, float tposX, float posY, float tposY) {
  PVector thisPos = new PVector();
  thisPos.x = posX;
  thisPos.y = posY;
  thisPos.x = thisPos.x+cos(millis())*sin(tposX)*64;
  thisPos.y = thisPos.y+sin(millis())*cos(tposY)*64;
  return thisPos;
}

boolean firstSelector(float pixelBrightness) {
  boolean selector = false;
  if (pixelBrightness == threshold) {
    selector = true;
  }
  return selector;
}

boolean secondSelector(float pixelBrightness) {
  boolean selector = false;
    if (pixelBrightness > threshold) {
      selector = true;
    }
  return selector;
}

void firstModifier(int i, int pModifier){
  if (switchModifier(frameCount,interval)) {
    pixels[i+pModifier] = pixels[i];
  } else {
    pixels[i] = pixels[i+pModifier];
  }
}

void secondModifier(int i, int pModifier){
  if (switchModifier(frameCount,interval)) {
    pixels[i] = pixels[i] << 1;
  } else {
    //
  }
}

void defaultModifier(int i, int pModifier){
  if (switchModifier(frameCount,interval)) {
    //
  } else {
    pixels[i] = pixels[i] >> 32;
  }
}

void startScatter(int numberOfPoints) {
  for (int i=0; i<numberOfPoints; i++) {
    PointPosition p = new PointPosition();
      p.pos.x = width/2;
      p.pos.y = height/2;
      p.lpos.x = p.pos.x;
      p.lpos.y = p.pos.y;
      p.tpos.x = random(p.lpos.x);
      p.tpos.y = random(p.lpos.y);
    pointPosition.add(p);
  }
}

int selectRandom(int[] cases){
  int selected = int(random(cases.length));
  int output = cases[selected];
  return output;
}

boolean switchModifier(int counter, int interval){
  boolean output = (counter % interval == 0);
  return output;
}
