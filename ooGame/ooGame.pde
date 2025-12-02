//image assets from me.

Bone bone;


//initial setup
void setup() {
  size(600,400);
  background(255);
  
  bone = new Bone();
  
 
}

void draw() {
  fill(255);
  square(0, 0, 600);
  
  bone.drawBones();
  
 
}

void mousePressed() {
  bone.click = !bone.click;
}
