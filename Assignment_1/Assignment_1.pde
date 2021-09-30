// Some of mjia's code was used for help 

PVector berry;
boolean distance = false;

void setup() {
 size(800,600,P2D);
 berry = new PVector(width/2, height/2);
 ellipseMode(CENTER);
}

void draw() {
 background(200);
 berryCommand();
}

void berryCommand() {
  PVector mousePosition = new PVector(mouseX,mouseY);
  distance = berry.dist(mousePosition) < 20;
  
  if (distance){
   berry.x = random(width); 
   berry.y = random(height); 
  }
  
  fill(255,0,0);
  ellipse(berry.x,berry.y,25,25);
  ellipse(berry.x + 100,berry.y + 100,25,25);
  
} 
