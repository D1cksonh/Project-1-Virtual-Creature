// A square will eat the circle and will delete it 

float bacteriaX;
float bacteriaY;
float preyX;
float preyY;
float moveX = 10;
float moveY = 10;

void setup () {
 size(640,640,P2D); 
 bacteriaX = 50;
 bacteriaY = 50;
 preyX = mouseX;
 preyY = mouseY;
}

void draw () {
  background(100);
  fill(255,255,0);
  ellipse(bacteriaX,bacteriaY,25,25);

  fill(255,0,0);
  rect(mouseX,mouseY,50,50);
  
  bacteriaX = bacteriaX + moveX;
  if (bacteriaX > width || bacteriaX < 0){
   moveX = moveX * -1;
  }
  
  fill(255);
  line(0,50,width,50);
}

// use stuff from previous lecture and the coding train to create a creature 
