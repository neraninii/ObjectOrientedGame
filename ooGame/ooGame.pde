//image assets from me.

PImage skeletonMAIN; 
PImage openHAND;
PImage closeHAND;
PImage clavicle;
PImage clavicleBONE;
PImage humerous;
PImage humerousBONE; 
PImage rib;
PImage ribBONE;


//initial setup
void setup() {
  size(600,400);
  background(255);
  
  
  skeletonMAIN = loadImage("skeletonMain.PNG"); 
  openHAND = loadImage("handOPEN.PNG");
  clavicle = loadImage("clavicle.PNG");
  clavicleBONE = loadImage("clavicleBONE.PNG");
  humerous = loadImage("humerous.PNG");
  humerousBONE = loadImage("humerousBONE.PNG");
  rib = loadImage("rib.PNG");
  ribBONE = loadImage("ribBONE.PNG");
  
}

void draw() {
  fill(255);
  square(0, 0, 600);
  
  image(skeletonMAIN, 0, 0);
  
  image(clavicle, 0, 0);
  image(clavicleBONE, 0, 0);
  image(humerous, 0, 0);
  image(humerousBONE, 0, 0);
  image(rib, 0, 0);
  image(ribBONE, 0, 0);
  
  
  
  
  image(openHAND, mouseX-50, mouseY-50);
}

void mousePressed() {
  
}
