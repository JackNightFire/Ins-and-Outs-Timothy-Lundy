//Timothy Lundy
//SS2

//In "Learning Processing" by Daniel Shiffman (Second Edition, 2015):
//Chapter 3: Interaction (Pages 33-45)
//Chapter 4: Variables (Pages 49-65)
//Use of integer and float variables
//Use of keyPressed() event function-- to clear/erase the background of your sketch
//Use of mousePressed() event function-- what it does is up to you
//Attention to visual detail (composition, color, line weight, etc.)
//Add your name and a title for the drawing as a comment at the top of your sketch

float raiden = 0.0;
float r = 255;
float g = 255;
float b = 255;
int s = 1;

void setup(){
size(1200,720);
background(r,g,b);  
}

void draw(){
  stroke(255,0,0);
    line (0, 0, mouseX, mouseY);



  //adds ellipse following mouse
fill(255);
  ellipse (mouseX, mouseY, 50, 50);
  s = s+3;
if(mouseX>400){
  fill(255,10,90);
  ellipse (mouseX, mouseY, 50, 50);
 }else{
 fill(0,255,0); 
 ellipse (mouseX, mouseY, 50, 50);
 }
}

void keyPressed(){
background(0);  
}

void mousePressed(){
r = random(1,210);
g = random(56,255);
b = random(1,255);
}
