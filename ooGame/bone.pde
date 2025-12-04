//class for the bones
class Bone {
  
  //declaring PImage variables 
  PImage skeletonMAIN; 
  PImage openHAND;
  PImage closeHAND;
  PImage clavicle;
  PImage clavicleBONE;
  PImage humerous;
  PImage humerousBONE; 
  PImage rib;
  PImage ribBONE;
  
  //declaring booleans for each bone variable
  boolean cClick = false;
  boolean hClick = false;
  boolean rClick = false;
  
  boolean cBone = false;
  boolean hBone = false; 
  boolean rBone = false; 
  
  boolean boneC = false;
  boolean boneH = false; 
  boolean boneR = false;
  
  //loading images for the images
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
  
  //function for bone visibility and equipping bones
  void drawBones() {
    image(skeletonMAIN, 0, 0);
 
    // conditionals for visibility of the bones on the skeleton
    if (boneC == true) {
      image(clavicle, 0, 0);
    }
    
    if (boneH == true) {
      image(humerous, 0, 0);
    }
    
    if (boneR == true) {
      image(rib, 0, 0);
    }
   
    
    //conditionals for visibility of the bones to match
     if (cBone == false) {
      image(clavicleBONE, 0, 0);
    }
    
    if (hBone == false) {
      image(humerousBONE, 0, 0);
    }
    
    if (rBone == false) {
      image(ribBONE, 0, 0);
    }
    
    
    //conditionals to equip the bone based on click
    if (cClick == true) {
      equipBone();
      cBone = true; 
    }
    
    else if (hClick == true) {
      equipBone();
      hBone = true;
    }
    
    else if (rClick == true) {
      equipBone();
      rBone = true;
    }
    
    else if (cClick == false || hClick == false || rClick == false) {
      unequipBone();
    }
    
    
  }
  
  
 // function for equiping a bone  
  void equipBone() {
    image(closeHAND, mouseX-50, mouseY-50);
  }
  
 // function for unequiping bone 
  void unequipBone() {
    image(openHAND, mouseX-50, mouseY-50);
  }
  
}
