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
  timer = new Timer();
  
 
}

void draw() {
  fill(255);
  square(0, 0, 600);
  
  bone.drawBones();
  
 
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
