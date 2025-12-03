//image assets from me.

Bone bone;

Endings endings;

Timer timer; 

GameStart gameStart;


//initial setup
void setup() {
  size(600,400);
  background(255);
  
  gameStart = new GameStart();
  bone = new Bone();
  endings = new Endings(); 
  timer = new Timer(10000);
  timer.start();
}

void draw() {
  fill(255);
  square(0, 0, 600);
  
  gameStart.drawStart();
  
  
}

void mousePressed() {
  
  gameStart.mouseStart();
  
  
}

void keyPressed() {
   
  gameStart.restart();
  
}
