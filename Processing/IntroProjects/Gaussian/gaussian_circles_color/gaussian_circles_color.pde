// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

void setup() {
  size(640, 640);
  background(255);
  smooth();
}

void draw() {

  // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
  float xloc = randomGaussian();
  float yloc = randomGaussian();
  float hueval = randomGaussian();
  float satval = randomGaussian();
  float brival = randomGaussian();

  float sd = 120;                // Define a standard deviation
  float mean = width/2;         // Define a mean value (middle of the screen along the x-axis)
  xloc = ( xloc * sd ) + mean;  // Scale the gaussian random number by standard deviation and mean
  yloc = ( yloc * sd ) + mean;
  
  float sdc = 40;
  float meanc = 150;
  hueval = (hueval * sdc) + meanc;
  satval = (satval * sdc) + meanc;
  brival = (brival * sdc) + meanc;
  

  noStroke();
  colorMode(HSB);
  fill(hueval,satval,brival, 20);
  noStroke();
  ellipse(xloc, yloc, 16, 16);   // Draw an ellipse at our "normal" random location
}



