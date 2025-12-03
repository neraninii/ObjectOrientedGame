
class GameStart {
  
  void mouseStart() {
  
    if (150 < mouseX && 230 > mouseX && 
    280 < mouseY && 380 > mouseY) {
      
         bone.cClick = true;
         
    }
        
    else if (250 < mouseX && 330 > mouseX && 
    280 < mouseY && 380 > mouseY) {
      
      bone.hClick = true;
      
    }
    else if (350 < mouseX && 430 > mouseX && 
    280 < mouseY && 380 > mouseY) {
      
      bone.rClick = true;
      
    }
    
    if (bone.cClick == true && 250 < mouseX && 310 > mouseX && 
    120 < mouseY && 140 > mouseY) {
      
      bone.cClick = false; 
      
      bone.boneC = true; 
      
    }
    
    if (bone.hClick == true && 360 < mouseX && 380 > mouseX && 
    120 < mouseY && 230 > mouseY) {
      
      bone.hClick = false; 
      
      bone.boneH = true;
    }
    
    if (bone.rClick == true && 320 < mouseX && 360 > mouseX && 
    160 < mouseY && 200 > mouseY) {
      
      bone.rClick = false; 
      
      bone.boneR = true;
    }
  }
  
  void drawStart() {
    
    
    bone.drawBones();
    
  
    if (timer.finished() && bone.boneC == false) {
      endings.lose();
    }
    else if (timer.finished() && bone.boneH == false) {
      endings.lose();
    }
    else if (timer.finished() && bone.boneR == false) {
      endings.lose();
    }
    else if (bone.boneC == true 
    && bone.boneH == true && bone.boneR == true) {
      endings.win();
    }
  }
  
  void restart() {
    bone.cClick = false;
    bone.hClick = false;
    bone.rClick = false;
  
    bone.cBone = false;
    bone.hBone = false; 
    bone.rBone = false; 
  
    bone.boneC = false;
    bone.boneH = false; 
    bone.boneR = false;
    
    timer.start();
  }
  
  
  
}
