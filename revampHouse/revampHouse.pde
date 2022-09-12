// Revamp by PS
// 09/09/2022

float time = 0;

void setup() {
  rectMode(CENTER);
  // Window
  size(600, 600);
  frameRate(30);

  // Sky
  background(#5ED4E3);
}

void draw() {
  time++; // Time increases 
  time = time % 120;
  background(floor(time/60) * color(187, 250, 243));
  // Floor of time/60 either gives 0 or one, so it can be used as a boolean for the sky's colour
  
  if (time > 59) {
    fill(#FFFF00);
    circle(map(time, 60, 119, - 50, width + 50), 300, 100);
  } else {
    star();
  }

  house(width/2, height/2+100);
}

void house(float x, float y) {
  pushMatrix();
  translate(x, y);

  // House Base
  stroke(0);
  fill(#0A50C6);
  rect(0, 0 + 100, 300, 200);

  // Door
  fill(#EA721F);
  rect(0, 0 + 130, 70, 140);

  // Chimney
  fill(#90FFD2);
  rect(90, -50, 50, 100);

  // Roof
  fill(#EA261F);
  triangle(-175, 0, 175, 0, 0, -125);

  // Windows
  fill(#FFCBCB);
  circle(-90, 100, 75);

  fill(240);
  triangle(60, 125, 90, 70, 120, 125);

  fill(0);
  popMatrix();
}

void star(float x, float y, float size, float points){
  beginShape();
  for (int i = 0; i < points; i++){
    
  }
  endShape(CLOSE);
}
