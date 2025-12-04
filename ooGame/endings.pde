//class for the endings
class Endings {
  
  //function for win condition 
  void win() {
    fill(146, 216, 90);
    square(0, 0, 600); 
    textSize(50);
    fill(255);
    text("WIN, press key to replay!", 40, 200);
   
    
  }
  
  //function for lose condition 
  void lose() {
    fill(214, 78, 71);
    square(0, 0, 600);
    textSize(50);
    fill(255);
    text("LOSE, press key to replay!", 40, 200);
  }
  
}
