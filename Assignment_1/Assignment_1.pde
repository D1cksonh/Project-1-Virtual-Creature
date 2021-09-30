// Some of mjia's example "apperance" code was used as reference for helping to code this 
// code is modified and changed to fit the program i am trying to create 

PVector berry, berry2;
boolean distance, distance2 = false;

void setup() {
 size(800,600,P2D);
 berry = new PVector(width/2, height/2);
 berry2 = new PVector(500, 450);
 ellipseMode(CENTER);
}

void draw() {
 background(200);
 fill(0);
 rect(mouseX,mouseY,25,25);
 berryMove();
 berryColor();
}

void berryMove() {
  PVector mousePosition = new PVector(mouseX,mouseY);
  PVector mousePosition2 = new PVector(mouseX,mouseY);
  distance = berry.dist(mousePosition) < 20;
  distance2 = berry2.dist(mousePosition2) < 20;
  
  if (distance){
   berry.x = random(width); 
   berry.y = random(height); 
  }
  
  if (distance2){
   berry2.x = random(width); 
   berry2.y = random(height); 
  }
  
} 

void berryColor(){
  fill(255,0,0);
  ellipse(berry.x,berry.y,25,25);
  
  fill(0,255,0);
  ellipse(berry2.x,berry2.y,25,25);
}
