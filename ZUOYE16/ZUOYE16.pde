PImage img;
int x, y;

void setup() {
  size(1599,1600);
  background(255);
  noStroke();
  img = loadImage("girl.PNG.png");
}
  
void draw() {
  x = round(random(width));
  y = round(random(height));
  color c = img.get(x, y);
  fill(c, 70);
  ellipse(x, y, 30, 30);
}
