void setup()
{
  size(400, 400);
}
 
void draw()
{
  background(255);
  noFill();
  stroke(0);
  strokeWeight(3);
  smooth();
 
  drawSquarcle(map(mouseX,0,width,0,1));
}
 
 
// t should be between 0 (square) and 1 (circle)
void drawSquarcle(float t)
{
  // Define position and size of shape.
  float cx = width/2;
  float cy = height/2;
  float circleRadius = 150;
  float circleX, circleY, squareX, squareY;
 
  float incAngle = radians(1);    // Resolution of shape.
 
  beginShape();
 
  for (float angle=0; angle<TWO_PI; angle +=incAngle)
  {
    circleX = cx + circleRadius*cos(angle);
    circleY = cy + circleRadius*sin(angle);
 
    if ((angle > radians(225)) && (angle <= radians(315)))  // top side
    { 
      float squareRadius = circleRadius / sin(angle);
      squareX = cx - squareRadius*cos(angle);
      squareY = cy-circleRadius;
    }
    else if ((angle > radians(45)) && (angle <= radians(135)))  // Bottom side
    { 
      float squareRadius = circleRadius / sin(angle);
      squareX = cx + squareRadius*cos(angle);
      squareY = cy+circleRadius;
    }
    else if ((angle > radians(135)) && (angle <= radians(225)))  // Left side
    { 
      float squareRadius = circleRadius / cos(angle);
      squareX = cx - circleRadius;
      squareY = cy - squareRadius*sin(angle);
    }
    else // Right side
    {
      float squareRadius = circleRadius / cos(angle);
      squareX = cx + circleRadius;
      squareY = cy + squareRadius*sin(angle);
    }
    vertex(lerp(squareX,circleX,t),lerp(squareY,circleY,t));
  }
  endShape();
}
