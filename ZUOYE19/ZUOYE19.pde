
PFont f;
float angleRotate = 0.0;

void setup() {
  size(800,800);
  background(0);

  f = createFont("Rubik80sFade.ttf", 90);
  textFont(f);
} 

void draw() {
  background(0);

  strokeWeight(1);
  stroke(153);

  pushMatrix();
  translate(250, 180);
  rotate(radians(angleRotate));
  text(int(angleRotate) % 360 + " DEGREES", 0, 0);
  line(0, 0, 150, 0);
  popMatrix();
  
  angleRotate += 0.35;

  stroke(255, 0, 0);
  strokeWeight(10);
  //point(100, 180);
  //point(200, 180);
  point(250, 180);
}

// //pushMatrix();
//   float angle1 = radians(45);
//   translate(100, 180);
//   rotate(angle1);
//   text("45 DEGREES", 0, 0);
//    line(0, 0, 150, 0);
//   popMatrix();

//   pushMatrix();
//   float angle2 = radians(270);
//   translate(200, 180);
//   rotate(angle2);
//   text("270 DEGREES", 0, 0);
//    line(0, 0, 150, 0);
//   popMatrix();
