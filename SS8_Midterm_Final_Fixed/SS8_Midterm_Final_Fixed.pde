//Timothy Lundy
//Secondary Midterm

//import ddf.minim.*;

//Minim minim;

//AudioPlayer player;
//import processing.sound.*;
//SoundFile file;

//Mousepress and reset to scene 1 is Key=4

drop[] drops = new drop[2000];

int scott = 1;
int madison = 2;
int ethan = 3;

PImage Heavy;

PImage Phily;

float raiden = 0.0;

float Icarus = 0.0;

float opacity = 0;

float fade = 1;

String state= "scene1";

PImage Scott;
PImage Ethan;
PImage Madison;

void setup() {
//fullScreen(P3D);
size(1296,720,P3D);
//if (state== "scene1"){
Heavy =loadImage("Heavy.png");
Ethan =loadImage("Ethan.png");
Madison =loadImage("Madison.png");
Scott =loadImage("Scott.png");
Phily =loadImage("Phily.jpg");
fill(255,0,0);
//text("Heavy",width/2, height/2);
//text("Rain", width/2, height/2);
textSize(40);
for (int i = 0; i < drops.length; i++) {
  drops[i] = new drop();
  //minim = new Minim(this);
  //player = minim.loadFile("Shelter.mp3");
  }  
 }  



void draw() {
if (state== "scene1"){  
background(0);
image(Heavy,520,250);
fill(255);
text("Heavy", 500, height/2);
fill(255,0,0);
text("Rain", 775, height/2);
//text("My tears blend in with the rain", width/2, height/2);
for (int i = 0; i < drops.length; i++) {
  drops[i].fall();
  drops[i].show();
}
  
}else if(state== "scene2"){
  background(0);
  fill(255);
text("This place is not safe for anyone", 375, 350);

}else if (state== "scene3"){
  background(0);
  fill(255);
  text("Im so sorry, I lied",375, 350);
  
}else if (state== "scene4"){
background(0);
fill(255);
 text("Please just", 375,350);
 
}else if (state== "scene5"){
  background(0);
  fill(255,0,0);
  text("Stay away",375, 350);
  
}else if (state== "scene6"){  
background(0);
//image(Heavy,520,250);
//fill(255);
fill(opacity);
text("Heavy", 500, height/2);
//fill(255,0,0);
fill(opacity);
text("Rain", 625, height/2);
//text("My tears blend in with the rain", width/2, height/2);
for (int i = 0; i < drops.length; i++) {
  drops[i].fall();
  drops[i].show();
  opacity= opacity+fade;
  //player.play();
}
}else if (state== "scene7"){
    background(0);
    fill(255);
    text("Police responder:",100,height/2);
    text("911 what is your emergency?",200,450);

}else if(state== "scene8"){
  background(0);
  text("???:Hello, I need help, I've been stabbed.",200,height/2);

 }else if(state=="scene9"){
  background(0);
  fill(255);
  text("Police responder:",100,height/2);
  text("Stay on the phone, and tell me where you are.",200,450);
  
 }else if (state== "scene10"){
   background(0);
   fill(255);
   text("???: Oakland Cementry by Castor ave",200,height/2);
   
}else if (state== "scene11"){
  background(0);
  fill(255,0,0);
  text("???: Oh my god holy shit, he's coming.",200,height/2);
  
 }else if (state== "scene12"){
   background(0);
   imageMode(CENTER);
   image(Phily,width/2,height/2);
   fill(255);
   text("Philadelphia,PA",200,150);
   text("To be continued",50,700);
 }else if (state == "scene13"){
 background(255);
    fill(0);
    text("This project consist of three characters", 50, 300);
    text("You will be able to look at character bios", 200, height/2);  
 }else if (state== "scene14"){
  background(0);
  fill(255);
  text("Ethan Mars",180,height/2);
  image(Ethan, 220, 550);
  fill(255);
  text("Madison Paige", 500, 350);
  image(Madison, 600, 600);
  fill(255);
  text("Scott Shellby", 900,350);
  image(Scott,1000,520);
  
  }else if (state== "scene15"){
  background(0);
  fill(255);
  text("press 1 for Ethan Mars", width/2,height/2);
  text("Press 2 for Madison Paige", width/2, 250);
  text("Press 3 for Scott Shellby", width/2, 110);
  
 
}else if (state == "scott"){
  background(0);
  textSize(30);
  text("Scott Shellby is a Private Investigator in Philadelphia.",200,150);
  text("He suffers from asthma, and excessive drinking due to a tramatic event two years ago.",80,225); 
  text("Attributes: obsevational skill set, six sense,and interrogation",80,325);
  image(Scott,900,450);
  
  
}else if (state== "madison"){
 background(0);
 textSize(30);
 text("Madison Paige is a journalist and photographer.",200,150);
  text("she suffers from insomina, past tramatic events from her childhood.",100,225); 
  text("Attributes: Persuasion, Front page, Social tree",80,325);
  image(Madison, 550, 460);
}else if (state == "ethan"){
  background(0);
  textSize(30);
  text("Ethan Mars is a father of two, and a architect.",200,150);
  text("she suffers from depression and suicidal thoughts, lost his second son, Jason .",50,225); 
  text("Attributes: Structure, Fighter, Runner",80,325);
  image(Ethan, 460,450);
}
   
}
//}
void mousePressed(){
 if (state== "scene1"){
  state= "scene2";
 }else if (state== "scene2"){
   state= "scene3";
 }else if (state == "scene3"){
  state= "scene4";
 }else if (state== "scene4"){
   state= "scene5";
 }else if (state== "scene5"){
  state= "scene6";
 }else if (state== "scene6"){
  state= "scene7";
 }else if (state== "scene7"){
   state= "scene8";
 }else if (state== "scene8"){
  state= "scene9";
 }else if (state== "scene9"){
  state="scene10";
 }else if(state== "scene10"){
    state="scene11";
 }else if(state== "scene11"){
   state="scene12";
 }else if (state== "scene12"){
 state= "scene13";
}else if (state== "scene13"){
  state= "scene14";
 } else if (state== "scene14"){
   state= "scene15";
  }else if (state== "scene15"){
    state= "scene1";
 }
}

void keyPressed(){
  if (key=='1'){
   state="scott";
  }else if (key== '2'){
 state ="madison";
}else if (key== '3'){
  state ="ethan";
 }else if (key=='4'){
   state="scene1";
  }
}
