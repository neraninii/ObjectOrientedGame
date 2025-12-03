class Endings {
  
  void win() {
    fill(146, 216, 90);
    square(0, 0, 600); 
    textSize(50);
    fill(255);
    text("WIN, press key to replay!", 40, 200);
   
    
  }
  
  void lose() {
    fill(214, 78, 71);
    square(0, 0, 600);
    textSize(50);
    fill(255);
    text("LOSE, press key to replay!", 40, 200);
  }
  
}
