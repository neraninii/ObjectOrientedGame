class Timer {
  int savedTime;
  int total; 
  int passedTime;
  
  Timer(int tempTotal) {
    total = tempTotal;
  }
  
  void start() {
    savedTime = millis();
  }
  
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
