
 
Eye e1, e2, e3,e4,e5,e6;

void setup() {
  size(640, 360);
  noStroke();
  e1 = new Eye( 420,  40, 140);
  e2 = new Eye( 64, 100,  120);  
  e3 = new Eye( 220, 230, 220);
  e4 = new Eye(50,280,120);
  e5 = new Eye( 460,230,100);
  e6 = new Eye( 590,90,160);
}

void draw() {
  background(0);
  
  e1.update(mouseX, mouseY);
  e2.update(mouseX, mouseY);
  e3.update(mouseX, mouseY);
  e4.update(mouseX, mouseY);
  e5.update(mouseX, mouseY);
  e6.update(mouseX, mouseY);
 
  e1.display();
  e2.display();
  e3.display();
  e4.display();
  e5.display();
  e6.display();
}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}
