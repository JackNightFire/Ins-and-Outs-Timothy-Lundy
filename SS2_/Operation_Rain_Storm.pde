drop[] drops = new drop[1000];


void setup() {
size(1000,1000);
for (int i = 0; i < drops.length; i++) {
  drops[i] = new drop();
 }
}

void draw() {
background(0);
for (int i = 0; i < drops.length; i++) {
  drops[i].fall();
  drops[i].show();
 }
} 
