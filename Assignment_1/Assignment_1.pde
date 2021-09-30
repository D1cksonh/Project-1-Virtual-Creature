// Some of mjia's code was used for help 

PVector berry, berry2;
boolean distance, distance2, distance3 = false;

void setup() {
 size(800,600,P2D);
 berry = new PVector(width/2, height/2);
 berry2 = new PVector(500, 450);
 ellipseMode(CENTER);
}

void draw() {
 background(200);
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
  
 fill(0);
 rect(mouseX,mouseY,25,25);
  
} 

void berryColor(){
  fill(255,0,0);
  ellipse(berry.x,berry.y,25,25);
  
  fill(0,255,0);
  ellipse(berry2.x,berry2.y,25,25);
}
