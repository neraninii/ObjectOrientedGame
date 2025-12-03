
class Hourglass {
  PVector location;
  PVector velocity;
  PVector acceleration; 
  
  Hourglass() {
    location = new PVector(515, random(-700,200));
    velocity = new PVector(0,5);
    acceleration = new PVector(0, random(0.1,0.9));
  }
  
  
  void move() {
    location.add(velocity);
    velocity.add(acceleration);
    
    fill(random(190,198),random(140, 169),random(107, 122)); 
    circle(location.x, location.y, 15);
  }
  
  void sand() {
    noStroke();
    fill(20);
    rect(460, 100, 120, 80);
    fill(198, 169, 122); 
    rect(460, 160, 120, 40);
    rect(460, 250, 120, 60);
  }
}
