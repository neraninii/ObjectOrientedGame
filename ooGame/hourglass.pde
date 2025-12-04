//class for the hourglass
class Hourglass {
  //declaring PVector variables
  PVector location;
  PVector velocity;
  PVector acceleration; 
  
  //constructor for the PVector variables
  Hourglass() {
    
    location = new PVector(515, random(-700,200));
    velocity = new PVector(0,5);
    acceleration = new PVector(0, random(0.1,0.9));
  }
  
  //function to move the sand
  void move() {
    location.add(velocity);
    velocity.add(acceleration);
    
    fill(random(190,198),random(140, 169),random(107, 122)); 
    circle(location.x, location.y, 15);
  }
  
  //function draw the sand already in the hourglass
  void sand() {
    noStroke();
    fill(255);
    rect(460, 100, 120, 80);
    fill(198, 169, 122); 
    rect(460, 160, 120, 40);
    rect(460, 250, 120, 60);
  }
}
