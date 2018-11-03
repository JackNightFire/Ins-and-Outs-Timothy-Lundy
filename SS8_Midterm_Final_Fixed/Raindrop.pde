class drop {
 float x = random(width);
 float y = random(height);
 float yspeed = random(1,15); 
void fall() {
 y = y + yspeed; 

 //boolean test with randomized height
 // concentrating on Y >height in boolean test
 if (y >height) {
   y = random(-200,-100);
 }
} 

// 
void show() {
  stroke(255);
  //stroke(25, 15, 201);
  line(x,y,x,y+10);
  if (state== "scene6"){
    stroke(255,0,0);
    line(x,y,x,y+10);
  }
 }
}
