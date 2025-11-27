
class Hourglass {
  PVector location;
  PVector velocity;
  PVector acceleration; 
  
  Hourglass() {
    location = new PVector(0,0);
    velocity = new PVector(5,5);
    acceleration = new PVector(0, 9.81);
  }
  
}
