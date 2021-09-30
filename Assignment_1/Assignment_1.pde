// Some of mjia's example called "apperance" was used as reference to help code this
// code is modified and changed to fit the program i am trying to create 

PVector berry, berry2, berry3, berry4;
boolean distance, distance2, distance3, distance4 = false;

void setup() {
 size(800,600);
 berry = new PVector(width/2, height/2);
 berry2 = new PVector(500, 450);
 berry3 = new PVector(100, 100);
 berry4 = new PVector(50,500);
 ellipseMode(CENTER);
}

void draw() {
 background(24,155,33);
 fill(0);
 stroke(0);
 rectMode(CENTER);
 rect(mouseX,mouseY,25,25);
 
 berryMove();
 berryColor();
 }

void berryMove() { // code to change the location of the berry when it is close to the mouse
  PVector mousePosition = new PVector(mouseX,mouseY);
  PVector mousePosition2 = new PVector(mouseX,mouseY);
  PVector mousePosition3 = new PVector(mouseX,mouseY);
  PVector mousePosition4 = new PVector(mouseX,mouseY);
  distance = berry.dist(mousePosition) < 20;
  distance2 = berry2.dist(mousePosition2) < 20;
  distance3 = berry3.dist(mousePosition3) < 20;
  distance4 = berry4.dist(mousePosition4) < 20;
  
  if (distance){
   berry.x = random(width); 
   berry.y = random(height); 
  }
  
  if (distance2){
   berry2.x = random(width); 
   berry2.y = random(height); 
  }
  
  if (distance3){
   berry3.x = random(width); 
   berry3.y = random(height); 
  }
  
  if (distance4){
   berry4.x = random(width); 
   berry4.y = random(height); 
  }
  
} 

void berryColor(){ //code to modify the color of the cirlce 
  fill(255,0,0);
  stroke(255,0,0);
  ellipse(berry.x,berry.y,25,25);
  
  fill(0,255,0);
  stroke(255,0,0);
  ellipse(berry2.x,berry2.y,25,25);
  
  fill(0,0,255);
  stroke(255,0,0);
  ellipse(berry3.x,berry3.y,25,25);
  
  fill(255,0,255);
  stroke(255,0,0);
  ellipse(berry4.x,berry4.y,25,25);
  
}
