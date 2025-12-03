//image assets from me.

Bone bone;

Endings endings;

Timer timer; 


//initial setup
void setup() {
  size(600,400);
  background(255);
  
  bone = new Bone();
  endings = new Endings(); 
  timer = new Timer(10000);
  timer.start();
  
 
}

void draw() {
  fill(255);
  square(0, 0, 600);
  
  bone.drawBones();
  
  if (timer.finished() && bone.boneC == false 
  && bone.boneH == false && bone.boneR == false) {
    endings.lose();
  }
  
  else if (timer.finished() && bone.boneC == true 
  && bone.boneH == true && bone.boneR == true) {
    endings.win();
  }
  
 
 
}

void mousePressed() {
  
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
