float theta = 0.0;
float beta = 0.0;


void setup() {
  size(1000,1000, P3D);
}

void draw() {
  background(0);
  
  fill(105,150,210);
  rect(600,150,25,25);
  
  noFill();
  stroke(255,67,28);
  strokeWeight(1);
  lights();
  translate(width/2, height/2);
  rotateY(theta);
  sphere(200);
  
  theta += 0.01;
  
  fill(0);
  stroke(255);
  rotateY(beta);
  sphere(100);
  
  beta += -0.02;
  
}
