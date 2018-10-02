//Something
//Timothy Lundy

int x= 0;
int y = 0;
float Thermite = 0.0;
float Maverick = 0.0;
float r = 255;
float g = 255;
float b = 255;
float h = 255;
float s = 255;



void setup(){
size(800,800);
background(255);
}

void draw(){ 
for(int x=0; x<width; x=x+50){
  stroke(255,90,11);
  line(x, height/1, 75,75);
  }
 
  for( int y=0; y< height; y=y+100){
  stroke(h,s,b);
  ellipse(100, height/2, 75,75);
 }
  if (x < width){
    //x=x+ number is the spacing
x = x + 1;
fill(101);
stroke(r,g,b);
ellipse(x,150,16,16);

if ( mouseX<200){
  fill(255,90,72);
   ellipse(100, height/2, 75,75);
}
  }   
 }


void mousePressed(){
r = random(1,200);
g = random(1,255);
b = random(1,255);
}

void keyPressed(){
  h = random(90,240);
  s = random(20, 255);
  b = random(0, 255);
}
