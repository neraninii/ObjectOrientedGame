//image assets from me.

//declaring classes and arrays 
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
  
  //running classes and arrays 
  for (int i = 0; i < sands.length; i++) {
    sands[i] = new Hourglass();
  }
  
  hourglass = new Hourglass();
  gameStart = new GameStart();
  bone = new Bone();
  endings = new Endings(); 
  
  //setting the timer to 10s
  timer = new Timer(10000);
  timer.start();
  
}

//main drawing
void draw() {
  
  fill(255);
  square(0, 0, 600);
  
  //statement for the sand's movement
  for (int i = 0; i < sands.length; i++) {
    sands[i].move();
  }
  
  //drawing hourglass sand
  hourglass.sand();
 
  //drawing the main function  
  gameStart.drawStart();
  
  
}

void mousePressed() {
  
  //calling the mouse variables and conditionals
  gameStart.mouseStart();
  
  
}

void keyPressed() {
  
  //calling the restart function 
  gameStart.restart();
  
  //restarting hourglass
  for (int i = 0; i < sands.length; i++) {
    sands[i] = new Hourglass();
  }
  
}
