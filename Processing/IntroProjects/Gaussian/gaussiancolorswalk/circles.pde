class Circles {
  PVector location;
  PVector noff;
  
  Circles() {
    location = new PVector(width/2, height/2);
    noff = new PVector(random(1000),random(1000));
  }
  
  void display() {

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
    
    t += 0.01;
    float n = noise(t);
    float r = map(n, 0, 1, 10, 20);
    
    
  
    noStroke();
    colorMode(HSB);
    fill(hueval,satval,brival, 20);
    noStroke();
    ellipse(xloc, yloc, r, r);   // Draw an ellipse at our "normal" random location
  }
  
  void walk() {
    location.x = map(noise(noff.x),0,1,0,5);
    location.y = map(noise(noff.y),0,1,0,5);
    
    noff.add(0.01,0.01,0);
  }
}
