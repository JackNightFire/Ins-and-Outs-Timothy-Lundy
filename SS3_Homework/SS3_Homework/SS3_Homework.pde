float alpha = 0.0;
float beta = 0.0;
float ash = 0.0;
float thermite = 0.0;
float twitch = 0.0;
float kapkan = 0.0;
float r= 255;
float g= 255;
float b= 255;
int x = 0;


void setup() {
size (1200,1200,P3D);  
}

void draw() {
background(0);

noFill();
stroke(r);
strokeWeight(1);
lights();
translate(width/2, height/2);
rotateY(alpha);
sphere(200);
line(0,0,mouseX, mouseY);

alpha += 0.02;

if (mouseX > 350){
  noFill();
  stroke(200, 140, 224);
  strokeWeight(1);
  lights();
  translate(width/2, height/2);
  rotateX(ash);
  rotateY(beta);
  sphere(200);
  
  ash += 0.03;
  beta += -0.04;
}
  
 else if (mouseY > 200){
 noFill();
 stroke(200, 89, 112);
 strokeWeight(1);
 lights();
 translate(width/2, height/2);
 rotateX(thermite);
 rotateY(twitch);
 rotateZ(kapkan);
 sphere(200);
  
  thermite += 0.2;
  twitch += 0.3;
  kapkan += -0.4;
  
 }


}

void mousePressed(){
  r= random(78, 200);
  g= random(15,100);
  b= random(90,244);
}
