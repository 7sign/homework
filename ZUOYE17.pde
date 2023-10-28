import processing.pdf.*;

boolean record;

void setup() {
  size(500, 500, P3D);
  background(0);
}

void draw() {
  if (record) {
    beginRaw(PDF, "output.pdf");
  }
noStroke();
directionalLight(100, 100, 126, 0, 0, -2);
ambientLight(200, 102, 100);
background(100,120,120);
translate(width/2, height/2, -200);
  rotateZ(mouseY/250.0);
rotateY(mouseX/500.0);
box(300);
translate(270, 50, 0);


if (record) {
    endRaw();
    record = false;
  }
}

void keyPressed() {
  if (key == 'r') {
    record = true;
  }
}
