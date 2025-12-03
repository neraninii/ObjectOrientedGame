//image assets from me.

Bone bone;

Endings endings;

Timer timer; 

GameStart gameStart;

Hourglass hourglass;

Hourglass[] sands = new Hourglass[700];

//initial setup
void setup() {
  size(600,400);
  background(255);
  
  for (int i=0; i < sands.length; i++) {
    sands[i] = new Hourglass();
  }
  
  hourglass = new Hourglass();
  gameStart = new GameStart();
  bone = new Bone();
  endings = new Endings(); 
  timer = new Timer(10000);
  timer.start();
  
}

void draw() {
  
  fill(255);
  square(0, 0, 600);
  
  
  for (int i = 0; i < sands.length; i++) {
    sands[i].move();
  }
  
  hourglass.sand();
 
  
  gameStart.drawStart();
  
  
}

void mousePressed() {
  
  gameStart.mouseStart();
  
  
}

void keyPressed() {
   
  gameStart.restart();
  
}
