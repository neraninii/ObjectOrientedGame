//class for timer 
class Timer {
  // declaring variables
  int savedTime;
  int total; 
  int passedTime;
  
  //constructor
  Timer(int tempTotal) {
    total = tempTotal;
  }
  
  //function to start the timer
  void start() {
    savedTime = millis();
  }
  
  //function to check if the timer is finished
  boolean finished() {
    passedTime = millis() - savedTime;
    if  (passedTime > total) {
      return true;
    }
    
    else {
      return false;
    }
  }
  
  
}
