
import processing.sound.*;

SoundFile file;

PImage  SpaceBitches;
PImage Halo;
float yugi = 0.0;
float raiden;
float opacity = 0;
float fade = 1;
int x = 0;
//int speed = 1;

float r = 255;
float g = 255;
float b = 255;


void setup(){
  size(1280,800, P3D);
SpaceBitches = loadImage("SpaceBitches.jpg");
Halo = loadImage("Halo.png");
file = new SoundFile(this,"Halo1.mp3");
textSize(32);
}

void draw(){
background(0);
//tint(255,255,0);
image(SpaceBitches,0,0);
imageMode(CORNER);
image(Halo, width/3,height/2 ); 
  stroke(1);
  strokeWeight(2);
  ambientLight(120,90,44);
  fill(r,g,b);
  lights();
  rotateY(raiden);
  sphere(400);
 

  fill(opacity);
  text("Void", width/2,height/2 - 10);
  opacity= opacity+fade;
  if (opacity > 200 || opacity< 0){
    fade= -fade;
    file.play();
    file.amp(0.5);
  //x = x + speed; 
  raiden += 0.2;
  }
  
 //image(Halo, width/2, height/2); 
}

void mousePressed(){
      if (file.isPlaying()) {  
       file.pause();
    }  else  {
       file.play();
    }
}


void keyPressed(){
  r= random(28, 255);
  g= random(69, 100);
  b= random(10,244);
}
