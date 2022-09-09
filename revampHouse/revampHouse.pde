// Revamp by PS
// 09/09/2022

void setup() {
  rectMode(CENTER);
  // Window
  size(600, 600);
  
  // Sky
  background(#5ED4E3);
  
  // Grass
  for (int i = 0; i < width; i++) {
    pushMatrix();
    translate(i + 1, height);
    rotate(radians(random(-15, 15)));
    stroke(#0BBC2A);
    line(0, 0, 0, -100);
    popMatrix();
  }
  
  house(width/2, height/2, 1);
}

void house(float x, float y, float size) {
  pushMatrix();
  translate(x, y);
  
  // House Base
  stroke(0);
  fill(#0A50C6);
  rect(0, 0 + 100, 300, 200);
  
  // Door
  fill(#EA921F);
  rect(0, 0 + 130, 70, 140);
  
  // Roof
  fill(#EA261F);
  triangle(-175, 0, 175, 0, 0, -125);
  
  // Windows
  fill
  
  popMatrix();
}
