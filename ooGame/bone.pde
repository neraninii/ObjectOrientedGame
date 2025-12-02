
class Bone {
  
  PImage skeletonMAIN; 
  PImage openHAND;
  PImage closeHAND;
  PImage clavicle;
  PImage clavicleBONE;
  PImage humerous;
  PImage humerousBONE; 
  PImage rib;
  PImage ribBONE;
  
  boolean click = false;
  
  Bone() {
    skeletonMAIN = loadImage("skeletonMain.PNG"); 
    openHAND = loadImage("handOPEN.PNG");
    closeHAND = loadImage("handCLOSE.PNG");
    clavicle = loadImage("clavicle.PNG");
    clavicleBONE = loadImage("clavicleBONE.PNG");
    humerous = loadImage("humerous.PNG");
    humerousBONE = loadImage("humerousBONE.PNG");
    rib = loadImage("rib.PNG");
    ribBONE = loadImage("ribBONE.PNG");
    
    
  }
  
  void drawBones() {
    image(skeletonMAIN, 0, 0);
  
    image(clavicle, 0, 0);
    image(clavicleBONE, 0, 0);
    image(humerous, 0, 0);
    image(humerousBONE, 0, 0);
    image(rib, 0, 0);
    image(ribBONE, 0, 0);
    
    if (click == true) {
      equipBone();
    }
    else {
      unequipBone();
    }
  }
  
  void equipBone() {
    image(closeHAND, mouseX-50, mouseY-50);
  }
  
  void unequipBone() {
    image(openHAND, mouseX-50, mouseY-50);
  }
  
}
