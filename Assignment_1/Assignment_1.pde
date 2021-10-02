// Some of mjia's example called "apperance" was used as reference to help code this
// code is modified and changed drastically to fit the program i am trying to create 

PVector berry, berry2, berry3, berry4;
boolean distance, distance2, distance3, distance4 = false;
int bodyWidth = 50;
int bodyHeight = 25;

void setup() {
 size(800,600, P2D);
 berry = new PVector(width/2, height/2);
 berry2 = new PVector(500, 450);
 berry3 = new PVector(100, 100);
 berry4 = new PVector(50,500);
 //ellipseMode(CENTER);
}

void draw() {
 background(24,155,33);
 //rectMode(CENTER);
 
 enviorment();
 berryMove();
 berryColor();
 bunny(bodyWidth, bodyHeight);
 }

void berryMove() { // code to change the location of the berry when it is close to the mouse
  PVector mousePosition = new PVector(mouseX,mouseY);
  distance = berry.dist(mousePosition) < 20;
  distance2 = berry2.dist(mousePosition) < 20;
  distance3 = berry3.dist(mousePosition) < 20;
  distance4 = berry4.dist(mousePosition) < 20;
  
  if (distance){
   berry.x = random(width); 
   berry.y = random(height); 
   bodyWidth += 5;
   bodyHeight += 5;
  }
  
  if (distance2){
   berry2.x = random(width); 
   berry2.y = random(height); 
   bodyWidth += 5;
   bodyHeight += 5;
  }
  
  if (distance3){
   berry3.x = random(width); 
   berry3.y = random(height); 
   bodyWidth += 5;
   bodyHeight += 5;
  }
  
  if (distance4){
   berry4.x = random(width); 
   berry4.y = random(height); 
   bodyWidth += 5;
   bodyHeight += 5;
  }
 
} 

void berryColor() { //code to modify the color of the and positions of the berries 
  noStroke();
  
  fill(255,0,0);
  ellipse(berry.x,berry.y,25,25);
  
  fill(0,255,0);
  ellipse(berry2.x,berry2.y,25,25);
  
  fill(0,0,255);
  ellipse(berry3.x,berry3.y,25,25);
  
  fill(255,0,255);
  ellipse(berry4.x,berry4.y,25,25);
}

void bunny(int bodyWidth, int bodyHeight) { // "creature" code 
  fill(255);
  noStroke();
  rect(mouseX,mouseY, bodyWidth, bodyHeight); // body
  rect(mouseX - 22, mouseY + 20 + bodyHeight-25, 5 + bodyWidth-50, 15 + bodyHeight-25); // left leg
  rect(mouseX + 22, mouseY + 20 + bodyHeight-25, 5 + bodyWidth-50, 15 + bodyHeight-25); // right leg
  ellipse(mouseX - 32 - (bodyWidth-50), mouseY - 15 ,15 + bodyWidth-50 ,15 + bodyHeight-25); // tail 
   
  rect(mouseX + 27 + (bodyWidth-50), mouseY - 35 - (bodyHeight-25), 5 + bodyWidth-50, 15 + bodyHeight-25); // left ear
  rect(mouseX + 43 + (bodyWidth-50), mouseY - 35 - (bodyHeight-25), 5 + bodyWidth-50, 15 + bodyHeight-25); // right ear
  
  fill(24,155,33);
  rect(mouseX, mouseY + 20 + bodyHeight-25, 5 + bodyWidth-50, 15 + bodyHeight-25); // leg separator
  rect(mouseX + 35 + (bodyWidth-50), mouseY - 35 - (bodyHeight-25), 5 + bodyWidth-50, 15 + bodyHeight-25);//ear separator
  
  fill(255);
  rect(mouseX + 35 + (bodyWidth-50), mouseY - 20 - (bodyHeight-25), 20 + bodyWidth-50, 20 + bodyHeight-25); //head 
  
  fill(255,0,0);
  ellipse(mouseX + 30 + (bodyWidth-50), mouseY - 23 - (bodyHeight-25), 5, 5); // left eye
  ellipse(mouseX + 40 + (bodyWidth-50), mouseY - 23 - (bodyHeight-25), 5, 5); // right eye
  
  fill(0);
  rect(mouseX + 35 + (bodyWidth-50), mouseY - 16 - (bodyHeight-25), 10, 3);// mouth 
}

void enviorment() { // code to generate the enviorment 
  fill(137,69,27);
  noStroke();
  rect(400,300,25,50);
  
  fill(0,255,0);
  triangle(450,300,410,200, 370,300);
}
